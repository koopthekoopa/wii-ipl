.include "macros.inc"
.file "iplChannelTitle.cpp"

# 0x810B7340..0x810B74F8 | size: 0x1B8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B7340 | size: 0xE0
# ipl::scene::ChannelTitle::msTicketView
.obj msTicketView__Q33ipl5scene12ChannelTitle, global
	.skip 0xE0
.endobj msTicketView__Q33ipl5scene12ChannelTitle

# .bss:0xE0 | 0x810B7420 | size: 0xD8
# ipl::scene::ChannelTitle::msUnlockTicket
.obj msUnlockTicket__Q33ipl5scene12ChannelTitle, global
	.skip 0xD8
.endobj msUnlockTicket__Q33ipl5scene12ChannelTitle

# 0x813B4030..0x813BB0A4 | size: 0x7074
.text
.balign 4

# .text:0x0 | 0x813B4030 | size: 0x22C
# ipl::scene::ChannelTitle::ChannelTitle(EGG::Heap*, ipl::scene::ChannelSelect*)
.fn __ct__Q33ipl5scene12ChannelTitleFPQ23EGG4HeapPQ33ipl5scene13ChannelSelect, global
/* 813B4030 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813B4034 | 7C 08 02 A6 */	mflr r0
/* 813B4038 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813B403C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B4040 | 48 24 54 89 */	bl _savegpr_29
/* 813B4044 | 7C 7F 1B 78 */	mr r31, r3
/* 813B4048 | 7C BD 2B 78 */	mr r29, r5
/* 813B404C | 48 05 71 BD */	bl fn_8140B208
/* 813B4050 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene12ChannelTitle@ha
/* 813B4054 | 3B C0 00 00 */	li r30, 0x0
/* 813B4058 | 38 84 EF 7C */	addi r4, r4, __vt__Q33ipl5scene12ChannelTitle@l
/* 813B405C | 93 DF 00 58 */	stw r30, 0x58(r31)
/* 813B4060 | 38 04 00 1C */	addi r0, r4, 0x1c
/* 813B4064 | 38 60 00 10 */	li r3, 0x10
/* 813B4068 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 813B406C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813B4070 | 93 DF 00 6C */	stw r30, 0x6c(r31)
/* 813B4074 | 93 DF 00 70 */	stw r30, 0x70(r31)
/* 813B4078 | 93 DF 00 88 */	stw r30, 0x88(r31)
/* 813B407C | 93 DF 00 8C */	stw r30, 0x8c(r31)
/* 813B4080 | 9B DF 00 90 */	stb r30, 0x90(r31)
/* 813B4084 | 93 BF 02 00 */	stw r29, 0x200(r31)
/* 813B4088 | 93 DF 02 18 */	stw r30, 0x218(r31)
/* 813B408C | 93 DF 02 3C */	stw r30, 0x23c(r31)
/* 813B4090 | 93 DF 02 4C */	stw r30, 0x24c(r31)
/* 813B4094 | 9B DF 03 24 */	stb r30, 0x324(r31)
/* 813B4098 | 93 DF 03 28 */	stw r30, 0x328(r31)
/* 813B409C | 93 DF 03 2C */	stw r30, 0x32c(r31)
/* 813B40A0 | 9B DF 03 40 */	stb r30, 0x340(r31)
/* 813B40A4 | 93 DF 03 48 */	stw r30, 0x348(r31)
/* 813B40A8 | 48 24 3F F5 */	bl __nw__FUl
/* 813B40AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B40B0 | 41 82 00 18 */	beq .L_813B40C8
/* 813B40B4 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene27CsChanTtlButtonEventHandler@ha
/* 813B40B8 | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 813B40BC | 38 84 EF 48 */	addi r4, r4, __vt__Q33ipl5scene27CsChanTtlButtonEventHandler@l
/* 813B40C0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813B40C4 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_813B40C8:
/* 813B40C8 | 3B C0 00 00 */	li r30, 0x0
/* 813B40CC | 90 7F 03 54 */	stw r3, 0x354(r31)
/* 813B40D0 | 38 7F 00 60 */	addi r3, r31, 0x60
/* 813B40D4 | 38 9F 00 64 */	addi r4, r31, 0x64
/* 813B40D8 | 93 DF 03 5C */	stw r30, 0x35c(r31)
/* 813B40DC | 9B DF 03 60 */	stb r30, 0x360(r31)
/* 813B40E0 | 93 DF 03 6C */	stw r30, 0x36c(r31)
/* 813B40E4 | 93 DF 03 68 */	stw r30, 0x368(r31)
/* 813B40E8 | 9B DF 03 70 */	stb r30, 0x370(r31)
/* 813B40EC | 9B DF 03 71 */	stb r30, 0x371(r31)
/* 813B40F0 | 93 DF 03 74 */	stw r30, 0x374(r31)
/* 813B40F4 | 9B DF 03 7C */	stb r30, 0x37c(r31)
/* 813B40F8 | 93 DF 03 80 */	stw r30, 0x380(r31)
/* 813B40FC | 93 DF 03 84 */	stw r30, 0x384(r31)
/* 813B4100 | 9B DF 03 88 */	stb r30, 0x388(r31)
/* 813B4104 | 9B DF 03 89 */	stb r30, 0x389(r31)
/* 813B4108 | 93 DF 03 8C */	stw r30, 0x38c(r31)
/* 813B410C | 93 DF 03 94 */	stw r30, 0x394(r31)
/* 813B4110 | 93 DF 03 A0 */	stw r30, 0x3a0(r31)
/* 813B4114 | 93 DF 03 EC */	stw r30, 0x3ec(r31)
/* 813B4118 | 93 DF 03 F0 */	stw r30, 0x3f0(r31)
/* 813B411C | 93 DF 03 F4 */	stw r30, 0x3f4(r31)
/* 813B4120 | 9B DF 03 F8 */	stb r30, 0x3f8(r31)
/* 813B4124 | 9B DF 03 F9 */	stb r30, 0x3f9(r31)
/* 813B4128 | 93 DF 04 04 */	stw r30, 0x404(r31)
/* 813B412C | 4B FF 6E D9 */	bl getCurrentChannel__Q33ipl7channel7ManagerFPiPi
/* 813B4130 | 80 9F 02 00 */	lwz r4, 0x200(r31)
/* 813B4134 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813B4138 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B413C | 80 04 00 CC */	lwz r0, 0xcc(r4)
/* 813B4140 | 90 1F 00 68 */	stw r0, 0x68(r31)
/* 813B4144 | 4B FF 9E 35 */	bl getDispChanTrans__Q33ipl5scene13ChannelSelectCFi
/* 813B4148 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 813B414C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B4150 | 80 9F 02 00 */	lwz r4, 0x200(r31)
/* 813B4154 | D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 813B4158 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B415C | 4B FF 9E 1D */	bl getDispChanTrans__Q33ipl5scene13ChannelSelectCFi
/* 813B4160 | C0 21 00 0C */	lfs f1, 0xc(r1)
/* 813B4164 | 38 00 00 02 */	li r0, 0x2
/* 813B4168 | C0 02 85 F0 */	lfs f0, lbl_816949F0@sda21(r0)
/* 813B416C | 7F C3 F3 78 */	mr r3, r30
/* 813B4170 | D0 3F 00 80 */	stfs f1, 0x80(r31)
/* 813B4174 | D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 813B4178 | 93 DF 02 1C */	stw r30, 0x21c(r31)
/* 813B417C | 93 DF 02 20 */	stw r30, 0x220(r31)
/* 813B4180 | 93 DF 02 24 */	stw r30, 0x224(r31)
/* 813B4184 | 93 DF 02 28 */	stw r30, 0x228(r31)
/* 813B4188 | 93 DF 02 2C */	stw r30, 0x22c(r31)
/* 813B418C | 93 DF 02 30 */	stw r30, 0x230(r31)
/* 813B4190 | 93 DF 02 34 */	stw r30, 0x234(r31)
/* 813B4194 | 93 DF 02 38 */	stw r30, 0x238(r31)
/* 813B4198 | 7C 09 03 A6 */	mtctr r0
.L_813B419C:
/* 813B419C | 7C 9F 1A 14 */	add r4, r31, r3
/* 813B41A0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 813B41A4 | 93 C4 03 4C */	stw r30, 0x34c(r4)
/* 813B41A8 | 42 00 FF F4 */	bdnz .L_813B419C
/* 813B41AC | 38 00 00 03 */	li r0, 0x3
/* 813B41B0 | 80 7F 02 00 */	lwz r3, 0x200(r31)
/* 813B41B4 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 813B41B8 | 80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 813B41BC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813B41C0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B41C4 | 41 81 00 18 */	bgt .L_813B41DC
/* 813B41C8 | 38 60 00 0B */	li r3, 0xb
/* 813B41CC | 38 00 00 01 */	li r0, 0x1
/* 813B41D0 | 90 7F 00 74 */	stw r3, 0x74(r31)
/* 813B41D4 | 98 1F 03 24 */	stb r0, 0x324(r31)
/* 813B41D8 | 48 00 00 24 */	b .L_813B41FC
.L_813B41DC:
/* 813B41DC | 38 03 FF FC */	subi r0, r3, 0x4
/* 813B41E0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B41E4 | 41 81 00 10 */	bgt .L_813B41F4
/* 813B41E8 | 38 00 00 0D */	li r0, 0xd
/* 813B41EC | 90 1F 00 74 */	stw r0, 0x74(r31)
/* 813B41F0 | 48 00 00 0C */	b .L_813B41FC
.L_813B41F4:
/* 813B41F4 | 38 00 00 00 */	li r0, 0x0
/* 813B41F8 | 90 1F 00 74 */	stw r0, 0x74(r31)
.L_813B41FC:
/* 813B41FC | 38 00 00 00 */	li r0, 0x0
/* 813B4200 | 80 DF 02 00 */	lwz r6, 0x200(r31)
/* 813B4204 | 90 1F 00 78 */	stw r0, 0x78(r31)
/* 813B4208 | 38 7F 03 AC */	addi r3, r31, 0x3ac
/* 813B420C | 38 80 00 00 */	li r4, 0x0
/* 813B4210 | 38 A0 00 40 */	li r5, 0x40
/* 813B4214 | 80 06 01 90 */	lwz r0, 0x190(r6)
/* 813B4218 | 90 1F 03 A8 */	stw r0, 0x3a8(r31)
/* 813B421C | 80 06 01 94 */	lwz r0, 0x194(r6)
/* 813B4220 | 90 1F 03 A4 */	stw r0, 0x3a4(r31)
/* 813B4224 | 4B F7 C1 11 */	bl memset
/* 813B4228 | 3C 60 00 05 */	lis r3, 0x5
/* 813B422C | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813B4230 | 38 63 80 00 */	addi r3, r3, -0x8000
/* 813B4234 | 38 A0 00 06 */	li r5, 0x6
/* 813B4238 | 48 24 34 3D */	bl fn_815F7674
/* 813B423C | 90 7F 00 5C */	stw r3, 0x5c(r31)
/* 813B4240 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B4244 | 7F E3 FB 78 */	mr r3, r31
/* 813B4248 | 48 24 52 CD */	bl _restgpr_29
/* 813B424C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B4250 | 7C 08 03 A6 */	mtlr r0
/* 813B4254 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813B4258 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene12ChannelTitleFPQ23EGG4HeapPQ33ipl5scene13ChannelSelect

# .text:0x22C | 0x813B425C | size: 0x5C
# ipl::scene::ChannelTitle::~ChannelTitle()
.fn __dt__Q33ipl5scene12ChannelTitleFv, global
/* 813B425C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B4260 | 7C 08 02 A6 */	mflr r0
/* 813B4264 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4268 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B426C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B4270 | 7C 9F 23 78 */	mr r31, r4
/* 813B4274 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B4278 | 7C 7E 1B 78 */	mr r30, r3
/* 813B427C | 41 82 00 20 */	beq .L_813B429C
/* 813B4280 | 41 82 00 0C */	beq .L_813B428C
/* 813B4284 | 38 80 00 00 */	li r4, 0x0
/* 813B4288 | 48 05 59 DD */	bl fn_81409C64
.L_813B428C:
/* 813B428C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B4290 | 40 81 00 0C */	ble .L_813B429C
/* 813B4294 | 7F C3 F3 78 */	mr r3, r30
/* 813B4298 | 48 24 3E 4D */	bl __dl__FPv
.L_813B429C:
/* 813B429C | 7F C3 F3 78 */	mr r3, r30
/* 813B42A0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B42A4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B42A8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B42AC | 7C 08 03 A6 */	mtlr r0
/* 813B42B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B42B4 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene12ChannelTitleFv

# .text:0x288 | 0x813B42B8 | size: 0xBC
# ipl::scene::ChannelTitle::prepare()
.fn prepare__Q33ipl5scene12ChannelTitleFv, global
/* 813B42B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B42BC | 7C 08 02 A6 */	mflr r0
/* 813B42C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B42C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B42C8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B42CC | 7C 7E 1B 78 */	mr r30, r3
/* 813B42D0 | 48 00 66 89 */	bl startGetTicketLimitTask__Q33ipl5scene12ChannelTitleFv
/* 813B42D4 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B42D8 | 3C A0 81 65 */	lis r5, lbl_8164EB30@ha
/* 813B42DC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B42E0 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813B42E4 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813B42E8 | 38 A5 EB 30 */	addi r5, r5, lbl_8164EB30@l
/* 813B42EC | 38 C0 00 00 */	li r6, 0x0
/* 813B42F0 | 4B F8 95 C5 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813B42F4 | 90 7E 02 04 */	stw r3, 0x204(r30)
/* 813B42F8 | 3C A0 81 65 */	lis r5, lbl_8164EB3C@ha
/* 813B42FC | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813B4300 | 38 A5 EB 3C */	addi r5, r5, lbl_8164EB3C@l
/* 813B4304 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813B4308 | 38 C0 00 00 */	li r6, 0x0
/* 813B430C | 4B F8 95 A9 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813B4310 | 80 1E 02 18 */	lwz r0, 0x218(r30)
/* 813B4314 | 90 7E 02 50 */	stw r3, 0x250(r30)
/* 813B4318 | 7F C3 F3 78 */	mr r3, r30
/* 813B431C | 54 00 10 3A */	slwi r0, r0, 2
/* 813B4320 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B4324 | 7D 1E 02 14 */	add r8, r30, r0
/* 813B4328 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B432C | 38 C8 02 24 */	addi r6, r8, 0x224
/* 813B4330 | 38 E8 02 2C */	addi r7, r8, 0x22c
/* 813B4334 | 39 08 02 34 */	addi r8, r8, 0x234
/* 813B4338 | 48 00 5A 89 */	bl loadLayoutFileAsync__Q33ipl5scene12ChannelTitleFiiPPvPPQ33ipl4nand4FilePPv
/* 813B433C | 80 1E 02 18 */	lwz r0, 0x218(r30)
/* 813B4340 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B4344 | 7C 9E 02 14 */	add r4, r30, r0
/* 813B4348 | 90 64 02 1C */	stw r3, 0x21c(r4)
/* 813B434C | 7F C3 F3 78 */	mr r3, r30
/* 813B4350 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B4354 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B4358 | 48 00 34 99 */	bl loadModule__Q33ipl5scene12ChannelTitleFii
/* 813B435C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B4360 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B4364 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B4368 | 7C 08 03 A6 */	mtlr r0
/* 813B436C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B4370 | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene12ChannelTitleFv

# .text:0x344 | 0x813B4374 | size: 0x99C
# ipl::scene::ChannelTitle::create()
.fn create__Q33ipl5scene12ChannelTitleFv, global
/* 813B4374 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 813B4378 | 7C 08 02 A6 */	mflr r0
/* 813B437C | 90 01 00 94 */	stw r0, 0x94(r1)
/* 813B4380 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813B4384 | 48 24 51 29 */	bl _savegpr_22
/* 813B4388 | 3F E0 81 65 */	lis r31, lbl_8164E768@ha
/* 813B438C | 7C 7E 1B 78 */	mr r30, r3
/* 813B4390 | 3B FF E7 68 */	addi r31, r31, lbl_8164E768@l
/* 813B4394 | 38 60 05 80 */	li r3, 0x580
/* 813B4398 | 48 24 3D 05 */	bl __nw__FUl
/* 813B439C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B43A0 | 41 82 00 18 */	beq .L_813B43B8
/* 813B43A4 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813B43A8 | 38 FF 03 E1 */	addi r7, r31, 0x3e1
/* 813B43AC | 80 BE 02 04 */	lwz r5, 0x204(r30)
/* 813B43B0 | 38 CD 8A 7C */	li r6, lbl_81696ABC@sda21
/* 813B43B4 | 4B FB 5C 71 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813B43B8:
/* 813B43B8 | 90 7E 02 08 */	stw r3, 0x208(r30)
/* 813B43BC | 48 1B 5B F9 */	bl SCGetAspectRatio
/* 813B43C0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813B43C4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B43C8 | 40 82 01 3C */	bne .L_813B4504
/* 813B43CC | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B43D0 | 38 9F 03 F2 */	addi r4, r31, 0x3f2
/* 813B43D4 | 38 A0 00 01 */	li r5, 0x1
/* 813B43D8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B43DC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B43E0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B43E4 | 7D 89 03 A6 */	mtctr r12
/* 813B43E8 | 4E 80 04 21 */	bctrl
/* 813B43EC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B43F0 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813B43F4 | 7D 89 03 A6 */	mtctr r12
/* 813B43F8 | 4E 80 04 21 */	bctrl
/* 813B43FC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B4400 | 38 A0 00 00 */	li r5, 0x0
/* 813B4404 | 48 17 39 29 */	bl fn_81527D2C
/* 813B4408 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B440C | 38 9F 03 FD */	addi r4, r31, 0x3fd
/* 813B4410 | 38 A0 00 01 */	li r5, 0x1
/* 813B4414 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B4418 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B441C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B4420 | 7D 89 03 A6 */	mtctr r12
/* 813B4424 | 4E 80 04 21 */	bctrl
/* 813B4428 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B442C | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813B4430 | 7D 89 03 A6 */	mtctr r12
/* 813B4434 | 4E 80 04 21 */	bctrl
/* 813B4438 | 38 81 00 28 */	addi r4, r1, 0x28
/* 813B443C | 38 A0 00 00 */	li r5, 0x0
/* 813B4440 | 48 17 38 ED */	bl fn_81527D2C
/* 813B4444 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4448 | 38 9F 04 08 */	addi r4, r31, 0x408
/* 813B444C | 38 A0 00 01 */	li r5, 0x1
/* 813B4450 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B4454 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4458 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B445C | 7D 89 03 A6 */	mtctr r12
/* 813B4460 | 4E 80 04 21 */	bctrl
/* 813B4464 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4468 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813B446C | 7D 89 03 A6 */	mtctr r12
/* 813B4470 | 4E 80 04 21 */	bctrl
/* 813B4474 | 38 81 00 48 */	addi r4, r1, 0x48
/* 813B4478 | 38 A0 00 00 */	li r5, 0x0
/* 813B447C | 48 17 38 B1 */	bl fn_81527D2C
/* 813B4480 | 3B 3F 03 98 */	addi r25, r31, 0x398
/* 813B4484 | 3A E0 00 00 */	li r23, 0x0
/* 813B4488 | 3B 60 00 00 */	li r27, 0x0
/* 813B448C | 3B 80 00 00 */	li r28, 0x0
.L_813B4490:
/* 813B4490 | 3B 41 00 08 */	addi r26, r1, 0x8
/* 813B4494 | 7F 19 E2 14 */	add r24, r25, r28
/* 813B4498 | 7F 5A DA 14 */	add r26, r26, r27
/* 813B449C | 3A C0 00 00 */	li r22, 0x0
/* 813B44A0 | 3B A0 00 00 */	li r29, 0x0
.L_813B44A4:
/* 813B44A4 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B44A8 | 38 A0 00 01 */	li r5, 0x1
/* 813B44AC | 7C 98 E8 2E */	lwzx r4, r24, r29
/* 813B44B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B44B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B44B8 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B44BC | 7D 89 03 A6 */	mtctr r12
/* 813B44C0 | 4E 80 04 21 */	bctrl
/* 813B44C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B44C8 | 81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 813B44CC | 7D 89 03 A6 */	mtctr r12
/* 813B44D0 | 4E 80 04 21 */	bctrl
/* 813B44D4 | 7F 45 D3 78 */	mr r5, r26
/* 813B44D8 | 38 80 00 00 */	li r4, 0x0
/* 813B44DC | 48 17 39 41 */	bl fn_81527E1C
/* 813B44E0 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 813B44E4 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813B44E8 | 2C 16 00 04 */	cmpwi r22, 0x4
/* 813B44EC | 41 80 FF B8 */	blt .L_813B44A4
/* 813B44F0 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813B44F4 | 3B 9C 00 10 */	addi r28, r28, 0x10
/* 813B44F8 | 2C 17 00 03 */	cmpwi r23, 0x3
/* 813B44FC | 3B 7B 00 20 */	addi r27, r27, 0x20
/* 813B4500 | 41 80 FF 90 */	blt .L_813B4490
.L_813B4504:
/* 813B4504 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4508 | 38 A0 00 01 */	li r5, 0x1
/* 813B450C | 80 8D 8A 6C */	lwz r4, lbl_81696AAC@sda21(r0)
/* 813B4510 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B4514 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4518 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B451C | 7D 89 03 A6 */	mtctr r12
/* 813B4520 | 4E 80 04 21 */	bctrl
/* 813B4524 | 7C 64 1B 78 */	mr r4, r3
/* 813B4528 | 7F C3 F3 78 */	mr r3, r30
/* 813B452C | 38 A0 00 01 */	li r5, 0x1
/* 813B4530 | 38 C0 00 01 */	li r6, 0x1
/* 813B4534 | 48 00 57 D5 */	bl setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb
/* 813B4538 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B453C | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B4540 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B4544 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B4548 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B454C | 4B F8 47 2D */	bl checkNeedUpdate__Q33ipl7channel7ManagerCFii
/* 813B4550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4554 | 41 82 00 40 */	beq .L_813B4594
/* 813B4558 | 80 DE 02 08 */	lwz r6, 0x208(r30)
/* 813B455C | 38 6D 8A 6C */	li r3, lbl_81696AAC@sda21
/* 813B4560 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813B4564 | 38 A0 00 01 */	li r5, 0x1
/* 813B4568 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813B456C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4570 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B4574 | 7D 89 03 A6 */	mtctr r12
/* 813B4578 | 4E 80 04 21 */	bctrl
/* 813B457C | 7C 64 1B 78 */	mr r4, r3
/* 813B4580 | 7F C3 F3 78 */	mr r3, r30
/* 813B4584 | 38 A0 00 14 */	li r5, 0x14
/* 813B4588 | 38 C0 00 01 */	li r6, 0x1
/* 813B458C | 48 00 57 7D */	bl setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb
/* 813B4590 | 48 00 00 3C */	b .L_813B45CC
.L_813B4594:
/* 813B4594 | 80 DE 02 08 */	lwz r6, 0x208(r30)
/* 813B4598 | 38 6D 8A 6C */	li r3, lbl_81696AAC@sda21
/* 813B459C | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813B45A0 | 38 A0 00 01 */	li r5, 0x1
/* 813B45A4 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813B45A8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B45AC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B45B0 | 7D 89 03 A6 */	mtctr r12
/* 813B45B4 | 4E 80 04 21 */	bctrl
/* 813B45B8 | 7C 64 1B 78 */	mr r4, r3
/* 813B45BC | 7F C3 F3 78 */	mr r3, r30
/* 813B45C0 | 38 A0 00 02 */	li r5, 0x2
/* 813B45C4 | 38 C0 00 01 */	li r6, 0x1
/* 813B45C8 | 48 00 57 41 */	bl setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb
.L_813B45CC:
/* 813B45CC | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B45D0 | 7F C3 F3 78 */	mr r3, r30
/* 813B45D4 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B45D8 | 48 00 54 09 */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B45DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B45E0 | 41 82 00 0C */	beq .L_813B45EC
/* 813B45E4 | 38 00 00 01 */	li r0, 0x1
/* 813B45E8 | 90 1E 00 8C */	stw r0, 0x8c(r30)
.L_813B45EC:
/* 813B45EC | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B45F0 | 38 C0 00 00 */	li r6, 0x0
/* 813B45F4 | 80 9F 01 A4 */	lwz r4, 0x1a4(r31)
/* 813B45F8 | 38 E0 00 00 */	li r7, 0x0
/* 813B45FC | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813B4600 | 4B FB 5E E1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B4604 | 90 7E 00 94 */	stw r3, 0x94(r30)
/* 813B4608 | 3B 5F 01 A4 */	addi r26, r31, 0x1a4
/* 813B460C | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4610 | 38 C0 00 00 */	li r6, 0x0
/* 813B4614 | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 813B4618 | 38 E0 00 01 */	li r7, 0x1
/* 813B461C | 80 BF 00 68 */	lwz r5, 0x68(r31)
/* 813B4620 | 4B FB 5E C1 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B4624 | 90 7E 00 98 */	stw r3, 0x98(r30)
/* 813B4628 | 80 7E 02 00 */	lwz r3, 0x200(r30)
/* 813B462C | 80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 813B4630 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B4634 | 40 82 00 5C */	bne .L_813B4690
/* 813B4638 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B463C | 7F C3 F3 78 */	mr r3, r30
/* 813B4640 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B4644 | 48 00 53 9D */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B4648 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B464C | 41 82 00 44 */	beq .L_813B4690
/* 813B4650 | 3B 3F 00 68 */	addi r25, r31, 0x68
/* 813B4654 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4658 | 80 9F 01 A4 */	lwz r4, 0x1a4(r31)
/* 813B465C | 38 C0 00 00 */	li r6, 0x0
/* 813B4660 | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 813B4664 | 38 E0 00 01 */	li r7, 0x1
/* 813B4668 | 4B FB 5E 79 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B466C | 90 7E 00 BC */	stw r3, 0xbc(r30)
/* 813B4670 | 38 C0 00 00 */	li r6, 0x0
/* 813B4674 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4678 | 38 E0 00 00 */	li r7, 0x0
/* 813B467C | 80 9A 00 04 */	lwz r4, 0x4(r26)
/* 813B4680 | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 813B4684 | 4B FB 5E 5D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B4688 | 90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 813B468C | 48 00 00 54 */	b .L_813B46E0
.L_813B4690:
/* 813B4690 | 3B 3F 00 68 */	addi r25, r31, 0x68
/* 813B4694 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4698 | 80 9F 01 A4 */	lwz r4, 0x1a4(r31)
/* 813B469C | 38 C0 00 00 */	li r6, 0x0
/* 813B46A0 | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 813B46A4 | 38 E0 00 00 */	li r7, 0x0
/* 813B46A8 | 4B FB 5E 39 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B46AC | 90 7E 00 BC */	stw r3, 0xbc(r30)
/* 813B46B0 | 7F C3 F3 78 */	mr r3, r30
/* 813B46B4 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B46B8 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B46BC | 48 00 53 25 */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B46C0 | 38 9F 01 A4 */	addi r4, r31, 0x1a4
/* 813B46C4 | 7C 67 1B 78 */	mr r7, r3
/* 813B46C8 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B46CC | 38 C0 00 00 */	li r6, 0x0
/* 813B46D0 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813B46D4 | 80 B9 00 04 */	lwz r5, 0x4(r25)
/* 813B46D8 | 4B FB 5E 09 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B46DC | 90 7E 00 C0 */	stw r3, 0xc0(r30)
.L_813B46E0:
/* 813B46E0 | 3B 3F 01 A4 */	addi r25, r31, 0x1a4
/* 813B46E4 | 3B 5F 00 68 */	addi r26, r31, 0x68
/* 813B46E8 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B46EC | 38 C0 00 00 */	li r6, 0x0
/* 813B46F0 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 813B46F4 | 38 E0 00 00 */	li r7, 0x0
/* 813B46F8 | 80 BA 00 08 */	lwz r5, 0x8(r26)
/* 813B46FC | 4B FB 5D E5 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B4700 | 90 7E 00 EC */	stw r3, 0xec(r30)
/* 813B4704 | 38 C0 00 00 */	li r6, 0x0
/* 813B4708 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B470C | 38 E0 00 00 */	li r7, 0x0
/* 813B4710 | 80 99 00 08 */	lwz r4, 0x8(r25)
/* 813B4714 | 80 BA 00 0C */	lwz r5, 0xc(r26)
/* 813B4718 | 4B FB 5D C9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B471C | 90 7E 01 14 */	stw r3, 0x114(r30)
/* 813B4720 | 38 C0 00 00 */	li r6, 0x0
/* 813B4724 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4728 | 38 E0 00 00 */	li r7, 0x0
/* 813B472C | 80 99 00 0C */	lwz r4, 0xc(r25)
/* 813B4730 | 80 BA 00 10 */	lwz r5, 0x10(r26)
/* 813B4734 | 4B FB 5D AD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B4738 | 90 7E 01 40 */	stw r3, 0x140(r30)
/* 813B473C | 38 C0 00 00 */	li r6, 0x0
/* 813B4740 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4744 | 38 E0 00 00 */	li r7, 0x0
/* 813B4748 | 80 99 00 0C */	lwz r4, 0xc(r25)
/* 813B474C | 80 BA 00 14 */	lwz r5, 0x14(r26)
/* 813B4750 | 4B FB 5D 91 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B4754 | 90 7E 01 68 */	stw r3, 0x168(r30)
/* 813B4758 | 38 C0 00 00 */	li r6, 0x0
/* 813B475C | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4760 | 38 E0 00 00 */	li r7, 0x0
/* 813B4764 | 80 99 00 10 */	lwz r4, 0x10(r25)
/* 813B4768 | 80 BA 00 10 */	lwz r5, 0x10(r26)
/* 813B476C | 4B FB 5D 75 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B4770 | 90 7E 01 44 */	stw r3, 0x144(r30)
/* 813B4774 | 7F C3 F3 78 */	mr r3, r30
/* 813B4778 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B477C | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B4780 | 48 00 52 61 */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B4784 | 7C 60 00 34 */	cntlzw r0, r3
/* 813B4788 | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B478C | 80 99 00 10 */	lwz r4, 0x10(r25)
/* 813B4790 | 54 07 D9 7E */	srwi r7, r0, 5
/* 813B4794 | 80 BA 00 14 */	lwz r5, 0x14(r26)
/* 813B4798 | 38 C0 00 00 */	li r6, 0x0
/* 813B479C | 4B FB 5D 45 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B47A0 | 90 7E 01 6C */	stw r3, 0x16c(r30)
/* 813B47A4 | 3A C0 00 06 */	li r22, 0x6
/* 813B47A8 | 3B A0 00 F0 */	li r29, 0xf0
/* 813B47AC | 3B 80 00 18 */	li r28, 0x18
.L_813B47B0:
/* 813B47B0 | 7F 1E EA 14 */	add r24, r30, r29
/* 813B47B4 | 3A E0 00 05 */	li r23, 0x5
/* 813B47B8 | 3B 60 00 14 */	li r27, 0x14
.L_813B47BC:
/* 813B47BC | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B47C0 | 38 C0 00 00 */	li r6, 0x0
/* 813B47C4 | 7C 99 D8 2E */	lwzx r4, r25, r27
/* 813B47C8 | 38 E0 00 00 */	li r7, 0x0
/* 813B47CC | 7C BA E0 2E */	lwzx r5, r26, r28
/* 813B47D0 | 4B FB 5D 11 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B47D4 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813B47D8 | 7C 98 DA 14 */	add r4, r24, r27
/* 813B47DC | 2C 17 00 06 */	cmpwi r23, 0x6
/* 813B47E0 | 90 64 00 94 */	stw r3, 0x94(r4)
/* 813B47E4 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 813B47E8 | 40 81 FF D4 */	ble .L_813B47BC
/* 813B47EC | 3A D6 00 01 */	addi r22, r22, 0x1
/* 813B47F0 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813B47F4 | 2C 16 00 07 */	cmpwi r22, 0x7
/* 813B47F8 | 3B BD 00 28 */	addi r29, r29, 0x28
/* 813B47FC | 40 81 FF B4 */	ble .L_813B47B0
/* 813B4800 | 3B 7F 01 A4 */	addi r27, r31, 0x1a4
/* 813B4804 | 3A C0 00 07 */	li r22, 0x7
/* 813B4808 | 3B A0 00 1C */	li r29, 0x1c
.L_813B480C:
/* 813B480C | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4810 | 38 C0 00 00 */	li r6, 0x0
/* 813B4814 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 813B4818 | 38 E0 00 00 */	li r7, 0x0
/* 813B481C | 80 AD 89 F0 */	lwz r5, lbl_81696A30@sda21(r0)
/* 813B4820 | 4B FB 5B 5D */	bl bind__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B4824 | 3A D6 00 01 */	addi r22, r22, 0x1
/* 813B4828 | 7C 9E EA 14 */	add r4, r30, r29
/* 813B482C | 2C 16 00 09 */	cmpwi r22, 0x9
/* 813B4830 | 90 64 01 D4 */	stw r3, 0x1d4(r4)
/* 813B4834 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813B4838 | 40 81 FF D4 */	ble .L_813B480C
/* 813B483C | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4840 | 4B FB 5D F5 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B4844 | 38 60 00 10 */	li r3, 0x10
/* 813B4848 | 48 24 38 55 */	bl __nw__FUl
/* 813B484C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4850 | 7C 7B 1B 78 */	mr r27, r3
/* 813B4854 | 41 82 00 1C */	beq .L_813B4870
/* 813B4858 | 38 00 00 00 */	li r0, 0x0
/* 813B485C | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene24ChannelTitleEventHandler@ha
/* 813B4860 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 813B4864 | 38 84 EF 64 */	addi r4, r4, __vt__Q33ipl5scene24ChannelTitleEventHandler@l
/* 813B4868 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813B486C | 93 C3 00 0C */	stw r30, 0xc(r3)
.L_813B4870:
/* 813B4870 | 38 60 00 34 */	li r3, 0x34
/* 813B4874 | 48 24 38 29 */	bl __nw__FUl
/* 813B4878 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B487C | 7C 79 1B 78 */	mr r25, r3
/* 813B4880 | 41 82 00 84 */	beq .L_813B4904
/* 813B4884 | 80 BE 02 08 */	lwz r5, 0x208(r30)
/* 813B4888 | 3C 80 81 64 */	lis r4, __vt__Q23gui7Manager@ha
/* 813B488C | 38 84 27 E0 */	addi r4, r4, __vt__Q23gui7Manager@l
/* 813B4890 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 813B4894 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813B4898 | 38 00 00 00 */	li r0, 0x0
/* 813B489C | 3B 45 02 98 */	addi r26, r5, 0x298
/* 813B48A0 | 93 63 00 04 */	stw r27, 0x4(r3)
/* 813B48A4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B48A8 | 41 82 00 1C */	beq .L_813B48C4
/* 813B48AC | 81 9B 00 00 */	lwz r12, 0x0(r27)
/* 813B48B0 | 7F 63 DB 78 */	mr r3, r27
/* 813B48B4 | 7F 24 CB 78 */	mr r4, r25
/* 813B48B8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B48BC | 7D 89 03 A6 */	mtctr r12
/* 813B48C0 | 4E 80 04 21 */	bctrl
.L_813B48C4:
/* 813B48C4 | 38 79 00 08 */	addi r3, r25, 0x8
/* 813B48C8 | 38 80 00 08 */	li r4, 0x8
/* 813B48CC | 48 15 D7 91 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813B48D0 | 3C A0 81 64 */	lis r5, __vt__Q23gui11PaneManager@ha
/* 813B48D4 | 38 79 00 18 */	addi r3, r25, 0x18
/* 813B48D8 | 38 A5 27 84 */	addi r5, r5, __vt__Q23gui11PaneManager@l
/* 813B48DC | 38 80 00 08 */	li r4, 0x8
/* 813B48E0 | 90 B9 00 00 */	stw r5, 0x0(r25)
/* 813B48E4 | 93 59 00 24 */	stw r26, 0x24(r25)
/* 813B48E8 | 48 15 D7 75 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 813B48EC | 3C 60 81 63 */	lis r3, __vt__Q33ipl3gui11PaneManager@ha
/* 813B48F0 | 38 00 00 00 */	li r0, 0x0
/* 813B48F4 | 38 63 59 C4 */	addi r3, r3, __vt__Q33ipl3gui11PaneManager@l
/* 813B48F8 | 90 79 00 00 */	stw r3, 0x0(r25)
/* 813B48FC | 90 19 00 2C */	stw r0, 0x2c(r25)
/* 813B4900 | 98 19 00 30 */	stb r0, 0x30(r25)
.L_813B4904:
/* 813B4904 | 93 3E 02 0C */	stw r25, 0x20c(r30)
/* 813B4908 | 7F 23 CB 78 */	mr r3, r25
/* 813B490C | 80 9E 02 08 */	lwz r4, 0x208(r30)
/* 813B4910 | 81 99 00 00 */	lwz r12, 0x0(r25)
/* 813B4914 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813B4918 | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 813B491C | 7D 89 03 A6 */	mtctr r12
/* 813B4920 | 4E 80 04 21 */	bctrl
/* 813B4924 | 80 7E 02 0C */	lwz r3, 0x20c(r30)
/* 813B4928 | 38 80 00 00 */	li r4, 0x0
/* 813B492C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4930 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813B4934 | 7D 89 03 A6 */	mtctr r12
/* 813B4938 | 4E 80 04 21 */	bctrl
/* 813B493C | 80 7E 02 08 */	lwz r3, 0x208(r30)
/* 813B4940 | 38 A0 00 01 */	li r5, 0x1
/* 813B4944 | 80 8D 89 E0 */	lwz r4, lbl_81696A20@sda21(r0)
/* 813B4948 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B494C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4950 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B4954 | 7D 89 03 A6 */	mtctr r12
/* 813B4958 | 4E 80 04 21 */	bctrl
/* 813B495C | 7C 64 1B 78 */	mr r4, r3
/* 813B4960 | 80 7E 02 0C */	lwz r3, 0x20c(r30)
/* 813B4964 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4968 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813B496C | 7D 89 03 A6 */	mtctr r12
/* 813B4970 | 4E 80 04 21 */	bctrl
/* 813B4974 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4978 | 38 80 00 01 */	li r4, 0x1
/* 813B497C | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813B4980 | 7D 89 03 A6 */	mtctr r12
/* 813B4984 | 4E 80 04 21 */	bctrl
/* 813B4988 | 80 DE 02 08 */	lwz r6, 0x208(r30)
/* 813B498C | 38 6D 89 E0 */	li r3, lbl_81696A20@sda21
/* 813B4990 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813B4994 | 38 A0 00 01 */	li r5, 0x1
/* 813B4998 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813B499C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B49A0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B49A4 | 7D 89 03 A6 */	mtctr r12
/* 813B49A8 | 4E 80 04 21 */	bctrl
/* 813B49AC | 7C 64 1B 78 */	mr r4, r3
/* 813B49B0 | 80 7E 02 0C */	lwz r3, 0x20c(r30)
/* 813B49B4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B49B8 | 81 8C 00 48 */	lwz r12, 0x48(r12)
/* 813B49BC | 7D 89 03 A6 */	mtctr r12
/* 813B49C0 | 4E 80 04 21 */	bctrl
/* 813B49C4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B49C8 | 38 80 00 01 */	li r4, 0x1
/* 813B49CC | 81 8C 00 54 */	lwz r12, 0x54(r12)
/* 813B49D0 | 7D 89 03 A6 */	mtctr r12
/* 813B49D4 | 4E 80 04 21 */	bctrl
/* 813B49D8 | 38 60 05 80 */	li r3, 0x580
/* 813B49DC | 48 24 36 C1 */	bl __nw__FUl
/* 813B49E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B49E4 | 41 82 00 18 */	beq .L_813B49FC
/* 813B49E8 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813B49EC | 38 FF 04 13 */	addi r7, r31, 0x413
/* 813B49F0 | 80 BE 02 04 */	lwz r5, 0x204(r30)
/* 813B49F4 | 38 CD 8A 7C */	li r6, lbl_81696ABC@sda21
/* 813B49F8 | 4B FB 56 2D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813B49FC:
/* 813B49FC | 90 7E 02 10 */	stw r3, 0x210(r30)
/* 813B4A00 | 38 60 05 80 */	li r3, 0x580
/* 813B4A04 | 48 24 36 99 */	bl __nw__FUl
/* 813B4A08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4A0C | 41 82 00 18 */	beq .L_813B4A24
/* 813B4A10 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813B4A14 | 38 FF 04 24 */	addi r7, r31, 0x424
/* 813B4A18 | 80 BE 02 04 */	lwz r5, 0x204(r30)
/* 813B4A1C | 38 CD 8A 7C */	li r6, lbl_81696ABC@sda21
/* 813B4A20 | 4B FB 56 05 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813B4A24:
/* 813B4A24 | 90 7E 02 14 */	stw r3, 0x214(r30)
/* 813B4A28 | 38 9F 04 35 */	addi r4, r31, 0x435
/* 813B4A2C | 38 A0 00 01 */	li r5, 0x1
/* 813B4A30 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B4A34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4A38 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B4A3C | 7D 89 03 A6 */	mtctr r12
/* 813B4A40 | 4E 80 04 21 */	bctrl
/* 813B4A44 | 4B F9 14 21 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813B4A48 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813B4A4C | 7C 76 1B 78 */	mr r22, r3
/* 813B4A50 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813B4A54 | 38 80 00 1A */	li r4, 0x1a
/* 813B4A58 | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 813B4A5C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813B4A60 | 4B F8 9D 5D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813B4A64 | 81 96 00 00 */	lwz r12, 0x0(r22)
/* 813B4A68 | 7C 64 1B 78 */	mr r4, r3
/* 813B4A6C | 7E C3 B3 78 */	mr r3, r22
/* 813B4A70 | 38 A0 00 00 */	li r5, 0x0
/* 813B4A74 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813B4A78 | 7D 89 03 A6 */	mtctr r12
/* 813B4A7C | 4E 80 04 21 */	bctrl
/* 813B4A80 | 38 60 05 80 */	li r3, 0x580
/* 813B4A84 | 48 24 36 19 */	bl __nw__FUl
/* 813B4A88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4A8C | 41 82 00 18 */	beq .L_813B4AA4
/* 813B4A90 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813B4A94 | 38 FF 04 40 */	addi r7, r31, 0x440
/* 813B4A98 | 80 BE 02 04 */	lwz r5, 0x204(r30)
/* 813B4A9C | 38 CD 8A 7C */	li r6, lbl_81696ABC@sda21
/* 813B4AA0 | 4B FB 55 85 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813B4AA4:
/* 813B4AA4 | 90 7E 03 34 */	stw r3, 0x334(r30)
/* 813B4AA8 | 38 9F 04 54 */	addi r4, r31, 0x454
/* 813B4AAC | 38 A0 00 01 */	li r5, 0x1
/* 813B4AB0 | 4B FB 58 BD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B4AB4 | 90 7E 03 38 */	stw r3, 0x338(r30)
/* 813B4AB8 | 38 9F 04 6F */	addi r4, r31, 0x46f
/* 813B4ABC | 80 7E 03 34 */	lwz r3, 0x334(r30)
/* 813B4AC0 | 38 A0 00 00 */	li r5, 0x0
/* 813B4AC4 | 4B FB 58 A9 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B4AC8 | 90 7E 03 3C */	stw r3, 0x33c(r30)
/* 813B4ACC | 80 7E 03 34 */	lwz r3, 0x334(r30)
/* 813B4AD0 | 4B FB 5B 65 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B4AD4 | 7F C3 F3 78 */	mr r3, r30
/* 813B4AD8 | 38 80 00 00 */	li r4, 0x0
/* 813B4ADC | 48 00 5F 09 */	bl updateLockedMsg__Q33ipl5scene12ChannelTitleFi
/* 813B4AE0 | 7F C3 F3 78 */	mr r3, r30
/* 813B4AE4 | 48 00 54 FD */	bl dispTimeLimitWindow__Q33ipl5scene12ChannelTitleFv
/* 813B4AE8 | 38 60 05 80 */	li r3, 0x580
/* 813B4AEC | 48 24 35 B1 */	bl __nw__FUl
/* 813B4AF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4AF4 | 41 82 00 18 */	beq .L_813B4B0C
/* 813B4AF8 | 80 9E 00 24 */	lwz r4, 0x24(r30)
/* 813B4AFC | 38 CD 8A 7C */	li r6, lbl_81696ABC@sda21
/* 813B4B00 | 80 BE 02 50 */	lwz r5, 0x250(r30)
/* 813B4B04 | 80 ED 8A 00 */	lwz r7, lbl_81696A40@sda21(r0)
/* 813B4B08 | 4B FB 55 1D */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_813B4B0C:
/* 813B4B0C | 90 7E 02 54 */	stw r3, 0x254(r30)
/* 813B4B10 | 7F C3 F3 78 */	mr r3, r30
/* 813B4B14 | 48 00 39 E1 */	bl bindDiskAnms__Q33ipl5scene12ChannelTitleFv
/* 813B4B18 | 80 7E 02 54 */	lwz r3, 0x254(r30)
/* 813B4B1C | 38 8D 8A 80 */	li r4, lbl_81696AC0@sda21
/* 813B4B20 | 38 A0 00 01 */	li r5, 0x1
/* 813B4B24 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B4B28 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4B2C | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B4B30 | 7D 89 03 A6 */	mtctr r12
/* 813B4B34 | 4E 80 04 21 */	bctrl
/* 813B4B38 | 7C 64 1B 78 */	mr r4, r3
/* 813B4B3C | 7F C3 F3 78 */	mr r3, r30
/* 813B4B40 | 38 A0 00 00 */	li r5, 0x0
/* 813B4B44 | 38 C0 00 01 */	li r6, 0x1
/* 813B4B48 | 48 00 51 C1 */	bl setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb
/* 813B4B4C | 80 7E 02 54 */	lwz r3, 0x254(r30)
/* 813B4B50 | 38 9F 04 88 */	addi r4, r31, 0x488
/* 813B4B54 | 38 A0 00 01 */	li r5, 0x1
/* 813B4B58 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B4B5C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4B60 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B4B64 | 7D 89 03 A6 */	mtctr r12
/* 813B4B68 | 4E 80 04 21 */	bctrl
/* 813B4B6C | 7C 64 1B 78 */	mr r4, r3
/* 813B4B70 | 7F C3 F3 78 */	mr r3, r30
/* 813B4B74 | 38 A0 00 04 */	li r5, 0x4
/* 813B4B78 | 38 C0 00 01 */	li r6, 0x1
/* 813B4B7C | 48 00 51 8D */	bl setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb
/* 813B4B80 | 80 7E 02 54 */	lwz r3, 0x254(r30)
/* 813B4B84 | 38 9F 04 93 */	addi r4, r31, 0x493
/* 813B4B88 | 38 A0 00 01 */	li r5, 0x1
/* 813B4B8C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B4B90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4B94 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B4B98 | 7D 89 03 A6 */	mtctr r12
/* 813B4B9C | 4E 80 04 21 */	bctrl
/* 813B4BA0 | 7C 64 1B 78 */	mr r4, r3
/* 813B4BA4 | 7F C3 F3 78 */	mr r3, r30
/* 813B4BA8 | 38 A0 00 06 */	li r5, 0x6
/* 813B4BAC | 38 C0 00 01 */	li r6, 0x1
/* 813B4BB0 | 48 00 51 59 */	bl setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb
/* 813B4BB4 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B4BB8 | 7F C3 F3 78 */	mr r3, r30
/* 813B4BBC | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B4BC0 | 48 00 43 F1 */	bl isDiskChannelByDraw__Q33ipl5scene12ChannelTitleFii
/* 813B4BC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4BC8 | 40 82 00 14 */	bne .L_813B4BDC
/* 813B4BCC | 80 7E 02 54 */	lwz r3, 0x254(r30)
/* 813B4BD0 | 38 80 00 00 */	li r4, 0x0
/* 813B4BD4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B4BD8 | 4B F8 F8 3D */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813B4BDC:
/* 813B4BDC | 80 7E 02 54 */	lwz r3, 0x254(r30)
/* 813B4BE0 | 4B FB 5A 55 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B4BE4 | 7F C3 F3 78 */	mr r3, r30
/* 813B4BE8 | 48 00 15 A5 */	bl createChanLayout__Q33ipl5scene12ChannelTitleFv
/* 813B4BEC | 38 60 00 30 */	li r3, 0x30
/* 813B4BF0 | 48 24 34 AD */	bl __nw__FUl
/* 813B4BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4BF8 | 41 82 00 10 */	beq .L_813B4C08
/* 813B4BFC | 3C 80 81 64 */	lis r4, "__vt__Q33ipl4math14HermiteIntp<f>"@ha
/* 813B4C00 | 38 84 12 68 */	addi r4, r4, "__vt__Q33ipl4math14HermiteIntp<f>"@l
/* 813B4C04 | 90 83 00 00 */	stw r4, 0x0(r3)
.L_813B4C08:
/* 813B4C08 | C0 42 85 F0 */	lfs f2, lbl_816949F0@sda21(r0)
/* 813B4C0C | 38 8D 8A 74 */	li r4, lbl_81696AB4@sda21
/* 813B4C10 | 90 7E 01 FC */	stw r3, 0x1fc(r30)
/* 813B4C14 | 38 AD 8A 78 */	li r5, lbl_81696AB8@sda21
/* 813B4C18 | FC 60 10 90 */	fmr f3, f2
/* 813B4C1C | C0 22 85 F4 */	lfs f1, lbl_816949F4@sda21(r0)
/* 813B4C20 | C0 82 85 F8 */	lfs f4, lbl_816949F8@sda21(r0)
/* 813B4C24 | 38 C0 00 00 */	li r6, 0x0
/* 813B4C28 | 4B FA F0 29 */	bl "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif"
/* 813B4C2C | 80 9E 01 FC */	lwz r4, 0x1fc(r30)
/* 813B4C30 | 38 00 00 00 */	li r0, 0x0
/* 813B4C34 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813B4C38 | 38 60 00 34 */	li r3, 0x34
/* 813B4C3C | 90 04 00 18 */	stw r0, 0x18(r4)
/* 813B4C40 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813B4C44 | 38 A0 00 20 */	li r5, 0x20
/* 813B4C48 | 80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 813B4C4C | 48 24 34 65 */	bl __nw__FUlPQ23EGG4Heapi
/* 813B4C50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4C54 | 7C 79 1B 78 */	mr r25, r3
/* 813B4C58 | 41 82 00 38 */	beq .L_813B4C90
/* 813B4C5C | 83 5B 00 2C */	lwz r26, 0x2c(r27)
/* 813B4C60 | 4B F8 0D 35 */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813B4C64 | A3 63 00 06 */	lhz r27, 0x6(r3)
/* 813B4C68 | 4B F8 0D 2D */	bl getRenderModeObj__Q23ipl6SystemFv
/* 813B4C6C | A0 E3 00 04 */	lhz r7, 0x4(r3)
/* 813B4C70 | 7F 23 CB 78 */	mr r3, r25
/* 813B4C74 | 7F 44 D3 78 */	mr r4, r26
/* 813B4C78 | 7F 68 DB 78 */	mr r8, r27
/* 813B4C7C | 38 A0 00 00 */	li r5, 0x0
/* 813B4C80 | 38 C0 00 00 */	li r6, 0x0
/* 813B4C84 | 39 20 00 04 */	li r9, 0x4
/* 813B4C88 | 4B FA E6 21 */	bl __ct__Q33ipl7utility7CaptureFPQ23EGG4Heapiiii9_GXTexFmt
/* 813B4C8C | 7C 79 1B 78 */	mr r25, r3
.L_813B4C90:
/* 813B4C90 | 3C 60 00 01 */	lis r3, 0x1
/* 813B4C94 | 38 00 00 02 */	li r0, 0x2
/* 813B4C98 | 38 83 8C A0 */	subi r4, r3, 0x7360
/* 813B4C9C | 93 3E 03 58 */	stw r25, 0x358(r30)
/* 813B4CA0 | 7F C3 F3 78 */	mr r3, r30
/* 813B4CA4 | 90 9E 03 90 */	stw r4, 0x390(r30)
/* 813B4CA8 | 90 9E 03 8C */	stw r4, 0x38c(r30)
/* 813B4CAC | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813B4CB0 | 48 00 29 C1 */	bl tryToStartScene__Q33ipl5scene12ChannelTitleFv
/* 813B4CB4 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813B4CB8 | 3C 60 00 08 */	lis r3, 0x8
/* 813B4CBC | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813B4CC0 | 38 A0 00 06 */	li r5, 0x6
/* 813B4CC4 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813B4CC8 | 48 24 29 AD */	bl fn_815F7674
/* 813B4CCC | 90 7E 03 98 */	stw r3, 0x398(r30)
/* 813B4CD0 | 3C 60 00 08 */	lis r3, 0x8
/* 813B4CD4 | 38 A0 00 06 */	li r5, 0x6
/* 813B4CD8 | 80 9B 00 28 */	lwz r4, 0x28(r27)
/* 813B4CDC | 48 24 29 99 */	bl fn_815F7674
/* 813B4CE0 | 90 7E 03 9C */	stw r3, 0x39c(r30)
/* 813B4CE4 | 38 80 00 05 */	li r4, 0x5
/* 813B4CE8 | 80 7B 00 64 */	lwz r3, 0x64(r27)
/* 813B4CEC | 48 05 64 4D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B4CF0 | 38 00 00 01 */	li r0, 0x1
/* 813B4CF4 | 39 61 00 90 */	addi r11, r1, 0x90
/* 813B4CF8 | 98 03 01 05 */	stb r0, 0x105(r3)
/* 813B4CFC | 48 24 47 FD */	bl _restgpr_22
/* 813B4D00 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 813B4D04 | 7C 08 03 A6 */	mtlr r0
/* 813B4D08 | 38 21 00 90 */	addi r1, r1, 0x90
/* 813B4D0C | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene12ChannelTitleFv

# .text:0xCE0 | 0x813B4D10 | size: 0x1B4
# ipl::scene::ChannelTitle::calcCommon()
.fn calcCommon__Q33ipl5scene12ChannelTitleFv, global
/* 813B4D10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B4D14 | 7C 08 02 A6 */	mflr r0
/* 813B4D18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B4D1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B4D20 | 7C 7F 1B 78 */	mr r31, r3
/* 813B4D24 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B4D28 | 80 63 02 0C */	lwz r3, 0x20c(r3)
/* 813B4D2C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B4D30 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813B4D34 | 7D 89 03 A6 */	mtctr r12
/* 813B4D38 | 4E 80 04 21 */	bctrl
/* 813B4D3C | 80 7F 02 08 */	lwz r3, 0x208(r31)
/* 813B4D40 | 4B FB 59 C5 */	bl calc__Q33ipl6layout6ObjectFv
/* 813B4D44 | 80 1F 03 84 */	lwz r0, 0x384(r31)
/* 813B4D48 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B4D4C | 41 82 00 10 */	beq .L_813B4D5C
/* 813B4D50 | 7F E3 FB 78 */	mr r3, r31
/* 813B4D54 | 48 00 2D 15 */	bl calcChannelRso__Q33ipl5scene12ChannelTitleFv
/* 813B4D58 | 48 00 00 0C */	b .L_813B4D64
.L_813B4D5C:
/* 813B4D5C | 7F E3 FB 78 */	mr r3, r31
/* 813B4D60 | 48 00 2C 01 */	bl calcChannelCS__Q33ipl5scene12ChannelTitleFv
.L_813B4D64:
/* 813B4D64 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B4D68 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B4D6C | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B4D70 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B4D74 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B4D78 | 4B FF D4 AD */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B4D7C | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813B4D80 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B4D84 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813B4D88 | 41 82 00 20 */	beq .L_813B4DA8
/* 813B4D8C | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B4D90 | 7F E3 FB 78 */	mr r3, r31
/* 813B4D94 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B4D98 | 48 00 38 AD */	bl updateDiskState__Q33ipl5scene12ChannelTitleFii
/* 813B4D9C | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B4DA0 | 4B FB 59 65 */	bl calc__Q33ipl6layout6ObjectFv
/* 813B4DA4 | 48 00 00 18 */	b .L_813B4DBC
.L_813B4DA8:
/* 813B4DA8 | 7F E3 FB 78 */	mr r3, r31
/* 813B4DAC | 48 00 16 F1 */	bl calcModuleChannel__Q33ipl5scene12ChannelTitleFv
/* 813B4DB0 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B4DB4 | 38 00 00 00 */	li r0, 0x0
/* 813B4DB8 | 98 03 1B 81 */	stb r0, 0x1b81(r3)
.L_813B4DBC:
/* 813B4DBC | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813B4DC0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B4DC4 | 41 82 00 18 */	beq .L_813B4DDC
/* 813B4DC8 | 2C 03 00 0E */	cmpwi r3, 0xe
/* 813B4DCC | 41 82 00 10 */	beq .L_813B4DDC
/* 813B4DD0 | 38 03 FF FC */	subi r0, r3, 0x4
/* 813B4DD4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B4DD8 | 41 81 00 6C */	bgt .L_813B4E44
.L_813B4DDC:
/* 813B4DDC | 88 1F 00 90 */	lbz r0, 0x90(r31)
/* 813B4DE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B4DE4 | 40 82 00 60 */	bne .L_813B4E44
/* 813B4DE8 | 80 7F 02 44 */	lwz r3, 0x244(r31)
/* 813B4DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4DF0 | 41 82 00 54 */	beq .L_813B4E44
/* 813B4DF4 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B4DF8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B4DFC | 41 82 00 48 */	beq .L_813B4E44
/* 813B4E00 | 83 DF 02 48 */	lwz r30, 0x248(r31)
/* 813B4E04 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B4E08 | 41 82 00 18 */	beq .L_813B4E20
/* 813B4E0C | 7F C3 F3 78 */	mr r3, r30
/* 813B4E10 | 4B FA DA 61 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B4E14 | 38 00 00 01 */	li r0, 0x1
/* 813B4E18 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813B4E1C | 48 00 00 20 */	b .L_813B4E3C
.L_813B4E20:
/* 813B4E20 | 83 DF 02 40 */	lwz r30, 0x240(r31)
/* 813B4E24 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B4E28 | 41 82 00 14 */	beq .L_813B4E3C
/* 813B4E2C | 7F C3 F3 78 */	mr r3, r30
/* 813B4E30 | 4B FA DA 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B4E34 | 38 00 00 01 */	li r0, 0x1
/* 813B4E38 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813B4E3C:
/* 813B4E3C | 38 00 00 00 */	li r0, 0x0
/* 813B4E40 | 90 1F 02 44 */	stw r0, 0x244(r31)
.L_813B4E44:
/* 813B4E44 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 813B4E48 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813B4E4C | 40 82 00 38 */	bne .L_813B4E84
/* 813B4E50 | 88 1F 03 7C */	lbz r0, 0x37c(r31)
/* 813B4E54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B4E58 | 40 82 00 2C */	bne .L_813B4E84
/* 813B4E5C | 80 7F 01 14 */	lwz r3, 0x114(r31)
/* 813B4E60 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B4E64 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B4E68 | 41 82 00 1C */	beq .L_813B4E84
/* 813B4E6C | 83 DF 00 BC */	lwz r30, 0xbc(r31)
/* 813B4E70 | 7F C3 F3 78 */	mr r3, r30
/* 813B4E74 | 4B FA D9 FD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B4E78 | 38 00 00 01 */	li r0, 0x1
/* 813B4E7C | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813B4E80 | 98 1F 03 7C */	stb r0, 0x37c(r31)
.L_813B4E84:
/* 813B4E84 | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B4E88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B4E8C | 41 82 00 08 */	beq .L_813B4E94
/* 813B4E90 | 4B FB 58 75 */	bl calc__Q33ipl6layout6ObjectFv
.L_813B4E94:
/* 813B4E94 | 80 7F 02 10 */	lwz r3, 0x210(r31)
/* 813B4E98 | 4B FB 58 6D */	bl calc__Q33ipl6layout6ObjectFv
/* 813B4E9C | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 813B4EA0 | 4B FB 58 65 */	bl calc__Q33ipl6layout6ObjectFv
/* 813B4EA4 | 80 7F 03 34 */	lwz r3, 0x334(r31)
/* 813B4EA8 | 4B FB 58 5D */	bl calc__Q33ipl6layout6ObjectFv
/* 813B4EAC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B4EB0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B4EB4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B4EB8 | 7C 08 03 A6 */	mtlr r0
/* 813B4EBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B4EC0 | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene12ChannelTitleFv

# .text:0xE94 | 0x813B4EC4 | size: 0xD0
# ipl::scene::ChannelTitle::calcFadein()
.fn calcFadein__Q33ipl5scene12ChannelTitleFv, global
/* 813B4EC4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B4EC8 | 7C 08 02 A6 */	mflr r0
/* 813B4ECC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B4ED0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B4ED4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B4ED8 | 7C 7E 1B 78 */	mr r30, r3
/* 813B4EDC | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B4EE0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B4EE4 | 40 82 00 10 */	bne .L_813B4EF4
/* 813B4EE8 | 48 00 27 89 */	bl tryToStartScene__Q33ipl5scene12ChannelTitleFv
/* 813B4EEC | 38 60 00 00 */	li r3, 0x0
/* 813B4EF0 | 48 00 00 8C */	b .L_813B4F7C
.L_813B4EF4:
/* 813B4EF4 | 80 83 01 FC */	lwz r4, 0x1fc(r3)
/* 813B4EF8 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813B4EFC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B4F00 | 41 82 00 64 */	beq .L_813B4F64
/* 813B4F04 | 48 00 31 D1 */	bl initChanAnmAndSound__Q33ipl5scene12ChannelTitleFv
/* 813B4F08 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B4F0C | 38 80 00 05 */	li r4, 0x5
/* 813B4F10 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B4F14 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813B4F18 | 48 05 62 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B4F1C | 80 9E 03 54 */	lwz r4, 0x354(r30)
/* 813B4F20 | 7C 7F 1B 78 */	mr r31, r3
/* 813B4F24 | 38 A0 00 00 */	li r5, 0x0
/* 813B4F28 | 4B FE 7A 15 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813B4F2C | 80 7E 02 00 */	lwz r3, 0x200(r30)
/* 813B4F30 | 80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 813B4F34 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B4F38 | 41 82 00 1C */	beq .L_813B4F54
/* 813B4F3C | 7F E3 FB 78 */	mr r3, r31
/* 813B4F40 | 38 80 00 18 */	li r4, 0x18
/* 813B4F44 | 4B FE 7C 15 */	bl iplButton_8139CB58
/* 813B4F48 | 7F E3 FB 78 */	mr r3, r31
/* 813B4F4C | 38 80 00 17 */	li r4, 0x17
/* 813B4F50 | 4B FE 7C 09 */	bl iplButton_8139CB58
.L_813B4F54:
/* 813B4F54 | 38 00 00 01 */	li r0, 0x1
/* 813B4F58 | 38 60 00 01 */	li r3, 0x1
/* 813B4F5C | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813B4F60 | 48 00 00 1C */	b .L_813B4F7C
.L_813B4F64:
/* 813B4F64 | 81 84 00 00 */	lwz r12, 0x0(r4)
/* 813B4F68 | 7C 83 23 78 */	mr r3, r4
/* 813B4F6C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B4F70 | 7D 89 03 A6 */	mtctr r12
/* 813B4F74 | 4E 80 04 21 */	bctrl
/* 813B4F78 | 38 60 00 00 */	li r3, 0x0
.L_813B4F7C:
/* 813B4F7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B4F80 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B4F84 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B4F88 | 7C 08 03 A6 */	mtlr r0
/* 813B4F8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B4F90 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene12ChannelTitleFv

# .text:0xF64 | 0x813B4F94 | size: 0x19C
# ipl::scene::ChannelTitle::calcNormal()
.fn calcNormal__Q33ipl5scene12ChannelTitleFv, global
/* 813B4F94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B4F98 | 7C 08 02 A6 */	mflr r0
/* 813B4F9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B4FA0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B4FA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B4FA8 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B4FAC | 28 00 00 18 */	cmplwi r0, 0x18
/* 813B4FB0 | 41 81 00 C0 */	bgt .L_813B5070
/* 813B4FB4 | 3C 80 81 65 */	lis r4, jumptable_8164EC08@ha
/* 813B4FB8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B4FBC | 38 84 EC 08 */	addi r4, r4, jumptable_8164EC08@l
/* 813B4FC0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813B4FC4 | 7C 89 03 A6 */	mtctr r4
/* 813B4FC8 | 4E 80 04 20 */	bctr
.L_813B4FCC:
/* 813B4FCC | 48 00 15 81 */	bl calcNormalNormal__Q33ipl5scene12ChannelTitleFv
/* 813B4FD0 | 48 00 00 A0 */	b .L_813B5070
.L_813B4FD4:
/* 813B4FD4 | 80 83 00 6C */	lwz r4, 0x6c(r3)
/* 813B4FD8 | 48 00 49 09 */	bl prepareForBoot2__Q33ipl5scene12ChannelTitleFi
/* 813B4FDC | 38 00 00 05 */	li r0, 0x5
/* 813B4FE0 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B4FE4 | 48 00 00 8C */	b .L_813B5070
.L_813B4FE8:
/* 813B4FE8 | 48 00 17 91 */	bl calcNormalChangeWait__Q33ipl5scene12ChannelTitleFv
/* 813B4FEC | 48 00 00 84 */	b .L_813B5070
.L_813B4FF0:
/* 813B4FF0 | 48 00 1B 81 */	bl calcNormalChangeNext__Q33ipl5scene12ChannelTitleFv
/* 813B4FF4 | 48 00 00 7C */	b .L_813B5070
.L_813B4FF8:
/* 813B4FF8 | 48 00 26 E1 */	bl tryToGoBackward__Q33ipl5scene12ChannelTitleFv
/* 813B4FFC | 48 00 00 74 */	b .L_813B5070
.L_813B5000:
/* 813B5000 | 48 00 1B B5 */	bl calcNormalParentalDialog__Q33ipl5scene12ChannelTitleFv
/* 813B5004 | 48 00 00 6C */	b .L_813B5070
.L_813B5008:
/* 813B5008 | 48 00 1D AD */	bl calcNormalSettingDialog__Q33ipl5scene12ChannelTitleFv
/* 813B500C | 48 00 00 64 */	b .L_813B5070
.L_813B5010:
/* 813B5010 | 48 00 1E 75 */	bl calcNormalControllerDialog__Q33ipl5scene12ChannelTitleFv
/* 813B5014 | 48 00 00 5C */	b .L_813B5070
.L_813B5018:
/* 813B5018 | 48 00 1E F9 */	bl calcNormalWaitTmd__Q33ipl5scene12ChannelTitleFv
/* 813B501C | 48 00 00 54 */	b .L_813B5070
.L_813B5020:
/* 813B5020 | 48 00 20 7D */	bl calcNormalWaitLockedTitle__Q33ipl5scene12ChannelTitleFv
/* 813B5024 | 48 00 00 4C */	b .L_813B5070
.L_813B5028:
/* 813B5028 | 48 00 22 25 */	bl calcNormalLockedDiskDialog__Q33ipl5scene12ChannelTitleFv
/* 813B502C | 48 00 00 44 */	b .L_813B5070
.L_813B5030:
/* 813B5030 | 48 00 22 99 */	bl calcNormalUpdateDialog__Q33ipl5scene12ChannelTitleFv
/* 813B5034 | 48 00 00 3C */	b .L_813B5070
.L_813B5038:
/* 813B5038 | 48 00 23 95 */	bl calcNormalUpdateAcceptDialog__Q33ipl5scene12ChannelTitleFv
/* 813B503C | 48 00 00 34 */	b .L_813B5070
.L_813B5040:
/* 813B5040 | 48 00 24 2D */	bl calcNormalUpdating__Q33ipl5scene12ChannelTitleFv
/* 813B5044 | 48 00 00 2C */	b .L_813B5070
.L_813B5048:
/* 813B5048 | 48 00 24 D9 */	bl calcNormalUpdateSucceeded__Q33ipl5scene12ChannelTitleFv
/* 813B504C | 48 00 00 24 */	b .L_813B5070
.L_813B5050:
/* 813B5050 | 48 00 25 29 */	bl calcNormalUpdateUnk1__Q33ipl5scene12ChannelTitleFv
/* 813B5054 | 48 00 00 1C */	b .L_813B5070
.L_813B5058:
/* 813B5058 | 48 00 25 75 */	bl calcNormalUpdateUnk0__Q33ipl5scene12ChannelTitleFv
/* 813B505C | 48 00 00 14 */	b .L_813B5070
.L_813B5060:
/* 813B5060 | 48 00 25 C1 */	bl calcNormalUpdateWaiting__Q33ipl5scene12ChannelTitleFv
/* 813B5064 | 48 00 00 0C */	b .L_813B5070
.L_813B5068:
/* 813B5068 | 38 60 00 00 */	li r3, 0x0
/* 813B506C | 48 00 00 B0 */	b .L_813B511C
.L_813B5070:
/* 813B5070 | 80 7F 00 58 */	lwz r3, 0x58(r31)
/* 813B5074 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 813B5078 | 40 82 00 84 */	bne .L_813B50FC
/* 813B507C | 80 9F 00 88 */	lwz r4, 0x88(r31)
/* 813B5080 | 38 00 00 01 */	li r0, 0x1
/* 813B5084 | 98 1F 03 88 */	stb r0, 0x388(r31)
/* 813B5088 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B508C | 38 04 00 01 */	addi r0, r4, 0x1
/* 813B5090 | 38 80 00 00 */	li r4, 0x0
/* 813B5094 | 90 1F 00 88 */	stw r0, 0x88(r31)
/* 813B5098 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B509C | 80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 813B50A0 | 98 83 00 3D */	stb r4, 0x3d(r3)
/* 813B50A4 | 80 1F 03 68 */	lwz r0, 0x368(r31)
/* 813B50A8 | 80 7F 03 6C */	lwz r3, 0x36c(r31)
/* 813B50AC | 7C 60 03 79 */	or. r0, r3, r0
/* 813B50B0 | 41 82 00 20 */	beq .L_813B50D0
/* 813B50B4 | 88 1F 03 70 */	lbz r0, 0x370(r31)
/* 813B50B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B50BC | 41 82 00 14 */	beq .L_813B50D0
/* 813B50C0 | 90 9F 03 6C */	stw r4, 0x36c(r31)
/* 813B50C4 | 38 60 00 00 */	li r3, 0x0
/* 813B50C8 | 90 9F 03 68 */	stw r4, 0x368(r31)
/* 813B50CC | 48 1B 48 F1 */	bl fn_815699BC
.L_813B50D0:
/* 813B50D0 | 7F E3 FB 78 */	mr r3, r31
/* 813B50D4 | 48 00 49 ED */	bl isEnableAppStart__Q33ipl5scene12ChannelTitleFv
/* 813B50D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B50DC | 41 82 00 18 */	beq .L_813B50F4
/* 813B50E0 | 88 1F 03 70 */	lbz r0, 0x370(r31)
/* 813B50E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B50E8 | 41 82 00 0C */	beq .L_813B50F4
/* 813B50EC | 38 60 00 01 */	li r3, 0x1
/* 813B50F0 | 48 00 00 2C */	b .L_813B511C
.L_813B50F4:
/* 813B50F4 | 38 60 00 00 */	li r3, 0x0
/* 813B50F8 | 48 00 00 24 */	b .L_813B511C
.L_813B50FC:
/* 813B50FC | 38 03 FF FA */	subi r0, r3, 0x6
/* 813B5100 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B5104 | 41 81 00 14 */	bgt .L_813B5118
/* 813B5108 | 38 00 00 01 */	li r0, 0x1
/* 813B510C | 38 60 00 01 */	li r3, 0x1
/* 813B5110 | 98 1F 03 88 */	stb r0, 0x388(r31)
/* 813B5114 | 48 00 00 08 */	b .L_813B511C
.L_813B5118:
/* 813B5118 | 38 60 00 00 */	li r3, 0x0
.L_813B511C:
/* 813B511C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B5120 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B5124 | 7C 08 03 A6 */	mtlr r0
/* 813B5128 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B512C | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene12ChannelTitleFv

# .text:0x1100 | 0x813B5130 | size: 0xC0
# ipl::scene::ChannelTitle::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene12ChannelTitleFv, global
/* 813B5130 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B5134 | 7C 08 02 A6 */	mflr r0
/* 813B5138 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813B513C | 38 80 00 05 */	li r4, 0x5
/* 813B5140 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B5144 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813B5148 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B514C | 7C 7F 1B 78 */	mr r31, r3
/* 813B5150 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813B5154 | 48 05 5F E5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B5158 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 813B515C | 7C 7F 1B 78 */	mr r31, r3
/* 813B5160 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813B5164 | 41 82 00 0C */	beq .L_813B5170
/* 813B5168 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813B516C | 40 82 00 44 */	bne .L_813B51B0
.L_813B5170:
/* 813B5170 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B5174 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B5178 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813B517C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5180 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B5184 | 7D 89 03 A6 */	mtctr r12
/* 813B5188 | 4E 80 04 21 */	bctrl
/* 813B518C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B5190 | 38 80 00 14 */	li r4, 0x14
/* 813B5194 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B5198 | 4B FB 69 79 */	bl stopAllSound__Q33ipl3snd6SystemFi
/* 813B519C | 3C 60 81 65 */	lis r3, lbl_8164EC6C@ha
/* 813B51A0 | 38 63 EC 6C */	addi r3, r3, lbl_8164EC6C@l
/* 813B51A4 | 4C C6 31 82 */	crclr cr1eq
/* 813B51A8 | 48 17 94 F9 */	bl OSReport
/* 813B51AC | 48 00 00 20 */	b .L_813B51CC
.L_813B51B0:
/* 813B51B0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813B51B4 | 40 82 00 18 */	bne .L_813B51CC
/* 813B51B8 | 38 80 00 1A */	li r4, 0x1a
/* 813B51BC | 4B FE 79 9D */	bl iplButton_8139CB58
/* 813B51C0 | 7F E3 FB 78 */	mr r3, r31
/* 813B51C4 | 38 80 00 19 */	li r4, 0x19
/* 813B51C8 | 4B FE 79 91 */	bl iplButton_8139CB58
.L_813B51CC:
/* 813B51CC | 7F E3 FB 78 */	mr r3, r31
/* 813B51D0 | 38 80 00 00 */	li r4, 0x0
/* 813B51D4 | 38 A0 00 00 */	li r5, 0x0
/* 813B51D8 | 4B FE 77 65 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 813B51DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B51E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B51E4 | 7C 08 03 A6 */	mtlr r0
/* 813B51E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B51EC | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene12ChannelTitleFv

# .text:0x11C0 | 0x813B51F0 | size: 0x824
# ipl::scene::ChannelTitle::calcFadeout()
.fn calcFadeout__Q33ipl5scene12ChannelTitleFv, global
/* 813B51F0 | 94 21 FE 90 */	stwu r1, -0x170(r1)
/* 813B51F4 | 7C 08 02 A6 */	mflr r0
/* 813B51F8 | 90 01 01 74 */	stw r0, 0x174(r1)
/* 813B51FC | 39 61 01 70 */	addi r11, r1, 0x170
/* 813B5200 | 48 24 42 C1 */	bl _savegpr_27
/* 813B5204 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B5208 | 3F E0 81 65 */	lis r31, lbl_8164E768@ha
/* 813B520C | 7C 7D 1B 78 */	mr r29, r3
/* 813B5210 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813B5214 | 3B FF E7 68 */	addi r31, r31, lbl_8164E768@l
/* 813B5218 | 40 82 07 30 */	bne .L_813B5948
/* 813B521C | 80 03 03 48 */	lwz r0, 0x348(r3)
/* 813B5220 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B5224 | 40 82 00 18 */	bne .L_813B523C
/* 813B5228 | 48 1C 45 85 */	bl WPADGetStatus
/* 813B522C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5230 | 40 82 00 0C */	bne .L_813B523C
/* 813B5234 | 48 18 0A 65 */	bl fn_81535C98
/* 813B5238 | 90 7D 03 48 */	stw r3, 0x348(r29)
.L_813B523C:
/* 813B523C | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813B5240 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813B5244 | 80 7B 00 C4 */	lwz r3, 0xc4(r27)
/* 813B5248 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B524C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B5250 | 7D 89 03 A6 */	mtctr r12
/* 813B5254 | 4E 80 04 21 */	bctrl
/* 813B5258 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B525C | 40 82 07 9C */	bne .L_813B59F8
/* 813B5260 | 4B F7 EB 6D */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813B5264 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5268 | 41 82 07 90 */	beq .L_813B59F8
/* 813B526C | 88 1B 02 BC */	lbz r0, 0x2bc(r27)
/* 813B5270 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B5274 | 41 82 00 0C */	beq .L_813B5280
/* 813B5278 | 38 00 00 00 */	li r0, 0x0
/* 813B527C | 48 00 00 08 */	b .L_813B5284
.L_813B5280:
/* 813B5280 | 80 1B 00 8C */	lwz r0, 0x8c(r27)
.L_813B5284:
/* 813B5284 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B5288 | 41 82 00 34 */	beq .L_813B52BC
/* 813B528C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B5290 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B5294 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813B5298 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B529C | 41 82 00 0C */	beq .L_813B52A8
/* 813B52A0 | 38 60 00 00 */	li r3, 0x0
/* 813B52A4 | 48 00 00 08 */	b .L_813B52AC
.L_813B52A8:
/* 813B52A8 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813B52AC:
/* 813B52AC | 88 03 0A 31 */	lbz r0, 0xa31(r3)
/* 813B52B0 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B52B4 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813B52B8 | 41 82 07 40 */	beq .L_813B59F8
.L_813B52BC:
/* 813B52BC | 48 1B 30 89 */	bl fn_81568344
/* 813B52C0 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813B52C4 | 41 82 07 34 */	beq .L_813B59F8
/* 813B52C8 | 38 7F 05 13 */	addi r3, r31, 0x513
/* 813B52CC | 4C C6 31 82 */	crclr cr1eq
/* 813B52D0 | 48 17 93 D1 */	bl OSReport
/* 813B52D4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B52D8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B52DC | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813B52E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B52E4 | 41 82 00 0C */	beq .L_813B52F0
/* 813B52E8 | 38 00 00 00 */	li r0, 0x0
/* 813B52EC | 48 00 00 08 */	b .L_813B52F4
.L_813B52F0:
/* 813B52F0 | 80 03 00 7C */	lwz r0, 0x7c(r3)
.L_813B52F4:
/* 813B52F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B52F8 | 41 82 00 2C */	beq .L_813B5324
/* 813B52FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B5300 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B5304 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813B5308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B530C | 41 82 00 0C */	beq .L_813B5318
/* 813B5310 | 38 60 00 00 */	li r3, 0x0
/* 813B5314 | 48 00 00 08 */	b .L_813B531C
.L_813B5318:
/* 813B5318 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_813B531C:
/* 813B531C | 3B C3 00 18 */	addi r30, r3, 0x18
/* 813B5320 | 48 00 00 08 */	b .L_813B5328
.L_813B5324:
/* 813B5324 | 3B C0 00 00 */	li r30, 0x0
.L_813B5328:
/* 813B5328 | 80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 813B532C | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813B5330 | 40 82 02 A8 */	bne .L_813B55D8
/* 813B5334 | 4B F8 8A 2D */	bl checkNandCapacityAppBootable__Q23ipl8nandwallFv
/* 813B5338 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B533C | 40 82 00 18 */	bne .L_813B5354
/* 813B5340 | 38 7F 05 2D */	addi r3, r31, 0x52d
/* 813B5344 | 4C C6 31 82 */	crclr cr1eq
/* 813B5348 | 48 17 93 59 */	bl OSReport
/* 813B534C | 7F A3 EB 78 */	mr r3, r29
/* 813B5350 | 48 00 46 29 */	bl rebootSystem__Q33ipl5scene12ChannelTitleFv
.L_813B5354:
/* 813B5354 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B5358 | 3F 80 81 09 */	lis r28, sSystem__Q23ipl3snd@ha
/* 813B535C | 3B 63 90 08 */	addi r27, r3, smArg__Q23ipl6System@l
/* 813B5360 | 48 00 00 78 */	b .L_813B53D8
.L_813B5364:
/* 813B5364 | 38 7C 99 2C */	addi r3, r28, sSystem__Q23ipl3snd@l
/* 813B5368 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B536C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B5370 | 7D 89 03 A6 */	mtctr r12
/* 813B5374 | 4E 80 04 21 */	bctrl
/* 813B5378 | 80 7B 00 A8 */	lwz r3, 0xa8(r27)
/* 813B537C | 4B FA B5 1D */	bl update__Q33ipl3bs27ManagerFv
/* 813B5380 | 48 18 7C 69 */	bl VIWaitForRetrace
/* 813B5384 | 80 1D 03 84 */	lwz r0, 0x384(r29)
/* 813B5388 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B538C | 41 82 00 10 */	beq .L_813B539C
/* 813B5390 | 7F A3 EB 78 */	mr r3, r29
/* 813B5394 | 48 00 26 D5 */	bl calcChannelRso__Q33ipl5scene12ChannelTitleFv
/* 813B5398 | 48 00 00 0C */	b .L_813B53A4
.L_813B539C:
/* 813B539C | 7F A3 EB 78 */	mr r3, r29
/* 813B53A0 | 48 00 25 C1 */	bl calcChannelCS__Q33ipl5scene12ChannelTitleFv
.L_813B53A4:
/* 813B53A4 | 48 1C 44 09 */	bl WPADGetStatus
/* 813B53A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B53AC | 41 82 00 10 */	beq .L_813B53BC
/* 813B53B0 | 38 7F 05 49 */	addi r3, r31, 0x549
/* 813B53B4 | 4C C6 31 82 */	crclr cr1eq
/* 813B53B8 | 48 17 92 E9 */	bl OSReport
.L_813B53BC:
/* 813B53BC | 80 7B 00 A8 */	lwz r3, 0xa8(r27)
/* 813B53C0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813B53C4 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813B53C8 | 41 82 00 10 */	beq .L_813B53D8
/* 813B53CC | 38 7F 05 58 */	addi r3, r31, 0x558
/* 813B53D0 | 4C C6 31 82 */	crclr cr1eq
/* 813B53D4 | 48 17 92 CD */	bl OSReport
.L_813B53D8:
/* 813B53D8 | 48 1C 43 D5 */	bl WPADGetStatus
/* 813B53DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B53E0 | 40 82 FF 84 */	bne .L_813B5364
/* 813B53E4 | 80 7B 00 A8 */	lwz r3, 0xa8(r27)
/* 813B53E8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813B53EC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813B53F0 | 40 82 FF 74 */	bne .L_813B5364
/* 813B53F4 | 80 7B 00 94 */	lwz r3, 0x94(r27)
/* 813B53F8 | 80 9D 03 44 */	lwz r4, 0x344(r29)
/* 813B53FC | 4B FA 2A E1 */	bl isFinished__Q33ipl8savedata7ManagerFPQ33ipl4nand4File
/* 813B5400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5404 | 41 82 FF 60 */	beq .L_813B5364
/* 813B5408 | 80 1D 03 84 */	lwz r0, 0x384(r29)
/* 813B540C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B5410 | 41 82 00 10 */	beq .L_813B5420
/* 813B5414 | 80 1D 03 80 */	lwz r0, 0x380(r29)
/* 813B5418 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B541C | 40 82 FF 48 */	bne .L_813B5364
.L_813B5420:
/* 813B5420 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B5424 | 41 82 00 14 */	beq .L_813B5438
/* 813B5428 | 7F C3 F3 78 */	mr r3, r30
/* 813B542C | 4B FA 9B C1 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 813B5430 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5434 | 40 82 FF 30 */	bne .L_813B5364
.L_813B5438:
/* 813B5438 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B543C | 41 82 00 48 */	beq .L_813B5484
/* 813B5440 | 7F C3 F3 78 */	mr r3, r30
/* 813B5444 | 4B FA 9C 51 */	bl terminate_async__Q23ipl10SDVFWorkerFv
/* 813B5448 | 3F 60 81 09 */	lis r27, sSystem__Q23ipl3snd@ha
/* 813B544C | 48 00 00 1C */	b .L_813B5468
.L_813B5450:
/* 813B5450 | 38 7B 99 2C */	addi r3, r27, sSystem__Q23ipl3snd@l
/* 813B5454 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5458 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B545C | 7D 89 03 A6 */	mtctr r12
/* 813B5460 | 4E 80 04 21 */	bctrl
/* 813B5464 | 48 18 7B 85 */	bl VIWaitForRetrace
.L_813B5468:
/* 813B5468 | 7F C3 F3 78 */	mr r3, r30
/* 813B546C | 4B FA 9B 71 */	bl is_terminated__Q23ipl10SDVFWorkerFv
/* 813B5470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5474 | 41 82 FF DC */	beq .L_813B5450
/* 813B5478 | 38 7F 05 66 */	addi r3, r31, 0x566
/* 813B547C | 4C C6 31 82 */	crclr cr1eq
/* 813B5480 | 48 17 92 21 */	bl OSReport
.L_813B5484:
/* 813B5484 | 80 7D 03 44 */	lwz r3, 0x344(r29)
/* 813B5488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B548C | 41 82 00 18 */	beq .L_813B54A4
/* 813B5490 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5494 | 38 80 00 01 */	li r4, 0x1
/* 813B5498 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B549C | 7D 89 03 A6 */	mtctr r12
/* 813B54A0 | 4E 80 04 21 */	bctrl
.L_813B54A4:
/* 813B54A4 | 38 60 00 01 */	li r3, 0x1
/* 813B54A8 | 48 18 8C 81 */	bl VISetBlack
/* 813B54AC | 48 18 8A F5 */	bl VIFlush
/* 813B54B0 | 48 18 7B 39 */	bl VIWaitForRetrace
/* 813B54B4 | 38 7F 05 7D */	addi r3, r31, 0x57d
/* 813B54B8 | 4C C6 31 82 */	crclr cr1eq
/* 813B54BC | 48 17 91 E5 */	bl OSReport
/* 813B54C0 | 48 00 00 10 */	b .L_813B54D0
.L_813B54C4:
/* 813B54C4 | 38 7F 05 87 */	addi r3, r31, 0x587
/* 813B54C8 | 4C C6 31 82 */	crclr cr1eq
/* 813B54CC | 48 17 91 D5 */	bl OSReport
.L_813B54D0:
/* 813B54D0 | 48 17 DB B1 */	bl __OSSyncSram
/* 813B54D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B54D8 | 41 82 FF EC */	beq .L_813B54C4
/* 813B54DC | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813B54E0 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B54E4 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813B54E8 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B54EC | 80 7B 00 84 */	lwz r3, 0x84(r27)
/* 813B54F0 | 4B F8 2D B9 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813B54F4 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 813B54F8 | 38 C0 00 00 */	li r6, 0x0
/* 813B54FC | 80 7B 00 84 */	lwz r3, 0x84(r27)
/* 813B5500 | 90 81 00 34 */	stw r4, 0x34(r1)
/* 813B5504 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B5508 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B550C | 4B F8 36 51 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813B5510 | 7C 64 1B 78 */	mr r4, r3
/* 813B5514 | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 813B5518 | 38 A0 00 2A */	li r5, 0x2a
/* 813B551C | 4B F7 AD 15 */	bl memcpy
/* 813B5520 | 80 7B 00 84 */	lwz r3, 0x84(r27)
/* 813B5524 | 38 C0 00 01 */	li r6, 0x1
/* 813B5528 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B552C | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B5530 | 4B F8 36 2D */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813B5534 | 7C 64 1B 78 */	mr r4, r3
/* 813B5538 | 38 61 01 22 */	addi r3, r1, 0x122
/* 813B553C | 38 A0 00 2A */	li r5, 0x2a
/* 813B5540 | 4B F7 AC F1 */	bl memcpy
/* 813B5544 | 88 1D 03 62 */	lbz r0, 0x362(r29)
/* 813B5548 | 38 61 00 F8 */	addi r3, r1, 0xf8
/* 813B554C | 38 81 00 34 */	addi r4, r1, 0x34
/* 813B5550 | 38 A1 00 0A */	addi r5, r1, 0xa
/* 813B5554 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 813B5558 | 88 1D 03 63 */	lbz r0, 0x363(r29)
/* 813B555C | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813B5560 | 48 18 18 65 */	bl fn_81536DC4
/* 813B5564 | 38 7F 05 92 */	addi r3, r31, 0x592
/* 813B5568 | 4C C6 31 82 */	crclr cr1eq
/* 813B556C | 48 17 91 35 */	bl OSReport
/* 813B5570 | 4B FC B4 21 */	bl BS2SetStateFlags
/* 813B5574 | 38 6D 8A 86 */	li r3, lbl_81696AC6@sda21
/* 813B5578 | 4C C6 31 82 */	crclr cr1eq
/* 813B557C | 48 17 91 25 */	bl OSReport
/* 813B5580 | 80 7B 00 84 */	lwz r3, 0x84(r27)
/* 813B5584 | 88 03 1D A0 */	lbz r0, 0x1da0(r3)
/* 813B5588 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B558C | 41 82 00 0C */	beq .L_813B5598
/* 813B5590 | 38 C3 1B A0 */	addi r6, r3, 0x1ba0
/* 813B5594 | 48 00 00 08 */	b .L_813B559C
.L_813B5598:
/* 813B5598 | 38 C0 00 00 */	li r6, 0x0
.L_813B559C:
/* 813B559C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813B55A0 | 41 82 00 20 */	beq .L_813B55C0
/* 813B55A4 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 813B55A8 | 38 A0 00 01 */	li r5, 0x1
/* 813B55AC | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 813B55B0 | 38 E0 00 00 */	li r7, 0x0
/* 813B55B4 | 4C C6 31 82 */	crclr cr1eq
/* 813B55B8 | 48 17 A3 7D */	bl fn_8152F934
/* 813B55BC | 48 00 03 84 */	b .L_813B5940
.L_813B55C0:
/* 813B55C0 | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 813B55C4 | 38 A0 00 00 */	li r5, 0x0
/* 813B55C8 | 80 81 00 34 */	lwz r4, 0x34(r1)
/* 813B55CC | 38 C0 00 00 */	li r6, 0x0
/* 813B55D0 | 48 17 A2 BD */	bl fn_8152F88C
/* 813B55D4 | 48 00 03 6C */	b .L_813B5940
.L_813B55D8:
/* 813B55D8 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813B55DC | 40 82 01 40 */	bne .L_813B571C
/* 813B55E0 | 4B F8 87 81 */	bl checkNandCapacityAppBootable__Q23ipl8nandwallFv
/* 813B55E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B55E8 | 40 82 00 20 */	bne .L_813B5608
/* 813B55EC | 38 7F 05 2D */	addi r3, r31, 0x52d
/* 813B55F0 | 4C C6 31 82 */	crclr cr1eq
/* 813B55F4 | 48 17 90 AD */	bl OSReport
/* 813B55F8 | 7F A3 EB 78 */	mr r3, r29
/* 813B55FC | 48 00 43 7D */	bl rebootSystem__Q33ipl5scene12ChannelTitleFv
/* 813B5600 | 48 00 00 08 */	b .L_813B5608
.L_813B5604:
/* 813B5604 | 48 18 79 E5 */	bl VIWaitForRetrace
.L_813B5608:
/* 813B5608 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B560C | 41 82 00 14 */	beq .L_813B5620
/* 813B5610 | 7F C3 F3 78 */	mr r3, r30
/* 813B5614 | 4B FA 99 D9 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 813B5618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B561C | 40 82 FF E8 */	bne .L_813B5604
.L_813B5620:
/* 813B5620 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B5624 | 41 82 00 48 */	beq .L_813B566C
/* 813B5628 | 7F C3 F3 78 */	mr r3, r30
/* 813B562C | 4B FA 9A 69 */	bl terminate_async__Q23ipl10SDVFWorkerFv
/* 813B5630 | 3F 60 81 09 */	lis r27, sSystem__Q23ipl3snd@ha
/* 813B5634 | 48 00 00 1C */	b .L_813B5650
.L_813B5638:
/* 813B5638 | 38 7B 99 2C */	addi r3, r27, sSystem__Q23ipl3snd@l
/* 813B563C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5640 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B5644 | 7D 89 03 A6 */	mtctr r12
/* 813B5648 | 4E 80 04 21 */	bctrl
/* 813B564C | 48 18 79 9D */	bl VIWaitForRetrace
.L_813B5650:
/* 813B5650 | 7F C3 F3 78 */	mr r3, r30
/* 813B5654 | 4B FA 99 89 */	bl is_terminated__Q23ipl10SDVFWorkerFv
/* 813B5658 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B565C | 41 82 FF DC */	beq .L_813B5638
/* 813B5660 | 38 7F 05 66 */	addi r3, r31, 0x566
/* 813B5664 | 4C C6 31 82 */	crclr cr1eq
/* 813B5668 | 48 17 90 39 */	bl OSReport
.L_813B566C:
/* 813B566C | 80 1D 00 74 */	lwz r0, 0x74(r29)
/* 813B5670 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813B5674 | 40 82 00 8C */	bne .L_813B5700
/* 813B5678 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813B567C | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B5680 | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813B5684 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B5688 | 80 7B 00 84 */	lwz r3, 0x84(r27)
/* 813B568C | 38 C0 00 00 */	li r6, 0x0
/* 813B5690 | 4B F8 34 CD */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813B5694 | 7C 64 1B 78 */	mr r4, r3
/* 813B5698 | 38 61 00 A4 */	addi r3, r1, 0xa4
/* 813B569C | 38 A0 00 2A */	li r5, 0x2a
/* 813B56A0 | 4B F7 AB 91 */	bl memcpy
/* 813B56A4 | 80 7B 00 84 */	lwz r3, 0x84(r27)
/* 813B56A8 | 38 C0 00 01 */	li r6, 0x1
/* 813B56AC | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B56B0 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B56B4 | 4B F8 34 A9 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813B56B8 | 7C 64 1B 78 */	mr r4, r3
/* 813B56BC | 38 61 00 CE */	addi r3, r1, 0xce
/* 813B56C0 | 38 A0 00 2A */	li r5, 0x2a
/* 813B56C4 | 4B F7 AB 6D */	bl memcpy
/* 813B56C8 | 80 7B 00 A8 */	lwz r3, 0xa8(r27)
/* 813B56CC | 38 81 00 10 */	addi r4, r1, 0x10
/* 813B56D0 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813B56D4 | 4B FA B4 55 */	bl getDiskInfo__Q33ipl3bs27ManagerFPPcPPc
/* 813B56D8 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 813B56DC | 38 61 00 A4 */	addi r3, r1, 0xa4
/* 813B56E0 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 813B56E4 | 48 18 16 E1 */	bl fn_81536DC4
/* 813B56E8 | 38 7F 05 92 */	addi r3, r31, 0x592
/* 813B56EC | 4C C6 31 82 */	crclr cr1eq
/* 813B56F0 | 48 17 8F B1 */	bl OSReport
/* 813B56F4 | 80 7B 00 A8 */	lwz r3, 0xa8(r27)
/* 813B56F8 | 4B FA B3 D9 */	bl startRVLGame__Q33ipl3bs27ManagerFv
/* 813B56FC | 48 00 02 44 */	b .L_813B5940
.L_813B5700:
/* 813B5700 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813B5704 | 40 82 02 3C */	bne .L_813B5940
/* 813B5708 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B570C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B5710 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 813B5714 | 4B FA B3 C1 */	bl startGCGame__Q33ipl3bs27ManagerFv
/* 813B5718 | 48 00 02 28 */	b .L_813B5940
.L_813B571C:
/* 813B571C | 2C 00 00 21 */	cmpwi r0, 0x21
/* 813B5720 | 40 82 01 F0 */	bne .L_813B5910
/* 813B5724 | 4B F8 86 3D */	bl checkNandCapacityAppBootable__Q23ipl8nandwallFv
/* 813B5728 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B572C | 40 82 00 18 */	bne .L_813B5744
/* 813B5730 | 38 7F 05 2D */	addi r3, r31, 0x52d
/* 813B5734 | 4C C6 31 82 */	crclr cr1eq
/* 813B5738 | 48 17 8F 69 */	bl OSReport
/* 813B573C | 7F A3 EB 78 */	mr r3, r29
/* 813B5740 | 48 00 42 39 */	bl rebootSystem__Q33ipl5scene12ChannelTitleFv
.L_813B5744:
/* 813B5744 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B5748 | 3F 60 81 09 */	lis r27, sSystem__Q23ipl3snd@ha
/* 813B574C | 3B 83 90 08 */	addi r28, r3, smArg__Q23ipl6System@l
/* 813B5750 | 48 00 00 70 */	b .L_813B57C0
.L_813B5754:
/* 813B5754 | 38 7B 99 2C */	addi r3, r27, sSystem__Q23ipl3snd@l
/* 813B5758 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B575C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B5760 | 7D 89 03 A6 */	mtctr r12
/* 813B5764 | 4E 80 04 21 */	bctrl
/* 813B5768 | 48 18 78 81 */	bl VIWaitForRetrace
/* 813B576C | 80 1D 03 84 */	lwz r0, 0x384(r29)
/* 813B5770 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B5774 | 41 82 00 10 */	beq .L_813B5784
/* 813B5778 | 7F A3 EB 78 */	mr r3, r29
/* 813B577C | 48 00 22 ED */	bl calcChannelRso__Q33ipl5scene12ChannelTitleFv
/* 813B5780 | 48 00 00 0C */	b .L_813B578C
.L_813B5784:
/* 813B5784 | 7F A3 EB 78 */	mr r3, r29
/* 813B5788 | 48 00 21 D9 */	bl calcChannelCS__Q33ipl5scene12ChannelTitleFv
.L_813B578C:
/* 813B578C | 48 1C 40 21 */	bl WPADGetStatus
/* 813B5790 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5794 | 41 82 00 10 */	beq .L_813B57A4
/* 813B5798 | 38 7F 05 49 */	addi r3, r31, 0x549
/* 813B579C | 4C C6 31 82 */	crclr cr1eq
/* 813B57A0 | 48 17 8F 01 */	bl OSReport
.L_813B57A4:
/* 813B57A4 | 80 7C 00 A8 */	lwz r3, 0xa8(r28)
/* 813B57A8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813B57AC | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813B57B0 | 41 82 00 10 */	beq .L_813B57C0
/* 813B57B4 | 38 7F 05 58 */	addi r3, r31, 0x558
/* 813B57B8 | 4C C6 31 82 */	crclr cr1eq
/* 813B57BC | 48 17 8E E5 */	bl OSReport
.L_813B57C0:
/* 813B57C0 | 80 7C 00 94 */	lwz r3, 0x94(r28)
/* 813B57C4 | 80 9D 03 44 */	lwz r4, 0x344(r29)
/* 813B57C8 | 4B FA 27 15 */	bl isFinished__Q33ipl8savedata7ManagerFPQ33ipl4nand4File
/* 813B57CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B57D0 | 41 82 FF 84 */	beq .L_813B5754
/* 813B57D4 | 80 1D 03 84 */	lwz r0, 0x384(r29)
/* 813B57D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B57DC | 41 82 00 10 */	beq .L_813B57EC
/* 813B57E0 | 80 1D 03 80 */	lwz r0, 0x380(r29)
/* 813B57E4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B57E8 | 40 82 FF 6C */	bne .L_813B5754
.L_813B57EC:
/* 813B57EC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B57F0 | 41 82 00 14 */	beq .L_813B5804
/* 813B57F4 | 7F C3 F3 78 */	mr r3, r30
/* 813B57F8 | 4B FA 97 F5 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 813B57FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5800 | 40 82 FF 54 */	bne .L_813B5754
.L_813B5804:
/* 813B5804 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B5808 | 41 82 00 48 */	beq .L_813B5850
/* 813B580C | 7F C3 F3 78 */	mr r3, r30
/* 813B5810 | 4B FA 98 85 */	bl terminate_async__Q23ipl10SDVFWorkerFv
/* 813B5814 | 3F 80 81 09 */	lis r28, sSystem__Q23ipl3snd@ha
/* 813B5818 | 48 00 00 1C */	b .L_813B5834
.L_813B581C:
/* 813B581C | 38 7C 99 2C */	addi r3, r28, sSystem__Q23ipl3snd@l
/* 813B5820 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5824 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B5828 | 7D 89 03 A6 */	mtctr r12
/* 813B582C | 4E 80 04 21 */	bctrl
/* 813B5830 | 48 18 77 B9 */	bl VIWaitForRetrace
.L_813B5834:
/* 813B5834 | 7F C3 F3 78 */	mr r3, r30
/* 813B5838 | 4B FA 97 A5 */	bl is_terminated__Q23ipl10SDVFWorkerFv
/* 813B583C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5840 | 41 82 FF DC */	beq .L_813B581C
/* 813B5844 | 38 7F 05 66 */	addi r3, r31, 0x566
/* 813B5848 | 4C C6 31 82 */	crclr cr1eq
/* 813B584C | 48 17 8E 55 */	bl OSReport
.L_813B5850:
/* 813B5850 | 80 7D 03 44 */	lwz r3, 0x344(r29)
/* 813B5854 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5858 | 41 82 00 18 */	beq .L_813B5870
/* 813B585C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5860 | 38 80 00 01 */	li r4, 0x1
/* 813B5864 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B5868 | 7D 89 03 A6 */	mtctr r12
/* 813B586C | 4E 80 04 21 */	bctrl
.L_813B5870:
/* 813B5870 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B5874 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B5878 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B587C | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B5880 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B5884 | 4B F8 2A 25 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813B5888 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 813B588C | 38 C0 00 00 */	li r6, 0x0
/* 813B5890 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B5894 | 90 81 00 2C */	stw r4, 0x2c(r1)
/* 813B5898 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B589C | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B58A0 | 4B F8 32 BD */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813B58A4 | 7C 64 1B 78 */	mr r4, r3
/* 813B58A8 | 38 61 00 50 */	addi r3, r1, 0x50
/* 813B58AC | 38 A0 00 2A */	li r5, 0x2a
/* 813B58B0 | 4B F7 A9 81 */	bl memcpy
/* 813B58B4 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B58B8 | 38 C0 00 01 */	li r6, 0x1
/* 813B58BC | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B58C0 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B58C4 | 4B F8 32 99 */	bl getTitleName__Q33ipl7channel7ManagerCFiii
/* 813B58C8 | 7C 64 1B 78 */	mr r4, r3
/* 813B58CC | 38 61 00 7A */	addi r3, r1, 0x7a
/* 813B58D0 | 38 A0 00 2A */	li r5, 0x2a
/* 813B58D4 | 4B F7 A9 5D */	bl memcpy
/* 813B58D8 | 88 1D 03 62 */	lbz r0, 0x362(r29)
/* 813B58DC | 38 61 00 50 */	addi r3, r1, 0x50
/* 813B58E0 | 38 81 00 2C */	addi r4, r1, 0x2c
/* 813B58E4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813B58E8 | 98 01 00 08 */	stb r0, 0x8(r1)
/* 813B58EC | 88 1D 03 63 */	lbz r0, 0x363(r29)
/* 813B58F0 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 813B58F4 | 48 18 14 D1 */	bl fn_81536DC4
/* 813B58F8 | 38 7F 05 92 */	addi r3, r31, 0x592
/* 813B58FC | 4C C6 31 82 */	crclr cr1eq
/* 813B5900 | 48 17 8D A1 */	bl OSReport
/* 813B5904 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 813B5908 | 4B FA B1 C9 */	bl startRVLGame__Q33ipl3bs27ManagerFv
/* 813B590C | 48 00 00 34 */	b .L_813B5940
.L_813B5910:
/* 813B5910 | C0 22 85 F0 */	lfs f1, lbl_816949F0@sda21(r0)
/* 813B5914 | 38 61 00 44 */	addi r3, r1, 0x44
/* 813B5918 | FC 40 08 90 */	fmr f2, f1
/* 813B591C | FC 60 08 90 */	fmr f3, f1
/* 813B5920 | 4B FA D1 3D */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813B5924 | C0 02 85 F8 */	lfs f0, lbl_816949F8@sda21(r0)
/* 813B5928 | 38 61 00 44 */	addi r3, r1, 0x44
/* 813B592C | D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 813B5930 | D0 01 00 20 */	stfs f0, 0x20(r1)
/* 813B5934 | 48 00 00 E1 */	bl setOrthoTrans__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3
/* 813B5938 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813B593C | 48 00 00 FD */	bl setOrthoScale__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC2
.L_813B5940:
/* 813B5940 | 38 60 00 01 */	li r3, 0x1
/* 813B5944 | 48 00 00 B8 */	b .L_813B59FC
.L_813B5948:
/* 813B5948 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813B594C | 40 82 00 30 */	bne .L_813B597C
/* 813B5950 | 80 63 01 FC */	lwz r3, 0x1fc(r3)
/* 813B5954 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B5958 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B595C | 41 82 00 0C */	beq .L_813B5968
/* 813B5960 | 38 60 00 01 */	li r3, 0x1
/* 813B5964 | 48 00 00 98 */	b .L_813B59FC
.L_813B5968:
/* 813B5968 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B596C | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B5970 | 7D 89 03 A6 */	mtctr r12
/* 813B5974 | 4E 80 04 21 */	bctrl
/* 813B5978 | 48 00 00 80 */	b .L_813B59F8
.L_813B597C:
/* 813B597C | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813B5980 | 40 82 00 78 */	bne .L_813B59F8
/* 813B5984 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B5988 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B598C | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813B5990 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5994 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B5998 | 7D 89 03 A6 */	mtctr r12
/* 813B599C | 4E 80 04 21 */	bctrl
/* 813B59A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B59A4 | 40 82 00 54 */	bne .L_813B59F8
/* 813B59A8 | C0 22 85 F0 */	lfs f1, lbl_816949F0@sda21(r0)
/* 813B59AC | 38 61 00 38 */	addi r3, r1, 0x38
/* 813B59B0 | FC 40 08 90 */	fmr f2, f1
/* 813B59B4 | FC 60 08 90 */	fmr f3, f1
/* 813B59B8 | 4B FA D0 A5 */	bl __ct__Q33ipl4math4VEC3Ffff
/* 813B59BC | 38 61 00 38 */	addi r3, r1, 0x38
/* 813B59C0 | 48 00 00 55 */	bl setOrthoTrans__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3
/* 813B59C4 | C0 02 85 F8 */	lfs f0, lbl_816949F8@sda21(r0)
/* 813B59C8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813B59CC | D0 01 00 14 */	stfs f0, 0x14(r1)
/* 813B59D0 | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813B59D4 | 48 00 00 65 */	bl setOrthoScale__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC2
/* 813B59D8 | 3F A0 81 09 */	lis r29, sSystem__Q23ipl3snd@ha
/* 813B59DC | 38 7D 99 2C */	addi r3, r29, sSystem__Q23ipl3snd@l
/* 813B59E0 | 4B FB 59 9D */	bl initFx__Q33ipl3snd6SystemFv
/* 813B59E4 | 38 7D 99 2C */	addi r3, r29, sSystem__Q23ipl3snd@l
/* 813B59E8 | 38 9F 05 A6 */	addi r4, r31, 0x5a6
/* 813B59EC | 4B FB 59 D1 */	bl startBGM__Q33ipl3snd6SystemFPCc
/* 813B59F0 | 38 60 00 01 */	li r3, 0x1
/* 813B59F4 | 48 00 00 08 */	b .L_813B59FC
.L_813B59F8:
/* 813B59F8 | 38 60 00 00 */	li r3, 0x0
.L_813B59FC:
/* 813B59FC | 39 61 01 70 */	addi r11, r1, 0x170
/* 813B5A00 | 48 24 3B 0D */	bl _restgpr_27
/* 813B5A04 | 80 01 01 74 */	lwz r0, 0x174(r1)
/* 813B5A08 | 7C 08 03 A6 */	mtlr r0
/* 813B5A0C | 38 21 01 70 */	addi r1, r1, 0x170
/* 813B5A10 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene12ChannelTitleFv

# .text:0x19E4 | 0x813B5A14 | size: 0x24
# ipl::utility::Graphics::setOrthoTrans(const ipl::math::VEC3&)
.fn setOrthoTrans__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3, global
/* 813B5A14 | 3C 80 81 09 */	lis r4, mArg__Q33ipl7utility8Graphics@ha
/* 813B5A18 | C0 43 00 00 */	lfs f2, 0x0(r3)
/* 813B5A1C | 38 84 97 C0 */	addi r4, r4, mArg__Q33ipl7utility8Graphics@l
/* 813B5A20 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 813B5A24 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 813B5A28 | D0 44 00 70 */	stfs f2, 0x70(r4)
/* 813B5A2C | D0 24 00 74 */	stfs f1, 0x74(r4)
/* 813B5A30 | D0 04 00 78 */	stfs f0, 0x78(r4)
/* 813B5A34 | 4E 80 00 20 */	blr
.endfn setOrthoTrans__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC3

# .text:0x1A08 | 0x813B5A38 | size: 0x1C
# ipl::utility::Graphics::setOrthoScale(const ipl::math::VEC2&)
.fn setOrthoScale__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC2, global
/* 813B5A38 | 3C 80 81 09 */	lis r4, mArg__Q33ipl7utility8Graphics@ha
/* 813B5A3C | C0 23 00 00 */	lfs f1, 0x0(r3)
/* 813B5A40 | 38 84 97 C0 */	addi r4, r4, mArg__Q33ipl7utility8Graphics@l
/* 813B5A44 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813B5A48 | D0 24 00 7C */	stfs f1, 0x7c(r4)
/* 813B5A4C | D0 04 00 80 */	stfs f0, 0x80(r4)
/* 813B5A50 | 4E 80 00 20 */	blr
.endfn setOrthoScale__Q33ipl7utility8GraphicsFRCQ33ipl4math4VEC2

# .text:0x1A24 | 0x813B5A54 | size: 0x20C
# ipl::scene::ChannelTitle::draw()
.fn draw__Q33ipl5scene12ChannelTitleFv, global
/* 813B5A54 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813B5A58 | 7C 08 02 A6 */	mflr r0
/* 813B5A5C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813B5A60 | 93 E1 00 3C */	stw r31, 0x3c(r1)
/* 813B5A64 | 7C 7F 1B 78 */	mr r31, r3
/* 813B5A68 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B5A6C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B5A70 | 41 82 01 DC */	beq .L_813B5C4C
/* 813B5A74 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B5A78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B5A7C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813B5A80 | 80 63 01 00 */	lwz r3, 0x100(r3)
/* 813B5A84 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B5A88 | 40 82 01 60 */	bne .L_813B5BE8
/* 813B5A8C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B5A90 | 41 82 00 0C */	beq .L_813B5A9C
/* 813B5A94 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813B5A98 | 40 82 01 0C */	bne .L_813B5BA4
.L_813B5A9C:
/* 813B5A9C | 38 60 00 00 */	li r3, 0x0
/* 813B5AA0 | 4B FA CF CD */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 813B5AA4 | 80 9F 02 00 */	lwz r4, 0x200(r31)
/* 813B5AA8 | 88 62 85 FC */	lbz r3, lbl_816949FC@sda21(r0)
/* 813B5AAC | C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 813B5AB0 | C0 44 00 D4 */	lfs f2, 0xd4(r4)
/* 813B5AB4 | C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 813B5AB8 | EC 83 10 28 */	fsubs f4, f3, f2
/* 813B5ABC | C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 813B5AC0 | EC 43 10 2A */	fadds f2, f3, f2
/* 813B5AC4 | 88 A2 85 FD */	lbz r5, lbl_816949FD@sda21(r0)
/* 813B5AC8 | EC 61 00 2A */	fadds f3, f1, f0
/* 813B5ACC | 88 82 85 FE */	lbz r4, lbl_816949FE@sda21(r0)
/* 813B5AD0 | EC 01 00 28 */	fsubs f0, f1, f0
/* 813B5AD4 | 88 02 85 FF */	lbz r0, lbl_816949FF@sda21(r0)
/* 813B5AD8 | D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 813B5ADC | D0 01 00 18 */	stfs f0, 0x18(r1)
/* 813B5AE0 | D0 61 00 20 */	stfs f3, 0x20(r1)
/* 813B5AE4 | D0 81 00 24 */	stfs f4, 0x24(r1)
/* 813B5AE8 | 98 61 00 14 */	stb r3, 0x14(r1)
/* 813B5AEC | 80 7F 01 FC */	lwz r3, 0x1fc(r31)
/* 813B5AF0 | 98 A1 00 15 */	stb r5, 0x15(r1)
/* 813B5AF4 | 98 81 00 16 */	stb r4, 0x16(r1)
/* 813B5AF8 | 98 01 00 17 */	stb r0, 0x17(r1)
/* 813B5AFC | 48 00 01 65 */	bl "get__Q33ipl4math14HermiteIntp<f>CFv"
/* 813B5B00 | FC 00 08 1E */	fctiwz f0, f1
/* 813B5B04 | 89 01 00 14 */	lbz r8, 0x14(r1)
/* 813B5B08 | 88 81 00 15 */	lbz r4, 0x15(r1)
/* 813B5B0C | 38 61 00 18 */	addi r3, r1, 0x18
/* 813B5B10 | 88 01 00 16 */	lbz r0, 0x16(r1)
/* 813B5B14 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813B5B18 | D8 01 00 28 */	stfd f0, 0x28(r1)
/* 813B5B1C | 38 C0 00 01 */	li r6, 0x1
/* 813B5B20 | 38 E0 00 00 */	li r7, 0x0
/* 813B5B24 | 81 21 00 2C */	lwz r9, 0x2c(r1)
/* 813B5B28 | 99 01 00 0C */	stb r8, 0xc(r1)
/* 813B5B2C | 98 81 00 0D */	stb r4, 0xd(r1)
/* 813B5B30 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 813B5B34 | 99 21 00 0F */	stb r9, 0xf(r1)
/* 813B5B38 | 80 9F 03 58 */	lwz r4, 0x358(r31)
/* 813B5B3C | 99 21 00 17 */	stb r9, 0x17(r1)
/* 813B5B40 | 38 84 00 14 */	addi r4, r4, 0x14
/* 813B5B44 | 4B FA D4 79 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 813B5B48 | 38 00 00 00 */	li r0, 0x0
/* 813B5B4C | 80 7F 01 FC */	lwz r3, 0x1fc(r31)
/* 813B5B50 | 98 01 00 10 */	stb r0, 0x10(r1)
/* 813B5B54 | 98 01 00 11 */	stb r0, 0x11(r1)
/* 813B5B58 | 98 01 00 12 */	stb r0, 0x12(r1)
/* 813B5B5C | 98 01 00 13 */	stb r0, 0x13(r1)
/* 813B5B60 | 48 00 01 01 */	bl "get__Q33ipl4math14HermiteIntp<f>CFv"
/* 813B5B64 | FC 00 08 1E */	fctiwz f0, f1
/* 813B5B68 | 88 E1 00 10 */	lbz r7, 0x10(r1)
/* 813B5B6C | 88 C1 00 11 */	lbz r6, 0x11(r1)
/* 813B5B70 | 7F E3 FB 78 */	mr r3, r31
/* 813B5B74 | 88 01 00 12 */	lbz r0, 0x12(r1)
/* 813B5B78 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813B5B7C | D8 01 00 30 */	stfd f0, 0x30(r1)
/* 813B5B80 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813B5B84 | 81 01 00 34 */	lwz r8, 0x34(r1)
/* 813B5B88 | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 813B5B8C | 99 01 00 13 */	stb r8, 0x13(r1)
/* 813B5B90 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 813B5B94 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 813B5B98 | 99 01 00 0B */	stb r8, 0xb(r1)
/* 813B5B9C | 48 00 40 61 */	bl drawPolygonAroundRect__Q33ipl5scene12ChannelTitleFRCQ34nw4r2ut4Rect8_GXColor
/* 813B5BA0 | 48 00 00 AC */	b .L_813B5C4C
.L_813B5BA4:
/* 813B5BA4 | 38 60 00 00 */	li r3, 0x0
/* 813B5BA8 | 4B FA CF 25 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813B5BAC | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B5BB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5BB4 | 41 82 00 08 */	beq .L_813B5BBC
/* 813B5BB8 | 4B FB 4B E5 */	bl draw__Q33ipl6layout6ObjectFv
.L_813B5BBC:
/* 813B5BBC | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B5BC0 | 4B FB 4B DD */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5BC4 | 80 7F 02 10 */	lwz r3, 0x210(r31)
/* 813B5BC8 | 4B FB 4B D5 */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5BCC | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 813B5BD0 | 4B FB 4B CD */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5BD4 | 80 7F 03 34 */	lwz r3, 0x334(r31)
/* 813B5BD8 | 4B FB 4B C5 */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5BDC | 80 7F 02 08 */	lwz r3, 0x208(r31)
/* 813B5BE0 | 4B FB 4B BD */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5BE4 | 48 00 00 68 */	b .L_813B5C4C
.L_813B5BE8:
/* 813B5BE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5BEC | 40 82 00 60 */	bne .L_813B5C4C
/* 813B5BF0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B5BF4 | 41 82 00 0C */	beq .L_813B5C00
/* 813B5BF8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813B5BFC | 40 82 00 50 */	bne .L_813B5C4C
.L_813B5C00:
/* 813B5C00 | 38 60 00 00 */	li r3, 0x0
/* 813B5C04 | 4B FA CE C9 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813B5C08 | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B5C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5C10 | 41 82 00 08 */	beq .L_813B5C18
/* 813B5C14 | 4B FB 4B 89 */	bl draw__Q33ipl6layout6ObjectFv
.L_813B5C18:
/* 813B5C18 | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B5C1C | 4B FB 4B 81 */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5C20 | 80 7F 02 10 */	lwz r3, 0x210(r31)
/* 813B5C24 | 4B FB 4B 79 */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5C28 | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 813B5C2C | 4B FB 4B 71 */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5C30 | 80 7F 03 34 */	lwz r3, 0x334(r31)
/* 813B5C34 | 4B FB 4B 69 */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5C38 | 80 7F 02 08 */	lwz r3, 0x208(r31)
/* 813B5C3C | 4B FB 4B 61 */	bl draw__Q33ipl6layout6ObjectFv
/* 813B5C40 | 80 7F 03 58 */	lwz r3, 0x358(r31)
/* 813B5C44 | 38 80 00 01 */	li r4, 0x1
/* 813B5C48 | 4B FA D7 55 */	bl capture__Q33ipl7utility7CaptureFi
.L_813B5C4C:
/* 813B5C4C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813B5C50 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 813B5C54 | 7C 08 03 A6 */	mtlr r0
/* 813B5C58 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813B5C5C | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene12ChannelTitleFv

# .text:0x1C30 | 0x813B5C60 | size: 0x9C
# ipl::math::HermiteIntp<float>::get() const
.fn "get__Q33ipl4math14HermiteIntp<f>CFv", global
/* 813B5C60 | C1 62 85 F8 */	lfs f11, lbl_816949F8@sda21(r0)
/* 813B5C64 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813B5C68 | C1 83 00 0C */	lfs f12, 0xc(r3)
/* 813B5C6C | ED AB 00 24 */	fdivs f13, f11, f0
/* 813B5C70 | C0 62 86 00 */	lfs f3, lbl_81694A00@sda21(r0)
/* 813B5C74 | C0 22 86 04 */	lfs f1, lbl_81694A04@sda21(r0)
/* 813B5C78 | C0 43 00 28 */	lfs f2, 0x28(r3)
/* 813B5C7C | C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 813B5C80 | C0 E3 00 20 */	lfs f7, 0x20(r3)
/* 813B5C84 | EC 83 03 32 */	fmuls f4, f3, f12
/* 813B5C88 | C0 C3 00 24 */	lfs f6, 0x24(r3)
/* 813B5C8C | EC 61 03 32 */	fmuls f3, f1, f12
/* 813B5C90 | EC AC 03 32 */	fmuls f5, f12, f12
/* 813B5C94 | ED 44 03 32 */	fmuls f10, f4, f12
/* 813B5C98 | EC 63 03 32 */	fmuls f3, f3, f12
/* 813B5C9C | EC 2C 01 72 */	fmuls f1, f12, f5
/* 813B5CA0 | ED 2C 02 B2 */	fmuls f9, f12, f10
/* 813B5CA4 | ED 0D 00 F2 */	fmuls f8, f13, f3
/* 813B5CA8 | EC 2D 00 72 */	fmuls f1, f13, f1
/* 813B5CAC | ED 2D 02 72 */	fmuls f9, f13, f9
/* 813B5CB0 | EC 6D 02 B2 */	fmuls f3, f13, f10
/* 813B5CB4 | EC 8D 00 72 */	fmuls f4, f13, f1
/* 813B5CB8 | EC 2D 01 72 */	fmuls f1, f13, f5
/* 813B5CBC | EC AD 02 72 */	fmuls f5, f13, f9
/* 813B5CC0 | EC 64 18 28 */	fsubs f3, f4, f3
/* 813B5CC4 | EC 24 08 28 */	fsubs f1, f4, f1
/* 813B5CC8 | EC AD 01 72 */	fmuls f5, f13, f5
/* 813B5CCC | EC 8D 02 32 */	fmuls f4, f13, f8
/* 813B5CD0 | EC 6C 18 2A */	fadds f3, f12, f3
/* 813B5CD4 | EC 00 00 72 */	fmuls f0, f0, f1
/* 813B5CD8 | EC 85 20 28 */	fsubs f4, f5, f4
/* 813B5CDC | EC 22 00 F2 */	fmuls f1, f2, f3
/* 813B5CE0 | EC 6B 20 2A */	fadds f3, f11, f4
/* 813B5CE4 | EC 01 00 2A */	fadds f0, f1, f0
/* 813B5CE8 | EC 46 01 32 */	fmuls f2, f6, f4
/* 813B5CEC | EC 27 00 F2 */	fmuls f1, f7, f3
/* 813B5CF0 | EC 21 10 28 */	fsubs f1, f1, f2
/* 813B5CF4 | EC 21 00 2A */	fadds f1, f1, f0
/* 813B5CF8 | 4E 80 00 20 */	blr
.endfn "get__Q33ipl4math14HermiteIntp<f>CFv"

# .text:0x1CCC | 0x813B5CFC | size: 0x1D4
# ipl::scene::ChannelTitle::destroy()
.fn destroy__Q33ipl5scene12ChannelTitleFv, global
/* 813B5CFC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B5D00 | 7C 08 02 A6 */	mflr r0
/* 813B5D04 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B5D08 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B5D0C | 7C 7F 1B 78 */	mr r31, r3
/* 813B5D10 | 80 83 02 1C */	lwz r4, 0x21c(r3)
/* 813B5D14 | 2C 84 00 00 */	cmpwi cr1, r4, 0x0
/* 813B5D18 | 41 86 00 38 */	beq cr1, .L_813B5D50
/* 813B5D1C | 80 03 02 50 */	lwz r0, 0x250(r3)
/* 813B5D20 | 7C 04 00 40 */	cmplw r4, r0
/* 813B5D24 | 41 82 00 2C */	beq .L_813B5D50
/* 813B5D28 | 80 03 03 28 */	lwz r0, 0x328(r3)
/* 813B5D2C | 7C 04 00 40 */	cmplw r4, r0
/* 813B5D30 | 41 82 00 20 */	beq .L_813B5D50
/* 813B5D34 | 41 86 00 1C */	beq cr1, .L_813B5D50
/* 813B5D38 | 7C 83 23 78 */	mr r3, r4
/* 813B5D3C | 38 80 00 01 */	li r4, 0x1
/* 813B5D40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5D44 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B5D48 | 7D 89 03 A6 */	mtctr r12
/* 813B5D4C | 4E 80 04 21 */	bctrl
.L_813B5D50:
/* 813B5D50 | 80 7F 02 20 */	lwz r3, 0x220(r31)
/* 813B5D54 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 813B5D58 | 41 86 00 34 */	beq cr1, .L_813B5D8C
/* 813B5D5C | 80 1F 02 50 */	lwz r0, 0x250(r31)
/* 813B5D60 | 7C 03 00 40 */	cmplw r3, r0
/* 813B5D64 | 41 82 00 28 */	beq .L_813B5D8C
/* 813B5D68 | 80 1F 03 28 */	lwz r0, 0x328(r31)
/* 813B5D6C | 7C 03 00 40 */	cmplw r3, r0
/* 813B5D70 | 41 82 00 1C */	beq .L_813B5D8C
/* 813B5D74 | 41 86 00 18 */	beq cr1, .L_813B5D8C
/* 813B5D78 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5D7C | 38 80 00 01 */	li r4, 0x1
/* 813B5D80 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B5D84 | 7D 89 03 A6 */	mtctr r12
/* 813B5D88 | 4E 80 04 21 */	bctrl
.L_813B5D8C:
/* 813B5D8C | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B5D90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5D94 | 41 82 00 20 */	beq .L_813B5DB4
/* 813B5D98 | 80 1F 02 54 */	lwz r0, 0x254(r31)
/* 813B5D9C | 7C 03 00 40 */	cmplw r3, r0
/* 813B5DA0 | 41 82 00 14 */	beq .L_813B5DB4
/* 813B5DA4 | 80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 813B5DA8 | 7C 03 00 40 */	cmplw r3, r0
/* 813B5DAC | 41 82 00 08 */	beq .L_813B5DB4
/* 813B5DB0 | 4B FB 50 51 */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813B5DB4:
/* 813B5DB4 | 80 7F 03 28 */	lwz r3, 0x328(r31)
/* 813B5DB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5DBC | 41 82 00 1C */	beq .L_813B5DD8
/* 813B5DC0 | 41 82 00 18 */	beq .L_813B5DD8
/* 813B5DC4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5DC8 | 38 80 00 01 */	li r4, 0x1
/* 813B5DCC | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B5DD0 | 7D 89 03 A6 */	mtctr r12
/* 813B5DD4 | 4E 80 04 21 */	bctrl
.L_813B5DD8:
/* 813B5DD8 | 80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 813B5DDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5DE0 | 41 82 00 08 */	beq .L_813B5DE8
/* 813B5DE4 | 4B FB 50 1D */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813B5DE8:
/* 813B5DE8 | 80 7F 02 2C */	lwz r3, 0x22c(r31)
/* 813B5DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5DF0 | 41 82 00 1C */	beq .L_813B5E0C
/* 813B5DF4 | 41 82 00 18 */	beq .L_813B5E0C
/* 813B5DF8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5DFC | 38 80 00 01 */	li r4, 0x1
/* 813B5E00 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B5E04 | 7D 89 03 A6 */	mtctr r12
/* 813B5E08 | 4E 80 04 21 */	bctrl
.L_813B5E0C:
/* 813B5E0C | 80 7F 02 30 */	lwz r3, 0x230(r31)
/* 813B5E10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5E14 | 41 82 00 1C */	beq .L_813B5E30
/* 813B5E18 | 41 82 00 18 */	beq .L_813B5E30
/* 813B5E1C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5E20 | 38 80 00 01 */	li r4, 0x1
/* 813B5E24 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B5E28 | 7D 89 03 A6 */	mtctr r12
/* 813B5E2C | 4E 80 04 21 */	bctrl
.L_813B5E30:
/* 813B5E30 | 80 7F 03 58 */	lwz r3, 0x358(r31)
/* 813B5E34 | 38 80 00 01 */	li r4, 0x1
/* 813B5E38 | 4B FA D5 0D */	bl __dt__Q33ipl7utility7CaptureFv
/* 813B5E3C | 80 7F 03 94 */	lwz r3, 0x394(r31)
/* 813B5E40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B5E44 | 41 82 00 18 */	beq .L_813B5E5C
/* 813B5E48 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5E4C | 38 80 00 01 */	li r4, 0x1
/* 813B5E50 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B5E54 | 7D 89 03 A6 */	mtctr r12
/* 813B5E58 | 4E 80 04 21 */	bctrl
.L_813B5E5C:
/* 813B5E5C | 80 7F 03 98 */	lwz r3, 0x398(r31)
/* 813B5E60 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5E64 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813B5E68 | 7D 89 03 A6 */	mtctr r12
/* 813B5E6C | 4E 80 04 21 */	bctrl
/* 813B5E70 | 80 7F 03 9C */	lwz r3, 0x39c(r31)
/* 813B5E74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5E78 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813B5E7C | 7D 89 03 A6 */	mtctr r12
/* 813B5E80 | 4E 80 04 21 */	bctrl
/* 813B5E84 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813B5E88 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5E8C | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813B5E90 | 7D 89 03 A6 */	mtctr r12
/* 813B5E94 | 4E 80 04 21 */	bctrl
/* 813B5E98 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813B5E9C | 3B E0 00 00 */	li r31, 0x0
/* 813B5EA0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813B5EA4 | 38 80 00 05 */	li r4, 0x5
/* 813B5EA8 | 80 65 00 84 */	lwz r3, 0x84(r5)
/* 813B5EAC | 9B E3 1D A0 */	stb r31, 0x1da0(r3)
/* 813B5EB0 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 813B5EB4 | 48 05 52 85 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B5EB8 | 9B E3 01 05 */	stb r31, 0x105(r3)
/* 813B5EBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B5EC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B5EC4 | 7C 08 03 A6 */	mtlr r0
/* 813B5EC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B5ECC | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene12ChannelTitleFv

# .text:0x1EA0 | 0x813B5ED0 | size: 0x40
# ipl::scene::ChannelTitle::isResetAcceptable() const
.fn isResetAcceptable__Q33ipl5scene12ChannelTitleCFv, global
/* 813B5ED0 | 80 83 00 58 */	lwz r4, 0x58(r3)
/* 813B5ED4 | 2C 04 00 05 */	cmpwi r4, 0x5
/* 813B5ED8 | 40 82 00 18 */	bne .L_813B5EF0
/* 813B5EDC | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 813B5EE0 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813B5EE4 | 41 82 00 1C */	beq .L_813B5F00
/* 813B5EE8 | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813B5EEC | 41 82 00 14 */	beq .L_813B5F00
.L_813B5EF0:
/* 813B5EF0 | 2C 04 00 11 */	cmpwi r4, 0x11
/* 813B5EF4 | 41 80 00 14 */	blt .L_813B5F08
/* 813B5EF8 | 2C 04 00 16 */	cmpwi r4, 0x16
/* 813B5EFC | 41 81 00 0C */	bgt .L_813B5F08
.L_813B5F00:
/* 813B5F00 | 38 60 00 00 */	li r3, 0x0
/* 813B5F04 | 4E 80 00 20 */	blr
.L_813B5F08:
/* 813B5F08 | 38 60 00 01 */	li r3, 0x1
/* 813B5F0C | 4E 80 00 20 */	blr
.endfn isResetAcceptable__Q33ipl5scene12ChannelTitleCFv

# .text:0x1EE0 | 0x813B5F10 | size: 0x58
# ipl::scene::ChannelTitle::isInLaunching() const
.fn isInLaunching__Q33ipl5scene12ChannelTitleCFv, global
/* 813B5F10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B5F14 | 7C 08 02 A6 */	mflr r0
/* 813B5F18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B5F1C | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B5F20 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813B5F24 | 40 82 00 30 */	bne .L_813B5F54
/* 813B5F28 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B5F2C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B5F30 | 80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 813B5F34 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B5F38 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B5F3C | 7D 89 03 A6 */	mtctr r12
/* 813B5F40 | 4E 80 04 21 */	bctrl
/* 813B5F44 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B5F48 | 41 82 00 0C */	beq .L_813B5F54
/* 813B5F4C | 38 60 00 01 */	li r3, 0x1
/* 813B5F50 | 48 00 00 08 */	b .L_813B5F58
.L_813B5F54:
/* 813B5F54 | 38 60 00 00 */	li r3, 0x0
.L_813B5F58:
/* 813B5F58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B5F5C | 7C 08 03 A6 */	mtlr r0
/* 813B5F60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B5F64 | 4E 80 00 20 */	blr
.endfn isInLaunching__Q33ipl5scene12ChannelTitleCFv

# .text:0x1F38 | 0x813B5F68 | size: 0x10
# ipl::scene::ChannelTitle::isFirstCall() const
.fn isFirstCall__Q33ipl5scene12ChannelTitleCFv, global
/* 813B5F68 | 88 03 03 F9 */	lbz r0, 0x3f9(r3)
/* 813B5F6C | 7C 00 00 34 */	cntlzw r0, r0
/* 813B5F70 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813B5F74 | 4E 80 00 20 */	blr
.endfn isFirstCall__Q33ipl5scene12ChannelTitleCFv

# .text:0x1F48 | 0x813B5F78 | size: 0x34
# ipl::scene::ChannelTitle::getRsoExBufData(void*) const
.fn getRsoExBufData__Q33ipl5scene12ChannelTitleCFPv, global
/* 813B5F78 | 80 A3 03 FC */	lwz r5, 0x3fc(r3)
/* 813B5F7C | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813B5F80 | 80 03 04 00 */	lwz r0, 0x400(r3)
/* 813B5F84 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813B5F88 | 7C 83 23 78 */	mr r3, r4
/* 813B5F8C | 80 C6 00 84 */	lwz r6, 0x84(r6)
/* 813B5F90 | 1C 85 05 40 */	mulli r4, r5, 0x540
/* 813B5F94 | 38 A0 00 20 */	li r5, 0x20
/* 813B5F98 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 813B5F9C | 7C 86 22 14 */	add r4, r6, r4
/* 813B5FA0 | 7C 84 02 14 */	add r4, r4, r0
/* 813B5FA4 | 38 84 00 5C */	addi r4, r4, 0x5c
/* 813B5FA8 | 4B F7 A2 88 */	b memcpy
.endfn getRsoExBufData__Q33ipl5scene12ChannelTitleCFPv

# .text:0x1F7C | 0x813B5FAC | size: 0x30
# ipl::scene::ChannelTitle::setRsoExBufData(const void*)
.fn setRsoExBufData__Q33ipl5scene12ChannelTitleFPCv, global
/* 813B5FAC | 80 A3 03 FC */	lwz r5, 0x3fc(r3)
/* 813B5FB0 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813B5FB4 | 80 03 04 00 */	lwz r0, 0x400(r3)
/* 813B5FB8 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813B5FBC | 1C 65 05 40 */	mulli r3, r5, 0x540
/* 813B5FC0 | 80 C6 00 84 */	lwz r6, 0x84(r6)
/* 813B5FC4 | 38 A0 00 20 */	li r5, 0x20
/* 813B5FC8 | 1C 00 00 70 */	mulli r0, r0, 0x70
/* 813B5FCC | 7C 66 1A 14 */	add r3, r6, r3
/* 813B5FD0 | 7C 63 02 14 */	add r3, r3, r0
/* 813B5FD4 | 38 63 00 5C */	addi r3, r3, 0x5c
/* 813B5FD8 | 4B F7 A2 58 */	b memcpy
.endfn setRsoExBufData__Q33ipl5scene12ChannelTitleFPCv

# .text:0x1FAC | 0x813B5FDC | size: 0x84
# ipl::scene::ChannelTitle::getRsoTitleDataPath(char*) const
.fn getRsoTitleDataPath__Q33ipl5scene12ChannelTitleCFPc, global
/* 813B5FDC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B5FE0 | 7C 08 02 A6 */	mflr r0
/* 813B5FE4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B5FE8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B5FEC | 48 24 34 D5 */	bl _savegpr_27
/* 813B5FF0 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813B5FF4 | 7C 9C 23 78 */	mr r28, r4
/* 813B5FF8 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813B5FFC | 80 83 03 FC */	lwz r4, 0x3fc(r3)
/* 813B6000 | 83 A5 00 84 */	lwz r29, 0x84(r5)
/* 813B6004 | 7C 7B 1B 78 */	mr r27, r3
/* 813B6008 | 80 A3 04 00 */	lwz r5, 0x400(r3)
/* 813B600C | 7F A3 EB 78 */	mr r3, r29
/* 813B6010 | 4B F8 22 99 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813B6014 | 3B C0 FF FF */	li r30, -0x1
/* 813B6018 | 80 BB 04 00 */	lwz r5, 0x400(r27)
/* 813B601C | 7C 9F F0 38 */	and r31, r4, r30
/* 813B6020 | 80 9B 03 FC */	lwz r4, 0x3fc(r27)
/* 813B6024 | 7F A3 EB 78 */	mr r3, r29
/* 813B6028 | 4B F8 22 81 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813B602C | 3C 80 81 65 */	lis r4, lbl_8164ED1C@ha
/* 813B6030 | 7C 65 F0 38 */	and r5, r3, r30
/* 813B6034 | 7F 83 E3 78 */	mr r3, r28
/* 813B6038 | 7F E6 FB 78 */	mr r6, r31
/* 813B603C | 38 84 ED 1C */	addi r4, r4, lbl_8164ED1C@l
/* 813B6040 | 4C C6 31 82 */	crclr cr1eq
/* 813B6044 | 48 24 AA 3D */	bl sprintf
/* 813B6048 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B604C | 48 24 34 C1 */	bl _restgpr_27
/* 813B6050 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B6054 | 7C 08 03 A6 */	mtlr r0
/* 813B6058 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B605C | 4E 80 00 20 */	blr
.endfn getRsoTitleDataPath__Q33ipl5scene12ChannelTitleCFPc

# .text:0x2030 | 0x813B6060 | size: 0x24
# ipl::scene::ChannelTitle::getRsoAnimator(int) const
.fn getRsoAnimator__Q33ipl5scene12ChannelTitleCFi, global
/* 813B6060 | 80 03 03 80 */	lwz r0, 0x380(r3)
/* 813B6064 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B6068 | 41 82 00 14 */	beq .L_813B607C
/* 813B606C | 54 80 10 3A */	slwi r0, r4, 2
/* 813B6070 | 7C 63 02 14 */	add r3, r3, r0
/* 813B6074 | 80 63 03 AC */	lwz r3, 0x3ac(r3)
/* 813B6078 | 4E 80 00 20 */	blr
.L_813B607C:
/* 813B607C | 38 60 00 00 */	li r3, 0x0
/* 813B6080 | 4E 80 00 20 */	blr
.endfn getRsoAnimator__Q33ipl5scene12ChannelTitleCFi

# .text:0x2054 | 0x813B6084 | size: 0x94
# ipl::scene::ChannelTitle::isStartAnimFinished() const
.fn isStartAnimFinished__Q33ipl5scene12ChannelTitleCFv, global
/* 813B6084 | 80 E3 02 40 */	lwz r7, 0x240(r3)
/* 813B6088 | 38 80 00 01 */	li r4, 0x1
/* 813B608C | 38 A0 00 01 */	li r5, 0x1
/* 813B6090 | 38 C0 00 00 */	li r6, 0x0
/* 813B6094 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813B6098 | 40 82 00 14 */	bne .L_813B60AC
/* 813B609C | 80 03 02 44 */	lwz r0, 0x244(r3)
/* 813B60A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B60A4 | 40 82 00 08 */	bne .L_813B60AC
/* 813B60A8 | 38 C0 00 01 */	li r6, 0x1
.L_813B60AC:
/* 813B60AC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813B60B0 | 40 82 00 30 */	bne .L_813B60E0
/* 813B60B4 | 80 C3 02 44 */	lwz r6, 0x244(r3)
/* 813B60B8 | 38 60 00 00 */	li r3, 0x0
/* 813B60BC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 813B60C0 | 41 82 00 14 */	beq .L_813B60D4
/* 813B60C4 | 80 06 00 14 */	lwz r0, 0x14(r6)
/* 813B60C8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B60CC | 41 82 00 08 */	beq .L_813B60D4
/* 813B60D0 | 38 60 00 01 */	li r3, 0x1
.L_813B60D4:
/* 813B60D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B60D8 | 40 82 00 08 */	bne .L_813B60E0
/* 813B60DC | 38 A0 00 00 */	li r5, 0x0
.L_813B60E0:
/* 813B60E0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813B60E4 | 40 82 00 2C */	bne .L_813B6110
/* 813B60E8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813B60EC | 38 60 00 00 */	li r3, 0x0
/* 813B60F0 | 41 82 00 14 */	beq .L_813B6104
/* 813B60F4 | 80 07 00 14 */	lwz r0, 0x14(r7)
/* 813B60F8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B60FC | 41 82 00 08 */	beq .L_813B6104
/* 813B6100 | 38 60 00 01 */	li r3, 0x1
.L_813B6104:
/* 813B6104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6108 | 40 82 00 08 */	bne .L_813B6110
/* 813B610C | 38 80 00 00 */	li r4, 0x0
.L_813B6110:
/* 813B6110 | 7C 83 23 78 */	mr r3, r4
/* 813B6114 | 4E 80 00 20 */	blr
.endfn isStartAnimFinished__Q33ipl5scene12ChannelTitleCFv

# .text:0x20E8 | 0x813B6118 | size: 0x20
# ipl::scene::ChannelTitle::allocFromRsoExHeap(unsigned long, int)
.fn allocFromRsoExHeap__Q33ipl5scene12ChannelTitleFUli, global
/* 813B6118 | 80 03 03 A0 */	lwz r0, 0x3a0(r3)
/* 813B611C | 54 00 10 3A */	slwi r0, r0, 2
/* 813B6120 | 7C 63 02 14 */	add r3, r3, r0
/* 813B6124 | 80 63 03 98 */	lwz r3, 0x398(r3)
/* 813B6128 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B612C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B6130 | 7D 89 03 A6 */	mtctr r12
/* 813B6134 | 4E 80 04 20 */	bctr
.endfn allocFromRsoExHeap__Q33ipl5scene12ChannelTitleFUli

# .text:0x2108 | 0x813B6138 | size: 0x2C
# ipl::scene::ChannelTitle::freeToRsoExHeap(void*)
.fn freeToRsoExHeap__Q33ipl5scene12ChannelTitleFPv, global
/* 813B6138 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B613C | 4D 82 00 20 */	beqlr
/* 813B6140 | 80 03 03 A0 */	lwz r0, 0x3a0(r3)
/* 813B6144 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B6148 | 7C 63 02 14 */	add r3, r3, r0
/* 813B614C | 80 63 03 98 */	lwz r3, 0x398(r3)
/* 813B6150 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B6154 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B6158 | 7D 89 03 A6 */	mtctr r12
/* 813B615C | 4E 80 04 20 */	bctr
/* 813B6160 | 4E 80 00 20 */	blr
.endfn freeToRsoExHeap__Q33ipl5scene12ChannelTitleFPv

# .text:0x2134 | 0x813B6164 | size: 0x24
# ipl::scene::ChannelTitle::getAllocatableSizeForRsoExHeap() const
.fn getAllocatableSizeForRsoExHeap__Q33ipl5scene12ChannelTitleCFv, global
/* 813B6164 | 80 03 03 A0 */	lwz r0, 0x3a0(r3)
/* 813B6168 | 38 80 00 04 */	li r4, 0x4
/* 813B616C | 54 00 10 3A */	slwi r0, r0, 2
/* 813B6170 | 7C 63 02 14 */	add r3, r3, r0
/* 813B6174 | 80 63 03 98 */	lwz r3, 0x398(r3)
/* 813B6178 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B617C | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813B6180 | 7D 89 03 A6 */	mtctr r12
/* 813B6184 | 4E 80 04 20 */	bctr
.endfn getAllocatableSizeForRsoExHeap__Q33ipl5scene12ChannelTitleCFv

# .text:0x2158 | 0x813B6188 | size: 0x4
# ipl::scene::ChannelTitle::setDebugRsoInterval(unsigned long)
.fn setDebugRsoInterval__Q33ipl5scene12ChannelTitleFUl, global
/* 813B6188 | 4E 80 00 20 */	blr
.endfn setDebugRsoInterval__Q33ipl5scene12ChannelTitleFUl

# .text:0x215C | 0x813B618C | size: 0x74
# ipl::scene::ChannelTitle::createChanLayout()
.fn createChanLayout__Q33ipl5scene12ChannelTitleFv, global
/* 813B618C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B6190 | 7C 08 02 A6 */	mflr r0
/* 813B6194 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813B6198 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B619C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813B61A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B61A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B61A8 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813B61AC | 80 65 00 84 */	lwz r3, 0x84(r5)
/* 813B61B0 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B61B4 | 4B FF C0 71 */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B61B8 | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813B61BC | 7C 00 00 34 */	cntlzw r0, r0
/* 813B61C0 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813B61C4 | 41 82 00 10 */	beq .L_813B61D4
/* 813B61C8 | 7F E3 FB 78 */	mr r3, r31
/* 813B61CC | 48 00 00 35 */	bl createDiskChanLayout__Q33ipl5scene12ChannelTitleFv
/* 813B61D0 | 48 00 00 1C */	b .L_813B61EC
.L_813B61D4:
/* 813B61D4 | 7F E3 FB 78 */	mr r3, r31
/* 813B61D8 | 48 00 02 15 */	bl createModuleChanLayout__Q33ipl5scene12ChannelTitleFv
/* 813B61DC | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B61E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B61E4 | 41 82 00 08 */	beq .L_813B61EC
/* 813B61E8 | 4B FB 44 4D */	bl finishBinding__Q33ipl6layout6ObjectFv
.L_813B61EC:
/* 813B61EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B61F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B61F4 | 7C 08 03 A6 */	mtlr r0
/* 813B61F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B61FC | 4E 80 00 20 */	blr
.endfn createChanLayout__Q33ipl5scene12ChannelTitleFv

# .text:0x21D0 | 0x813B6200 | size: 0x1EC
# ipl::scene::ChannelTitle::createDiskChanLayout()
.fn createDiskChanLayout__Q33ipl5scene12ChannelTitleFv, global
/* 813B6200 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B6204 | 7C 08 02 A6 */	mflr r0
/* 813B6208 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B620C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B6210 | 7C 7F 1B 78 */	mr r31, r3
/* 813B6214 | 80 83 02 18 */	lwz r4, 0x218(r3)
/* 813B6218 | 80 03 02 50 */	lwz r0, 0x250(r3)
/* 813B621C | 54 86 10 3A */	slwi r6, r4, 2
/* 813B6220 | 7C 83 32 14 */	add r4, r3, r6
/* 813B6224 | 80 A4 02 1C */	lwz r5, 0x21c(r4)
/* 813B6228 | 7C 05 00 40 */	cmplw r5, r0
/* 813B622C | 40 82 00 98 */	bne .L_813B62C4
/* 813B6230 | 80 A3 02 54 */	lwz r5, 0x254(r3)
/* 813B6234 | 38 00 00 03 */	li r0, 0x3
/* 813B6238 | 38 C0 00 00 */	li r6, 0x0
/* 813B623C | 38 80 00 00 */	li r4, 0x0
/* 813B6240 | 90 A3 02 3C */	stw r5, 0x23c(r3)
/* 813B6244 | 7C 09 03 A6 */	mtctr r0
.L_813B6248:
/* 813B6248 | 7C A3 22 14 */	add r5, r3, r4
/* 813B624C | 38 84 00 04 */	addi r4, r4, 0x4
/* 813B6250 | 90 C5 02 40 */	stw r6, 0x240(r5)
/* 813B6254 | 42 00 FF F4 */	bdnz .L_813B6248
/* 813B6258 | 39 20 00 00 */	li r9, 0x0
/* 813B625C | 38 80 00 00 */	li r4, 0x0
/* 813B6260 | 38 C0 00 00 */	li r6, 0x0
/* 813B6264 | 38 00 00 0A */	li r0, 0xa
.L_813B6268:
/* 813B6268 | 7D 03 22 14 */	add r8, r3, r4
/* 813B626C | 38 A0 00 00 */	li r5, 0x0
/* 813B6270 | 7C 09 03 A6 */	mtctr r0
.L_813B6274:
/* 813B6274 | 7C E8 2A 14 */	add r7, r8, r5
/* 813B6278 | 80 E7 02 58 */	lwz r7, 0x258(r7)
/* 813B627C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813B6280 | 41 82 00 08 */	beq .L_813B6288
/* 813B6284 | 90 C7 00 14 */	stw r6, 0x14(r7)
.L_813B6288:
/* 813B6288 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 813B628C | 42 00 FF E8 */	bdnz .L_813B6274
/* 813B6290 | 39 29 00 01 */	addi r9, r9, 0x1
/* 813B6294 | 38 84 00 28 */	addi r4, r4, 0x28
/* 813B6298 | 2C 09 00 05 */	cmpwi r9, 0x5
/* 813B629C | 41 80 FF CC */	blt .L_813B6268
/* 813B62A0 | 80 63 02 F8 */	lwz r3, 0x2f8(r3)
/* 813B62A4 | 4B FB 39 81 */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813B62A8 | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B62AC | 38 80 00 01 */	li r4, 0x1
/* 813B62B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B62B4 | 4B F8 E1 61 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B62B8 | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B62BC | 4B FB 44 49 */	bl calc__Q33ipl6layout6ObjectFv
/* 813B62C0 | 48 00 01 18 */	b .L_813B63D8
.L_813B62C4:
/* 813B62C4 | 80 03 03 28 */	lwz r0, 0x328(r3)
/* 813B62C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B62CC | 41 82 00 9C */	beq .L_813B6368
/* 813B62D0 | 7C 05 00 40 */	cmplw r5, r0
/* 813B62D4 | 40 82 00 94 */	bne .L_813B6368
/* 813B62D8 | 80 03 03 2C */	lwz r0, 0x32c(r3)
/* 813B62DC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B62E0 | 40 82 00 50 */	bne .L_813B6330
/* 813B62E4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B62E8 | 3C E0 81 65 */	lis r7, lbl_8164ED33@ha
/* 813B62EC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B62F0 | 3C 80 00 04 */	lis r4, 0x4
/* 813B62F4 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 813B62F8 | 38 E7 ED 33 */	addi r7, r7, lbl_8164ED33@l
/* 813B62FC | 38 CD 8A 7C */	li r6, lbl_81696ABC@sda21
/* 813B6300 | 4B FB 4B 15 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc
/* 813B6304 | 90 7F 03 2C */	stw r3, 0x32c(r31)
/* 813B6308 | 38 C0 00 00 */	li r6, 0x0
/* 813B630C | 38 E0 00 01 */	li r7, 0x1
/* 813B6310 | 80 8D 8A 10 */	lwz r4, lbl_81696A50@sda21(r0)
/* 813B6314 | 80 AD 8A 0C */	lwz r5, lbl_81696A4C@sda21(r0)
/* 813B6318 | 4B FB 41 C9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B631C | 90 7F 03 30 */	stw r3, 0x330(r31)
/* 813B6320 | 80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 813B6324 | 4B FB 43 11 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B6328 | 80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 813B632C | 4B FB 4A C1 */	bl adjustHeap__Q33ipl6layout6ObjectFv
.L_813B6330:
/* 813B6330 | 80 BF 03 2C */	lwz r5, 0x32c(r31)
/* 813B6334 | 38 60 00 02 */	li r3, 0x2
/* 813B6338 | 80 9F 03 30 */	lwz r4, 0x330(r31)
/* 813B633C | 38 00 00 00 */	li r0, 0x0
/* 813B6340 | 90 BF 02 3C */	stw r5, 0x23c(r31)
/* 813B6344 | 90 9F 02 40 */	stw r4, 0x240(r31)
/* 813B6348 | 90 64 00 18 */	stw r3, 0x18(r4)
/* 813B634C | 90 1F 02 44 */	stw r0, 0x244(r31)
/* 813B6350 | 80 7F 02 40 */	lwz r3, 0x240(r31)
/* 813B6354 | 90 1F 02 48 */	stw r0, 0x248(r31)
/* 813B6358 | 4B FB 38 CD */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813B635C | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B6360 | 4B FB 43 A5 */	bl calc__Q33ipl6layout6ObjectFv
/* 813B6364 | 48 00 00 74 */	b .L_813B63D8
.L_813B6368:
/* 813B6368 | 7C 83 32 14 */	add r4, r3, r6
/* 813B636C | 80 A4 02 24 */	lwz r5, 0x224(r4)
/* 813B6370 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813B6374 | 41 82 00 40 */	beq .L_813B63B4
/* 813B6378 | 3C E0 81 65 */	lis r7, lbl_8164ED44@ha
/* 813B637C | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813B6380 | 3C 80 00 04 */	lis r4, 0x4
/* 813B6384 | 38 CD 8A 7C */	li r6, lbl_81696ABC@sda21
/* 813B6388 | 38 E7 ED 44 */	addi r7, r7, lbl_8164ED44@l
/* 813B638C | 4B FB 4B 05 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPvPCcPCc
/* 813B6390 | 90 7F 02 3C */	stw r3, 0x23c(r31)
/* 813B6394 | 4B FF C1 2D */	bl setLangPane__Q33ipl5scene10ChannelObjFPCQ33ipl6layout6Object
/* 813B6398 | 7F E3 FB 78 */	mr r3, r31
/* 813B639C | 48 00 1F E5 */	bl bindChanAnms__Q33ipl5scene12ChannelTitleFv
/* 813B63A0 | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B63A4 | 4B FB 42 91 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 813B63A8 | 38 00 00 01 */	li r0, 0x1
/* 813B63AC | 98 1F 00 90 */	stb r0, 0x90(r31)
/* 813B63B0 | 48 00 00 28 */	b .L_813B63D8
.L_813B63B4:
/* 813B63B4 | 38 C0 00 00 */	li r6, 0x0
/* 813B63B8 | 38 00 00 03 */	li r0, 0x3
/* 813B63BC | 90 C3 02 3C */	stw r6, 0x23c(r3)
/* 813B63C0 | 38 80 00 00 */	li r4, 0x0
/* 813B63C4 | 7C 09 03 A6 */	mtctr r0
.L_813B63C8:
/* 813B63C8 | 7C A3 22 14 */	add r5, r3, r4
/* 813B63CC | 38 84 00 04 */	addi r4, r4, 0x4
/* 813B63D0 | 90 C5 02 40 */	stw r6, 0x240(r5)
/* 813B63D4 | 42 00 FF F4 */	bdnz .L_813B63C8
.L_813B63D8:
/* 813B63D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B63DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B63E0 | 7C 08 03 A6 */	mtlr r0
/* 813B63E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B63E8 | 4E 80 00 20 */	blr
.endfn createDiskChanLayout__Q33ipl5scene12ChannelTitleFv

# .text:0x23BC | 0x813B63EC | size: 0xB0
# ipl::scene::ChannelTitle::createModuleChanLayout()
.fn createModuleChanLayout__Q33ipl5scene12ChannelTitleFv, global
/* 813B63EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B63F0 | 7C 08 02 A6 */	mflr r0
/* 813B63F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B63F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B63FC | 7C 7F 1B 78 */	mr r31, r3
/* 813B6400 | 80 03 02 18 */	lwz r0, 0x218(r3)
/* 813B6404 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B6408 | 7C 63 02 14 */	add r3, r3, r0
/* 813B640C | 80 63 02 1C */	lwz r3, 0x21c(r3)
/* 813B6410 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B6414 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B6418 | 7D 89 03 A6 */	mtctr r12
/* 813B641C | 4E 80 04 21 */	bctrl
/* 813B6420 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B6424 | 40 82 00 40 */	bne .L_813B6464
/* 813B6428 | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B642C | 3C E0 81 65 */	lis r7, lbl_8164ED44@ha
/* 813B6430 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813B6434 | 38 E7 ED 44 */	addi r7, r7, lbl_8164ED44@l
/* 813B6438 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B643C | 3C 80 00 04 */	lis r4, 0x4
/* 813B6440 | 7C BF 02 14 */	add r5, r31, r0
/* 813B6444 | 38 CD 8A 7C */	li r6, lbl_81696ABC@sda21
/* 813B6448 | 80 A5 02 1C */	lwz r5, 0x21c(r5)
/* 813B644C | 4B FB 49 C9 */	bl create__Q33ipl6layout6ObjectFPQ23EGG4HeapUlPQ33ipl4nand10LayoutFilePCcPCc
/* 813B6450 | 90 7F 02 3C */	stw r3, 0x23c(r31)
/* 813B6454 | 4B FF C0 6D */	bl setLangPane__Q33ipl5scene10ChannelObjFPCQ33ipl6layout6Object
/* 813B6458 | 7F E3 FB 78 */	mr r3, r31
/* 813B645C | 48 00 1F 25 */	bl bindChanAnms__Q33ipl5scene12ChannelTitleFv
/* 813B6460 | 48 00 00 28 */	b .L_813B6488
.L_813B6464:
/* 813B6464 | 38 A0 00 00 */	li r5, 0x0
/* 813B6468 | 38 00 00 03 */	li r0, 0x3
/* 813B646C | 7C A3 2B 78 */	mr r3, r5
/* 813B6470 | 90 BF 02 3C */	stw r5, 0x23c(r31)
/* 813B6474 | 7C 09 03 A6 */	mtctr r0
.L_813B6478:
/* 813B6478 | 7C 9F 1A 14 */	add r4, r31, r3
/* 813B647C | 38 63 00 04 */	addi r3, r3, 0x4
/* 813B6480 | 90 A4 02 40 */	stw r5, 0x240(r4)
/* 813B6484 | 42 00 FF F4 */	bdnz .L_813B6478
.L_813B6488:
/* 813B6488 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B648C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B6490 | 7C 08 03 A6 */	mtlr r0
/* 813B6494 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B6498 | 4E 80 00 20 */	blr
.endfn createModuleChanLayout__Q33ipl5scene12ChannelTitleFv

# .text:0x246C | 0x813B649C | size: 0xB0
# ipl::scene::ChannelTitle::calcModuleChannel()
.fn calcModuleChannel__Q33ipl5scene12ChannelTitleFv, global
/* 813B649C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B64A0 | 7C 08 02 A6 */	mflr r0
/* 813B64A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B64A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B64AC | 7C 7F 1B 78 */	mr r31, r3
/* 813B64B0 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B64B4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B64B8 | 40 82 00 80 */	bne .L_813B6538
/* 813B64BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B64C0 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B64C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B64C8 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B64CC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B64D0 | 4B F8 29 E5 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813B64D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B64D8 | 41 82 00 60 */	beq .L_813B6538
/* 813B64DC | 80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 813B64E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B64E4 | 40 82 00 1C */	bne .L_813B6500
/* 813B64E8 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B64EC | 7F E3 FB 78 */	mr r3, r31
/* 813B64F0 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B64F4 | 48 00 34 ED */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B64F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B64FC | 40 82 00 28 */	bne .L_813B6524
.L_813B6500:
/* 813B6500 | 80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 813B6504 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6508 | 41 82 00 30 */	beq .L_813B6538
/* 813B650C | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B6510 | 7F E3 FB 78 */	mr r3, r31
/* 813B6514 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B6518 | 48 00 34 C9 */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B651C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6520 | 40 82 00 18 */	bne .L_813B6538
.L_813B6524:
/* 813B6524 | 7F E3 FB 78 */	mr r3, r31
/* 813B6528 | 38 80 00 00 */	li r4, 0x0
/* 813B652C | 48 00 44 B9 */	bl updateLockedMsg__Q33ipl5scene12ChannelTitleFi
/* 813B6530 | 7F E3 FB 78 */	mr r3, r31
/* 813B6534 | 48 00 35 E1 */	bl changeStartButton__Q33ipl5scene12ChannelTitleFv
.L_813B6538:
/* 813B6538 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B653C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B6540 | 7C 08 03 A6 */	mtlr r0
/* 813B6544 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B6548 | 4E 80 00 20 */	blr
.endfn calcModuleChannel__Q33ipl5scene12ChannelTitleFv

# .text:0x251C | 0x813B654C | size: 0x22C
# ipl::scene::ChannelTitle::calcNormalNormal()
.fn calcNormalNormal__Q33ipl5scene12ChannelTitleFv, global
/* 813B654C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B6550 | 7C 08 02 A6 */	mflr r0
/* 813B6554 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B6558 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B655C | 48 24 2F 6D */	bl _savegpr_29
/* 813B6560 | 80 83 02 00 */	lwz r4, 0x200(r3)
/* 813B6564 | 3F A0 81 65 */	lis r29, lbl_8164E768@ha
/* 813B6568 | 7C 7F 1B 78 */	mr r31, r3
/* 813B656C | 80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 813B6570 | 3B BD E7 68 */	addi r29, r29, lbl_8164E768@l
/* 813B6574 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B6578 | 40 82 00 A4 */	bne .L_813B661C
/* 813B657C | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813B6580 | 80 A3 00 64 */	lwz r5, 0x64(r3)
/* 813B6584 | 48 00 34 5D */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B6588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B658C | 40 82 00 54 */	bne .L_813B65E0
/* 813B6590 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B6594 | 38 80 00 05 */	li r4, 0x5
/* 813B6598 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B659C | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B65A0 | 48 05 4B 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B65A4 | 38 80 00 18 */	li r4, 0x18
/* 813B65A8 | 4B FE 65 B1 */	bl iplButton_8139CB58
/* 813B65AC | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B65B0 | 38 80 00 05 */	li r4, 0x5
/* 813B65B4 | 48 05 4B 85 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B65B8 | 38 80 00 17 */	li r4, 0x17
/* 813B65BC | 4B FE 65 9D */	bl iplButton_8139CB58
/* 813B65C0 | 80 BE 00 84 */	lwz r5, 0x84(r30)
/* 813B65C4 | 38 00 00 00 */	li r0, 0x0
/* 813B65C8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B65CC | 38 9D 05 E9 */	addi r4, r29, 0x5e9
/* 813B65D0 | 98 05 1D A0 */	stb r0, 0x1da0(r5)
/* 813B65D4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B65D8 | 4B FB 4E 95 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B65DC | 48 00 00 30 */	b .L_813B660C
.L_813B65E0:
/* 813B65E0 | 7F E3 FB 78 */	mr r3, r31
/* 813B65E4 | 48 00 2E A5 */	bl reserveNextScene__Q33ipl5scene12ChannelTitleFv
/* 813B65E8 | 83 DF 01 14 */	lwz r30, 0x114(r31)
/* 813B65EC | 7F C3 F3 78 */	mr r3, r30
/* 813B65F0 | 4B FA C2 81 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B65F4 | 38 00 00 01 */	li r0, 0x1
/* 813B65F8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B65FC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813B6600 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B6604 | 38 9D 05 FD */	addi r4, r29, 0x5fd
/* 813B6608 | 4B FB 4E 65 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813B660C:
/* 813B660C | 80 7F 02 00 */	lwz r3, 0x200(r31)
/* 813B6610 | 38 00 00 01 */	li r0, 0x1
/* 813B6614 | 90 03 00 C4 */	stw r0, 0xc4(r3)
/* 813B6618 | 48 00 01 48 */	b .L_813B6760
.L_813B661C:
/* 813B661C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B6620 | 38 80 00 05 */	li r4, 0x5
/* 813B6624 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B6628 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813B662C | 48 05 4B 0D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B6630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6634 | 7C 7E 1B 78 */	mr r30, r3
/* 813B6638 | 41 82 00 18 */	beq .L_813B6650
/* 813B663C | 4B FE 62 D9 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 813B6640 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6644 | 41 82 00 0C */	beq .L_813B6650
/* 813B6648 | 7F C3 F3 78 */	mr r3, r30
/* 813B664C | 4B FE 5F 21 */	bl update__Q33ipl5scene6ButtonFv
.L_813B6650:
/* 813B6650 | 80 1F 00 58 */	lwz r0, 0x58(r31)
/* 813B6654 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6658 | 40 82 01 08 */	bne .L_813B6760
/* 813B665C | 4B F7 F3 4D */	bl getMasterController__Q23ipl6SystemFv
/* 813B6660 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B6664 | 3C 80 30 00 */	lis r4, 0x3000
/* 813B6668 | 7C 7E 1B 78 */	mr r30, r3
/* 813B666C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B6670 | 38 84 10 00 */	addi r4, r4, 0x1000
/* 813B6674 | 7D 89 03 A6 */	mtctr r12
/* 813B6678 | 4E 80 04 21 */	bctrl
/* 813B667C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6680 | 41 82 00 3C */	beq .L_813B66BC
/* 813B6684 | 7F E3 FB 78 */	mr r3, r31
/* 813B6688 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813B668C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813B6690 | 38 80 00 01 */	li r4, 0x1
/* 813B6694 | 48 00 2B 1D */	bl searchChannel__Q33ipl5scene12ChannelTitleCFiPiPi
/* 813B6698 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813B669C | 7F E3 FB 78 */	mr r3, r31
/* 813B66A0 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813B66A4 | 48 00 2B ED */	bl startChangeChannel__Q33ipl5scene12ChannelTitleFii
/* 813B66A8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B66AC | 38 9D 06 0C */	addi r4, r29, 0x60c
/* 813B66B0 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B66B4 | 4B FB 4D B9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B66B8 | 48 00 00 A8 */	b .L_813B6760
.L_813B66BC:
/* 813B66BC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813B66C0 | 3C 80 06 00 */	lis r4, 0x600
/* 813B66C4 | 7F C3 F3 78 */	mr r3, r30
/* 813B66C8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B66CC | 38 84 00 10 */	addi r4, r4, 0x10
/* 813B66D0 | 7D 89 03 A6 */	mtctr r12
/* 813B66D4 | 4E 80 04 21 */	bctrl
/* 813B66D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B66DC | 41 82 00 3C */	beq .L_813B6718
/* 813B66E0 | 7F E3 FB 78 */	mr r3, r31
/* 813B66E4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813B66E8 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813B66EC | 38 80 00 00 */	li r4, 0x0
/* 813B66F0 | 48 00 2A C1 */	bl searchChannel__Q33ipl5scene12ChannelTitleCFiPiPi
/* 813B66F4 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813B66F8 | 7F E3 FB 78 */	mr r3, r31
/* 813B66FC | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813B6700 | 48 00 2B 91 */	bl startChangeChannel__Q33ipl5scene12ChannelTitleFii
/* 813B6704 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B6708 | 38 9D 06 0C */	addi r4, r29, 0x60c
/* 813B670C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B6710 | 4B FB 4D 5D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B6714 | 48 00 00 4C */	b .L_813B6760
.L_813B6718:
/* 813B6718 | 80 7F 02 0C */	lwz r3, 0x20c(r31)
/* 813B671C | 4B FB 48 71 */	bl update__Q33ipl3gui11PaneManagerFv
/* 813B6720 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B6724 | 7F E3 FB 78 */	mr r3, r31
/* 813B6728 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B672C | 48 00 32 B5 */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B6730 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6734 | 41 82 00 2C */	beq .L_813B6760
/* 813B6738 | 80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 813B673C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6740 | 40 82 00 10 */	bne .L_813B6750
/* 813B6744 | 38 00 00 01 */	li r0, 0x1
/* 813B6748 | 90 1F 00 8C */	stw r0, 0x8c(r31)
/* 813B674C | 48 00 00 14 */	b .L_813B6760
.L_813B6750:
/* 813B6750 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6754 | 40 82 00 0C */	bne .L_813B6760
/* 813B6758 | 38 00 00 02 */	li r0, 0x2
/* 813B675C | 90 1F 00 8C */	stw r0, 0x8c(r31)
.L_813B6760:
/* 813B6760 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B6764 | 48 24 2D B1 */	bl _restgpr_29
/* 813B6768 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B676C | 7C 08 03 A6 */	mtlr r0
/* 813B6770 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B6774 | 4E 80 00 20 */	blr
.endfn calcNormalNormal__Q33ipl5scene12ChannelTitleFv

# .text:0x2748 | 0x813B6778 | size: 0x3F8
# ipl::scene::ChannelTitle::calcNormalChangeWait()
.fn calcNormalChangeWait__Q33ipl5scene12ChannelTitleFv, global
/* 813B6778 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B677C | 7C 08 02 A6 */	mflr r0
/* 813B6780 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B6784 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B6788 | 7C 7F 1B 78 */	mr r31, r3
/* 813B678C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B6790 | 80 83 01 F0 */	lwz r4, 0x1f0(r3)
/* 813B6794 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813B6798 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B679C | 41 82 03 BC */	beq .L_813B6B58
/* 813B67A0 | 80 03 02 18 */	lwz r0, 0x218(r3)
/* 813B67A4 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813B67A8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B67AC | 7C 63 02 14 */	add r3, r3, r0
/* 813B67B0 | 80 63 02 1C */	lwz r3, 0x21c(r3)
/* 813B67B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B67B8 | 41 82 00 1C */	beq .L_813B67D4
/* 813B67BC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B67C0 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B67C4 | 7D 89 03 A6 */	mtctr r12
/* 813B67C8 | 4E 80 04 21 */	bctrl
/* 813B67CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B67D0 | 41 82 03 68 */	beq .L_813B6B38
.L_813B67D4:
/* 813B67D4 | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B67D8 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813B67DC | 54 00 10 3A */	slwi r0, r0, 2
/* 813B67E0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813B67E4 | 80 63 02 2C */	lwz r3, 0x22c(r3)
/* 813B67E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B67EC | 41 82 00 1C */	beq .L_813B6808
/* 813B67F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B67F4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B67F8 | 7D 89 03 A6 */	mtctr r12
/* 813B67FC | 4E 80 04 21 */	bctrl
/* 813B6800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6804 | 41 82 03 34 */	beq .L_813B6B38
.L_813B6808:
/* 813B6808 | 80 7F 01 C0 */	lwz r3, 0x1c0(r31)
/* 813B680C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B6810 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6814 | 41 82 03 24 */	beq .L_813B6B38
/* 813B6818 | 80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 813B681C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B6820 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6824 | 41 82 03 14 */	beq .L_813B6B38
/* 813B6828 | 88 1F 03 71 */	lbz r0, 0x371(r31)
/* 813B682C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6830 | 41 82 03 08 */	beq .L_813B6B38
/* 813B6834 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B6838 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B683C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B6840 | 4B F8 20 C9 */	bl isLoadedLockedMsg__Q33ipl7channel7ManagerFv
/* 813B6844 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6848 | 41 82 02 F0 */	beq .L_813B6B38
/* 813B684C | 80 7F 03 3C */	lwz r3, 0x33c(r31)
/* 813B6850 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B6854 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6858 | 41 82 02 E0 */	beq .L_813B6B38
/* 813B685C | 80 1F 03 84 */	lwz r0, 0x384(r31)
/* 813B6860 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6864 | 41 82 00 10 */	beq .L_813B6874
/* 813B6868 | 80 1F 03 80 */	lwz r0, 0x380(r31)
/* 813B686C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B6870 | 40 82 02 C8 */	bne .L_813B6B38
.L_813B6874:
/* 813B6874 | 80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 813B6878 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B687C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6880 | 40 82 00 0C */	bne .L_813B688C
/* 813B6884 | 38 00 00 00 */	li r0, 0x0
/* 813B6888 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813B688C:
/* 813B688C | 80 7F 02 18 */	lwz r3, 0x218(r31)
/* 813B6890 | 80 1F 02 50 */	lwz r0, 0x250(r31)
/* 813B6894 | 54 65 10 3A */	slwi r5, r3, 2
/* 813B6898 | 7C 7F 2A 14 */	add r3, r31, r5
/* 813B689C | 80 63 02 1C */	lwz r3, 0x21c(r3)
/* 813B68A0 | 7C 03 00 40 */	cmplw r3, r0
/* 813B68A4 | 40 82 00 18 */	bne .L_813B68BC
/* 813B68A8 | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B68AC | 38 80 00 00 */	li r4, 0x0
/* 813B68B0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B68B4 | 4B F8 DB 61 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B68B8 | 48 00 00 84 */	b .L_813B693C
.L_813B68BC:
/* 813B68BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B68C0 | 41 82 00 10 */	beq .L_813B68D0
/* 813B68C4 | 80 1F 03 28 */	lwz r0, 0x328(r31)
/* 813B68C8 | 7C 03 00 40 */	cmplw r3, r0
/* 813B68CC | 41 82 00 70 */	beq .L_813B693C
.L_813B68D0:
/* 813B68D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B68D4 | 40 82 00 28 */	bne .L_813B68FC
/* 813B68D8 | 7C 9F 2A 14 */	add r4, r31, r5
/* 813B68DC | 80 04 02 24 */	lwz r0, 0x224(r4)
/* 813B68E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B68E4 | 41 82 00 18 */	beq .L_813B68FC
/* 813B68E8 | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B68EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B68F0 | 41 82 00 4C */	beq .L_813B693C
/* 813B68F4 | 4B FB 45 0D */	bl destroyHeap__Q33ipl6layout6ObjectFv
/* 813B68F8 | 48 00 00 44 */	b .L_813B693C
.L_813B68FC:
/* 813B68FC | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 813B6900 | 41 86 00 3C */	beq cr1, .L_813B693C
/* 813B6904 | 7C 9F 2A 14 */	add r4, r31, r5
/* 813B6908 | 80 04 02 24 */	lwz r0, 0x224(r4)
/* 813B690C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6910 | 40 82 00 2C */	bne .L_813B693C
/* 813B6914 | 41 86 00 18 */	beq cr1, .L_813B692C
/* 813B6918 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B691C | 38 80 00 01 */	li r4, 0x1
/* 813B6920 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B6924 | 7D 89 03 A6 */	mtctr r12
/* 813B6928 | 4E 80 04 21 */	bctrl
.L_813B692C:
/* 813B692C | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B6930 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6934 | 41 82 00 08 */	beq .L_813B693C
/* 813B6938 | 4B FB 44 C9 */	bl destroyHeap__Q33ipl6layout6ObjectFv
.L_813B693C:
/* 813B693C | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B6940 | 38 80 00 00 */	li r4, 0x0
/* 813B6944 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B6948 | 7C 7F 02 14 */	add r3, r31, r0
/* 813B694C | 90 83 02 1C */	stw r4, 0x21c(r3)
/* 813B6950 | 80 1F 03 A0 */	lwz r0, 0x3a0(r31)
/* 813B6954 | 90 9F 02 3C */	stw r4, 0x23c(r31)
/* 813B6958 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B695C | 7C 7F 02 14 */	add r3, r31, r0
/* 813B6960 | 80 63 03 98 */	lwz r3, 0x398(r3)
/* 813B6964 | 48 24 0E F9 */	bl fn_815F785C
/* 813B6968 | 80 1F 03 A0 */	lwz r0, 0x3a0(r31)
/* 813B696C | 7F E3 FB 78 */	mr r3, r31
/* 813B6970 | 68 00 00 01 */	xori r0, r0, 0x1
/* 813B6974 | 90 1F 03 A0 */	stw r0, 0x3a0(r31)
/* 813B6978 | 48 00 36 69 */	bl dispTimeLimitWindow__Q33ipl5scene12ChannelTitleFv
/* 813B697C | 3F C0 81 09 */	lis r30, sSystem__Q23ipl3snd@ha
/* 813B6980 | 38 80 00 00 */	li r4, 0x0
/* 813B6984 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813B6988 | 4B FB 58 71 */	bl stopBannerSound__Q33ipl3snd6SystemFi
/* 813B698C | 80 9F 02 4C */	lwz r4, 0x24c(r31)
/* 813B6990 | 38 7E 99 2C */	addi r3, r30, sSystem__Q23ipl3snd@l
/* 813B6994 | 38 A0 00 00 */	li r5, 0x0
/* 813B6998 | 4B FB 50 D1 */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
/* 813B699C | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B69A0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B69A4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813B69A8 | 80 63 02 2C */	lwz r3, 0x22c(r3)
/* 813B69AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B69B0 | 41 82 00 1C */	beq .L_813B69CC
/* 813B69B4 | 41 82 00 18 */	beq .L_813B69CC
/* 813B69B8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B69BC | 38 80 00 01 */	li r4, 0x1
/* 813B69C0 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B69C4 | 7D 89 03 A6 */	mtctr r12
/* 813B69C8 | 4E 80 04 21 */	bctrl
.L_813B69CC:
/* 813B69CC | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B69D0 | 38 A0 00 00 */	li r5, 0x0
/* 813B69D4 | 7F E3 FB 78 */	mr r3, r31
/* 813B69D8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B69DC | 7C 9F 02 14 */	add r4, r31, r0
/* 813B69E0 | 90 A4 02 2C */	stw r5, 0x22c(r4)
/* 813B69E4 | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B69E8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B69EC | 7C 9F 02 14 */	add r4, r31, r0
/* 813B69F0 | 90 A4 02 34 */	stw r5, 0x234(r4)
/* 813B69F4 | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B69F8 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B69FC | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813B6A00 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B6A04 | 90 1F 02 18 */	stw r0, 0x218(r31)
/* 813B6A08 | 48 00 0D E9 */	bl loadModule__Q33ipl5scene12ChannelTitleFii
/* 813B6A0C | 7F E3 FB 78 */	mr r3, r31
/* 813B6A10 | 4B FF F7 7D */	bl createChanLayout__Q33ipl5scene12ChannelTitleFv
/* 813B6A14 | 83 DF 01 F8 */	lwz r30, 0x1f8(r31)
/* 813B6A18 | 7F C3 F3 78 */	mr r3, r30
/* 813B6A1C | 4B FA BE 55 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B6A20 | 38 00 00 01 */	li r0, 0x1
/* 813B6A24 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813B6A28 | 80 7F 01 C0 */	lwz r3, 0x1c0(r31)
/* 813B6A2C | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813B6A30 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813B6A34 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 813B6A38 | 40 82 00 C0 */	bne .L_813B6AF8
/* 813B6A3C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B6A40 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B6A44 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B6A48 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B6A4C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B6A50 | 4B F8 22 29 */	bl checkNeedUpdate__Q33ipl7channel7ManagerCFii
/* 813B6A54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6A58 | 41 82 00 40 */	beq .L_813B6A98
/* 813B6A5C | 80 DF 02 08 */	lwz r6, 0x208(r31)
/* 813B6A60 | 38 6D 8A 6C */	li r3, lbl_81696AAC@sda21
/* 813B6A64 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813B6A68 | 38 A0 00 01 */	li r5, 0x1
/* 813B6A6C | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813B6A70 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B6A74 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B6A78 | 7D 89 03 A6 */	mtctr r12
/* 813B6A7C | 4E 80 04 21 */	bctrl
/* 813B6A80 | 7C 64 1B 78 */	mr r4, r3
/* 813B6A84 | 7F E3 FB 78 */	mr r3, r31
/* 813B6A88 | 38 A0 00 14 */	li r5, 0x14
/* 813B6A8C | 38 C0 00 00 */	li r6, 0x0
/* 813B6A90 | 48 00 32 79 */	bl setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb
/* 813B6A94 | 48 00 00 3C */	b .L_813B6AD0
.L_813B6A98:
/* 813B6A98 | 80 DF 02 08 */	lwz r6, 0x208(r31)
/* 813B6A9C | 38 6D 8A 6C */	li r3, lbl_81696AAC@sda21
/* 813B6AA0 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813B6AA4 | 38 A0 00 01 */	li r5, 0x1
/* 813B6AA8 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813B6AAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B6AB0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B6AB4 | 7D 89 03 A6 */	mtctr r12
/* 813B6AB8 | 4E 80 04 21 */	bctrl
/* 813B6ABC | 7C 64 1B 78 */	mr r4, r3
/* 813B6AC0 | 7F E3 FB 78 */	mr r3, r31
/* 813B6AC4 | 38 A0 00 02 */	li r5, 0x2
/* 813B6AC8 | 38 C0 00 00 */	li r6, 0x0
/* 813B6ACC | 48 00 32 3D */	bl setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb
.L_813B6AD0:
/* 813B6AD0 | 83 DF 01 C4 */	lwz r30, 0x1c4(r31)
/* 813B6AD4 | 7F C3 F3 78 */	mr r3, r30
/* 813B6AD8 | 4B FA BD 99 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B6ADC | 38 00 00 01 */	li r0, 0x1
/* 813B6AE0 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813B6AE4 | 80 7F 01 C0 */	lwz r3, 0x1c0(r31)
/* 813B6AE8 | 4B FB 31 3D */	bl initAnmFrame__Q33ipl6layout8AnimatorFv
/* 813B6AEC | 80 7F 01 C0 */	lwz r3, 0x1c0(r31)
/* 813B6AF0 | 38 00 00 00 */	li r0, 0x0
/* 813B6AF4 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_813B6AF8:
/* 813B6AF8 | 7F E3 FB 78 */	mr r3, r31
/* 813B6AFC | 48 00 30 19 */	bl changeStartButton__Q33ipl5scene12ChannelTitleFv
/* 813B6B00 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B6B04 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B6B08 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B6B0C | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B6B10 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B6B14 | 4B F8 23 A1 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813B6B18 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B6B1C | 40 82 00 10 */	bne .L_813B6B2C
/* 813B6B20 | 7F E3 FB 78 */	mr r3, r31
/* 813B6B24 | 38 80 00 01 */	li r4, 0x1
/* 813B6B28 | 48 00 3E BD */	bl updateLockedMsg__Q33ipl5scene12ChannelTitleFi
.L_813B6B2C:
/* 813B6B2C | 38 00 00 09 */	li r0, 0x9
/* 813B6B30 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B6B34 | 48 00 00 24 */	b .L_813B6B58
.L_813B6B38:
/* 813B6B38 | 83 DF 01 F4 */	lwz r30, 0x1f4(r31)
/* 813B6B3C | 80 1E 00 14 */	lwz r0, 0x14(r30)
/* 813B6B40 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6B44 | 41 82 00 14 */	beq .L_813B6B58
/* 813B6B48 | 7F C3 F3 78 */	mr r3, r30
/* 813B6B4C | 4B FA BD 25 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B6B50 | 38 00 00 01 */	li r0, 0x1
/* 813B6B54 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_813B6B58:
/* 813B6B58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B6B5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B6B60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B6B64 | 7C 08 03 A6 */	mtlr r0
/* 813B6B68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B6B6C | 4E 80 00 20 */	blr
.endfn calcNormalChangeWait__Q33ipl5scene12ChannelTitleFv

# .text:0x2B40 | 0x813B6B70 | size: 0x44
# ipl::scene::ChannelTitle::calcNormalChangeNext()
.fn calcNormalChangeNext__Q33ipl5scene12ChannelTitleFv, global
/* 813B6B70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B6B74 | 7C 08 02 A6 */	mflr r0
/* 813B6B78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B6B7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B6B80 | 7C 7F 1B 78 */	mr r31, r3
/* 813B6B84 | 80 83 01 F8 */	lwz r4, 0x1f8(r3)
/* 813B6B88 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813B6B8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6B90 | 41 82 00 10 */	beq .L_813B6BA0
/* 813B6B94 | 48 00 15 41 */	bl initChanAnmAndSound__Q33ipl5scene12ChannelTitleFv
/* 813B6B98 | 38 00 00 01 */	li r0, 0x1
/* 813B6B9C | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813B6BA0:
/* 813B6BA0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B6BA4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B6BA8 | 7C 08 03 A6 */	mtlr r0
/* 813B6BAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B6BB0 | 4E 80 00 20 */	blr
.endfn calcNormalChangeNext__Q33ipl5scene12ChannelTitleFv

# .text:0x2B84 | 0x813B6BB4 | size: 0x200
# ipl::scene::ChannelTitle::calcNormalParentalDialog()
.fn calcNormalParentalDialog__Q33ipl5scene12ChannelTitleFv, global
/* 813B6BB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B6BB8 | 7C 08 02 A6 */	mflr r0
/* 813B6BBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B6BC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B6BC4 | 48 24 29 01 */	bl _savegpr_28
/* 813B6BC8 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 813B6BCC | 7C 7F 1B 78 */	mr r31, r3
/* 813B6BD0 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813B6BD4 | 40 82 00 34 */	bne .L_813B6C08
/* 813B6BD8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B6BDC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B6BE0 | 80 A4 00 A8 */	lwz r5, 0xa8(r4)
/* 813B6BE4 | 80 05 00 04 */	lwz r0, 0x4(r5)
/* 813B6BE8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813B6BEC | 40 82 00 14 */	bne .L_813B6C00
/* 813B6BF0 | 80 84 00 84 */	lwz r4, 0x84(r4)
/* 813B6BF4 | 88 04 1B 81 */	lbz r0, 0x1b81(r4)
/* 813B6BF8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6BFC | 41 82 00 0C */	beq .L_813B6C08
.L_813B6C00:
/* 813B6C00 | 38 00 00 02 */	li r0, 0x2
/* 813B6C04 | 90 03 00 70 */	stw r0, 0x70(r3)
.L_813B6C08:
/* 813B6C08 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813B6C0C | 38 80 00 1B */	li r4, 0x1b
/* 813B6C10 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813B6C14 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813B6C18 | 48 05 45 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B6C1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6C20 | 40 82 00 E8 */	bne .L_813B6D08
/* 813B6C24 | 80 9D 00 64 */	lwz r4, 0x64(r29)
/* 813B6C28 | 80 04 01 04 */	lwz r0, 0x104(r4)
/* 813B6C2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6C30 | 40 82 00 D8 */	bne .L_813B6D08
/* 813B6C34 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 813B6C38 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6C3C | 40 82 00 74 */	bne .L_813B6CB0
/* 813B6C40 | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 813B6C44 | 2C 04 00 12 */	cmpwi r4, 0x12
/* 813B6C48 | 40 82 00 14 */	bne .L_813B6C5C
/* 813B6C4C | 7F E3 FB 78 */	mr r3, r31
/* 813B6C50 | 38 80 00 01 */	li r4, 0x1
/* 813B6C54 | 48 00 2A AD */	bl reserveSettingScene__Q33ipl5scene12ChannelTitleFb
/* 813B6C58 | 48 00 01 44 */	b .L_813B6D9C
.L_813B6C5C:
/* 813B6C5C | 2C 04 00 11 */	cmpwi r4, 0x11
/* 813B6C60 | 40 82 00 18 */	bne .L_813B6C78
/* 813B6C64 | 7F E3 FB 78 */	mr r3, r31
/* 813B6C68 | 48 00 2C 79 */	bl prepareForBoot2__Q33ipl5scene12ChannelTitleFi
/* 813B6C6C | 38 00 00 05 */	li r0, 0x5
/* 813B6C70 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B6C74 | 48 00 01 28 */	b .L_813B6D9C
.L_813B6C78:
/* 813B6C78 | 2C 04 00 0F */	cmpwi r4, 0xf
/* 813B6C7C | 40 82 00 20 */	bne .L_813B6C9C
/* 813B6C80 | 7F E3 FB 78 */	mr r3, r31
/* 813B6C84 | 48 00 2C 5D */	bl prepareForBoot2__Q33ipl5scene12ChannelTitleFi
/* 813B6C88 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813B6C8C | 4B FA 9E 2D */	bl reserveRVLGame__Q33ipl3bs27ManagerFv
/* 813B6C90 | 38 00 00 05 */	li r0, 0x5
/* 813B6C94 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B6C98 | 48 00 01 04 */	b .L_813B6D9C
.L_813B6C9C:
/* 813B6C9C | 2C 04 00 21 */	cmpwi r4, 0x21
/* 813B6CA0 | 40 82 00 FC */	bne .L_813B6D9C
/* 813B6CA4 | 38 00 00 0F */	li r0, 0xf
/* 813B6CA8 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B6CAC | 48 00 00 F0 */	b .L_813B6D9C
.L_813B6CB0:
/* 813B6CB0 | 7C 83 23 78 */	mr r3, r4
/* 813B6CB4 | 38 80 00 05 */	li r4, 0x5
/* 813B6CB8 | 48 05 44 81 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B6CBC | 38 80 00 18 */	li r4, 0x18
/* 813B6CC0 | 4B FE 5E 99 */	bl iplButton_8139CB58
/* 813B6CC4 | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 813B6CC8 | 38 80 00 05 */	li r4, 0x5
/* 813B6CCC | 48 05 44 6D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B6CD0 | 38 80 00 17 */	li r4, 0x17
/* 813B6CD4 | 4B FE 5E 85 */	bl iplButton_8139CB58
/* 813B6CD8 | 83 9F 00 BC */	lwz r28, 0xbc(r31)
/* 813B6CDC | 7F 83 E3 78 */	mr r3, r28
/* 813B6CE0 | 4B FA BB 91 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B6CE4 | 3B C0 00 01 */	li r30, 0x1
/* 813B6CE8 | 93 DC 00 14 */	stw r30, 0x14(r28)
/* 813B6CEC | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 813B6CF0 | 4B F9 16 55 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813B6CF4 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B6CF8 | 38 00 00 00 */	li r0, 0x0
/* 813B6CFC | 98 03 1D A0 */	stb r0, 0x1da0(r3)
/* 813B6D00 | 93 DF 00 58 */	stw r30, 0x58(r31)
/* 813B6D04 | 48 00 00 98 */	b .L_813B6D9C
.L_813B6D08:
/* 813B6D08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6D0C | 41 82 00 90 */	beq .L_813B6D9C
/* 813B6D10 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 813B6D14 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B6D18 | 41 82 00 70 */	beq .L_813B6D88
/* 813B6D1C | 40 80 00 10 */	bge .L_813B6D2C
/* 813B6D20 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6D24 | 40 80 00 14 */	bge .L_813B6D38
/* 813B6D28 | 48 00 00 74 */	b .L_813B6D9C
.L_813B6D2C:
/* 813B6D2C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B6D30 | 40 80 00 6C */	bge .L_813B6D9C
/* 813B6D34 | 48 00 00 60 */	b .L_813B6D94
.L_813B6D38:
/* 813B6D38 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 813B6D3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6D40 | 40 82 00 5C */	bne .L_813B6D9C
/* 813B6D44 | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 813B6D48 | 7F E3 FB 78 */	mr r3, r31
/* 813B6D4C | 48 00 2A B1 */	bl prepareForBoot1__Q33ipl5scene12ChannelTitleFi
/* 813B6D50 | 80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 813B6D54 | 2C 00 00 21 */	cmpwi r0, 0x21
/* 813B6D58 | 40 82 00 24 */	bne .L_813B6D7C
/* 813B6D5C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B6D60 | 3C C0 81 0B */	lis r6, msUnlockTicket__Q33ipl5scene12ChannelTitle@ha
/* 813B6D64 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B6D68 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B6D6C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B6D70 | 38 C6 74 20 */	addi r6, r6, msUnlockTicket__Q33ipl5scene12ChannelTitle@l
/* 813B6D74 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B6D78 | 4B F8 22 55 */	bl loadLockedTitleAsync__Q33ipl7channel7ManagerCFiiR12ESTicketView
.L_813B6D7C:
/* 813B6D7C | 38 00 00 01 */	li r0, 0x1
/* 813B6D80 | 90 1F 00 70 */	stw r0, 0x70(r31)
/* 813B6D84 | 48 00 00 18 */	b .L_813B6D9C
.L_813B6D88:
/* 813B6D88 | 38 00 00 02 */	li r0, 0x2
/* 813B6D8C | 90 1F 00 70 */	stw r0, 0x70(r31)
/* 813B6D90 | 48 00 00 0C */	b .L_813B6D9C
.L_813B6D94:
/* 813B6D94 | 38 00 00 02 */	li r0, 0x2
/* 813B6D98 | 90 1F 00 70 */	stw r0, 0x70(r31)
.L_813B6D9C:
/* 813B6D9C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B6DA0 | 48 24 27 71 */	bl _restgpr_28
/* 813B6DA4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B6DA8 | 7C 08 03 A6 */	mtlr r0
/* 813B6DAC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B6DB0 | 4E 80 00 20 */	blr
.endfn calcNormalParentalDialog__Q33ipl5scene12ChannelTitleFv

# .text:0x2D84 | 0x813B6DB4 | size: 0xD0
# ipl::scene::ChannelTitle::calcNormalSettingDialog()
.fn calcNormalSettingDialog__Q33ipl5scene12ChannelTitleFv, global
/* 813B6DB4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B6DB8 | 7C 08 02 A6 */	mflr r0
/* 813B6DBC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B6DC0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B6DC4 | 48 24 27 05 */	bl _savegpr_29
/* 813B6DC8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B6DCC | 7C 7D 1B 78 */	mr r29, r3
/* 813B6DD0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B6DD4 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 813B6DD8 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 813B6DDC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B6DE0 | 41 82 00 14 */	beq .L_813B6DF4
/* 813B6DE4 | 40 80 00 88 */	bge .L_813B6E6C
/* 813B6DE8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B6DEC | 40 80 00 58 */	bge .L_813B6E44
/* 813B6DF0 | 48 00 00 7C */	b .L_813B6E6C
.L_813B6DF4:
/* 813B6DF4 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B6DF8 | 38 80 00 05 */	li r4, 0x5
/* 813B6DFC | 48 05 43 3D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B6E00 | 38 80 00 18 */	li r4, 0x18
/* 813B6E04 | 4B FE 5D 55 */	bl iplButton_8139CB58
/* 813B6E08 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B6E0C | 38 80 00 05 */	li r4, 0x5
/* 813B6E10 | 48 05 43 29 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B6E14 | 38 80 00 17 */	li r4, 0x17
/* 813B6E18 | 4B FE 5D 41 */	bl iplButton_8139CB58
/* 813B6E1C | 83 DD 00 BC */	lwz r30, 0xbc(r29)
/* 813B6E20 | 7F C3 F3 78 */	mr r3, r30
/* 813B6E24 | 4B FA BA 4D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B6E28 | 38 80 00 01 */	li r4, 0x1
/* 813B6E2C | 38 00 00 00 */	li r0, 0x0
/* 813B6E30 | 90 9E 00 14 */	stw r4, 0x14(r30)
/* 813B6E34 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813B6E38 | 98 03 1D A0 */	stb r0, 0x1da0(r3)
/* 813B6E3C | 90 9D 00 58 */	stw r4, 0x58(r29)
/* 813B6E40 | 48 00 00 2C */	b .L_813B6E6C
.L_813B6E44:
/* 813B6E44 | 48 00 22 85 */	bl isSetParental__Q33ipl5scene12ChannelTitleFv
/* 813B6E48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6E4C | 41 82 00 14 */	beq .L_813B6E60
/* 813B6E50 | 7F A3 EB 78 */	mr r3, r29
/* 813B6E54 | 38 80 00 01 */	li r4, 0x1
/* 813B6E58 | 48 00 22 B5 */	bl startParentalDialog__Q33ipl5scene12ChannelTitleFi
/* 813B6E5C | 48 00 00 10 */	b .L_813B6E6C
.L_813B6E60:
/* 813B6E60 | 7F A3 EB 78 */	mr r3, r29
/* 813B6E64 | 38 80 00 01 */	li r4, 0x1
/* 813B6E68 | 48 00 28 99 */	bl reserveSettingScene__Q33ipl5scene12ChannelTitleFb
.L_813B6E6C:
/* 813B6E6C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B6E70 | 48 24 26 A5 */	bl _restgpr_29
/* 813B6E74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B6E78 | 7C 08 03 A6 */	mtlr r0
/* 813B6E7C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B6E80 | 4E 80 00 20 */	blr
.endfn calcNormalSettingDialog__Q33ipl5scene12ChannelTitleFv

# .text:0x2E54 | 0x813B6E84 | size: 0x8C
# ipl::scene::ChannelTitle::calcNormalControllerDialog()
.fn calcNormalControllerDialog__Q33ipl5scene12ChannelTitleFv, global
/* 813B6E84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B6E88 | 7C 08 02 A6 */	mflr r0
/* 813B6E8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B6E90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B6E94 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B6E98 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B6E9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B6EA0 | 7C 7E 1B 78 */	mr r30, r3
/* 813B6EA4 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B6EA8 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813B6EAC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6EB0 | 41 82 00 08 */	beq .L_813B6EB8
/* 813B6EB4 | 48 00 00 44 */	b .L_813B6EF8
.L_813B6EB8:
/* 813B6EB8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B6EBC | 38 80 00 05 */	li r4, 0x5
/* 813B6EC0 | 48 05 42 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B6EC4 | 38 80 00 18 */	li r4, 0x18
/* 813B6EC8 | 4B FE 5C 91 */	bl iplButton_8139CB58
/* 813B6ECC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B6ED0 | 38 80 00 05 */	li r4, 0x5
/* 813B6ED4 | 48 05 42 65 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B6ED8 | 38 80 00 17 */	li r4, 0x17
/* 813B6EDC | 4B FE 5C 7D */	bl iplButton_8139CB58
/* 813B6EE0 | 83 FE 00 BC */	lwz r31, 0xbc(r30)
/* 813B6EE4 | 7F E3 FB 78 */	mr r3, r31
/* 813B6EE8 | 4B FA B9 89 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B6EEC | 38 00 00 01 */	li r0, 0x1
/* 813B6EF0 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813B6EF4 | 90 1E 00 58 */	stw r0, 0x58(r30)
.L_813B6EF8:
/* 813B6EF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B6EFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B6F00 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B6F04 | 7C 08 03 A6 */	mtlr r0
/* 813B6F08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B6F0C | 4E 80 00 20 */	blr
.endfn calcNormalControllerDialog__Q33ipl5scene12ChannelTitleFv

# .text:0x2EE0 | 0x813B6F10 | size: 0x18C
# ipl::scene::ChannelTitle::calcNormalWaitTmd()
.fn calcNormalWaitTmd__Q33ipl5scene12ChannelTitleFv, global
/* 813B6F10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B6F14 | 7C 08 02 A6 */	mflr r0
/* 813B6F18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B6F1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B6F20 | 7C 7F 1B 78 */	mr r31, r3
/* 813B6F24 | 88 03 03 60 */	lbz r0, 0x360(r3)
/* 813B6F28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6F2C | 41 82 01 5C */	beq .L_813B7088
/* 813B6F30 | 80 03 00 6C */	lwz r0, 0x6c(r3)
/* 813B6F34 | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813B6F38 | 40 82 00 30 */	bne .L_813B6F68
/* 813B6F3C | 80 83 03 5C */	lwz r4, 0x35c(r3)
/* 813B6F40 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B6F44 | 41 82 00 18 */	beq .L_813B6F5C
/* 813B6F48 | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 813B6F4C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B6F50 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B6F54 | 7D 89 03 A6 */	mtctr r12
/* 813B6F58 | 4E 80 04 21 */	bctrl
.L_813B6F5C:
/* 813B6F5C | 38 00 00 04 */	li r0, 0x4
/* 813B6F60 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B6F64 | 48 00 01 24 */	b .L_813B7088
.L_813B6F68:
/* 813B6F68 | 80 03 00 60 */	lwz r0, 0x60(r3)
/* 813B6F6C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 813B6F70 | 80 C3 00 64 */	lwz r6, 0x64(r3)
/* 813B6F74 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 813B6F78 | 1C 80 05 40 */	mulli r4, r0, 0x540
/* 813B6F7C | 80 A5 00 84 */	lwz r5, 0x84(r5)
/* 813B6F80 | 1C 06 00 70 */	mulli r0, r6, 0x70
/* 813B6F84 | 7C 85 22 14 */	add r4, r5, r4
/* 813B6F88 | 7C 84 02 14 */	add r4, r4, r0
/* 813B6F8C | A0 04 00 16 */	lhz r0, 0x16(r4)
/* 813B6F90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6F94 | 40 82 00 0C */	bne .L_813B6FA0
/* 813B6F98 | 38 00 00 00 */	li r0, 0x0
/* 813B6F9C | 48 00 00 08 */	b .L_813B6FA4
.L_813B6FA0:
/* 813B6FA0 | 38 00 00 01 */	li r0, 0x1
.L_813B6FA4:
/* 813B6FA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B6FA8 | 40 82 00 38 */	bne .L_813B6FE0
/* 813B6FAC | 80 63 03 5C */	lwz r3, 0x35c(r3)
/* 813B6FB0 | 4B FA F2 F1 */	bl CheckTmdCountryCode__Q33ipl7utility6ESMiscFP9ESTmdView
/* 813B6FB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6FB8 | 40 82 00 28 */	bne .L_813B6FE0
/* 813B6FBC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B6FC0 | 38 80 00 01 */	li r4, 0x1
/* 813B6FC4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B6FC8 | 38 A0 00 03 */	li r5, 0x3
/* 813B6FCC | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 813B6FD0 | 38 C0 00 00 */	li r6, 0x0
/* 813B6FD4 | 38 E0 00 00 */	li r7, 0x0
/* 813B6FD8 | 39 00 FF FF */	li r8, -0x1
/* 813B6FDC | 4B F9 F5 39 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813B6FE0:
/* 813B6FE0 | 80 9F 03 5C */	lwz r4, 0x35c(r31)
/* 813B6FE4 | 7F E3 FB 78 */	mr r3, r31
/* 813B6FE8 | A0 04 00 18 */	lhz r0, 0x18(r4)
/* 813B6FEC | B0 1F 03 62 */	sth r0, 0x362(r31)
/* 813B6FF0 | 48 00 3B 61 */	bl CheckParentalControl__Q33ipl5scene12ChannelTitleFP9ESTmdView
/* 813B6FF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B6FF8 | 41 82 00 54 */	beq .L_813B704C
/* 813B6FFC | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 813B7000 | 7F E3 FB 78 */	mr r3, r31
/* 813B7004 | 48 00 27 F9 */	bl prepareForBoot1__Q33ipl5scene12ChannelTitleFi
/* 813B7008 | 80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 813B700C | 2C 00 00 21 */	cmpwi r0, 0x21
/* 813B7010 | 40 82 00 30 */	bne .L_813B7040
/* 813B7014 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7018 | 3C C0 81 0B */	lis r6, msUnlockTicket__Q33ipl5scene12ChannelTitle@ha
/* 813B701C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7020 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B7024 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B7028 | 38 C6 74 20 */	addi r6, r6, msUnlockTicket__Q33ipl5scene12ChannelTitle@l
/* 813B702C | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B7030 | 4B F8 1F 9D */	bl loadLockedTitleAsync__Q33ipl7channel7ManagerCFiiR12ESTicketView
/* 813B7034 | 38 00 00 0F */	li r0, 0xf
/* 813B7038 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B703C | 48 00 00 2C */	b .L_813B7068
.L_813B7040:
/* 813B7040 | 38 00 00 04 */	li r0, 0x4
/* 813B7044 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B7048 | 48 00 00 20 */	b .L_813B7068
.L_813B704C:
/* 813B704C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7050 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7054 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813B7058 | 4B F9 12 ED */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813B705C | 7F E3 FB 78 */	mr r3, r31
/* 813B7060 | 38 80 00 00 */	li r4, 0x0
/* 813B7064 | 48 00 20 A9 */	bl startParentalDialog__Q33ipl5scene12ChannelTitleFi
.L_813B7068:
/* 813B7068 | 80 9F 03 5C */	lwz r4, 0x35c(r31)
/* 813B706C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B7070 | 41 82 00 18 */	beq .L_813B7088
/* 813B7074 | 80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 813B7078 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B707C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B7080 | 7D 89 03 A6 */	mtctr r12
/* 813B7084 | 4E 80 04 21 */	bctrl
.L_813B7088:
/* 813B7088 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B708C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B7090 | 7C 08 03 A6 */	mtlr r0
/* 813B7094 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B7098 | 4E 80 00 20 */	blr
.endfn calcNormalWaitTmd__Q33ipl5scene12ChannelTitleFv

# .text:0x306C | 0x813B709C | size: 0x1B0
# ipl::scene::ChannelTitle::calcNormalWaitLockedTitle()
.fn calcNormalWaitLockedTitle__Q33ipl5scene12ChannelTitleFv, global
/* 813B709C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B70A0 | 7C 08 02 A6 */	mflr r0
/* 813B70A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B70A8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B70AC | 7C 7F 1B 78 */	mr r31, r3
/* 813B70B0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B70B4 | 88 03 03 7C */	lbz r0, 0x37c(r3)
/* 813B70B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B70BC | 40 82 00 5C */	bne .L_813B7118
/* 813B70C0 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B70C4 | 38 80 00 1B */	li r4, 0x1b
/* 813B70C8 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B70CC | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B70D0 | 48 05 40 69 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B70D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B70D8 | 40 82 01 5C */	bne .L_813B7234
/* 813B70DC | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B70E0 | 80 03 01 04 */	lwz r0, 0x104(r3)
/* 813B70E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B70E8 | 40 82 01 4C */	bne .L_813B7234
/* 813B70EC | 80 7F 01 14 */	lwz r3, 0x114(r31)
/* 813B70F0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B70F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B70F8 | 41 82 01 3C */	beq .L_813B7234
/* 813B70FC | 83 DF 00 BC */	lwz r30, 0xbc(r31)
/* 813B7100 | 7F C3 F3 78 */	mr r3, r30
/* 813B7104 | 4B FA B7 6D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B7108 | 38 00 00 01 */	li r0, 0x1
/* 813B710C | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813B7110 | 98 1F 03 7C */	stb r0, 0x37c(r31)
/* 813B7114 | 48 00 01 20 */	b .L_813B7234
.L_813B7118:
/* 813B7118 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B711C | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B7120 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B7124 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B7128 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B712C | 4B F8 1D 89 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813B7130 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813B7134 | 40 82 00 24 */	bne .L_813B7158
/* 813B7138 | 80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 813B713C | 7F E3 FB 78 */	mr r3, r31
/* 813B7140 | 48 00 27 A1 */	bl prepareForBoot2__Q33ipl5scene12ChannelTitleFi
/* 813B7144 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 813B7148 | 4B FA 99 71 */	bl reserveRVLGame__Q33ipl3bs27ManagerFv
/* 813B714C | 38 00 00 05 */	li r0, 0x5
/* 813B7150 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B7154 | 48 00 00 E0 */	b .L_813B7234
.L_813B7158:
/* 813B7158 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B715C | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B7160 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B7164 | 4B F8 1D 51 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813B7168 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 813B716C | 41 82 00 C8 */	beq .L_813B7234
/* 813B7170 | 80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 813B7174 | 4B F9 11 D1 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 813B7178 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813B717C | 38 00 00 00 */	li r0, 0x0
/* 813B7180 | 98 03 1D A0 */	stb r0, 0x1da0(r3)
/* 813B7184 | 80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 813B7188 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813B718C | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813B7190 | 40 82 00 68 */	bne .L_813B71F8
/* 813B7194 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B7198 | 38 80 00 05 */	li r4, 0x5
/* 813B719C | 48 05 3F 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B71A0 | 88 03 00 D5 */	lbz r0, 0xd5(r3)
/* 813B71A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B71A8 | 41 82 00 2C */	beq .L_813B71D4
/* 813B71AC | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B71B0 | 38 80 00 05 */	li r4, 0x5
/* 813B71B4 | 48 05 3F 85 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B71B8 | 38 80 00 1A */	li r4, 0x1a
/* 813B71BC | 4B FE 59 9D */	bl iplButton_8139CB58
/* 813B71C0 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B71C4 | 38 80 00 05 */	li r4, 0x5
/* 813B71C8 | 48 05 3F 71 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B71CC | 38 80 00 19 */	li r4, 0x19
/* 813B71D0 | 4B FE 59 89 */	bl iplButton_8139CB58
.L_813B71D4:
/* 813B71D4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B71D8 | 38 80 00 06 */	li r4, 0x6
/* 813B71DC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B71E0 | 38 A0 00 2E */	li r5, 0x2e
/* 813B71E4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813B71E8 | 4B F8 F5 11 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813B71EC | 38 00 00 10 */	li r0, 0x10
/* 813B71F0 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B71F4 | 48 00 00 40 */	b .L_813B7234
.L_813B71F8:
/* 813B71F8 | 80 1F 00 70 */	lwz r0, 0x70(r31)
/* 813B71FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7200 | 41 82 00 2C */	beq .L_813B722C
/* 813B7204 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B7208 | 38 80 00 05 */	li r4, 0x5
/* 813B720C | 48 05 3F 2D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B7210 | 38 80 00 18 */	li r4, 0x18
/* 813B7214 | 4B FE 59 45 */	bl iplButton_8139CB58
/* 813B7218 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 813B721C | 38 80 00 05 */	li r4, 0x5
/* 813B7220 | 48 05 3F 19 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B7224 | 38 80 00 17 */	li r4, 0x17
/* 813B7228 | 4B FE 59 31 */	bl iplButton_8139CB58
.L_813B722C:
/* 813B722C | 38 00 00 01 */	li r0, 0x1
/* 813B7230 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813B7234:
/* 813B7234 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7238 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B723C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B7240 | 7C 08 03 A6 */	mtlr r0
/* 813B7244 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B7248 | 4E 80 00 20 */	blr
.endfn calcNormalWaitLockedTitle__Q33ipl5scene12ChannelTitleFv

# .text:0x321C | 0x813B724C | size: 0x7C
# ipl::scene::ChannelTitle::calcNormalLockedDiskDialog()
.fn calcNormalLockedDiskDialog__Q33ipl5scene12ChannelTitleFv, global
/* 813B724C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B7250 | 7C 08 02 A6 */	mflr r0
/* 813B7254 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B7258 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B725C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B7260 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B7264 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B7268 | 7C 7E 1B 78 */	mr r30, r3
/* 813B726C | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B7270 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813B7274 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B7278 | 41 82 00 08 */	beq .L_813B7280
/* 813B727C | 48 00 00 34 */	b .L_813B72B0
.L_813B7280:
/* 813B7280 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B7284 | 38 80 00 05 */	li r4, 0x5
/* 813B7288 | 48 05 3E B1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B728C | 38 80 00 18 */	li r4, 0x18
/* 813B7290 | 4B FE 58 C9 */	bl iplButton_8139CB58
/* 813B7294 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B7298 | 38 80 00 05 */	li r4, 0x5
/* 813B729C | 48 05 3E 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B72A0 | 38 80 00 17 */	li r4, 0x17
/* 813B72A4 | 4B FE 58 B5 */	bl iplButton_8139CB58
/* 813B72A8 | 38 00 00 01 */	li r0, 0x1
/* 813B72AC | 90 1E 00 58 */	stw r0, 0x58(r30)
.L_813B72B0:
/* 813B72B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B72B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B72B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B72BC | 7C 08 03 A6 */	mtlr r0
/* 813B72C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B72C4 | 4E 80 00 20 */	blr
.endfn calcNormalLockedDiskDialog__Q33ipl5scene12ChannelTitleFv

# .text:0x3298 | 0x813B72C8 | size: 0x104
# ipl::scene::ChannelTitle::calcNormalUpdateDialog()
.fn calcNormalUpdateDialog__Q33ipl5scene12ChannelTitleFv, global
/* 813B72C8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B72CC | 7C 08 02 A6 */	mflr r0
/* 813B72D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B72D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B72D8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B72DC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B72E0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B72E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813B72E8 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813B72EC | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813B72F0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B72F4 | 41 82 00 18 */	beq .L_813B730C
/* 813B72F8 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B72FC | 4B F9 06 09 */	bl terminate__Q23ipl12DialogWindowFv
/* 813B7300 | 38 00 00 15 */	li r0, 0x15
/* 813B7304 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813B7308 | 48 00 00 AC */	b .L_813B73B4
.L_813B730C:
/* 813B730C | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B7310 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813B7314 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B7318 | 41 82 00 08 */	beq .L_813B7320
/* 813B731C | 48 00 00 98 */	b .L_813B73B4
.L_813B7320:
/* 813B7320 | 4B F7 E7 6D */	bl getRegion__Q23ipl6SystemFv
/* 813B7324 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813B7328 | 40 82 00 3C */	bne .L_813B7364
/* 813B732C | 4B F7 E6 C1 */	bl getLanguage__Q23ipl6SystemFv
/* 813B7330 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813B7334 | 40 82 00 1C */	bne .L_813B7350
/* 813B7338 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B733C | 38 80 01 7A */	li r4, 0x17a
/* 813B7340 | C0 22 86 08 */	lfs f1, lbl_81694A08@sda21(r0)
/* 813B7344 | 38 A0 01 79 */	li r5, 0x179
/* 813B7348 | 4B F8 F6 C9 */	bl iplDialogWindow_81346A10
/* 813B734C | 48 00 00 60 */	b .L_813B73AC
.L_813B7350:
/* 813B7350 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B7354 | 38 80 01 7A */	li r4, 0x17a
/* 813B7358 | 38 A0 01 79 */	li r5, 0x179
/* 813B735C | 4B F8 F4 BD */	bl callBtn1Sml__Q23ipl12DialogWindowFUlUl
/* 813B7360 | 48 00 00 4C */	b .L_813B73AC
.L_813B7364:
/* 813B7364 | 4B F7 E6 89 */	bl getLanguage__Q23ipl6SystemFv
/* 813B7368 | 28 03 00 04 */	cmplwi r3, 0x4
/* 813B736C | 41 82 00 10 */	beq .L_813B737C
/* 813B7370 | 4B F7 E6 7D */	bl getLanguage__Q23ipl6SystemFv
/* 813B7374 | 28 03 00 03 */	cmplwi r3, 0x3
/* 813B7378 | 40 82 00 24 */	bne .L_813B739C
.L_813B737C:
/* 813B737C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7380 | C0 22 86 08 */	lfs f1, lbl_81694A08@sda21(r0)
/* 813B7384 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7388 | 38 80 01 7A */	li r4, 0x17a
/* 813B738C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813B7390 | 38 A0 01 78 */	li r5, 0x178
/* 813B7394 | 4B F8 F6 7D */	bl iplDialogWindow_81346A10
/* 813B7398 | 48 00 00 14 */	b .L_813B73AC
.L_813B739C:
/* 813B739C | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B73A0 | 38 80 01 7A */	li r4, 0x17a
/* 813B73A4 | 38 A0 01 78 */	li r5, 0x178
/* 813B73A8 | 4B F8 F4 71 */	bl callBtn1Sml__Q23ipl12DialogWindowFUlUl
.L_813B73AC:
/* 813B73AC | 38 00 00 12 */	li r0, 0x12
/* 813B73B0 | 90 1E 00 58 */	stw r0, 0x58(r30)
.L_813B73B4:
/* 813B73B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B73B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B73BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B73C0 | 7C 08 03 A6 */	mtlr r0
/* 813B73C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B73C8 | 4E 80 00 20 */	blr
.endfn calcNormalUpdateDialog__Q33ipl5scene12ChannelTitleFv

# .text:0x339C | 0x813B73CC | size: 0xA0
# ipl::scene::ChannelTitle::calcNormalUpdateAcceptDialog()
.fn calcNormalUpdateAcceptDialog__Q33ipl5scene12ChannelTitleFv, global
/* 813B73CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B73D0 | 7C 08 02 A6 */	mflr r0
/* 813B73D4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B73D8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B73DC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B73E0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B73E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B73E8 | 7C 7E 1B 78 */	mr r30, r3
/* 813B73EC | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813B73F0 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813B73F4 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B73F8 | 41 82 00 18 */	beq .L_813B7410
/* 813B73FC | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B7400 | 4B F9 05 05 */	bl terminate__Q23ipl12DialogWindowFv
/* 813B7404 | 38 00 00 15 */	li r0, 0x15
/* 813B7408 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 813B740C | 48 00 00 48 */	b .L_813B7454
.L_813B7410:
/* 813B7410 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B7414 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813B7418 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B741C | 41 82 00 08 */	beq .L_813B7424
/* 813B7420 | 48 00 00 34 */	b .L_813B7454
.L_813B7424:
/* 813B7424 | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813B7428 | 4B F8 60 39 */	bl closeContentsAll__Q33ipl4nand7ManagerFv
/* 813B742C | 38 60 00 01 */	li r3, 0x1
/* 813B7430 | 48 1B 33 A5 */	bl fn_8156A7D4
/* 813B7434 | 48 1B 25 19 */	bl fn_8156994C
/* 813B7438 | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813B743C | 4B FA 95 E1 */	bl startUpdate__Q33ipl3bs27ManagerFv
/* 813B7440 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 813B7444 | 38 80 01 62 */	li r4, 0x162
/* 813B7448 | 4B F8 FB F9 */	bl callBtnPrg__Q23ipl12DialogWindowFUl
/* 813B744C | 38 00 00 13 */	li r0, 0x13
/* 813B7450 | 90 1E 00 58 */	stw r0, 0x58(r30)
.L_813B7454:
/* 813B7454 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7458 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B745C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B7460 | 7C 08 03 A6 */	mtlr r0
/* 813B7464 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B7468 | 4E 80 00 20 */	blr
.endfn calcNormalUpdateAcceptDialog__Q33ipl5scene12ChannelTitleFv

# .text:0x343C | 0x813B746C | size: 0xB4
# ipl::scene::ChannelTitle::calcNormalUpdating()
.fn calcNormalUpdating__Q33ipl5scene12ChannelTitleFv, global
/* 813B746C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B7470 | 7C 08 02 A6 */	mflr r0
/* 813B7474 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B7478 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B747C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B7480 | 38 00 00 64 */	li r0, 0x64
/* 813B7484 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B7488 | 7C 7F 1B 78 */	mr r31, r3
/* 813B748C | 80 A4 00 A8 */	lwz r5, 0xa8(r4)
/* 813B7490 | 80 C5 00 30 */	lwz r6, 0x30(r5)
/* 813B7494 | 80 E5 00 34 */	lwz r7, 0x34(r5)
/* 813B7498 | 7C 06 03 96 */	divwu r0, r6, r0
/* 813B749C | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 813B74A0 | 7C 07 03 96 */	divwu r0, r7, r0
/* 813B74A4 | 2C 00 00 64 */	cmpwi r0, 0x64
/* 813B74A8 | 41 82 00 0C */	beq .L_813B74B4
/* 813B74AC | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813B74B0 | 90 04 00 3C */	stw r0, 0x3c(r4)
.L_813B74B4:
/* 813B74B4 | 2C 05 00 01 */	cmpwi r5, 0x1
/* 813B74B8 | 41 82 00 10 */	beq .L_813B74C8
/* 813B74BC | 38 05 FF F7 */	subi r0, r5, 0x9
/* 813B74C0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B74C4 | 41 81 00 20 */	bgt .L_813B74E4
.L_813B74C8:
/* 813B74C8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B74CC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B74D0 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813B74D4 | 4B F9 04 31 */	bl terminate__Q23ipl12DialogWindowFv
/* 813B74D8 | 38 00 00 15 */	li r0, 0x15
/* 813B74DC | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B74E0 | 48 00 00 2C */	b .L_813B750C
.L_813B74E4:
/* 813B74E4 | 38 05 FF FC */	subi r0, r5, 0x4
/* 813B74E8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B74EC | 41 81 00 20 */	bgt .L_813B750C
/* 813B74F0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B74F4 | 38 A0 00 64 */	li r5, 0x64
/* 813B74F8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B74FC | 38 00 00 14 */	li r0, 0x14
/* 813B7500 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 813B7504 | 90 A4 00 3C */	stw r5, 0x3c(r4)
/* 813B7508 | 90 03 00 58 */	stw r0, 0x58(r3)
.L_813B750C:
/* 813B750C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7510 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B7514 | 7C 08 03 A6 */	mtlr r0
/* 813B7518 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B751C | 4E 80 00 20 */	blr
.endfn calcNormalUpdating__Q33ipl5scene12ChannelTitleFv

# .text:0x34F0 | 0x813B7520 | size: 0x58
# ipl::scene::ChannelTitle::calcNormalUpdateSucceeded()
.fn calcNormalUpdateSucceeded__Q33ipl5scene12ChannelTitleFv, global
/* 813B7520 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B7524 | 7C 08 02 A6 */	mflr r0
/* 813B7528 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B752C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B7530 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B7534 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B7538 | 7C 7F 1B 78 */	mr r31, r3
/* 813B753C | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813B7540 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813B7544 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813B7548 | 41 82 00 1C */	beq .L_813B7564
/* 813B754C | 38 80 01 63 */	li r4, 0x163
/* 813B7550 | 38 A0 00 B4 */	li r5, 0xb4
/* 813B7554 | 38 C0 00 00 */	li r6, 0x0
/* 813B7558 | 4B F8 EE F5 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 813B755C | 38 00 00 16 */	li r0, 0x16
/* 813B7560 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813B7564:
/* 813B7564 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7568 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B756C | 7C 08 03 A6 */	mtlr r0
/* 813B7570 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B7574 | 4E 80 00 20 */	blr
.endfn calcNormalUpdateSucceeded__Q33ipl5scene12ChannelTitleFv

# .text:0x3548 | 0x813B7578 | size: 0x54
# ipl::scene::ChannelTitle::calcNormalUpdateUnk1()
.fn calcNormalUpdateUnk1__Q33ipl5scene12ChannelTitleFv, global
/* 813B7578 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B757C | 7C 08 02 A6 */	mflr r0
/* 813B7580 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B7584 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B7588 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B758C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B7590 | 7C 7F 1B 78 */	mr r31, r3
/* 813B7594 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813B7598 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813B759C | 2C 00 FF FF */	cmpwi r0, -0x1
/* 813B75A0 | 41 82 00 18 */	beq .L_813B75B8
/* 813B75A4 | 38 80 01 64 */	li r4, 0x164
/* 813B75A8 | 38 A0 00 01 */	li r5, 0x1
/* 813B75AC | 4B F8 F1 4D */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813B75B0 | 38 00 00 17 */	li r0, 0x17
/* 813B75B4 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813B75B8:
/* 813B75B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B75BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B75C0 | 7C 08 03 A6 */	mtlr r0
/* 813B75C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B75C8 | 4E 80 00 20 */	blr
.endfn calcNormalUpdateUnk1__Q33ipl5scene12ChannelTitleFv

# .text:0x359C | 0x813B75CC | size: 0x54
# ipl::scene::ChannelTitle::calcNormalUpdateUnk0()
.fn calcNormalUpdateUnk0__Q33ipl5scene12ChannelTitleFv, global
/* 813B75CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B75D0 | 7C 08 02 A6 */	mflr r0
/* 813B75D4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B75D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B75DC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B75E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B75E4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B75E8 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813B75EC | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813B75F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B75F4 | 41 82 00 08 */	beq .L_813B75FC
/* 813B75F8 | 48 00 00 14 */	b .L_813B760C
.L_813B75FC:
/* 813B75FC | 80 64 00 9C */	lwz r3, 0x9c(r4)
/* 813B7600 | 4B F9 F2 D9 */	bl reset__Q23ipl12ResetHandlerFv
/* 813B7604 | 38 00 00 18 */	li r0, 0x18
/* 813B7608 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813B760C:
/* 813B760C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7610 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B7614 | 7C 08 03 A6 */	mtlr r0
/* 813B7618 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B761C | 4E 80 00 20 */	blr
.endfn calcNormalUpdateUnk0__Q33ipl5scene12ChannelTitleFv

# .text:0x35F0 | 0x813B7620 | size: 0x50
# ipl::scene::ChannelTitle::calcNormalUpdateWaiting()
.fn calcNormalUpdateWaiting__Q33ipl5scene12ChannelTitleFv, global
/* 813B7620 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B7624 | 7C 08 02 A6 */	mflr r0
/* 813B7628 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B762C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B7630 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B7634 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B7638 | 7C 7F 1B 78 */	mr r31, r3
/* 813B763C | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 813B7640 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 813B7644 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7648 | 40 81 00 14 */	ble .L_813B765C
/* 813B764C | 80 64 00 9C */	lwz r3, 0x9c(r4)
/* 813B7650 | 4B F9 F2 89 */	bl reset__Q23ipl12ResetHandlerFv
/* 813B7654 | 38 00 00 18 */	li r0, 0x18
/* 813B7658 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813B765C:
/* 813B765C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7660 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B7664 | 7C 08 03 A6 */	mtlr r0
/* 813B7668 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B766C | 4E 80 00 20 */	blr
.endfn calcNormalUpdateWaiting__Q33ipl5scene12ChannelTitleFv

# .text:0x3640 | 0x813B7670 | size: 0x68
# ipl::scene::ChannelTitle::tryToStartScene()
.fn tryToStartScene__Q33ipl5scene12ChannelTitleFv, global
/* 813B7670 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B7674 | 7C 08 02 A6 */	mflr r0
/* 813B7678 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B767C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B7680 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B7684 | 7C 7E 1B 78 */	mr r30, r3
/* 813B7688 | 80 63 02 00 */	lwz r3, 0x200(r3)
/* 813B768C | 4B FF 65 7D */	bl tellStartingZoomAnm__Q33ipl5scene13ChannelSelectFv
/* 813B7690 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7694 | 40 82 00 0C */	bne .L_813B76A0
/* 813B7698 | 38 60 00 00 */	li r3, 0x0
/* 813B769C | 48 00 00 24 */	b .L_813B76C0
.L_813B76A0:
/* 813B76A0 | 83 FE 01 FC */	lwz r31, 0x1fc(r30)
/* 813B76A4 | 7F E3 FB 78 */	mr r3, r31
/* 813B76A8 | 4B FA B1 C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B76AC | 38 60 00 01 */	li r3, 0x1
/* 813B76B0 | 38 00 00 03 */	li r0, 0x3
/* 813B76B4 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813B76B8 | 38 60 00 01 */	li r3, 0x1
/* 813B76BC | 90 1E 00 58 */	stw r0, 0x58(r30)
.L_813B76C0:
/* 813B76C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B76C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B76C8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B76CC | 7C 08 03 A6 */	mtlr r0
/* 813B76D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B76D4 | 4E 80 00 20 */	blr
.endfn tryToStartScene__Q33ipl5scene12ChannelTitleFv

# .text:0x36A8 | 0x813B76D8 | size: 0x118
# ipl::scene::ChannelTitle::tryToGoBackward()
.fn tryToGoBackward__Q33ipl5scene12ChannelTitleFv, global
/* 813B76D8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B76DC | 7C 08 02 A6 */	mflr r0
/* 813B76E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B76E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B76E8 | 48 24 1D E1 */	bl _savegpr_29
/* 813B76EC | 80 03 03 84 */	lwz r0, 0x384(r3)
/* 813B76F0 | 7C 7D 1B 78 */	mr r29, r3
/* 813B76F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B76F8 | 41 82 00 10 */	beq .L_813B7708
/* 813B76FC | 80 03 03 80 */	lwz r0, 0x380(r3)
/* 813B7700 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B7704 | 40 82 00 CC */	bne .L_813B77D0
.L_813B7708:
/* 813B7708 | 80 63 02 00 */	lwz r3, 0x200(r3)
/* 813B770C | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B7710 | 4B FF 65 7D */	bl prepareRestarting__Q33ipl5scene13ChannelSelectFi
/* 813B7714 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7718 | 41 82 00 C0 */	beq .L_813B77D8
/* 813B771C | 80 7D 02 00 */	lwz r3, 0x200(r29)
/* 813B7720 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B7724 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B7728 | 4B FF 65 C1 */	bl restart__Q33ipl5scene13ChannelSelectFii
/* 813B772C | C0 42 85 F0 */	lfs f2, lbl_816949F0@sda21(r0)
/* 813B7730 | 38 8D 8A 90 */	li r4, lbl_81696AD0@sda21
/* 813B7734 | 80 7D 01 FC */	lwz r3, 0x1fc(r29)
/* 813B7738 | 38 AD 8A 94 */	li r5, lbl_81696AD4@sda21
/* 813B773C | FC 60 10 90 */	fmr f3, f2
/* 813B7740 | C0 22 85 F4 */	lfs f1, lbl_816949F4@sda21(r0)
/* 813B7744 | C0 82 85 F8 */	lfs f4, lbl_816949F8@sda21(r0)
/* 813B7748 | 38 C0 00 00 */	li r6, 0x0
/* 813B774C | 4B FA C5 05 */	bl "init__Q33ipl4math14HermiteIntp<f>FRCfRCffffif"
/* 813B7750 | 80 7D 01 FC */	lwz r3, 0x1fc(r29)
/* 813B7754 | 3B E0 00 01 */	li r31, 0x1
/* 813B7758 | 93 E3 00 18 */	stw r31, 0x18(r3)
/* 813B775C | 83 DD 01 FC */	lwz r30, 0x1fc(r29)
/* 813B7760 | 7F C3 F3 78 */	mr r3, r30
/* 813B7764 | 4B FA B1 0D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B7768 | 93 FE 00 14 */	stw r31, 0x14(r30)
/* 813B776C | 38 00 00 06 */	li r0, 0x6
/* 813B7770 | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813B7774 | 3C 80 81 65 */	lis r4, lbl_8164ED7F@ha
/* 813B7778 | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813B777C | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813B7780 | 38 84 ED 7F */	addi r4, r4, lbl_8164ED7F@l
/* 813B7784 | 4B FB 3C E9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B7788 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 813B778C | 88 03 9F 68 */	lbz r0, sBannerSoundPlayer__Q23ipl3snd@l(r3)
/* 813B7790 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7794 | 41 82 00 10 */	beq .L_813B77A4
/* 813B7798 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813B779C | 38 80 00 1C */	li r4, 0x1c
/* 813B77A0 | 4B FB 4A 59 */	bl stopBannerSound__Q33ipl3snd6SystemFi
.L_813B77A4:
/* 813B77A4 | 80 9D 02 4C */	lwz r4, 0x24c(r29)
/* 813B77A8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B77AC | 41 82 00 2C */	beq .L_813B77D8
/* 813B77B0 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813B77B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B77B8 | 41 82 00 20 */	beq .L_813B77D8
/* 813B77BC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B77C0 | 38 A0 00 1C */	li r5, 0x1c
/* 813B77C4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B77C8 | 4B FB 42 A1 */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
/* 813B77CC | 48 00 00 0C */	b .L_813B77D8
.L_813B77D0:
/* 813B77D0 | 38 00 00 01 */	li r0, 0x1
/* 813B77D4 | 98 03 03 88 */	stb r0, 0x388(r3)
.L_813B77D8:
/* 813B77D8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B77DC | 48 24 1D 39 */	bl _restgpr_29
/* 813B77E0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B77E4 | 7C 08 03 A6 */	mtlr r0
/* 813B77E8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B77EC | 4E 80 00 20 */	blr
.endfn tryToGoBackward__Q33ipl5scene12ChannelTitleFv

# .text:0x37C0 | 0x813B77F0 | size: 0x170
# ipl::scene::ChannelTitle::loadModule(int, int)
.fn loadModule__Q33ipl5scene12ChannelTitleFii, global
/* 813B77F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B77F4 | 7C 08 02 A6 */	mflr r0
/* 813B77F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B77FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B7800 | 48 24 1C C9 */	bl _savegpr_29
/* 813B7804 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813B7808 | 7C 7D 1B 78 */	mr r29, r3
/* 813B780C | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813B7810 | 7C 9E 23 78 */	mr r30, r4
/* 813B7814 | 88 06 02 BC */	lbz r0, 0x2bc(r6)
/* 813B7818 | 7C BF 2B 78 */	mr r31, r5
/* 813B781C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7820 | 40 82 01 28 */	bne .L_813B7948
/* 813B7824 | 80 03 03 84 */	lwz r0, 0x384(r3)
/* 813B7828 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B782C | 41 82 00 30 */	beq .L_813B785C
/* 813B7830 | 80 63 03 94 */	lwz r3, 0x394(r3)
/* 813B7834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7838 | 41 82 00 18 */	beq .L_813B7850
/* 813B783C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7840 | 38 80 00 01 */	li r4, 0x1
/* 813B7844 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 813B7848 | 7D 89 03 A6 */	mtctr r12
/* 813B784C | 4E 80 04 21 */	bctrl
.L_813B7850:
/* 813B7850 | 38 00 00 00 */	li r0, 0x0
/* 813B7854 | 90 1D 03 94 */	stw r0, 0x394(r29)
/* 813B7858 | 90 1D 03 EC */	stw r0, 0x3ec(r29)
.L_813B785C:
/* 813B785C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7860 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7864 | 1C DE 05 40 */	mulli r6, r30, 0x540
/* 813B7868 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B786C | 7C 83 32 14 */	add r4, r3, r6
/* 813B7870 | 1C BF 00 70 */	mulli r5, r31, 0x70
/* 813B7874 | 38 E4 00 24 */	addi r7, r4, 0x24
/* 813B7878 | 7C E7 28 AE */	lbzx r7, r7, r5
/* 813B787C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813B7880 | 41 82 00 18 */	beq .L_813B7898
/* 813B7884 | 7C 84 2A 14 */	add r4, r4, r5
/* 813B7888 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 813B788C | 80 04 00 58 */	lwz r0, 0x58(r4)
/* 813B7890 | 54 00 47 3E */	extrwi r0, r0, 4, 4
/* 813B7894 | 48 00 00 08 */	b .L_813B789C
.L_813B7898:
/* 813B7898 | 38 00 00 00 */	li r0, 0x0
.L_813B789C:
/* 813B789C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B78A0 | 41 82 00 38 */	beq .L_813B78D8
/* 813B78A4 | 80 9D 03 A8 */	lwz r4, 0x3a8(r29)
/* 813B78A8 | 7F C5 F3 78 */	mr r5, r30
/* 813B78AC | 7F E6 FB 78 */	mr r6, r31
/* 813B78B0 | 4B F8 0C B9 */	bl loadBannerRsoAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii
/* 813B78B4 | 38 00 00 01 */	li r0, 0x1
/* 813B78B8 | 38 80 00 00 */	li r4, 0x0
/* 813B78BC | 90 7D 03 94 */	stw r3, 0x394(r29)
/* 813B78C0 | 98 9D 03 F9 */	stb r4, 0x3f9(r29)
/* 813B78C4 | 90 1D 03 84 */	stw r0, 0x384(r29)
/* 813B78C8 | 90 1D 03 80 */	stw r0, 0x380(r29)
/* 813B78CC | 93 DD 03 FC */	stw r30, 0x3fc(r29)
/* 813B78D0 | 93 FD 04 00 */	stw r31, 0x400(r29)
/* 813B78D4 | 48 00 00 74 */	b .L_813B7948
.L_813B78D8:
/* 813B78D8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 813B78DC | 41 82 00 1C */	beq .L_813B78F8
/* 813B78E0 | 7C 03 32 14 */	add r0, r3, r6
/* 813B78E4 | 7C 80 2A 14 */	add r4, r0, r5
/* 813B78E8 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 813B78EC | 80 04 00 58 */	lwz r0, 0x58(r4)
/* 813B78F0 | 54 00 87 3E */	extrwi r0, r0, 4, 12
/* 813B78F4 | 48 00 00 08 */	b .L_813B78FC
.L_813B78F8:
/* 813B78F8 | 38 00 00 00 */	li r0, 0x0
.L_813B78FC:
/* 813B78FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7900 | 41 82 00 3C */	beq .L_813B793C
/* 813B7904 | 80 9D 03 A8 */	lwz r4, 0x3a8(r29)
/* 813B7908 | 7F C5 F3 78 */	mr r5, r30
/* 813B790C | 7F E6 FB 78 */	mr r6, r31
/* 813B7910 | 4B F8 0E 31 */	bl loadBannerCSAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii
/* 813B7914 | 38 A0 00 00 */	li r5, 0x0
/* 813B7918 | 38 80 00 02 */	li r4, 0x2
/* 813B791C | 38 00 00 01 */	li r0, 0x1
/* 813B7920 | 90 7D 03 94 */	stw r3, 0x394(r29)
/* 813B7924 | 98 BD 03 F9 */	stb r5, 0x3f9(r29)
/* 813B7928 | 90 9D 03 84 */	stw r4, 0x384(r29)
/* 813B792C | 90 1D 03 80 */	stw r0, 0x380(r29)
/* 813B7930 | 93 DD 03 FC */	stw r30, 0x3fc(r29)
/* 813B7934 | 93 FD 04 00 */	stw r31, 0x400(r29)
/* 813B7938 | 48 00 00 10 */	b .L_813B7948
.L_813B793C:
/* 813B793C | 38 00 00 00 */	li r0, 0x0
/* 813B7940 | 90 1D 03 84 */	stw r0, 0x384(r29)
/* 813B7944 | 90 1D 03 80 */	stw r0, 0x380(r29)
.L_813B7948:
/* 813B7948 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B794C | 48 24 1B C9 */	bl _restgpr_29
/* 813B7950 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B7954 | 7C 08 03 A6 */	mtlr r0
/* 813B7958 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B795C | 4E 80 00 20 */	blr
.endfn loadModule__Q33ipl5scene12ChannelTitleFii

# .text:0x3930 | 0x813B7960 | size: 0x108
# ipl::scene::ChannelTitle::calcChannelCS()
.fn calcChannelCS__Q33ipl5scene12ChannelTitleFv, global
/* 813B7960 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B7964 | 7C 08 02 A6 */	mflr r0
/* 813B7968 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B796C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B7970 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B7974 | 7C 7E 1B 78 */	mr r30, r3
/* 813B7978 | 80 03 03 84 */	lwz r0, 0x384(r3)
/* 813B797C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B7980 | 40 82 00 D0 */	bne .L_813B7A50
/* 813B7984 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B7988 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B798C | 41 82 00 C4 */	beq .L_813B7A50
/* 813B7990 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B7994 | 41 82 00 BC */	beq .L_813B7A50
/* 813B7998 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813B799C | 40 82 00 08 */	bne .L_813B79A4
/* 813B79A0 | 48 00 00 B0 */	b .L_813B7A50
.L_813B79A4:
/* 813B79A4 | 80 03 03 80 */	lwz r0, 0x380(r3)
/* 813B79A8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B79AC | 41 82 00 34 */	beq .L_813B79E0
/* 813B79B0 | 40 80 00 14 */	bge .L_813B79C4
/* 813B79B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B79B8 | 41 82 00 18 */	beq .L_813B79D0
/* 813B79BC | 40 80 00 1C */	bge .L_813B79D8
/* 813B79C0 | 48 00 00 90 */	b .L_813B7A50
.L_813B79C4:
/* 813B79C4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813B79C8 | 40 80 00 88 */	bge .L_813B7A50
/* 813B79CC | 48 00 00 80 */	b .L_813B7A4C
.L_813B79D0:
/* 813B79D0 | 48 00 03 91 */	bl calcModuleInit__Q33ipl5scene12ChannelTitleFv
/* 813B79D4 | 48 00 00 7C */	b .L_813B7A50
.L_813B79D8:
/* 813B79D8 | 48 00 04 81 */	bl calcCSWait__Q33ipl5scene12ChannelTitleFv
/* 813B79DC | 48 00 00 74 */	b .L_813B7A50
.L_813B79E0:
/* 813B79E0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B79E4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B79E8 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813B79EC | 4B F8 35 09 */	bl calc__Q33ipl7channel20ChannelScriptManagerFv
/* 813B79F0 | 80 7E 03 A4 */	lwz r3, 0x3a4(r30)
/* 813B79F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B79F8 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813B79FC | 7D 89 03 A6 */	mtctr r12
/* 813B7A00 | 4E 80 04 21 */	bctrl
/* 813B7A04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7A08 | 41 82 00 48 */	beq .L_813B7A50
/* 813B7A0C | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813B7A10 | 80 03 00 34 */	lwz r0, 0x34(r3)
/* 813B7A14 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B7A18 | 40 82 00 18 */	bne .L_813B7A30
/* 813B7A1C | 7F C3 F3 78 */	mr r3, r30
/* 813B7A20 | 48 00 07 AD */	bl startChanSound__Q33ipl5scene12ChannelTitleFv
/* 813B7A24 | 80 7F 00 88 */	lwz r3, 0x88(r31)
/* 813B7A28 | 38 00 00 00 */	li r0, 0x0
/* 813B7A2C | 90 03 00 34 */	stw r0, 0x34(r3)
.L_813B7A30:
/* 813B7A30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7A34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7A38 | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 813B7A3C | 4B F8 35 E9 */	bl finish__Q33ipl7channel20ChannelScriptManagerFv
/* 813B7A40 | 38 00 00 03 */	li r0, 0x3
/* 813B7A44 | 90 1E 03 80 */	stw r0, 0x380(r30)
/* 813B7A48 | 48 00 00 08 */	b .L_813B7A50
.L_813B7A4C:
/* 813B7A4C | 48 00 06 05 */	bl calcCSFinish__Q33ipl5scene12ChannelTitleFv
.L_813B7A50:
/* 813B7A50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7A54 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B7A58 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B7A5C | 7C 08 03 A6 */	mtlr r0
/* 813B7A60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B7A64 | 4E 80 00 20 */	blr
.endfn calcChannelCS__Q33ipl5scene12ChannelTitleFv

# .text:0x3A38 | 0x813B7A68 | size: 0x2F8
# ipl::scene::ChannelTitle::calcChannelRso()
.fn calcChannelRso__Q33ipl5scene12ChannelTitleFv, global
/* 813B7A68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B7A6C | 7C 08 02 A6 */	mflr r0
/* 813B7A70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B7A74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B7A78 | 7C 7F 1B 78 */	mr r31, r3
/* 813B7A7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B7A80 | 3F C0 81 65 */	lis r30, lbl_8164E768@ha
/* 813B7A84 | 3B DE E7 68 */	addi r30, r30, lbl_8164E768@l
/* 813B7A88 | 80 03 03 84 */	lwz r0, 0x384(r3)
/* 813B7A8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B7A90 | 40 82 02 B8 */	bne .L_813B7D48
/* 813B7A94 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B7A98 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813B7A9C | 41 82 02 AC */	beq .L_813B7D48
/* 813B7AA0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B7AA4 | 41 82 02 A4 */	beq .L_813B7D48
/* 813B7AA8 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 813B7AAC | 40 82 00 08 */	bne .L_813B7AB4
/* 813B7AB0 | 48 00 02 98 */	b .L_813B7D48
.L_813B7AB4:
/* 813B7AB4 | 80 03 03 80 */	lwz r0, 0x380(r3)
/* 813B7AB8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B7ABC | 41 82 00 28 */	beq .L_813B7AE4
/* 813B7AC0 | 40 80 00 10 */	bge .L_813B7AD0
/* 813B7AC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7AC8 | 40 80 00 14 */	bge .L_813B7ADC
/* 813B7ACC | 48 00 02 7C */	b .L_813B7D48
.L_813B7AD0:
/* 813B7AD0 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813B7AD4 | 40 80 02 74 */	bge .L_813B7D48
/* 813B7AD8 | 48 00 01 7C */	b .L_813B7C54
.L_813B7ADC:
/* 813B7ADC | 48 00 02 85 */	bl calcModuleInit__Q33ipl5scene12ChannelTitleFv
/* 813B7AE0 | 48 00 02 68 */	b .L_813B7D48
.L_813B7AE4:
/* 813B7AE4 | 80 63 03 94 */	lwz r3, 0x394(r3)
/* 813B7AE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7AEC | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B7AF0 | 7D 89 03 A6 */	mtctr r12
/* 813B7AF4 | 4E 80 04 21 */	bctrl
/* 813B7AF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7AFC | 41 82 02 4C */	beq .L_813B7D48
/* 813B7B00 | 80 7F 03 94 */	lwz r3, 0x394(r31)
/* 813B7B04 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7B08 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B7B0C | 7D 89 03 A6 */	mtctr r12
/* 813B7B10 | 4E 80 04 21 */	bctrl
/* 813B7B14 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B7B18 | 41 82 00 38 */	beq .L_813B7B50
/* 813B7B1C | 80 7F 03 94 */	lwz r3, 0x394(r31)
/* 813B7B20 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7B24 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B7B28 | 7D 89 03 A6 */	mtctr r12
/* 813B7B2C | 4E 80 04 21 */	bctrl
/* 813B7B30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7B34 | 41 82 00 1C */	beq .L_813B7B50
/* 813B7B38 | 38 60 00 00 */	li r3, 0x0
/* 813B7B3C | 38 00 00 01 */	li r0, 0x1
/* 813B7B40 | 90 7F 03 8C */	stw r3, 0x38c(r31)
/* 813B7B44 | 98 1F 03 F9 */	stb r0, 0x3f9(r31)
/* 813B7B48 | 90 7F 03 80 */	stw r3, 0x380(r31)
/* 813B7B4C | 48 00 01 FC */	b .L_813B7D48
.L_813B7B50:
/* 813B7B50 | 80 7F 03 94 */	lwz r3, 0x394(r31)
/* 813B7B54 | 38 00 00 00 */	li r0, 0x0
/* 813B7B58 | 80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 813B7B5C | 90 7F 03 EC */	stw r3, 0x3ec(r31)
/* 813B7B60 | 90 1F 03 F0 */	stw r0, 0x3f0(r31)
/* 813B7B64 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 813B7B68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7B6C | 41 82 00 24 */	beq .L_813B7B90
/* 813B7B70 | 80 9F 03 A8 */	lwz r4, 0x3a8(r31)
/* 813B7B74 | 38 A0 00 20 */	li r5, 0x20
/* 813B7B78 | 48 24 05 5D */	bl __nwa__FUlPQ23EGG4Heapi
/* 813B7B7C | 90 7F 03 F0 */	stw r3, 0x3f0(r31)
/* 813B7B80 | 38 80 00 00 */	li r4, 0x0
/* 813B7B84 | 80 BF 03 EC */	lwz r5, 0x3ec(r31)
/* 813B7B88 | 80 A5 00 1C */	lwz r5, 0x1c(r5)
/* 813B7B8C | 4B F7 87 A9 */	bl memset
.L_813B7B90:
/* 813B7B90 | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7B94 | 80 9F 03 F0 */	lwz r4, 0x3f0(r31)
/* 813B7B98 | 48 20 5B AD */	bl fn_815BD744
/* 813B7B9C | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7BA0 | 48 20 53 D5 */	bl fn_815BCF74
/* 813B7BA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7BA8 | 41 82 00 14 */	beq .L_813B7BBC
/* 813B7BAC | 38 7E 06 2B */	addi r3, r30, 0x62b
/* 813B7BB0 | 4C C6 31 82 */	crclr cr1eq
/* 813B7BB4 | 48 17 6A ED */	bl OSReport
/* 813B7BB8 | 48 00 00 1C */	b .L_813B7BD4
.L_813B7BBC:
/* 813B7BBC | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7BC0 | 48 20 53 65 */	bl fn_815BCF24
/* 813B7BC4 | 7C 64 1B 78 */	mr r4, r3
/* 813B7BC8 | 38 7E 06 53 */	addi r3, r30, 0x653
/* 813B7BCC | 4C C6 31 82 */	crclr cr1eq
/* 813B7BD0 | 48 17 6A D1 */	bl OSReport
.L_813B7BD4:
/* 813B7BD4 | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7BD8 | 38 8D 8A 98 */	li r4, lbl_81696AD8@sda21
/* 813B7BDC | 48 20 55 D9 */	bl fn_815BD1B4
/* 813B7BE0 | 90 7F 03 F4 */	stw r3, 0x3f4(r31)
/* 813B7BE4 | 38 9E 06 80 */	addi r4, r30, 0x680
/* 813B7BE8 | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7BEC | 48 20 55 C9 */	bl fn_815BD1B4
/* 813B7BF0 | 7C 64 1B 78 */	mr r4, r3
/* 813B7BF4 | 80 7F 03 A4 */	lwz r3, 0x3a4(r31)
/* 813B7BF8 | 4B FA 1E 65 */	bl setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v
/* 813B7BFC | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7C00 | 81 83 00 24 */	lwz r12, 0x24(r3)
/* 813B7C04 | 7D 89 03 A6 */	mtctr r12
/* 813B7C08 | 4E 80 04 21 */	bctrl
/* 813B7C0C | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7C10 | 38 8D 8A 9D */	li r4, lbl_81696ADD@sda21
/* 813B7C14 | 48 20 55 A1 */	bl fn_815BD1B4
/* 813B7C18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7C1C | 41 82 00 18 */	beq .L_813B7C34
/* 813B7C20 | 80 9F 02 3C */	lwz r4, 0x23c(r31)
/* 813B7C24 | 7C 6C 1B 78 */	mr r12, r3
/* 813B7C28 | 38 64 00 04 */	addi r3, r4, 0x4
/* 813B7C2C | 7D 89 03 A6 */	mtctr r12
/* 813B7C30 | 4E 80 04 21 */	bctrl
.L_813B7C34:
/* 813B7C34 | 80 7F 03 A4 */	lwz r3, 0x3a4(r31)
/* 813B7C38 | 4B FA 1D A9 */	bl start__Q33ipl7channel9RsoThreadFv
/* 813B7C3C | 38 60 00 00 */	li r3, 0x0
/* 813B7C40 | 38 00 00 02 */	li r0, 0x2
/* 813B7C44 | 98 7F 03 89 */	stb r3, 0x389(r31)
/* 813B7C48 | 98 7F 03 F8 */	stb r3, 0x3f8(r31)
/* 813B7C4C | 90 1F 03 80 */	stw r0, 0x380(r31)
/* 813B7C50 | 48 00 00 F8 */	b .L_813B7D48
.L_813B7C54:
/* 813B7C54 | 88 03 03 F8 */	lbz r0, 0x3f8(r3)
/* 813B7C58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7C5C | 40 82 00 3C */	bne .L_813B7C98
/* 813B7C60 | 80 63 03 A4 */	lwz r3, 0x3a4(r3)
/* 813B7C64 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7C68 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813B7C6C | 7D 89 03 A6 */	mtctr r12
/* 813B7C70 | 4E 80 04 21 */	bctrl
/* 813B7C74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7C78 | 41 82 00 20 */	beq .L_813B7C98
/* 813B7C7C | 80 7F 03 A4 */	lwz r3, 0x3a4(r31)
/* 813B7C80 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7C84 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813B7C88 | 7D 89 03 A6 */	mtctr r12
/* 813B7C8C | 4E 80 04 21 */	bctrl
/* 813B7C90 | 38 00 00 01 */	li r0, 0x1
/* 813B7C94 | 98 1F 03 F8 */	stb r0, 0x3f8(r31)
.L_813B7C98:
/* 813B7C98 | 88 1F 03 89 */	lbz r0, 0x389(r31)
/* 813B7C9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7CA0 | 40 82 00 30 */	bne .L_813B7CD0
/* 813B7CA4 | 88 7F 03 88 */	lbz r3, 0x388(r31)
/* 813B7CA8 | 81 9F 03 F4 */	lwz r12, 0x3f4(r31)
/* 813B7CAC | 38 03 FF FF */	subi r0, r3, 0x1
/* 813B7CB0 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B7CB4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813B7CB8 | 7D 89 03 A6 */	mtctr r12
/* 813B7CBC | 4E 80 04 21 */	bctrl
/* 813B7CC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7CC4 | 41 82 00 0C */	beq .L_813B7CD0
/* 813B7CC8 | 38 00 00 01 */	li r0, 0x1
/* 813B7CCC | 98 1F 03 89 */	stb r0, 0x389(r31)
.L_813B7CD0:
/* 813B7CD0 | 88 1F 03 F8 */	lbz r0, 0x3f8(r31)
/* 813B7CD4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7CD8 | 41 82 00 70 */	beq .L_813B7D48
/* 813B7CDC | 88 1F 03 89 */	lbz r0, 0x389(r31)
/* 813B7CE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7CE4 | 41 82 00 64 */	beq .L_813B7D48
/* 813B7CE8 | 3B C0 00 00 */	li r30, 0x0
/* 813B7CEC | 38 00 00 01 */	li r0, 0x1
/* 813B7CF0 | 93 DF 03 8C */	stw r30, 0x38c(r31)
/* 813B7CF4 | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7CF8 | 98 1F 03 F9 */	stb r0, 0x3f9(r31)
/* 813B7CFC | 81 83 00 28 */	lwz r12, 0x28(r3)
/* 813B7D00 | 7D 89 03 A6 */	mtctr r12
/* 813B7D04 | 4E 80 04 21 */	bctrl
/* 813B7D08 | 80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 813B7D0C | 48 20 5A 41 */	bl fn_815BD74C
/* 813B7D10 | 93 DF 03 F4 */	stw r30, 0x3f4(r31)
/* 813B7D14 | 38 80 00 00 */	li r4, 0x0
/* 813B7D18 | 80 7F 03 A4 */	lwz r3, 0x3a4(r31)
/* 813B7D1C | 4B FA 1D 41 */	bl setCalcFunc__Q33ipl7channel9RsoThreadFPFv_v
/* 813B7D20 | 80 7F 03 F0 */	lwz r3, 0x3f0(r31)
/* 813B7D24 | 48 24 03 C9 */	bl __dla__FPv
/* 813B7D28 | 80 1F 03 A0 */	lwz r0, 0x3a0(r31)
/* 813B7D2C | 93 DF 03 F0 */	stw r30, 0x3f0(r31)
/* 813B7D30 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813B7D34 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B7D38 | 7C 7F 02 14 */	add r3, r31, r0
/* 813B7D3C | 80 63 03 98 */	lwz r3, 0x398(r3)
/* 813B7D40 | 48 23 FB 1D */	bl fn_815F785C
/* 813B7D44 | 93 DF 03 80 */	stw r30, 0x380(r31)
.L_813B7D48:
/* 813B7D48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7D4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B7D50 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B7D54 | 7C 08 03 A6 */	mtlr r0
/* 813B7D58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B7D5C | 4E 80 00 20 */	blr
.endfn calcChannelRso__Q33ipl5scene12ChannelTitleFv

# .text:0x3D30 | 0x813B7D60 | size: 0xBC
# ipl::scene::ChannelTitle::calcModuleInit()
.fn calcModuleInit__Q33ipl5scene12ChannelTitleFv, global
/* 813B7D60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B7D64 | 7C 08 02 A6 */	mflr r0
/* 813B7D68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B7D6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B7D70 | 7C 7F 1B 78 */	mr r31, r3
/* 813B7D74 | 88 03 03 88 */	lbz r0, 0x388(r3)
/* 813B7D78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7D7C | 41 82 00 1C */	beq .L_813B7D98
/* 813B7D80 | 38 80 00 00 */	li r4, 0x0
/* 813B7D84 | 38 00 00 04 */	li r0, 0x4
/* 813B7D88 | 98 83 03 88 */	stb r4, 0x388(r3)
/* 813B7D8C | 90 83 03 8C */	stw r4, 0x38c(r3)
/* 813B7D90 | 90 03 03 80 */	stw r0, 0x380(r3)
/* 813B7D94 | 48 00 00 74 */	b .L_813B7E08
.L_813B7D98:
/* 813B7D98 | 80 83 03 8C */	lwz r4, 0x38c(r3)
/* 813B7D9C | 80 03 03 90 */	lwz r0, 0x390(r3)
/* 813B7DA0 | 38 84 00 01 */	addi r4, r4, 0x1
/* 813B7DA4 | 7C 04 00 40 */	cmplw r4, r0
/* 813B7DA8 | 90 83 03 8C */	stw r4, 0x38c(r3)
/* 813B7DAC | 40 81 00 18 */	ble .L_813B7DC4
/* 813B7DB0 | 80 83 03 A0 */	lwz r4, 0x3a0(r3)
/* 813B7DB4 | 38 00 00 01 */	li r0, 0x1
/* 813B7DB8 | 90 03 03 80 */	stw r0, 0x380(r3)
/* 813B7DBC | 68 80 00 01 */	xori r0, r4, 0x1
/* 813B7DC0 | 90 03 03 A0 */	stw r0, 0x3a0(r3)
.L_813B7DC4:
/* 813B7DC4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7DC8 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B7DCC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7DD0 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B7DD4 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B7DD8 | 48 00 00 45 */	bl checkUseAltSound__Q33ipl7channel7ManagerCFii
/* 813B7DDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7DE0 | 41 82 00 28 */	beq .L_813B7E08
/* 813B7DE4 | 80 7F 03 90 */	lwz r3, 0x390(r31)
/* 813B7DE8 | 80 9F 03 8C */	lwz r4, 0x38c(r31)
/* 813B7DEC | 38 03 FF 10 */	subi r0, r3, 0xf0
/* 813B7DF0 | 7C 04 00 40 */	cmplw r4, r0
/* 813B7DF4 | 40 82 00 14 */	bne .L_813B7E08
/* 813B7DF8 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B7DFC | 38 80 00 B4 */	li r4, 0xb4
/* 813B7E00 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B7E04 | 4B FB 43 F5 */	bl stopBannerSound__Q33ipl3snd6SystemFi
.L_813B7E08:
/* 813B7E08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B7E0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B7E10 | 7C 08 03 A6 */	mtlr r0
/* 813B7E14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B7E18 | 4E 80 00 20 */	blr
.endfn calcModuleInit__Q33ipl5scene12ChannelTitleFv

# .text:0x3DEC | 0x813B7E1C | size: 0x3C
# ipl::channel::Manager::checkUseAltSound(int, int) const
.fn checkUseAltSound__Q33ipl7channel7ManagerCFii, global
/* 813B7E1C | 1C 04 05 40 */	mulli r0, r4, 0x540
/* 813B7E20 | 1C 85 00 70 */	mulli r4, r5, 0x70
/* 813B7E24 | 7C 03 02 14 */	add r0, r3, r0
/* 813B7E28 | 7C 60 22 14 */	add r3, r0, r4
/* 813B7E2C | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813B7E30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7E34 | 41 82 00 1C */	beq .L_813B7E50
/* 813B7E38 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813B7E3C | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B7E40 | 54 00 04 63 */	rlwinm. r0, r0, 0, 17, 17
/* 813B7E44 | 41 82 00 0C */	beq .L_813B7E50
/* 813B7E48 | 38 60 00 01 */	li r3, 0x1
/* 813B7E4C | 4E 80 00 20 */	blr
.L_813B7E50:
/* 813B7E50 | 38 60 00 00 */	li r3, 0x0
/* 813B7E54 | 4E 80 00 20 */	blr
.endfn checkUseAltSound__Q33ipl7channel7ManagerCFii

# .text:0x3E28 | 0x813B7E58 | size: 0x1F8
# ipl::scene::ChannelTitle::calcCSWait()
.fn calcCSWait__Q33ipl5scene12ChannelTitleFv, global
/* 813B7E58 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813B7E5C | 7C 08 02 A6 */	mflr r0
/* 813B7E60 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813B7E64 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B7E68 | 48 24 16 61 */	bl _savegpr_29
/* 813B7E6C | 7C 7D 1B 78 */	mr r29, r3
/* 813B7E70 | 80 63 03 94 */	lwz r3, 0x394(r3)
/* 813B7E74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7E78 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B7E7C | 7D 89 03 A6 */	mtctr r12
/* 813B7E80 | 4E 80 04 21 */	bctrl
/* 813B7E84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7E88 | 41 82 01 B0 */	beq .L_813B8038
/* 813B7E8C | 80 7D 03 94 */	lwz r3, 0x394(r29)
/* 813B7E90 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7E94 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B7E98 | 7D 89 03 A6 */	mtctr r12
/* 813B7E9C | 4E 80 04 21 */	bctrl
/* 813B7EA0 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B7EA4 | 41 82 00 38 */	beq .L_813B7EDC
/* 813B7EA8 | 80 7D 03 94 */	lwz r3, 0x394(r29)
/* 813B7EAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B7EB0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B7EB4 | 7D 89 03 A6 */	mtctr r12
/* 813B7EB8 | 4E 80 04 21 */	bctrl
/* 813B7EBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7EC0 | 41 82 00 1C */	beq .L_813B7EDC
/* 813B7EC4 | 38 60 00 00 */	li r3, 0x0
/* 813B7EC8 | 38 00 00 01 */	li r0, 0x1
/* 813B7ECC | 90 7D 03 8C */	stw r3, 0x38c(r29)
/* 813B7ED0 | 98 1D 03 F9 */	stb r0, 0x3f9(r29)
/* 813B7ED4 | 90 7D 03 80 */	stw r3, 0x380(r29)
/* 813B7ED8 | 48 00 01 60 */	b .L_813B8038
.L_813B7EDC:
/* 813B7EDC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7EE0 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B7EE4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7EE8 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B7EEC | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B7EF0 | 4B F8 03 B9 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813B7EF4 | 80 1D 04 04 */	lwz r0, 0x404(r29)
/* 813B7EF8 | 7C 9E 23 78 */	mr r30, r4
/* 813B7EFC | 7C 7F 1B 78 */	mr r31, r3
/* 813B7F00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7F04 | 40 82 00 18 */	bne .L_813B7F1C
/* 813B7F08 | 80 9D 03 A8 */	lwz r4, 0x3a8(r29)
/* 813B7F0C | 38 60 FF FF */	li r3, -0x1
/* 813B7F10 | 38 A0 00 00 */	li r5, 0x0
/* 813B7F14 | 48 23 F7 61 */	bl fn_815F7674
/* 813B7F18 | 90 7D 04 04 */	stw r3, 0x404(r29)
.L_813B7F1C:
/* 813B7F1C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7F20 | 80 9D 04 04 */	lwz r4, 0x404(r29)
/* 813B7F24 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7F28 | 80 63 00 88 */	lwz r3, 0x88(r3)
/* 813B7F2C | 4B F8 2B 65 */	bl create__Q33ipl7channel20ChannelScriptManagerFPQ23EGG7ExpHeap
/* 813B7F30 | 3C 60 81 61 */	lis r3, lbl_816102F0@ha
/* 813B7F34 | 38 00 00 04 */	li r0, 0x4
/* 813B7F38 | 38 63 02 F0 */	addi r3, r3, lbl_816102F0@l
/* 813B7F3C | 38 A1 00 04 */	addi r5, r1, 0x4
/* 813B7F40 | 38 83 FF FC */	subi r4, r3, 0x4
/* 813B7F44 | 7C 09 03 A6 */	mtctr r0
.L_813B7F48:
/* 813B7F48 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 813B7F4C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 813B7F50 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 813B7F54 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 813B7F58 | 42 00 FF F0 */	bdnz .L_813B7F48
/* 813B7F5C | 80 1D 03 A0 */	lwz r0, 0x3a0(r29)
/* 813B7F60 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7F64 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7F68 | 38 9D 03 AC */	addi r4, r29, 0x3ac
/* 813B7F6C | 54 05 10 3A */	slwi r5, r0, 2
/* 813B7F70 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813B7F74 | 7C BD 2A 14 */	add r5, r29, r5
/* 813B7F78 | 80 A5 03 98 */	lwz r5, 0x398(r5)
/* 813B7F7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7F80 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813B7F84 | 80 1D 02 3C */	lwz r0, 0x23c(r29)
/* 813B7F88 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813B7F8C | 90 81 00 10 */	stw r4, 0x10(r1)
/* 813B7F90 | 93 C1 00 1C */	stw r30, 0x1c(r1)
/* 813B7F94 | 93 E1 00 18 */	stw r31, 0x18(r1)
/* 813B7F98 | 88 1D 03 F9 */	lbz r0, 0x3f9(r29)
/* 813B7F9C | 98 01 00 20 */	stb r0, 0x20(r1)
/* 813B7FA0 | 41 82 00 0C */	beq .L_813B7FAC
/* 813B7FA4 | 38 00 00 00 */	li r0, 0x0
/* 813B7FA8 | 48 00 00 08 */	b .L_813B7FB0
.L_813B7FAC:
/* 813B7FAC | 80 03 00 8C */	lwz r0, 0x8c(r3)
.L_813B7FB0:
/* 813B7FB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7FB4 | 41 82 00 3C */	beq .L_813B7FF0
/* 813B7FB8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B7FBC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B7FC0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 813B7FC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B7FC8 | 41 82 00 0C */	beq .L_813B7FD4
/* 813B7FCC | 38 60 00 00 */	li r3, 0x0
/* 813B7FD0 | 48 00 00 08 */	b .L_813B7FD8
.L_813B7FD4:
/* 813B7FD4 | 80 63 00 8C */	lwz r3, 0x8c(r3)
.L_813B7FD8:
/* 813B7FD8 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 813B7FDC | 38 00 FF FF */	li r0, -0x1
/* 813B7FE0 | 7C 84 00 38 */	and r4, r4, r0
/* 813B7FE4 | 4B F8 B9 ED */	bl isNewMessageThere__Q33ipl5nwc247ManagerCFUl
/* 813B7FE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B7FEC | 40 82 00 0C */	bne .L_813B7FF8
.L_813B7FF0:
/* 813B7FF0 | 38 00 00 00 */	li r0, 0x0
/* 813B7FF4 | 98 01 00 22 */	stb r0, 0x22(r1)
.L_813B7FF8:
/* 813B7FF8 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813B7FFC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B8000 | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813B8004 | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813B8008 | 4B F8 30 81 */	bl setData__Q33ipl7channel20ChannelScriptManagerFRCQ43ipl7channel20ChannelScriptManager6CSData
/* 813B800C | 80 7E 00 88 */	lwz r3, 0x88(r30)
/* 813B8010 | 80 9D 03 94 */	lwz r4, 0x394(r29)
/* 813B8014 | 80 BD 03 A4 */	lwz r5, 0x3a4(r29)
/* 813B8018 | 4B F8 2B 09 */	bl init__Q33ipl7channel20ChannelScriptManagerFPQ33ipl4nand4FilePQ33ipl7channel9RsoThread
/* 813B801C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B8020 | 40 82 00 10 */	bne .L_813B8030
/* 813B8024 | 38 00 00 03 */	li r0, 0x3
/* 813B8028 | 90 1D 03 80 */	stw r0, 0x380(r29)
/* 813B802C | 48 00 00 0C */	b .L_813B8038
.L_813B8030:
/* 813B8030 | 38 00 00 02 */	li r0, 0x2
/* 813B8034 | 90 1D 03 80 */	stw r0, 0x380(r29)
.L_813B8038:
/* 813B8038 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B803C | 48 24 14 D9 */	bl _restgpr_29
/* 813B8040 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813B8044 | 7C 08 03 A6 */	mtlr r0
/* 813B8048 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813B804C | 4E 80 00 20 */	blr
.endfn calcCSWait__Q33ipl5scene12ChannelTitleFv

# .text:0x4020 | 0x813B8050 | size: 0x84
# ipl::scene::ChannelTitle::calcCSFinish()
.fn calcCSFinish__Q33ipl5scene12ChannelTitleFv, global
/* 813B8050 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B8054 | 7C 08 02 A6 */	mflr r0
/* 813B8058 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B805C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B8060 | 38 00 00 01 */	li r0, 0x1
/* 813B8064 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B8068 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B806C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B8070 | 7C 7E 1B 78 */	mr r30, r3
/* 813B8074 | 98 03 03 F9 */	stb r0, 0x3f9(r3)
/* 813B8078 | 80 64 00 88 */	lwz r3, 0x88(r4)
/* 813B807C | 4B F8 2F B5 */	bl destroy__Q33ipl7channel20ChannelScriptManagerFv
/* 813B8080 | 80 1E 03 A0 */	lwz r0, 0x3a0(r30)
/* 813B8084 | 3B E0 00 00 */	li r31, 0x0
/* 813B8088 | 93 FE 03 8C */	stw r31, 0x38c(r30)
/* 813B808C | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813B8090 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B8094 | 7C 7E 02 14 */	add r3, r30, r0
/* 813B8098 | 80 63 03 98 */	lwz r3, 0x398(r3)
/* 813B809C | 48 23 F7 C1 */	bl fn_815F785C
/* 813B80A0 | 80 7E 04 04 */	lwz r3, 0x404(r30)
/* 813B80A4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B80A8 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813B80AC | 7D 89 03 A6 */	mtctr r12
/* 813B80B0 | 4E 80 04 21 */	bctrl
/* 813B80B4 | 93 FE 04 04 */	stw r31, 0x404(r30)
/* 813B80B8 | 93 FE 03 80 */	stw r31, 0x380(r30)
/* 813B80BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B80C0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B80C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B80C8 | 7C 08 03 A6 */	mtlr r0
/* 813B80CC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B80D0 | 4E 80 00 20 */	blr
.endfn calcCSFinish__Q33ipl5scene12ChannelTitleFv

# .text:0x40A4 | 0x813B80D4 | size: 0xF8
# ipl::scene::ChannelTitle::initChanAnmAndSound()
.fn initChanAnmAndSound__Q33ipl5scene12ChannelTitleFv, global
/* 813B80D4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B80D8 | 7C 08 02 A6 */	mflr r0
/* 813B80DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B80E0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B80E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B80E8 | 7C 7E 1B 78 */	mr r30, r3
/* 813B80EC | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813B80F0 | 80 A3 00 64 */	lwz r5, 0x64(r3)
/* 813B80F4 | 48 00 0E BD */	bl isDiskChannelByDraw__Q33ipl5scene12ChannelTitleFii
/* 813B80F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B80FC | 40 82 00 B8 */	bne .L_813B81B4
/* 813B8100 | 80 7E 02 54 */	lwz r3, 0x254(r30)
/* 813B8104 | 38 80 00 00 */	li r4, 0x0
/* 813B8108 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B810C | 4B F8 C3 09 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B8110 | 83 FE 02 44 */	lwz r31, 0x244(r30)
/* 813B8114 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B8118 | 41 82 00 20 */	beq .L_813B8138
/* 813B811C | 7F E3 FB 78 */	mr r3, r31
/* 813B8120 | 4B FA A7 51 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8124 | 38 60 00 01 */	li r3, 0x1
/* 813B8128 | 38 00 00 00 */	li r0, 0x0
/* 813B812C | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 813B8130 | 98 1E 00 90 */	stb r0, 0x90(r30)
/* 813B8134 | 48 00 00 40 */	b .L_813B8174
.L_813B8138:
/* 813B8138 | 83 FE 02 48 */	lwz r31, 0x248(r30)
/* 813B813C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B8140 | 41 82 00 18 */	beq .L_813B8158
/* 813B8144 | 7F E3 FB 78 */	mr r3, r31
/* 813B8148 | 4B FA A7 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B814C | 38 00 00 01 */	li r0, 0x1
/* 813B8150 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813B8154 | 48 00 00 20 */	b .L_813B8174
.L_813B8158:
/* 813B8158 | 83 FE 02 40 */	lwz r31, 0x240(r30)
/* 813B815C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B8160 | 41 82 00 14 */	beq .L_813B8174
/* 813B8164 | 7F E3 FB 78 */	mr r3, r31
/* 813B8168 | 4B FA A7 09 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B816C | 38 00 00 01 */	li r0, 0x1
/* 813B8170 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_813B8174:
/* 813B8174 | 80 1E 00 58 */	lwz r0, 0x58(r30)
/* 813B8178 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813B817C | 41 82 00 38 */	beq .L_813B81B4
/* 813B8180 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B8184 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813B8188 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B818C | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813B8190 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B8194 | 4B FF FC 89 */	bl checkUseAltSound__Q33ipl7channel7ManagerCFii
/* 813B8198 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B819C | 41 82 00 10 */	beq .L_813B81AC
/* 813B81A0 | 80 1E 03 84 */	lwz r0, 0x384(r30)
/* 813B81A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B81A8 | 40 82 00 0C */	bne .L_813B81B4
.L_813B81AC:
/* 813B81AC | 7F C3 F3 78 */	mr r3, r30
/* 813B81B0 | 48 00 00 1D */	bl startChanSound__Q33ipl5scene12ChannelTitleFv
.L_813B81B4:
/* 813B81B4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B81B8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B81BC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B81C0 | 7C 08 03 A6 */	mtlr r0
/* 813B81C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B81C8 | 4E 80 00 20 */	blr
.endfn initChanAnmAndSound__Q33ipl5scene12ChannelTitleFv

# .text:0x419C | 0x813B81CC | size: 0x184
# ipl::scene::ChannelTitle::startChanSound()
.fn startChanSound__Q33ipl5scene12ChannelTitleFv, global
/* 813B81CC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B81D0 | 7C 08 02 A6 */	mflr r0
/* 813B81D4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B81D8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813B81DC | 7C 7F 1B 78 */	mr r31, r3
/* 813B81E0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813B81E4 | 80 03 02 18 */	lwz r0, 0x218(r3)
/* 813B81E8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B81EC | 7C 83 02 14 */	add r4, r3, r0
/* 813B81F0 | 80 04 02 2C */	lwz r0, 0x22c(r4)
/* 813B81F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B81F8 | 41 82 00 68 */	beq .L_813B8260
/* 813B81FC | 7C 03 03 78 */	mr r3, r0
/* 813B8200 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B8204 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813B8208 | 7D 89 03 A6 */	mtctr r12
/* 813B820C | 4E 80 04 21 */	bctrl
/* 813B8210 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B8214 | 40 82 01 24 */	bne .L_813B8338
/* 813B8218 | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B821C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B8220 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B8224 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B8228 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B822C | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B8230 | 7C DF 02 14 */	add r6, r31, r0
/* 813B8234 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B8238 | 80 C6 02 2C */	lwz r6, 0x22c(r6)
/* 813B823C | 83 E6 00 A0 */	lwz r31, 0xa0(r6)
/* 813B8240 | 48 00 01 11 */	bl getSoundSize__Q33ipl7channel7ManagerCFii
/* 813B8244 | 3C E0 81 09 */	lis r7, sSystem__Q23ipl3snd@ha
/* 813B8248 | 7C 65 1B 78 */	mr r5, r3
/* 813B824C | 7F E4 FB 78 */	mr r4, r31
/* 813B8250 | 38 C0 00 00 */	li r6, 0x0
/* 813B8254 | 38 67 99 2C */	addi r3, r7, sSystem__Q23ipl3snd@l
/* 813B8258 | 4B FB 3F 41 */	bl startBannerSound__Q33ipl3snd6SystemFPvUlb
/* 813B825C | 48 00 00 DC */	b .L_813B8338
.L_813B8260:
/* 813B8260 | 80 03 00 74 */	lwz r0, 0x74(r3)
/* 813B8264 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813B8268 | 40 82 00 B0 */	bne .L_813B8318
/* 813B826C | 80 04 02 34 */	lwz r0, 0x234(r4)
/* 813B8270 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B8274 | 41 82 00 C4 */	beq .L_813B8338
/* 813B8278 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B827C | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B8280 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B8284 | 3B C0 00 00 */	li r30, 0x0
/* 813B8288 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 813B828C | 38 A0 00 00 */	li r5, 0x0
/* 813B8290 | 4B FA 88 99 */	bl getDiskInfo__Q33ipl3bs27ManagerFPPcPPc
/* 813B8294 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 813B8298 | 3C A0 81 61 */	lis r5, lbl_816102E0@ha
/* 813B829C | 38 00 00 02 */	li r0, 0x2
/* 813B82A0 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 813B82A4 | 38 A5 02 E0 */	addi r5, r5, lbl_816102E0@l
/* 813B82A8 | 38 60 00 00 */	li r3, 0x0
/* 813B82AC | 54 86 00 2E */	clrrwi r6, r4, 8
/* 813B82B0 | 7C 09 03 A6 */	mtctr r0
.L_813B82B4:
/* 813B82B4 | 7C 85 1A 14 */	add r4, r5, r3
/* 813B82B8 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 813B82BC | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813B82C0 | 7C C0 02 78 */	xor r0, r6, r0
/* 813B82C4 | 7C 00 23 79 */	or. r0, r0, r4
/* 813B82C8 | 40 82 00 08 */	bne .L_813B82D0
/* 813B82CC | 3B C0 00 01 */	li r30, 0x1
.L_813B82D0:
/* 813B82D0 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813B82D4 | 42 00 FF E0 */	bdnz .L_813B82B4
/* 813B82D8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B82DC | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B82E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B82E4 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B82E8 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B82EC | 48 00 00 65 */	bl getSoundSize__Q33ipl7channel7ManagerCFii
/* 813B82F0 | 80 1F 02 18 */	lwz r0, 0x218(r31)
/* 813B82F4 | 3C 80 81 09 */	lis r4, sSystem__Q23ipl3snd@ha
/* 813B82F8 | 7C 65 1B 78 */	mr r5, r3
/* 813B82FC | 7F C6 F3 78 */	mr r6, r30
/* 813B8300 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B8304 | 38 64 99 2C */	addi r3, r4, sSystem__Q23ipl3snd@l
/* 813B8308 | 7C 9F 02 14 */	add r4, r31, r0
/* 813B830C | 80 84 02 34 */	lwz r4, 0x234(r4)
/* 813B8310 | 4B FB 3E 89 */	bl startBannerSound__Q33ipl3snd6SystemFPvUlb
/* 813B8314 | 48 00 00 24 */	b .L_813B8338
.L_813B8318:
/* 813B8318 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813B831C | 40 82 00 1C */	bne .L_813B8338
/* 813B8320 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B8324 | 3C 80 81 65 */	lis r4, lbl_8164EDF3@ha
/* 813B8328 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B832C | 38 84 ED F3 */	addi r4, r4, lbl_8164EDF3@l
/* 813B8330 | 4B FB 31 3D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B8334 | 90 7F 02 4C */	stw r3, 0x24c(r31)
.L_813B8338:
/* 813B8338 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B833C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813B8340 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813B8344 | 7C 08 03 A6 */	mtlr r0
/* 813B8348 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B834C | 4E 80 00 20 */	blr
.endfn startChanSound__Q33ipl5scene12ChannelTitleFv

# .text:0x4320 | 0x813B8350 | size: 0x30
# ipl::channel::Manager::getSoundSize(int, int) const
.fn getSoundSize__Q33ipl7channel7ManagerCFii, global
/* 813B8350 | 1C 04 05 40 */	mulli r0, r4, 0x540
/* 813B8354 | 1C 85 00 70 */	mulli r4, r5, 0x70
/* 813B8358 | 7C 03 02 14 */	add r0, r3, r0
/* 813B835C | 7C 60 22 14 */	add r3, r0, r4
/* 813B8360 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813B8364 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B8368 | 41 82 00 10 */	beq .L_813B8378
/* 813B836C | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813B8370 | 80 63 00 54 */	lwz r3, 0x54(r3)
/* 813B8374 | 4E 80 00 20 */	blr
.L_813B8378:
/* 813B8378 | 38 60 00 00 */	li r3, 0x0
/* 813B837C | 4E 80 00 20 */	blr
.endfn getSoundSize__Q33ipl7channel7ManagerCFii

# .text:0x4350 | 0x813B8380 | size: 0x58
# ipl::scene::ChannelTitle::bindChanAnms()
.fn bindChanAnms__Q33ipl5scene12ChannelTitleFv, global
/* 813B8380 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B8384 | 7C 08 02 A6 */	mflr r0
/* 813B8388 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B838C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B8390 | 7C 7F 1B 78 */	mr r31, r3
/* 813B8394 | 48 00 00 45 */	bl bindChanBaseAnms__Q33ipl5scene12ChannelTitleFv
/* 813B8398 | 80 1F 03 84 */	lwz r0, 0x384(r31)
/* 813B839C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B83A0 | 41 82 00 24 */	beq .L_813B83C4
/* 813B83A4 | 38 7F 03 AC */	addi r3, r31, 0x3ac
/* 813B83A8 | 38 80 00 00 */	li r4, 0x0
/* 813B83AC | 38 A0 00 40 */	li r5, 0x40
/* 813B83B0 | 4B F7 7F 85 */	bl memset
/* 813B83B4 | 80 7F 02 3C */	lwz r3, 0x23c(r31)
/* 813B83B8 | 38 9F 03 AC */	addi r4, r31, 0x3ac
/* 813B83BC | 38 AD 8A A4 */	li r5, lbl_81696AE4@sda21
/* 813B83C0 | 4B FF A4 5D */	bl bindRsoAnm__Q33ipl5scene10ChannelObjFPQ33ipl6layout6ObjectPPQ33ipl6layout8AnimatorPCc
.L_813B83C4:
/* 813B83C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B83C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B83CC | 7C 08 03 A6 */	mtlr r0
/* 813B83D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B83D4 | 4E 80 00 20 */	blr
.endfn bindChanAnms__Q33ipl5scene12ChannelTitleFv

# .text:0x43A8 | 0x813B83D8 | size: 0x11C
# ipl::scene::ChannelTitle::bindChanBaseAnms()
.fn bindChanBaseAnms__Q33ipl5scene12ChannelTitleFv, global
/* 813B83D8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813B83DC | 7C 08 02 A6 */	mflr r0
/* 813B83E0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813B83E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B83E8 | 48 24 10 CD */	bl _savegpr_24
/* 813B83EC | 3B 20 00 00 */	li r25, 0x0
/* 813B83F0 | 3F 60 81 65 */	lis r27, lbl_8164E968@ha
/* 813B83F4 | 7C 78 1B 78 */	mr r24, r3
/* 813B83F8 | 3B E0 00 00 */	li r31, 0x0
/* 813B83FC | 7F 3E CB 78 */	mr r30, r25
/* 813B8400 | 7F 3C CB 78 */	mr r28, r25
/* 813B8404 | 3B 7B E9 68 */	addi r27, r27, lbl_8164E968@l
/* 813B8408 | 3B A0 00 02 */	li r29, 0x2
.L_813B840C:
/* 813B840C | 80 78 02 3C */	lwz r3, 0x23c(r24)
/* 813B8410 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813B8414 | 4B FB 22 B1 */	bl searchFile__Q33ipl6layout6ObjectFPCc
/* 813B8418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B841C | 41 82 00 A8 */	beq .L_813B84C4
/* 813B8420 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813B8424 | 40 82 00 24 */	bne .L_813B8448
/* 813B8428 | 80 78 02 3C */	lwz r3, 0x23c(r24)
/* 813B842C | 7F 58 FA 14 */	add r26, r24, r31
/* 813B8430 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813B8434 | 38 A0 00 01 */	li r5, 0x1
/* 813B8438 | 4B FB 1F 35 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B843C | 90 7A 02 40 */	stw r3, 0x240(r26)
/* 813B8440 | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 813B8444 | 48 00 00 88 */	b .L_813B84CC
.L_813B8448:
/* 813B8448 | 2C 19 00 01 */	cmpwi r25, 0x1
/* 813B844C | 40 82 00 24 */	bne .L_813B8470
/* 813B8450 | 80 78 02 3C */	lwz r3, 0x23c(r24)
/* 813B8454 | 7F 58 FA 14 */	add r26, r24, r31
/* 813B8458 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813B845C | 38 A0 00 01 */	li r5, 0x1
/* 813B8460 | 4B FB 1F 0D */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B8464 | 90 7A 02 40 */	stw r3, 0x240(r26)
/* 813B8468 | 93 83 00 18 */	stw r28, 0x18(r3)
/* 813B846C | 48 00 00 60 */	b .L_813B84CC
.L_813B8470:
/* 813B8470 | 80 18 02 44 */	lwz r0, 0x244(r24)
/* 813B8474 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B8478 | 40 82 00 24 */	bne .L_813B849C
/* 813B847C | 7F 58 FA 14 */	add r26, r24, r31
/* 813B8480 | 80 78 02 3C */	lwz r3, 0x23c(r24)
/* 813B8484 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813B8488 | 38 A0 00 01 */	li r5, 0x1
/* 813B848C | 3B 5A 02 40 */	addi r26, r26, 0x240
/* 813B8490 | 4B FB 1E DD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B8494 | 90 7A 00 00 */	stw r3, 0x0(r26)
/* 813B8498 | 48 00 00 20 */	b .L_813B84B8
.L_813B849C:
/* 813B849C | 7F 58 FA 14 */	add r26, r24, r31
/* 813B84A0 | 80 78 02 3C */	lwz r3, 0x23c(r24)
/* 813B84A4 | 7C 9B F8 2E */	lwzx r4, r27, r31
/* 813B84A8 | 38 A0 00 00 */	li r5, 0x0
/* 813B84AC | 3B 5A 02 40 */	addi r26, r26, 0x240
/* 813B84B0 | 4B FB 1E BD */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B84B4 | 90 7A 00 00 */	stw r3, 0x0(r26)
.L_813B84B8:
/* 813B84B8 | 80 7A 00 00 */	lwz r3, 0x0(r26)
/* 813B84BC | 93 A3 00 18 */	stw r29, 0x18(r3)
/* 813B84C0 | 48 00 00 0C */	b .L_813B84CC
.L_813B84C4:
/* 813B84C4 | 7C 78 FA 14 */	add r3, r24, r31
/* 813B84C8 | 93 C3 02 40 */	stw r30, 0x240(r3)
.L_813B84CC:
/* 813B84CC | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813B84D0 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 813B84D4 | 2C 19 00 03 */	cmpwi r25, 0x3
/* 813B84D8 | 41 80 FF 34 */	blt .L_813B840C
/* 813B84DC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B84E0 | 48 24 10 21 */	bl _restgpr_24
/* 813B84E4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B84E8 | 7C 08 03 A6 */	mtlr r0
/* 813B84EC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813B84F0 | 4E 80 00 20 */	blr
.endfn bindChanBaseAnms__Q33ipl5scene12ChannelTitleFv

# .text:0x44C4 | 0x813B84F4 | size: 0x150
# ipl::scene::ChannelTitle::bindDiskAnms()
.fn bindDiskAnms__Q33ipl5scene12ChannelTitleFv, global
/* 813B84F4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813B84F8 | 7C 08 02 A6 */	mflr r0
/* 813B84FC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813B8500 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B8504 | 48 24 0F AD */	bl _savegpr_23
/* 813B8508 | 7C 7F 1B 78 */	mr r31, r3
/* 813B850C | 38 80 00 00 */	li r4, 0x0
/* 813B8510 | 38 A0 00 C8 */	li r5, 0xc8
/* 813B8514 | 38 63 02 58 */	addi r3, r3, 0x258
/* 813B8518 | 4B F7 7E 1D */	bl memset
/* 813B851C | 3F 60 81 65 */	lis r27, lbl_8164EAAC@ha
/* 813B8520 | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B8524 | 80 9B EA AC */	lwz r4, lbl_8164EAAC@l(r27)
/* 813B8528 | 38 A0 00 01 */	li r5, 0x1
/* 813B852C | 4B FB 1E 41 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B8530 | 90 7F 02 F8 */	stw r3, 0x2f8(r31)
/* 813B8534 | 3F 40 81 65 */	lis r26, lbl_8164E988@ha
/* 813B8538 | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B853C | 38 C0 00 00 */	li r6, 0x0
/* 813B8540 | 80 9B EA AC */	lwz r4, lbl_8164EAAC@l(r27)
/* 813B8544 | 38 E0 00 00 */	li r7, 0x0
/* 813B8548 | 80 BA E9 88 */	lwz r5, lbl_8164E988@l(r26)
/* 813B854C | 4B FB 1F 95 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B8550 | 90 7F 02 58 */	stw r3, 0x258(r31)
/* 813B8554 | 3B 7B EA AC */	addi r27, r27, lbl_8164EAAC@l
/* 813B8558 | 3B 5A E9 88 */	addi r26, r26, lbl_8164E988@l
/* 813B855C | 3B 00 00 00 */	li r24, 0x0
/* 813B8560 | 3B C0 00 00 */	li r30, 0x0
/* 813B8564 | 3B A0 00 00 */	li r29, 0x0
.L_813B8568:
/* 813B8568 | 7F 3F F2 14 */	add r25, r31, r30
/* 813B856C | 3A E0 00 01 */	li r23, 0x1
/* 813B8570 | 3B 80 00 04 */	li r28, 0x4
.L_813B8574:
/* 813B8574 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 813B8578 | 40 82 00 0C */	bne .L_813B8584
/* 813B857C | 2C 17 00 05 */	cmpwi r23, 0x5
/* 813B8580 | 41 82 00 34 */	beq .L_813B85B4
.L_813B8584:
/* 813B8584 | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B8588 | 38 C0 00 00 */	li r6, 0x0
/* 813B858C | 7C 9B E0 2E */	lwzx r4, r27, r28
/* 813B8590 | 38 E0 00 00 */	li r7, 0x0
/* 813B8594 | 7C BA E8 2E */	lwzx r5, r26, r29
/* 813B8598 | 4B FB 1F 49 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B859C | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813B85A0 | 7C 99 E2 14 */	add r4, r25, r28
/* 813B85A4 | 2C 17 00 05 */	cmpwi r23, 0x5
/* 813B85A8 | 90 64 02 58 */	stw r3, 0x258(r4)
/* 813B85AC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 813B85B0 | 40 81 FF C4 */	ble .L_813B8574
.L_813B85B4:
/* 813B85B4 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 813B85B8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813B85BC | 2C 18 00 02 */	cmpwi r24, 0x2
/* 813B85C0 | 3B DE 00 28 */	addi r30, r30, 0x28
/* 813B85C4 | 40 81 FF A4 */	ble .L_813B8568
/* 813B85C8 | 3F 80 81 65 */	lis r28, lbl_8164EAAC@ha
/* 813B85CC | 3A E0 00 06 */	li r23, 0x6
/* 813B85D0 | 3B 9C EA AC */	addi r28, r28, lbl_8164EAAC@l
/* 813B85D4 | 3B C0 00 18 */	li r30, 0x18
.L_813B85D8:
/* 813B85D8 | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B85DC | 38 A0 00 00 */	li r5, 0x0
/* 813B85E0 | 7C 9C F0 2E */	lwzx r4, r28, r30
/* 813B85E4 | 4B FB 1D 89 */	bl bind__Q33ipl6layout6ObjectFPCcb
/* 813B85E8 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813B85EC | 7C 9F F2 14 */	add r4, r31, r30
/* 813B85F0 | 2C 17 00 09 */	cmpwi r23, 0x9
/* 813B85F4 | 90 64 02 F8 */	stw r3, 0x2f8(r4)
/* 813B85F8 | 3B DE 00 04 */	addi r30, r30, 0x4
/* 813B85FC | 40 81 FF DC */	ble .L_813B85D8
/* 813B8600 | 3C 80 81 65 */	lis r4, lbl_8164EAAC@ha
/* 813B8604 | 3C A0 81 65 */	lis r5, lbl_8164E988@ha
/* 813B8608 | 38 84 EA AC */	addi r4, r4, lbl_8164EAAC@l
/* 813B860C | 80 7F 02 54 */	lwz r3, 0x254(r31)
/* 813B8610 | 38 A5 E9 88 */	addi r5, r5, lbl_8164E988@l
/* 813B8614 | 80 84 00 14 */	lwz r4, 0x14(r4)
/* 813B8618 | 80 A5 00 0C */	lwz r5, 0xc(r5)
/* 813B861C | 38 C0 00 00 */	li r6, 0x0
/* 813B8620 | 38 E0 00 00 */	li r7, 0x0
/* 813B8624 | 4B FB 1E BD */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 813B8628 | 90 7F 02 E4 */	stw r3, 0x2e4(r31)
/* 813B862C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B8630 | 48 24 0E CD */	bl _restgpr_23
/* 813B8634 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B8638 | 7C 08 03 A6 */	mtlr r0
/* 813B863C | 38 21 00 30 */	addi r1, r1, 0x30
/* 813B8640 | 4E 80 00 20 */	blr
.endfn bindDiskAnms__Q33ipl5scene12ChannelTitleFv

# .text:0x4614 | 0x813B8644 | size: 0x96C
# ipl::scene::ChannelTitle::updateDiskState(int, int)
.fn updateDiskState__Q33ipl5scene12ChannelTitleFii, global
/* 813B8644 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813B8648 | 7C 08 02 A6 */	mflr r0
/* 813B864C | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813B8650 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813B8654 | 48 24 0E 65 */	bl _savegpr_25
/* 813B8658 | 80 C3 00 58 */	lwz r6, 0x58(r3)
/* 813B865C | 3F E0 81 65 */	lis r31, lbl_8164E768@ha
/* 813B8660 | 7C 7A 1B 78 */	mr r26, r3
/* 813B8664 | 7C 9B 23 78 */	mr r27, r4
/* 813B8668 | 2C 06 00 03 */	cmpwi r6, 0x3
/* 813B866C | 7C BC 2B 78 */	mr r28, r5
/* 813B8670 | 3B FF E7 68 */	addi r31, r31, lbl_8164E768@l
/* 813B8674 | 3B A0 00 00 */	li r29, 0x0
/* 813B8678 | 40 82 00 14 */	bne .L_813B868C
/* 813B867C | 80 83 01 FC */	lwz r4, 0x1fc(r3)
/* 813B8680 | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 813B8684 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8688 | 40 82 00 1C */	bne .L_813B86A4
.L_813B868C:
/* 813B868C | 2C 06 00 09 */	cmpwi r6, 0x9
/* 813B8690 | 40 82 00 18 */	bne .L_813B86A8
/* 813B8694 | 80 63 01 F8 */	lwz r3, 0x1f8(r3)
/* 813B8698 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B869C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B86A0 | 41 82 00 08 */	beq .L_813B86A8
.L_813B86A4:
/* 813B86A4 | 3B A0 00 01 */	li r29, 0x1
.L_813B86A8:
/* 813B86A8 | 3F 20 81 09 */	lis r25, smArg__Q23ipl6System@ha
/* 813B86AC | 2C 06 00 01 */	cmpwi r6, 0x1
/* 813B86B0 | 3B 39 90 08 */	addi r25, r25, smArg__Q23ipl6System@l
/* 813B86B4 | 80 79 00 A8 */	lwz r3, 0xa8(r25)
/* 813B86B8 | 83 C3 00 04 */	lwz r30, 0x4(r3)
/* 813B86BC | 40 82 00 78 */	bne .L_813B8734
/* 813B86C0 | 2C 1E 00 03 */	cmpwi r30, 0x3
/* 813B86C4 | 40 82 00 70 */	bne .L_813B8734
/* 813B86C8 | 80 79 00 B4 */	lwz r3, 0xb4(r25)
/* 813B86CC | 4B F8 FC 4D */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813B86D0 | 80 79 00 64 */	lwz r3, 0x64(r25)
/* 813B86D4 | 38 80 00 05 */	li r4, 0x5
/* 813B86D8 | 48 05 2A 61 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B86DC | 38 80 00 1A */	li r4, 0x1a
/* 813B86E0 | 4B FE 44 79 */	bl iplButton_8139CB58
/* 813B86E4 | 80 79 00 64 */	lwz r3, 0x64(r25)
/* 813B86E8 | 38 80 00 05 */	li r4, 0x5
/* 813B86EC | 48 05 2A 4D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B86F0 | 38 80 00 19 */	li r4, 0x19
/* 813B86F4 | 4B FE 44 65 */	bl iplButton_8139CB58
/* 813B86F8 | 80 79 00 A8 */	lwz r3, 0xa8(r25)
/* 813B86FC | 88 03 00 11 */	lbz r0, 0x11(r3)
/* 813B8700 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B8704 | 41 82 00 18 */	beq .L_813B871C
/* 813B8708 | 80 79 00 AC */	lwz r3, 0xac(r25)
/* 813B870C | 38 80 01 7B */	li r4, 0x17b
/* 813B8710 | 38 A0 00 2E */	li r5, 0x2e
/* 813B8714 | 4B F8 DF E5 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 813B8718 | 48 00 00 14 */	b .L_813B872C
.L_813B871C:
/* 813B871C | 80 79 00 AC */	lwz r3, 0xac(r25)
/* 813B8720 | 38 80 01 65 */	li r4, 0x165
/* 813B8724 | 38 A0 00 2E */	li r5, 0x2e
/* 813B8728 | 4B F8 DF D1 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
.L_813B872C:
/* 813B872C | 38 00 00 11 */	li r0, 0x11
/* 813B8730 | 90 1A 00 58 */	stw r0, 0x58(r26)
.L_813B8734:
/* 813B8734 | 80 1A 00 58 */	lwz r0, 0x58(r26)
/* 813B8738 | 2C 00 00 11 */	cmpwi r0, 0x11
/* 813B873C | 41 80 00 0C */	blt .L_813B8748
/* 813B8740 | 2C 00 00 18 */	cmpwi r0, 0x18
/* 813B8744 | 40 81 08 54 */	ble .L_813B8F98
.L_813B8748:
/* 813B8748 | 80 1A 00 74 */	lwz r0, 0x74(r26)
/* 813B874C | 28 00 00 11 */	cmplwi r0, 0x11
/* 813B8750 | 41 81 08 48 */	bgt .L_813B8F98
/* 813B8754 | 3C 60 81 65 */	lis r3, jumptable_8164EE38@ha
/* 813B8758 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B875C | 38 63 EE 38 */	addi r3, r3, jumptable_8164EE38@l
/* 813B8760 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813B8764 | 7C 69 03 A6 */	mtctr r3
/* 813B8768 | 4E 80 04 20 */	bctr
.L_813B876C:
/* 813B876C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813B8770 | 40 82 00 10 */	bne .L_813B8780
/* 813B8774 | 80 1A 00 78 */	lwz r0, 0x78(r26)
/* 813B8778 | 2C 00 00 0E */	cmpwi r0, 0xe
/* 813B877C | 40 82 08 1C */	bne .L_813B8F98
.L_813B8780:
/* 813B8780 | 83 3A 02 F8 */	lwz r25, 0x2f8(r26)
/* 813B8784 | 7F 23 CB 78 */	mr r3, r25
/* 813B8788 | 4B FA A0 E9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B878C | 38 60 00 01 */	li r3, 0x1
/* 813B8790 | 38 1E FF FF */	subi r0, r30, 0x1
/* 813B8794 | 90 79 00 14 */	stw r3, 0x14(r25)
/* 813B8798 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B879C | 54 19 D9 7E */	srwi r25, r0, 5
/* 813B87A0 | 80 7A 02 54 */	lwz r3, 0x254(r26)
/* 813B87A4 | 80 9F 02 20 */	lwz r4, 0x220(r31)
/* 813B87A8 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 813B87AC | 48 16 76 91 */	bl fn_8151FE3C
/* 813B87B0 | 7C 7B 1B 78 */	mr r27, r3
/* 813B87B4 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813B87B8 | 4B FB 16 7D */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B87BC | 90 61 00 34 */	stw r3, 0x34(r1)
/* 813B87C0 | 48 00 00 20 */	b .L_813B87E0
.L_813B87C4:
/* 813B87C4 | 80 61 00 34 */	lwz r3, 0x34(r1)
/* 813B87C8 | 7F 24 CB 78 */	mr r4, r25
/* 813B87CC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B87D0 | 4B F8 BC 45 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B87D4 | 38 61 00 34 */	addi r3, r1, 0x34
/* 813B87D8 | 38 80 00 00 */	li r4, 0x0
/* 813B87DC | 4B FF 9F F9 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B87E0:
/* 813B87E0 | 38 7B 00 0C */	addi r3, r27, 0xc
/* 813B87E4 | 4B FB 16 59 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B87E8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B87EC | 38 81 00 20 */	addi r4, r1, 0x20
/* 813B87F0 | 90 61 00 20 */	stw r3, 0x20(r1)
/* 813B87F4 | 38 61 00 24 */	addi r3, r1, 0x24
/* 813B87F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B87FC | 4B FB 16 49 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B8800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B8804 | 40 82 FF C0 */	bne .L_813B87C4
/* 813B8808 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813B880C | 41 82 00 18 */	beq .L_813B8824
/* 813B8810 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B8814 | 38 9F 06 9D */	addi r4, r31, 0x69d
/* 813B8818 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B881C | 4B FB 2C 51 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B8820 | 90 7A 02 4C */	stw r3, 0x24c(r26)
.L_813B8824:
/* 813B8824 | 38 60 00 01 */	li r3, 0x1
/* 813B8828 | 38 00 00 00 */	li r0, 0x0
/* 813B882C | 90 7A 00 74 */	stw r3, 0x74(r26)
/* 813B8830 | 90 1A 00 78 */	stw r0, 0x78(r26)
/* 813B8834 | 48 00 07 64 */	b .L_813B8F98
.L_813B8838:
/* 813B8838 | 80 7A 02 F8 */	lwz r3, 0x2f8(r26)
/* 813B883C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8840 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8844 | 41 82 07 54 */	beq .L_813B8F98
/* 813B8848 | 80 7A 02 58 */	lwz r3, 0x258(r26)
/* 813B884C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8850 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8854 | 41 82 07 44 */	beq .L_813B8F98
/* 813B8858 | 38 00 00 02 */	li r0, 0x2
/* 813B885C | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813B8860 | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8864 | 40 82 07 34 */	bne .L_813B8F98
/* 813B8868 | 80 7A 02 54 */	lwz r3, 0x254(r26)
/* 813B886C | 80 9F 02 20 */	lwz r4, 0x220(r31)
/* 813B8870 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 813B8874 | 48 16 75 C9 */	bl fn_8151FE3C
/* 813B8878 | 7C 7A 1B 78 */	mr r26, r3
/* 813B887C | 38 63 00 0C */	addi r3, r3, 0xc
/* 813B8880 | 4B FB 15 B5 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B8884 | 90 61 00 30 */	stw r3, 0x30(r1)
/* 813B8888 | 48 00 00 20 */	b .L_813B88A8
.L_813B888C:
/* 813B888C | 80 61 00 30 */	lwz r3, 0x30(r1)
/* 813B8890 | 38 80 00 01 */	li r4, 0x1
/* 813B8894 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B8898 | 4B F8 BB 7D */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B889C | 38 61 00 30 */	addi r3, r1, 0x30
/* 813B88A0 | 38 80 00 00 */	li r4, 0x0
/* 813B88A4 | 4B FF 9F 31 */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B88A8:
/* 813B88A8 | 38 7A 00 0C */	addi r3, r26, 0xc
/* 813B88AC | 4B FB 15 91 */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B88B0 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 813B88B4 | 38 81 00 18 */	addi r4, r1, 0x18
/* 813B88B8 | 90 61 00 18 */	stw r3, 0x18(r1)
/* 813B88BC | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813B88C0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813B88C4 | 4B FB 15 81 */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B88C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B88CC | 40 82 FF C0 */	bne .L_813B888C
/* 813B88D0 | 48 00 06 C8 */	b .L_813B8F98
.L_813B88D4:
/* 813B88D4 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813B88D8 | 41 82 06 C0 */	beq .L_813B8F98
/* 813B88DC | 3B C0 00 00 */	li r30, 0x0
/* 813B88E0 | 3B 60 00 00 */	li r27, 0x0
/* 813B88E4 | 3B A0 00 01 */	li r29, 0x1
/* 813B88E8 | 3B 80 00 06 */	li r28, 0x6
.L_813B88EC:
/* 813B88EC | 7C 7A DA 14 */	add r3, r26, r27
/* 813B88F0 | 83 23 02 5C */	lwz r25, 0x25c(r3)
/* 813B88F4 | 7F 23 CB 78 */	mr r3, r25
/* 813B88F8 | 4B FA 9F 79 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B88FC | 93 B9 00 14 */	stw r29, 0x14(r25)
/* 813B8900 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813B8904 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813B8908 | 3B 7B 00 28 */	addi r27, r27, 0x28
/* 813B890C | 93 9A 00 74 */	stw r28, 0x74(r26)
/* 813B8910 | 40 81 FF DC */	ble .L_813B88EC
/* 813B8914 | 48 00 06 84 */	b .L_813B8F98
.L_813B8918:
/* 813B8918 | 80 7A 02 84 */	lwz r3, 0x284(r26)
/* 813B891C | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8920 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8924 | 41 82 06 74 */	beq .L_813B8F98
/* 813B8928 | 83 3A 02 88 */	lwz r25, 0x288(r26)
/* 813B892C | 7F 23 CB 78 */	mr r3, r25
/* 813B8930 | 4B FA 9F 41 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8934 | 3B 60 00 01 */	li r27, 0x1
/* 813B8938 | 93 79 00 14 */	stw r27, 0x14(r25)
/* 813B893C | 83 3A 02 B0 */	lwz r25, 0x2b0(r26)
/* 813B8940 | 7F 23 CB 78 */	mr r3, r25
/* 813B8944 | 4B FA 9F 2D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8948 | 93 79 00 14 */	stw r27, 0x14(r25)
/* 813B894C | 38 80 00 00 */	li r4, 0x0
/* 813B8950 | 38 00 00 07 */	li r0, 0x7
/* 813B8954 | 80 7A 02 5C */	lwz r3, 0x25c(r26)
/* 813B8958 | 90 83 00 14 */	stw r4, 0x14(r3)
/* 813B895C | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8960 | 48 00 06 38 */	b .L_813B8F98
.L_813B8964:
/* 813B8964 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 813B8968 | 40 82 00 38 */	bne .L_813B89A0
/* 813B896C | 80 7A 02 B0 */	lwz r3, 0x2b0(r26)
/* 813B8970 | 38 00 00 00 */	li r0, 0x0
/* 813B8974 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B8978 | 83 3A 02 B8 */	lwz r25, 0x2b8(r26)
/* 813B897C | 7F 23 CB 78 */	mr r3, r25
/* 813B8980 | 4B FA 9E F1 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8984 | 38 00 00 01 */	li r0, 0x1
/* 813B8988 | 38 60 00 09 */	li r3, 0x9
/* 813B898C | 90 19 00 14 */	stw r0, 0x14(r25)
/* 813B8990 | 38 00 00 0A */	li r0, 0xa
/* 813B8994 | 90 7A 00 74 */	stw r3, 0x74(r26)
/* 813B8998 | 90 1A 00 78 */	stw r0, 0x78(r26)
/* 813B899C | 48 00 05 FC */	b .L_813B8F98
.L_813B89A0:
/* 813B89A0 | 2C 1E 00 06 */	cmpwi r30, 0x6
/* 813B89A4 | 40 82 00 78 */	bne .L_813B8A1C
/* 813B89A8 | 80 7A 02 88 */	lwz r3, 0x288(r26)
/* 813B89AC | 38 00 00 00 */	li r0, 0x0
/* 813B89B0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B89B4 | 83 3A 02 90 */	lwz r25, 0x290(r26)
/* 813B89B8 | 7F 23 CB 78 */	mr r3, r25
/* 813B89BC | 4B FA 9E B5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B89C0 | 38 00 00 01 */	li r0, 0x1
/* 813B89C4 | 38 C0 00 0D */	li r6, 0xd
/* 813B89C8 | 90 19 00 14 */	stw r0, 0x14(r25)
/* 813B89CC | 7F 43 D3 78 */	mr r3, r26
/* 813B89D0 | 7F 64 DB 78 */	mr r4, r27
/* 813B89D4 | 7F 85 E3 78 */	mr r5, r28
/* 813B89D8 | 80 1A 02 18 */	lwz r0, 0x218(r26)
/* 813B89DC | 90 DA 00 74 */	stw r6, 0x74(r26)
/* 813B89E0 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B89E4 | 7D 1A 02 14 */	add r8, r26, r0
/* 813B89E8 | 38 C8 02 24 */	addi r6, r8, 0x224
/* 813B89EC | 38 E8 02 2C */	addi r7, r8, 0x22c
/* 813B89F0 | 39 08 02 34 */	addi r8, r8, 0x234
/* 813B89F4 | 48 00 13 CD */	bl loadLayoutFileAsync__Q33ipl5scene12ChannelTitleFiiPPvPPQ33ipl4nand4FilePPv
/* 813B89F8 | 80 BA 02 18 */	lwz r5, 0x218(r26)
/* 813B89FC | 38 80 00 09 */	li r4, 0x9
/* 813B8A00 | 38 00 00 0C */	li r0, 0xc
/* 813B8A04 | 54 A5 10 3A */	slwi r5, r5, 2
/* 813B8A08 | 7C BA 2A 14 */	add r5, r26, r5
/* 813B8A0C | 90 65 02 1C */	stw r3, 0x21c(r5)
/* 813B8A10 | 90 9A 00 74 */	stw r4, 0x74(r26)
/* 813B8A14 | 90 1A 00 78 */	stw r0, 0x78(r26)
/* 813B8A18 | 48 00 05 80 */	b .L_813B8F98
.L_813B8A1C:
/* 813B8A1C | 2C 1E 00 07 */	cmpwi r30, 0x7
/* 813B8A20 | 40 82 00 50 */	bne .L_813B8A70
/* 813B8A24 | 80 7A 02 88 */	lwz r3, 0x288(r26)
/* 813B8A28 | 38 00 00 00 */	li r0, 0x0
/* 813B8A2C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B8A30 | 80 7A 02 B0 */	lwz r3, 0x2b0(r26)
/* 813B8A34 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B8A38 | 83 3A 02 90 */	lwz r25, 0x290(r26)
/* 813B8A3C | 7F 23 CB 78 */	mr r3, r25
/* 813B8A40 | 4B FA 9E 31 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8A44 | 3B 60 00 01 */	li r27, 0x1
/* 813B8A48 | 93 79 00 14 */	stw r27, 0x14(r25)
/* 813B8A4C | 83 3A 02 B8 */	lwz r25, 0x2b8(r26)
/* 813B8A50 | 7F 23 CB 78 */	mr r3, r25
/* 813B8A54 | 4B FA 9E 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8A58 | 93 79 00 14 */	stw r27, 0x14(r25)
/* 813B8A5C | 38 60 00 09 */	li r3, 0x9
/* 813B8A60 | 38 00 00 0F */	li r0, 0xf
/* 813B8A64 | 90 7A 00 74 */	stw r3, 0x74(r26)
/* 813B8A68 | 90 1A 00 78 */	stw r0, 0x78(r26)
/* 813B8A6C | 48 00 05 2C */	b .L_813B8F98
.L_813B8A70:
/* 813B8A70 | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813B8A74 | 40 82 05 24 */	bne .L_813B8F98
/* 813B8A78 | 80 7A 02 88 */	lwz r3, 0x288(r26)
/* 813B8A7C | 38 00 00 00 */	li r0, 0x0
/* 813B8A80 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B8A84 | 80 7A 02 B0 */	lwz r3, 0x2b0(r26)
/* 813B8A88 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B8A8C | 83 3A 02 8C */	lwz r25, 0x28c(r26)
/* 813B8A90 | 7F 23 CB 78 */	mr r3, r25
/* 813B8A94 | 4B FA 9D DD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8A98 | 3B 60 00 01 */	li r27, 0x1
/* 813B8A9C | 93 79 00 14 */	stw r27, 0x14(r25)
/* 813B8AA0 | 83 3A 02 B4 */	lwz r25, 0x2b4(r26)
/* 813B8AA4 | 7F 23 CB 78 */	mr r3, r25
/* 813B8AA8 | 4B FA 9D C9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8AAC | 93 79 00 14 */	stw r27, 0x14(r25)
/* 813B8AB0 | 38 00 00 08 */	li r0, 0x8
/* 813B8AB4 | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8AB8 | 48 00 04 E0 */	b .L_813B8F98
.L_813B8ABC:
/* 813B8ABC | 80 7A 02 8C */	lwz r3, 0x28c(r26)
/* 813B8AC0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8AC4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8AC8 | 41 82 04 D0 */	beq .L_813B8F98
/* 813B8ACC | 80 7A 02 B4 */	lwz r3, 0x2b4(r26)
/* 813B8AD0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8AD4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8AD8 | 41 82 04 C0 */	beq .L_813B8F98
/* 813B8ADC | 80 7A 02 54 */	lwz r3, 0x254(r26)
/* 813B8AE0 | 80 9F 02 20 */	lwz r4, 0x220(r31)
/* 813B8AE4 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 813B8AE8 | 48 16 73 55 */	bl fn_8151FE3C
/* 813B8AEC | 7C 7B 1B 78 */	mr r27, r3
/* 813B8AF0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813B8AF4 | 4B FB 13 41 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B8AF8 | 90 61 00 2C */	stw r3, 0x2c(r1)
/* 813B8AFC | 48 00 00 20 */	b .L_813B8B1C
.L_813B8B00:
/* 813B8B00 | 80 61 00 2C */	lwz r3, 0x2c(r1)
/* 813B8B04 | 38 80 00 01 */	li r4, 0x1
/* 813B8B08 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B8B0C | 4B F8 B9 09 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B8B10 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813B8B14 | 38 80 00 00 */	li r4, 0x0
/* 813B8B18 | 4B FF 9C BD */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B8B1C:
/* 813B8B1C | 38 7B 00 0C */	addi r3, r27, 0xc
/* 813B8B20 | 4B FB 13 1D */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B8B24 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 813B8B28 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813B8B2C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 813B8B30 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813B8B34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B8B38 | 4B FB 13 0D */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B8B3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B8B40 | 40 82 FF C0 */	bne .L_813B8B00
/* 813B8B44 | 83 3A 02 58 */	lwz r25, 0x258(r26)
/* 813B8B48 | 7F 23 CB 78 */	mr r3, r25
/* 813B8B4C | 4B FA 9D 25 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8B50 | 38 00 00 01 */	li r0, 0x1
/* 813B8B54 | 90 19 00 14 */	stw r0, 0x14(r25)
/* 813B8B58 | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8B5C | 48 00 04 3C */	b .L_813B8F98
.L_813B8B60:
/* 813B8B60 | 80 1A 00 78 */	lwz r0, 0x78(r26)
/* 813B8B64 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 813B8B68 | 40 82 00 94 */	bne .L_813B8BFC
/* 813B8B6C | 80 7A 02 B8 */	lwz r3, 0x2b8(r26)
/* 813B8B70 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8B74 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8B78 | 41 82 04 20 */	beq .L_813B8F98
/* 813B8B7C | 83 3A 02 94 */	lwz r25, 0x294(r26)
/* 813B8B80 | 7F 23 CB 78 */	mr r3, r25
/* 813B8B84 | 4B FA 9C ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8B88 | 3B A0 00 01 */	li r29, 0x1
/* 813B8B8C | 93 B9 00 14 */	stw r29, 0x14(r25)
/* 813B8B90 | 83 3A 02 E4 */	lwz r25, 0x2e4(r26)
/* 813B8B94 | 7F 23 CB 78 */	mr r3, r25
/* 813B8B98 | 4B FA 9C D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8B9C | 93 B9 00 14 */	stw r29, 0x14(r25)
/* 813B8BA0 | 38 A0 00 0B */	li r5, 0xb
/* 813B8BA4 | 7F 43 D3 78 */	mr r3, r26
/* 813B8BA8 | 7F 64 DB 78 */	mr r4, r27
/* 813B8BAC | 80 1A 02 18 */	lwz r0, 0x218(r26)
/* 813B8BB0 | 90 BA 00 74 */	stw r5, 0x74(r26)
/* 813B8BB4 | 7F 85 E3 78 */	mr r5, r28
/* 813B8BB8 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B8BBC | 7D 1A 02 14 */	add r8, r26, r0
/* 813B8BC0 | 38 C8 02 24 */	addi r6, r8, 0x224
/* 813B8BC4 | 38 E8 02 2C */	addi r7, r8, 0x22c
/* 813B8BC8 | 39 08 02 34 */	addi r8, r8, 0x234
/* 813B8BCC | 48 00 11 F5 */	bl loadLayoutFileAsync__Q33ipl5scene12ChannelTitleFiiPPvPPQ33ipl4nand4FilePPv
/* 813B8BD0 | 80 1A 02 18 */	lwz r0, 0x218(r26)
/* 813B8BD4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B8BD8 | 7C 9A 02 14 */	add r4, r26, r0
/* 813B8BDC | 90 64 02 1C */	stw r3, 0x21c(r4)
/* 813B8BE0 | 7F 43 D3 78 */	mr r3, r26
/* 813B8BE4 | 4B FF D5 A9 */	bl createChanLayout__Q33ipl5scene12ChannelTitleFv
/* 813B8BE8 | 38 60 00 0A */	li r3, 0xa
/* 813B8BEC | 38 00 00 00 */	li r0, 0x0
/* 813B8BF0 | 90 7A 00 74 */	stw r3, 0x74(r26)
/* 813B8BF4 | 90 1A 00 78 */	stw r0, 0x78(r26)
/* 813B8BF8 | 48 00 03 A0 */	b .L_813B8F98
.L_813B8BFC:
/* 813B8BFC | 2C 00 00 0C */	cmpwi r0, 0xc
/* 813B8C00 | 40 82 00 7C */	bne .L_813B8C7C
/* 813B8C04 | 80 7A 02 90 */	lwz r3, 0x290(r26)
/* 813B8C08 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8C0C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8C10 | 41 82 03 88 */	beq .L_813B8F98
/* 813B8C14 | 80 1A 03 2C */	lwz r0, 0x32c(r26)
/* 813B8C18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B8C1C | 40 82 00 20 */	bne .L_813B8C3C
/* 813B8C20 | 80 7A 03 28 */	lwz r3, 0x328(r26)
/* 813B8C24 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B8C28 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813B8C2C | 7D 89 03 A6 */	mtctr r12
/* 813B8C30 | 4E 80 04 21 */	bctrl
/* 813B8C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B8C38 | 41 82 03 60 */	beq .L_813B8F98
.L_813B8C3C:
/* 813B8C3C | 83 3A 02 BC */	lwz r25, 0x2bc(r26)
/* 813B8C40 | 7F 23 CB 78 */	mr r3, r25
/* 813B8C44 | 4B FA 9C 2D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8C48 | 3B 60 00 01 */	li r27, 0x1
/* 813B8C4C | 93 79 00 14 */	stw r27, 0x14(r25)
/* 813B8C50 | 83 3A 02 E4 */	lwz r25, 0x2e4(r26)
/* 813B8C54 | 7F 23 CB 78 */	mr r3, r25
/* 813B8C58 | 4B FA 9C 19 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8C5C | 93 79 00 14 */	stw r27, 0x14(r25)
/* 813B8C60 | 7F 43 D3 78 */	mr r3, r26
/* 813B8C64 | 4B FF D5 29 */	bl createChanLayout__Q33ipl5scene12ChannelTitleFv
/* 813B8C68 | 38 60 00 0C */	li r3, 0xc
/* 813B8C6C | 38 00 00 00 */	li r0, 0x0
/* 813B8C70 | 90 7A 00 74 */	stw r3, 0x74(r26)
/* 813B8C74 | 90 1A 00 78 */	stw r0, 0x78(r26)
/* 813B8C78 | 48 00 03 20 */	b .L_813B8F98
.L_813B8C7C:
/* 813B8C7C | 2C 00 00 0F */	cmpwi r0, 0xf
/* 813B8C80 | 40 82 03 18 */	bne .L_813B8F98
/* 813B8C84 | 80 7A 02 90 */	lwz r3, 0x290(r26)
/* 813B8C88 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8C8C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8C90 | 41 82 03 08 */	beq .L_813B8F98
/* 813B8C94 | 83 3A 03 14 */	lwz r25, 0x314(r26)
/* 813B8C98 | 7F 23 CB 78 */	mr r3, r25
/* 813B8C9C | 4B FA 9B D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8CA0 | 38 00 00 01 */	li r0, 0x1
/* 813B8CA4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B8CA8 | 90 19 00 14 */	stw r0, 0x14(r25)
/* 813B8CAC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B8CB0 | 38 9F 06 B4 */	addi r4, r31, 0x6b4
/* 813B8CB4 | 4B FB 27 B9 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813B8CB8 | 38 60 00 0F */	li r3, 0xf
/* 813B8CBC | 38 00 00 00 */	li r0, 0x0
/* 813B8CC0 | 90 7A 00 74 */	stw r3, 0x74(r26)
/* 813B8CC4 | 90 1A 00 78 */	stw r0, 0x78(r26)
/* 813B8CC8 | 48 00 02 D0 */	b .L_813B8F98
.L_813B8CCC:
/* 813B8CCC | 80 7A 02 94 */	lwz r3, 0x294(r26)
/* 813B8CD0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8CD4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8CD8 | 41 82 02 C0 */	beq .L_813B8F98
/* 813B8CDC | 80 7A 02 E4 */	lwz r3, 0x2e4(r26)
/* 813B8CE0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8CE4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8CE8 | 41 82 02 B0 */	beq .L_813B8F98
/* 813B8CEC | 80 7A 02 88 */	lwz r3, 0x288(r26)
/* 813B8CF0 | 38 00 00 00 */	li r0, 0x0
/* 813B8CF4 | 38 80 00 00 */	li r4, 0x0
/* 813B8CF8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B8CFC | 80 7A 02 54 */	lwz r3, 0x254(r26)
/* 813B8D00 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B8D04 | 4B F8 B7 11 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B8D08 | 38 00 00 0B */	li r0, 0xb
/* 813B8D0C | 7F 43 D3 78 */	mr r3, r26
/* 813B8D10 | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8D14 | 4B FF F3 C1 */	bl initChanAnmAndSound__Q33ipl5scene12ChannelTitleFv
/* 813B8D18 | 7F 43 D3 78 */	mr r3, r26
/* 813B8D1C | 48 00 0D F9 */	bl changeStartButton__Q33ipl5scene12ChannelTitleFv
/* 813B8D20 | 48 00 02 78 */	b .L_813B8F98
.L_813B8D24:
/* 813B8D24 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 813B8D28 | 40 82 00 1C */	bne .L_813B8D44
/* 813B8D2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B8D30 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B8D34 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B8D38 | 88 03 1B 81 */	lbz r0, 0x1b81(r3)
/* 813B8D3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B8D40 | 41 82 02 58 */	beq .L_813B8F98
.L_813B8D44:
/* 813B8D44 | 83 3A 03 10 */	lwz r25, 0x310(r26)
/* 813B8D48 | 38 00 00 0E */	li r0, 0xe
/* 813B8D4C | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8D50 | 7F 23 CB 78 */	mr r3, r25
/* 813B8D54 | 4B FA 9B 1D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8D58 | 38 00 00 01 */	li r0, 0x1
/* 813B8D5C | 38 80 00 01 */	li r4, 0x1
/* 813B8D60 | 90 19 00 14 */	stw r0, 0x14(r25)
/* 813B8D64 | 80 7A 02 54 */	lwz r3, 0x254(r26)
/* 813B8D68 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B8D6C | 4B F8 B6 A9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B8D70 | 7F 43 D3 78 */	mr r3, r26
/* 813B8D74 | 48 00 0D A1 */	bl changeStartButton__Q33ipl5scene12ChannelTitleFv
/* 813B8D78 | 48 00 02 20 */	b .L_813B8F98
.L_813B8D7C:
/* 813B8D7C | 80 7A 02 BC */	lwz r3, 0x2bc(r26)
/* 813B8D80 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8D84 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8D88 | 41 82 02 10 */	beq .L_813B8F98
/* 813B8D8C | 80 7A 02 E4 */	lwz r3, 0x2e4(r26)
/* 813B8D90 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8D94 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8D98 | 41 82 02 00 */	beq .L_813B8F98
/* 813B8D9C | 80 7A 02 B0 */	lwz r3, 0x2b0(r26)
/* 813B8DA0 | 38 00 00 00 */	li r0, 0x0
/* 813B8DA4 | 38 80 00 00 */	li r4, 0x0
/* 813B8DA8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B8DAC | 80 7A 02 54 */	lwz r3, 0x254(r26)
/* 813B8DB0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B8DB4 | 4B F8 B6 61 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B8DB8 | 38 00 00 0D */	li r0, 0xd
/* 813B8DBC | 7F 43 D3 78 */	mr r3, r26
/* 813B8DC0 | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8DC4 | 4B FF F3 11 */	bl initChanAnmAndSound__Q33ipl5scene12ChannelTitleFv
/* 813B8DC8 | 7F 43 D3 78 */	mr r3, r26
/* 813B8DCC | 48 00 0D 49 */	bl changeStartButton__Q33ipl5scene12ChannelTitleFv
/* 813B8DD0 | 48 00 01 C8 */	b .L_813B8F98
.L_813B8DD4:
/* 813B8DD4 | 2C 1E 00 06 */	cmpwi r30, 0x6
/* 813B8DD8 | 41 82 01 C0 */	beq .L_813B8F98
/* 813B8DDC | 83 3A 03 10 */	lwz r25, 0x310(r26)
/* 813B8DE0 | 38 00 00 0E */	li r0, 0xe
/* 813B8DE4 | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8DE8 | 7F 23 CB 78 */	mr r3, r25
/* 813B8DEC | 4B FA 9A 85 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8DF0 | 38 00 00 01 */	li r0, 0x1
/* 813B8DF4 | 38 80 00 01 */	li r4, 0x1
/* 813B8DF8 | 90 19 00 14 */	stw r0, 0x14(r25)
/* 813B8DFC | 80 7A 02 54 */	lwz r3, 0x254(r26)
/* 813B8E00 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813B8E04 | 4B F8 B6 11 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B8E08 | 7F 43 D3 78 */	mr r3, r26
/* 813B8E0C | 48 00 0D 09 */	bl changeStartButton__Q33ipl5scene12ChannelTitleFv
/* 813B8E10 | 48 00 01 88 */	b .L_813B8F98
.L_813B8E14:
/* 813B8E14 | 80 7A 03 10 */	lwz r3, 0x310(r26)
/* 813B8E18 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8E1C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8E20 | 41 82 01 78 */	beq .L_813B8F98
/* 813B8E24 | 3F A0 81 09 */	lis r29, sSystem__Q23ipl3snd@ha
/* 813B8E28 | 38 80 00 00 */	li r4, 0x0
/* 813B8E2C | 38 7D 99 2C */	addi r3, r29, sSystem__Q23ipl3snd@l
/* 813B8E30 | 4B FB 33 C9 */	bl stopBannerSound__Q33ipl3snd6SystemFi
/* 813B8E34 | 80 9A 02 4C */	lwz r4, 0x24c(r26)
/* 813B8E38 | 38 7D 99 2C */	addi r3, r29, sSystem__Q23ipl3snd@l
/* 813B8E3C | 38 A0 00 00 */	li r5, 0x0
/* 813B8E40 | 4B FB 2C 29 */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
/* 813B8E44 | 80 7A 02 3C */	lwz r3, 0x23c(r26)
/* 813B8E48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B8E4C | 41 82 00 1C */	beq .L_813B8E68
/* 813B8E50 | 80 1A 03 2C */	lwz r0, 0x32c(r26)
/* 813B8E54 | 7C 03 00 40 */	cmplw r3, r0
/* 813B8E58 | 41 82 00 10 */	beq .L_813B8E68
/* 813B8E5C | 4B FB 1F A5 */	bl destroyHeap__Q33ipl6layout6ObjectFv
/* 813B8E60 | 38 00 00 00 */	li r0, 0x0
/* 813B8E64 | 90 1A 02 3C */	stw r0, 0x23c(r26)
.L_813B8E68:
/* 813B8E68 | 80 1A 02 18 */	lwz r0, 0x218(r26)
/* 813B8E6C | 7F 43 D3 78 */	mr r3, r26
/* 813B8E70 | 7F 64 DB 78 */	mr r4, r27
/* 813B8E74 | 7F 85 E3 78 */	mr r5, r28
/* 813B8E78 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B8E7C | 7D 1A 02 14 */	add r8, r26, r0
/* 813B8E80 | 38 C8 02 24 */	addi r6, r8, 0x224
/* 813B8E84 | 38 E8 02 2C */	addi r7, r8, 0x22c
/* 813B8E88 | 39 08 02 34 */	addi r8, r8, 0x234
/* 813B8E8C | 48 00 0F 35 */	bl loadLayoutFileAsync__Q33ipl5scene12ChannelTitleFiiPPvPPQ33ipl4nand4FilePPv
/* 813B8E90 | 80 1A 02 18 */	lwz r0, 0x218(r26)
/* 813B8E94 | 54 00 10 3A */	slwi r0, r0, 2
/* 813B8E98 | 7C 9A 02 14 */	add r4, r26, r0
/* 813B8E9C | 90 64 02 1C */	stw r3, 0x21c(r4)
/* 813B8EA0 | 7F 43 D3 78 */	mr r3, r26
/* 813B8EA4 | 4B FF D2 E9 */	bl createChanLayout__Q33ipl5scene12ChannelTitleFv
/* 813B8EA8 | 38 00 00 0E */	li r0, 0xe
/* 813B8EAC | 90 1A 00 78 */	stw r0, 0x78(r26)
/* 813B8EB0 | 48 00 00 E8 */	b .L_813B8F98
.L_813B8EB4:
/* 813B8EB4 | 80 7A 03 14 */	lwz r3, 0x314(r26)
/* 813B8EB8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8EBC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8EC0 | 41 82 00 D8 */	beq .L_813B8F98
/* 813B8EC4 | 83 3A 03 18 */	lwz r25, 0x318(r26)
/* 813B8EC8 | 7F 23 CB 78 */	mr r3, r25
/* 813B8ECC | 4B FA 99 A5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8ED0 | 38 60 00 01 */	li r3, 0x1
/* 813B8ED4 | 38 00 00 10 */	li r0, 0x10
/* 813B8ED8 | 90 79 00 14 */	stw r3, 0x14(r25)
/* 813B8EDC | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8EE0 | 48 00 00 B8 */	b .L_813B8F98
.L_813B8EE4:
/* 813B8EE4 | 2C 1E 00 07 */	cmpwi r30, 0x7
/* 813B8EE8 | 41 82 00 B0 */	beq .L_813B8F98
/* 813B8EEC | 80 7A 03 18 */	lwz r3, 0x318(r26)
/* 813B8EF0 | 38 00 00 00 */	li r0, 0x0
/* 813B8EF4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813B8EF8 | 83 3A 03 1C */	lwz r25, 0x31c(r26)
/* 813B8EFC | 7F 23 CB 78 */	mr r3, r25
/* 813B8F00 | 4B FA 99 71 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B8F04 | 38 00 00 01 */	li r0, 0x1
/* 813B8F08 | 90 19 00 14 */	stw r0, 0x14(r25)
/* 813B8F0C | 80 7A 02 54 */	lwz r3, 0x254(r26)
/* 813B8F10 | 80 9F 02 20 */	lwz r4, 0x220(r31)
/* 813B8F14 | 80 63 00 18 */	lwz r3, 0x18(r3)
/* 813B8F18 | 48 16 6F 25 */	bl fn_8151FE3C
/* 813B8F1C | 7C 7B 1B 78 */	mr r27, r3
/* 813B8F20 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813B8F24 | 4B FB 0F 11 */	bl "GetBeginIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B8F28 | 90 61 00 28 */	stw r3, 0x28(r1)
/* 813B8F2C | 48 00 00 20 */	b .L_813B8F4C
.L_813B8F30:
/* 813B8F30 | 80 61 00 28 */	lwz r3, 0x28(r1)
/* 813B8F34 | 38 80 00 01 */	li r4, 0x1
/* 813B8F38 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 813B8F3C | 4B F8 B4 D9 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813B8F40 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813B8F44 | 38 80 00 00 */	li r4, 0x0
/* 813B8F48 | 4B FF 98 8D */	bl "__pp__Q44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorFi"
.L_813B8F4C:
/* 813B8F4C | 38 7B 00 0C */	addi r3, r27, 0xc
/* 813B8F50 | 4B FB 0E ED */	bl "GetEndIter__Q34nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>Fv"
/* 813B8F54 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 813B8F58 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B8F5C | 90 61 00 08 */	stw r3, 0x8(r1)
/* 813B8F60 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813B8F64 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 813B8F68 | 4B FB 0E DD */	bl "__ne__Q24nw4r2utFQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8IteratorQ44nw4r2ut39LinkList<Q44nw4r3lyt6detail8PaneLink,0>8Iterator"
/* 813B8F6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B8F70 | 40 82 FF C0 */	bne .L_813B8F30
/* 813B8F74 | 38 00 00 11 */	li r0, 0x11
/* 813B8F78 | 90 1A 00 74 */	stw r0, 0x74(r26)
/* 813B8F7C | 48 00 00 1C */	b .L_813B8F98
.L_813B8F80:
/* 813B8F80 | 80 7A 03 1C */	lwz r3, 0x31c(r26)
/* 813B8F84 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 813B8F88 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813B8F8C | 41 82 00 0C */	beq .L_813B8F98
/* 813B8F90 | 38 00 00 02 */	li r0, 0x2
/* 813B8F94 | 90 1A 00 74 */	stw r0, 0x74(r26)
.L_813B8F98:
/* 813B8F98 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813B8F9C | 48 24 05 69 */	bl _restgpr_25
/* 813B8FA0 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813B8FA4 | 7C 08 03 A6 */	mtlr r0
/* 813B8FA8 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813B8FAC | 4E 80 00 20 */	blr
.endfn updateDiskState__Q33ipl5scene12ChannelTitleFii

# .text:0x4F80 | 0x813B8FB0 | size: 0x68
# ipl::scene::ChannelTitle::isDiskChannelByDraw(int, int)
.fn isDiskChannelByDraw__Q33ipl5scene12ChannelTitleFii, global
/* 813B8FB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B8FB4 | 7C 08 02 A6 */	mflr r0
/* 813B8FB8 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 813B8FBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B8FC0 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 813B8FC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B8FC8 | 3B E0 00 00 */	li r31, 0x0
/* 813B8FCC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813B8FD0 | 7C 7E 1B 78 */	mr r30, r3
/* 813B8FD4 | 80 66 00 84 */	lwz r3, 0x84(r6)
/* 813B8FD8 | 4B FF 92 4D */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B8FDC | 2C 03 00 0F */	cmpwi r3, 0xf
/* 813B8FE0 | 40 82 00 1C */	bne .L_813B8FFC
/* 813B8FE4 | 80 1E 00 74 */	lwz r0, 0x74(r30)
/* 813B8FE8 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813B8FEC | 41 82 00 10 */	beq .L_813B8FFC
/* 813B8FF0 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813B8FF4 | 41 82 00 08 */	beq .L_813B8FFC
/* 813B8FF8 | 3B E0 00 01 */	li r31, 0x1
.L_813B8FFC:
/* 813B8FFC | 7F E3 FB 78 */	mr r3, r31
/* 813B9000 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B9004 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813B9008 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B900C | 7C 08 03 A6 */	mtlr r0
/* 813B9010 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B9014 | 4E 80 00 20 */	blr
.endfn isDiskChannelByDraw__Q33ipl5scene12ChannelTitleFii

# .text:0x4FE8 | 0x813B9018 | size: 0xB0
# ipl::scene::ChannelTitle::checkNetSetting(int, int)
.fn checkNetSetting__Q33ipl5scene12ChannelTitleFii, global
/* 813B9018 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B901C | 7C 08 02 A6 */	mflr r0
/* 813B9020 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B9024 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B9028 | 48 24 04 A1 */	bl _savegpr_29
/* 813B902C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B9030 | 7C 9D 23 78 */	mr r29, r4
/* 813B9034 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B9038 | 7C BE 2B 78 */	mr r30, r5
/* 813B903C | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813B9040 | 4B FF 91 E5 */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B9044 | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813B9048 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B904C | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813B9050 | 40 82 00 54 */	bne .L_813B90A4
/* 813B9054 | 1C 9D 05 40 */	mulli r4, r29, 0x540
/* 813B9058 | 80 1F 00 84 */	lwz r0, 0x84(r31)
/* 813B905C | 1C 7E 00 70 */	mulli r3, r30, 0x70
/* 813B9060 | 7C 00 22 14 */	add r0, r0, r4
/* 813B9064 | 7C 60 1A 14 */	add r3, r0, r3
/* 813B9068 | 88 03 00 24 */	lbz r0, 0x24(r3)
/* 813B906C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9070 | 41 82 00 1C */	beq .L_813B908C
/* 813B9074 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 813B9078 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813B907C | 54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 813B9080 | 41 82 00 0C */	beq .L_813B908C
/* 813B9084 | 38 00 00 01 */	li r0, 0x1
/* 813B9088 | 48 00 00 08 */	b .L_813B9090
.L_813B908C:
/* 813B908C | 38 00 00 00 */	li r0, 0x0
.L_813B9090:
/* 813B9090 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9094 | 41 82 00 10 */	beq .L_813B90A4
/* 813B9098 | 48 04 28 55 */	bl getConnectEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 813B909C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B90A0 | 41 82 00 0C */	beq .L_813B90AC
.L_813B90A4:
/* 813B90A4 | 38 60 00 01 */	li r3, 0x1
/* 813B90A8 | 48 00 00 08 */	b .L_813B90B0
.L_813B90AC:
/* 813B90AC | 38 60 00 00 */	li r3, 0x0
.L_813B90B0:
/* 813B90B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B90B4 | 48 24 04 61 */	bl _restgpr_29
/* 813B90B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B90BC | 7C 08 03 A6 */	mtlr r0
/* 813B90C0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B90C4 | 4E 80 00 20 */	blr
.endfn checkNetSetting__Q33ipl5scene12ChannelTitleFii

# .text:0x5098 | 0x813B90C8 | size: 0x44
# ipl::scene::ChannelTitle::isSetParental()
.fn isSetParental__Q33ipl5scene12ChannelTitleFv, global
/* 813B90C8 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813B90CC | 7C 08 02 A6 */	mflr r0
/* 813B90D0 | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813B90D4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B90D8 | 48 1B 10 A1 */	bl fn_8156A178
/* 813B90DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B90E0 | 41 82 00 18 */	beq .L_813B90F8
/* 813B90E4 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813B90E8 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813B90EC | 41 82 00 0C */	beq .L_813B90F8
/* 813B90F0 | 38 60 00 01 */	li r3, 0x1
/* 813B90F4 | 48 00 00 08 */	b .L_813B90FC
.L_813B90F8:
/* 813B90F8 | 38 60 00 00 */	li r3, 0x0
.L_813B90FC:
/* 813B90FC | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813B9100 | 7C 08 03 A6 */	mtlr r0
/* 813B9104 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813B9108 | 4E 80 00 20 */	blr
.endfn isSetParental__Q33ipl5scene12ChannelTitleFv

# .text:0x50DC | 0x813B910C | size: 0xA4
# ipl::scene::ChannelTitle::startParentalDialog(int)
.fn startParentalDialog__Q33ipl5scene12ChannelTitleFi, global
/* 813B910C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B9110 | 7C 08 02 A6 */	mflr r0
/* 813B9114 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B9118 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B911C | 48 24 03 AD */	bl _savegpr_29
/* 813B9120 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B9124 | 7C 9E 23 78 */	mr r30, r4
/* 813B9128 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B912C | 7C 7D 1B 78 */	mr r29, r3
/* 813B9130 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B9134 | 38 80 00 05 */	li r4, 0x5
/* 813B9138 | 48 05 20 01 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B913C | 88 03 00 D5 */	lbz r0, 0xd5(r3)
/* 813B9140 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9144 | 41 82 00 2C */	beq .L_813B9170
/* 813B9148 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B914C | 38 80 00 05 */	li r4, 0x5
/* 813B9150 | 48 05 1F E9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B9154 | 38 80 00 1A */	li r4, 0x1a
/* 813B9158 | 4B FE 3A 01 */	bl iplButton_8139CB58
/* 813B915C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B9160 | 38 80 00 05 */	li r4, 0x5
/* 813B9164 | 48 05 1F D5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B9168 | 38 80 00 19 */	li r4, 0x19
/* 813B916C | 4B FE 39 ED */	bl iplButton_8139CB58
.L_813B9170:
/* 813B9170 | 7F A3 EB 78 */	mr r3, r29
/* 813B9174 | 7F A5 EB 78 */	mr r5, r29
/* 813B9178 | 7F C7 F3 78 */	mr r7, r30
/* 813B917C | 38 80 00 1B */	li r4, 0x1b
/* 813B9180 | 38 C0 00 00 */	li r6, 0x0
/* 813B9184 | 48 05 0D 05 */	bl fn_81409E88
/* 813B9188 | 38 60 00 00 */	li r3, 0x0
/* 813B918C | 38 00 00 0B */	li r0, 0xb
/* 813B9190 | 90 7D 00 70 */	stw r3, 0x70(r29)
/* 813B9194 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B9198 | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813B919C | 48 24 03 79 */	bl _restgpr_29
/* 813B91A0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B91A4 | 7C 08 03 A6 */	mtlr r0
/* 813B91A8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B91AC | 4E 80 00 20 */	blr
.endfn startParentalDialog__Q33ipl5scene12ChannelTitleFi

# .text:0x5180 | 0x813B91B0 | size: 0xE0
# ipl::scene::ChannelTitle::searchChannel(int, int*, int*) const
.fn searchChannel__Q33ipl5scene12ChannelTitleCFiPiPi, global
/* 813B91B0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B91B4 | 7C 08 02 A6 */	mflr r0
/* 813B91B8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B91BC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B91C0 | 48 24 03 09 */	bl _savegpr_29
/* 813B91C4 | 81 63 00 60 */	lwz r11, 0x60(r3)
/* 813B91C8 | 2C 04 00 01 */	cmpwi r4, 0x1
/* 813B91CC | 80 83 00 64 */	lwz r4, 0x64(r3)
/* 813B91D0 | 39 00 00 01 */	li r8, 0x1
/* 813B91D4 | 1C 0B 00 0C */	mulli r0, r11, 0xc
/* 813B91D8 | 7D 84 02 14 */	add r12, r4, r0
/* 813B91DC | 40 82 00 08 */	bne .L_813B91E4
/* 813B91E0 | 39 00 FF FF */	li r8, -0x1
.L_813B91E4:
/* 813B91E4 | 80 03 00 68 */	lwz r0, 0x68(r3)
/* 813B91E8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B91EC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B91F0 | 7F EC 42 14 */	add r31, r12, r8
/* 813B91F4 | 1D 40 00 0C */	mulli r10, r0, 0xc
/* 813B91F8 | 81 24 00 84 */	lwz r9, 0x84(r4)
/* 813B91FC | 38 E0 00 0C */	li r7, 0xc
.L_813B9200:
/* 813B9200 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B9204 | 40 80 00 08 */	bge .L_813B920C
/* 813B9208 | 3B EA FF FF */	subi r31, r10, 0x1
.L_813B920C:
/* 813B920C | 7C 1F 50 00 */	cmpw r31, r10
/* 813B9210 | 41 80 00 08 */	blt .L_813B9218
/* 813B9214 | 3B E0 00 00 */	li r31, 0x0
.L_813B9218:
/* 813B9218 | 7C 1F 60 00 */	cmpw r31, r12
/* 813B921C | 40 82 00 18 */	bne .L_813B9234
/* 813B9220 | 91 65 00 00 */	stw r11, 0x0(r5)
/* 813B9224 | 38 80 00 00 */	li r4, 0x0
/* 813B9228 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 813B922C | 90 06 00 00 */	stw r0, 0x0(r6)
/* 813B9230 | 48 00 00 44 */	b .L_813B9274
.L_813B9234:
/* 813B9234 | 7F DF 3B D6 */	divw r30, r31, r7
/* 813B9238 | 7C 1E 39 D6 */	mullw r0, r30, r7
/* 813B923C | 7F A0 F8 50 */	subf r29, r0, r31
/* 813B9240 | 1C 1E 05 40 */	mulli r0, r30, 0x540
/* 813B9244 | 1C 9D 00 70 */	mulli r4, r29, 0x70
/* 813B9248 | 7C 09 02 14 */	add r0, r9, r0
/* 813B924C | 7C 84 02 14 */	add r4, r4, r0
/* 813B9250 | 88 04 00 24 */	lbz r0, 0x24(r4)
/* 813B9254 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9258 | 41 82 00 14 */	beq .L_813B926C
/* 813B925C | 93 C5 00 00 */	stw r30, 0x0(r5)
/* 813B9260 | 38 80 00 01 */	li r4, 0x1
/* 813B9264 | 93 A6 00 00 */	stw r29, 0x0(r6)
/* 813B9268 | 48 00 00 0C */	b .L_813B9274
.L_813B926C:
/* 813B926C | 7F FF 42 14 */	add r31, r31, r8
/* 813B9270 | 4B FF FF 90 */	b .L_813B9200
.L_813B9274:
/* 813B9274 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B9278 | 7C 83 23 78 */	mr r3, r4
/* 813B927C | 48 24 02 99 */	bl _restgpr_29
/* 813B9280 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B9284 | 7C 08 03 A6 */	mtlr r0
/* 813B9288 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B928C | 4E 80 00 20 */	blr
.endfn searchChannel__Q33ipl5scene12ChannelTitleCFiPiPi

# .text:0x5260 | 0x813B9290 | size: 0x1F8
# ipl::scene::ChannelTitle::startChangeChannel(int, int)
.fn startChangeChannel__Q33ipl5scene12ChannelTitleFii, global
/* 813B9290 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813B9294 | 7C 08 02 A6 */	mflr r0
/* 813B9298 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813B929C | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B92A0 | 48 24 02 1D */	bl _savegpr_26
/* 813B92A4 | 3F 60 81 09 */	lis r27, smArg__Q23ipl6System@ha
/* 813B92A8 | 7C 7D 1B 78 */	mr r29, r3
/* 813B92AC | 3B 7B 90 08 */	addi r27, r27, smArg__Q23ipl6System@l
/* 813B92B0 | 7C 9E 23 78 */	mr r30, r4
/* 813B92B4 | 80 7B 00 84 */	lwz r3, 0x84(r27)
/* 813B92B8 | 7C BF 2B 78 */	mr r31, r5
/* 813B92BC | 4B FF 8F 69 */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B92C0 | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813B92C4 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B92C8 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813B92CC | 41 82 00 74 */	beq .L_813B9340
/* 813B92D0 | 80 7B 00 A8 */	lwz r3, 0xa8(r27)
/* 813B92D4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 813B92D8 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813B92DC | 40 82 00 10 */	bne .L_813B92EC
/* 813B92E0 | 38 00 00 0B */	li r0, 0xb
/* 813B92E4 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813B92E8 | 48 00 00 58 */	b .L_813B9340
.L_813B92EC:
/* 813B92EC | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813B92F0 | 40 82 00 10 */	bne .L_813B9300
/* 813B92F4 | 38 00 00 0D */	li r0, 0xd
/* 813B92F8 | 90 1D 00 74 */	stw r0, 0x74(r29)
/* 813B92FC | 48 00 00 44 */	b .L_813B9340
.L_813B9300:
/* 813B9300 | 80 7D 00 C0 */	lwz r3, 0xc0(r29)
/* 813B9304 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813B9308 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813B930C | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 813B9310 | 40 82 00 28 */	bne .L_813B9338
/* 813B9314 | 83 7D 00 BC */	lwz r27, 0xbc(r29)
/* 813B9318 | C0 1B 00 04 */	lfs f0, 0x4(r27)
/* 813B931C | C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 813B9320 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 813B9324 | 41 82 00 14 */	beq .L_813B9338
/* 813B9328 | 7F 63 DB 78 */	mr r3, r27
/* 813B932C | 4B FA 95 45 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B9330 | 38 00 00 01 */	li r0, 0x1
/* 813B9334 | 90 1B 00 14 */	stw r0, 0x14(r27)
.L_813B9338:
/* 813B9338 | 38 00 00 00 */	li r0, 0x0
/* 813B933C | 90 1D 00 74 */	stw r0, 0x74(r29)
.L_813B9340:
/* 813B9340 | 83 9D 01 F0 */	lwz r28, 0x1f0(r29)
/* 813B9344 | 7F 83 E3 78 */	mr r3, r28
/* 813B9348 | 4B FA 95 29 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B934C | 3B 60 00 01 */	li r27, 0x1
/* 813B9350 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B9354 | 93 7C 00 14 */	stw r27, 0x14(r28)
/* 813B9358 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B935C | 7F C4 F3 78 */	mr r4, r30
/* 813B9360 | 7F E5 FB 78 */	mr r5, r31
/* 813B9364 | 83 43 00 84 */	lwz r26, 0x84(r3)
/* 813B9368 | 7F 43 D3 78 */	mr r3, r26
/* 813B936C | 4B F7 F9 0D */	bl checkNeedUpdate__Q33ipl7channel7ManagerCFii
/* 813B9370 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B9374 | 7C 7C 1B 78 */	mr r28, r3
/* 813B9378 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B937C | 7F 43 D3 78 */	mr r3, r26
/* 813B9380 | 4B F7 F8 F9 */	bl checkNeedUpdate__Q33ipl7channel7ManagerCFii
/* 813B9384 | 7C 03 E0 40 */	cmplw r3, r28
/* 813B9388 | 41 82 00 14 */	beq .L_813B939C
/* 813B938C | 83 9D 01 C0 */	lwz r28, 0x1c0(r29)
/* 813B9390 | 7F 83 E3 78 */	mr r3, r28
/* 813B9394 | 4B FA 94 DD */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B9398 | 93 7C 00 14 */	stw r27, 0x14(r28)
.L_813B939C:
/* 813B939C | 80 1D 03 84 */	lwz r0, 0x384(r29)
/* 813B93A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B93A4 | 41 82 00 0C */	beq .L_813B93B0
/* 813B93A8 | 38 00 00 01 */	li r0, 0x1
/* 813B93AC | 98 1D 03 88 */	stb r0, 0x388(r29)
.L_813B93B0:
/* 813B93B0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B93B4 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B93B8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B93BC | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B93C0 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B93C4 | 4B F7 FA F1 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813B93C8 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813B93CC | 40 82 00 10 */	bne .L_813B93DC
/* 813B93D0 | 7F A3 EB 78 */	mr r3, r29
/* 813B93D4 | 38 80 00 02 */	li r4, 0x2
/* 813B93D8 | 48 00 16 0D */	bl updateLockedMsg__Q33ipl5scene12ChannelTitleFi
.L_813B93DC:
/* 813B93DC | 93 DD 00 60 */	stw r30, 0x60(r29)
/* 813B93E0 | 7F C3 F3 78 */	mr r3, r30
/* 813B93E4 | 7F E4 FB 78 */	mr r4, r31
/* 813B93E8 | 93 FD 00 64 */	stw r31, 0x64(r29)
/* 813B93EC | 4B FF 47 BD */	bl setCurrentChannel__Q33ipl7channel7ManagerFii
/* 813B93F0 | 7F A3 EB 78 */	mr r3, r29
/* 813B93F4 | 48 00 15 65 */	bl startGetTicketLimitTask__Q33ipl5scene12ChannelTitleFv
/* 813B93F8 | 80 1D 02 18 */	lwz r0, 0x218(r29)
/* 813B93FC | 7F A3 EB 78 */	mr r3, r29
/* 813B9400 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B9404 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813B9408 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B940C | 54 00 10 3A */	slwi r0, r0, 2
/* 813B9410 | 7D 1D 02 14 */	add r8, r29, r0
/* 813B9414 | 38 C8 02 24 */	addi r6, r8, 0x224
/* 813B9418 | 38 E8 02 2C */	addi r7, r8, 0x22c
/* 813B941C | 39 08 02 34 */	addi r8, r8, 0x234
/* 813B9420 | 48 00 09 A1 */	bl loadLayoutFileAsync__Q33ipl5scene12ChannelTitleFiiPPvPPQ33ipl4nand4FilePPv
/* 813B9424 | 80 1D 02 18 */	lwz r0, 0x218(r29)
/* 813B9428 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813B942C | 54 00 10 3A */	slwi r0, r0, 2
/* 813B9430 | 7C 9D 02 14 */	add r4, r29, r0
/* 813B9434 | 90 64 02 1C */	stw r3, 0x21c(r4)
/* 813B9438 | 38 61 00 14 */	addi r3, r1, 0x14
/* 813B943C | 80 9D 02 00 */	lwz r4, 0x200(r29)
/* 813B9440 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B9444 | 4B FF 4B 35 */	bl getDispChanTrans__Q33ipl5scene13ChannelSelectCFi
/* 813B9448 | C0 01 00 14 */	lfs f0, 0x14(r1)
/* 813B944C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B9450 | 80 9D 02 00 */	lwz r4, 0x200(r29)
/* 813B9454 | D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 813B9458 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B945C | 4B FF 4B 1D */	bl getDispChanTrans__Q33ipl5scene13ChannelSelectCFi
/* 813B9460 | C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813B9464 | 38 00 00 08 */	li r0, 0x8
/* 813B9468 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813B946C | D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 813B9470 | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813B9474 | 48 24 00 95 */	bl _restgpr_26
/* 813B9478 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813B947C | 7C 08 03 A6 */	mtlr r0
/* 813B9480 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813B9484 | 4E 80 00 20 */	blr
.endfn startChangeChannel__Q33ipl5scene12ChannelTitleFii

# .text:0x5458 | 0x813B9488 | size: 0x278
# ipl::scene::ChannelTitle::reserveNextScene()
.fn reserveNextScene__Q33ipl5scene12ChannelTitleFv, global
/* 813B9488 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B948C | 7C 08 02 A6 */	mflr r0
/* 813B9490 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B9494 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B9498 | 48 24 00 2D */	bl _savegpr_28
/* 813B949C | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813B94A0 | 7C 7F 1B 78 */	mr r31, r3
/* 813B94A4 | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813B94A8 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813B94AC | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B94B0 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B94B4 | 4B FF 8D 71 */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B94B8 | 3B C0 00 00 */	li r30, 0x0
/* 813B94BC | 7C 7C 1B 78 */	mr r28, r3
/* 813B94C0 | 93 DF 00 70 */	stw r30, 0x70(r31)
/* 813B94C4 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B94C8 | 9B DF 03 7C */	stb r30, 0x37c(r31)
/* 813B94CC | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B94D0 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B94D4 | 4B FF 8D 51 */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B94D8 | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813B94DC | 7C 00 00 34 */	cntlzw r0, r0
/* 813B94E0 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813B94E4 | 41 82 00 B8 */	beq .L_813B959C
/* 813B94E8 | 80 1F 00 74 */	lwz r0, 0x74(r31)
/* 813B94EC | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813B94F0 | 40 82 00 60 */	bne .L_813B9550
/* 813B94F4 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813B94F8 | 4B FA 76 09 */	bl checkParentalControl__Q33ipl3bs27ManagerFv
/* 813B94FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9500 | 41 82 00 40 */	beq .L_813B9540
/* 813B9504 | 7F E3 FB 78 */	mr r3, r31
/* 813B9508 | 38 80 00 0F */	li r4, 0xf
/* 813B950C | 48 00 02 F1 */	bl prepareForBoot1__Q33ipl5scene12ChannelTitleFi
/* 813B9510 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813B9514 | 4B FA 75 A5 */	bl reserveRVLGame__Q33ipl3bs27ManagerFv
/* 813B9518 | 9B DF 03 60 */	stb r30, 0x360(r31)
/* 813B951C | 3C 80 81 3C */	lis r4, iplChannelTitle_813BA684@ha
/* 813B9520 | 7F E5 FB 78 */	mr r5, r31
/* 813B9524 | 38 C0 00 00 */	li r6, 0x0
/* 813B9528 | 80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 813B952C | 38 84 A6 84 */	addi r4, r4, iplChannelTitle_813BA684@l
/* 813B9530 | 48 23 ED 19 */	bl fn_815F8248
/* 813B9534 | 38 00 00 0E */	li r0, 0xe
/* 813B9538 | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B953C | 48 00 00 54 */	b .L_813B9590
.L_813B9540:
/* 813B9540 | 7F E3 FB 78 */	mr r3, r31
/* 813B9544 | 38 80 00 00 */	li r4, 0x0
/* 813B9548 | 4B FF FB C5 */	bl startParentalDialog__Q33ipl5scene12ChannelTitleFi
/* 813B954C | 48 00 00 44 */	b .L_813B9590
.L_813B9550:
/* 813B9550 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813B9554 | 40 82 00 3C */	bne .L_813B9590
/* 813B9558 | 7F E3 FB 78 */	mr r3, r31
/* 813B955C | 38 80 00 0F */	li r4, 0xf
/* 813B9560 | 48 00 02 9D */	bl prepareForBoot1__Q33ipl5scene12ChannelTitleFi
/* 813B9564 | 80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 813B9568 | 4B FA 75 5D */	bl reserveGCGame__Q33ipl3bs27ManagerFv
/* 813B956C | 9B DF 03 60 */	stb r30, 0x360(r31)
/* 813B9570 | 3C 80 81 3C */	lis r4, iplChannelTitle_813BA684@ha
/* 813B9574 | 7F E5 FB 78 */	mr r5, r31
/* 813B9578 | 38 C0 00 00 */	li r6, 0x0
/* 813B957C | 80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 813B9580 | 38 84 A6 84 */	addi r4, r4, iplChannelTitle_813BA684@l
/* 813B9584 | 48 23 EC C5 */	bl fn_815F8248
/* 813B9588 | 38 00 00 0E */	li r0, 0xe
/* 813B958C | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813B9590:
/* 813B9590 | 38 00 00 0F */	li r0, 0xf
/* 813B9594 | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813B9598 | 48 00 01 50 */	b .L_813B96E8
.L_813B959C:
/* 813B959C | 2C 1C 00 0E */	cmpwi r28, 0xe
/* 813B95A0 | 40 82 00 E4 */	bne .L_813B9684
/* 813B95A4 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B95A8 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B95AC | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B95B0 | 4B F7 F6 C9 */	bl checkNeedUpdate__Q33ipl7channel7ManagerCFii
/* 813B95B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B95B8 | 41 82 00 3C */	beq .L_813B95F4
/* 813B95BC | 7F E3 FB 78 */	mr r3, r31
/* 813B95C0 | 4B FF FB 09 */	bl isSetParental__Q33ipl5scene12ChannelTitleFv
/* 813B95C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B95C8 | 41 82 00 14 */	beq .L_813B95DC
/* 813B95CC | 7F E3 FB 78 */	mr r3, r31
/* 813B95D0 | 38 80 00 00 */	li r4, 0x0
/* 813B95D4 | 4B FF FB 39 */	bl startParentalDialog__Q33ipl5scene12ChannelTitleFi
/* 813B95D8 | 48 00 00 10 */	b .L_813B95E8
.L_813B95DC:
/* 813B95DC | 7F E3 FB 78 */	mr r3, r31
/* 813B95E0 | 38 80 00 01 */	li r4, 0x1
/* 813B95E4 | 48 00 01 1D */	bl reserveSettingScene__Q33ipl5scene12ChannelTitleFb
.L_813B95E8:
/* 813B95E8 | 38 00 00 12 */	li r0, 0x12
/* 813B95EC | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813B95F0 | 48 00 00 F8 */	b .L_813B96E8
.L_813B95F4:
/* 813B95F4 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B95F8 | 7F E3 FB 78 */	mr r3, r31
/* 813B95FC | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B9600 | 4B FF FA 19 */	bl checkNetSetting__Q33ipl5scene12ChannelTitleFii
/* 813B9604 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9608 | 40 82 00 1C */	bne .L_813B9624
/* 813B960C | 7F E3 FB 78 */	mr r3, r31
/* 813B9610 | 38 80 00 00 */	li r4, 0x0
/* 813B9614 | 48 00 00 ED */	bl reserveSettingScene__Q33ipl5scene12ChannelTitleFb
/* 813B9618 | 38 00 00 12 */	li r0, 0x12
/* 813B961C | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813B9620 | 48 00 00 C8 */	b .L_813B96E8
.L_813B9624:
/* 813B9624 | 80 7D 00 B4 */	lwz r3, 0xb4(r29)
/* 813B9628 | 4B F8 EC F1 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 813B962C | 9B DF 03 60 */	stb r30, 0x360(r31)
/* 813B9630 | 3C 80 81 3C */	lis r4, getTmdTask__Q33ipl5scene12ChannelTitleFPv@ha
/* 813B9634 | 7F E5 FB 78 */	mr r5, r31
/* 813B9638 | 38 C0 00 00 */	li r6, 0x0
/* 813B963C | B3 DF 03 62 */	sth r30, 0x362(r31)
/* 813B9640 | 38 84 A5 68 */	addi r4, r4, getTmdTask__Q33ipl5scene12ChannelTitleFPv@l
/* 813B9644 | 80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 813B9648 | 48 23 EC 01 */	bl fn_815F8248
/* 813B964C | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B9650 | 80 9F 00 60 */	lwz r4, 0x60(r31)
/* 813B9654 | 80 BF 00 64 */	lwz r5, 0x64(r31)
/* 813B9658 | 4B F7 F8 5D */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813B965C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9660 | 40 82 00 10 */	bne .L_813B9670
/* 813B9664 | 38 00 00 11 */	li r0, 0x11
/* 813B9668 | 90 1F 00 6C */	stw r0, 0x6c(r31)
/* 813B966C | 48 00 00 0C */	b .L_813B9678
.L_813B9670:
/* 813B9670 | 38 00 00 21 */	li r0, 0x21
/* 813B9674 | 90 1F 00 6C */	stw r0, 0x6c(r31)
.L_813B9678:
/* 813B9678 | 38 00 00 0E */	li r0, 0xe
/* 813B967C | 90 1F 00 58 */	stw r0, 0x58(r31)
/* 813B9680 | 48 00 00 68 */	b .L_813B96E8
.L_813B9684:
/* 813B9684 | 7F E3 FB 78 */	mr r3, r31
/* 813B9688 | 7F 84 E3 78 */	mr r4, r28
/* 813B968C | 38 A0 00 00 */	li r5, 0x0
/* 813B9690 | 48 05 09 05 */	bl fn_81409F94
/* 813B9694 | 3C 60 81 09 */	lis r3, sBannerSoundPlayer__Q23ipl3snd@ha
/* 813B9698 | 88 03 9F 68 */	lbz r0, sBannerSoundPlayer__Q23ipl3snd@l(r3)
/* 813B969C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B96A0 | 41 82 00 14 */	beq .L_813B96B4
/* 813B96A4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B96A8 | 38 80 00 1C */	li r4, 0x1c
/* 813B96AC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B96B0 | 4B FB 2B 49 */	bl stopBannerSound__Q33ipl3snd6SystemFi
.L_813B96B4:
/* 813B96B4 | 80 9F 02 4C */	lwz r4, 0x24c(r31)
/* 813B96B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813B96BC | 41 82 00 20 */	beq .L_813B96DC
/* 813B96C0 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 813B96C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B96C8 | 41 82 00 14 */	beq .L_813B96DC
/* 813B96CC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813B96D0 | 38 A0 00 1C */	li r5, 0x1c
/* 813B96D4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813B96D8 | 4B FB 23 91 */	bl stopSE__Q33ipl3snd6SystemFPQ34nw4r3snd11SoundHandlei
.L_813B96DC:
/* 813B96DC | 38 00 00 05 */	li r0, 0x5
/* 813B96E0 | 93 9F 00 6C */	stw r28, 0x6c(r31)
/* 813B96E4 | 90 1F 00 58 */	stw r0, 0x58(r31)
.L_813B96E8:
/* 813B96E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B96EC | 48 23 FE 25 */	bl _restgpr_28
/* 813B96F0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B96F4 | 7C 08 03 A6 */	mtlr r0
/* 813B96F8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B96FC | 4E 80 00 20 */	blr
.endfn reserveNextScene__Q33ipl5scene12ChannelTitleFv

# .text:0x56D0 | 0x813B9700 | size: 0xFC
# ipl::scene::ChannelTitle::reserveSettingScene(bool)
.fn reserveSettingScene__Q33ipl5scene12ChannelTitleFb, global
/* 813B9700 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B9704 | 7C 08 02 A6 */	mflr r0
/* 813B9708 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B970C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B9710 | 48 23 FD B9 */	bl _savegpr_29
/* 813B9714 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B9718 | 7C 7D 1B 78 */	mr r29, r3
/* 813B971C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B9720 | 7C 9E 23 78 */	mr r30, r4
/* 813B9724 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813B9728 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B972C | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B9730 | 4B F7 F5 49 */	bl checkNeedUpdate__Q33ipl7channel7ManagerCFii
/* 813B9734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9738 | 41 82 00 20 */	beq .L_813B9758
/* 813B973C | 7F A3 EB 78 */	mr r3, r29
/* 813B9740 | 38 80 00 12 */	li r4, 0x12
/* 813B9744 | 38 A0 00 03 */	li r5, 0x3
/* 813B9748 | 48 05 08 4D */	bl fn_81409F94
/* 813B974C | 38 00 00 07 */	li r0, 0x7
/* 813B9750 | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813B9754 | 48 00 00 90 */	b .L_813B97E4
.L_813B9758:
/* 813B9758 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813B975C | 41 82 00 20 */	beq .L_813B977C
/* 813B9760 | 7F A3 EB 78 */	mr r3, r29
/* 813B9764 | 38 80 00 12 */	li r4, 0x12
/* 813B9768 | 38 A0 00 01 */	li r5, 0x1
/* 813B976C | 48 05 08 29 */	bl fn_81409F94
/* 813B9770 | 38 00 00 07 */	li r0, 0x7
/* 813B9774 | 90 1D 00 58 */	stw r0, 0x58(r29)
/* 813B9778 | 48 00 00 6C */	b .L_813B97E4
.L_813B977C:
/* 813B977C | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B9780 | 38 80 00 05 */	li r4, 0x5
/* 813B9784 | 48 05 19 B5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B9788 | 88 03 00 D5 */	lbz r0, 0xd5(r3)
/* 813B978C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9790 | 41 82 00 2C */	beq .L_813B97BC
/* 813B9794 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B9798 | 38 80 00 05 */	li r4, 0x5
/* 813B979C | 48 05 19 9D */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B97A0 | 38 80 00 1A */	li r4, 0x1a
/* 813B97A4 | 4B FE 33 B5 */	bl iplButton_8139CB58
/* 813B97A8 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 813B97AC | 38 80 00 05 */	li r4, 0x5
/* 813B97B0 | 48 05 19 89 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813B97B4 | 38 80 00 19 */	li r4, 0x19
/* 813B97B8 | 4B FE 33 A1 */	bl iplButton_8139CB58
.L_813B97BC:
/* 813B97BC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B97C0 | 38 80 01 43 */	li r4, 0x143
/* 813B97C4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B97C8 | 38 A0 01 46 */	li r5, 0x146
/* 813B97CC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 813B97D0 | 38 C0 00 25 */	li r6, 0x25
/* 813B97D4 | 38 E0 00 00 */	li r7, 0x0
/* 813B97D8 | 4B F8 D2 FD */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 813B97DC | 38 00 00 0C */	li r0, 0xc
/* 813B97E0 | 90 1D 00 58 */	stw r0, 0x58(r29)
.L_813B97E4:
/* 813B97E4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B97E8 | 48 23 FD 2D */	bl _restgpr_29
/* 813B97EC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B97F0 | 7C 08 03 A6 */	mtlr r0
/* 813B97F4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B97F8 | 4E 80 00 20 */	blr
.endfn reserveSettingScene__Q33ipl5scene12ChannelTitleFb

# .text:0x57CC | 0x813B97FC | size: 0xE4
# ipl::scene::ChannelTitle::prepareForBoot1(int)
.fn prepareForBoot1__Q33ipl5scene12ChannelTitleFi, global
/* 813B97FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B9800 | 7C 08 02 A6 */	mflr r0
/* 813B9804 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B9808 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B980C | 48 23 FC BD */	bl _savegpr_29
/* 813B9810 | 7C 7D 1B 78 */	mr r29, r3
/* 813B9814 | 7C 9F 23 78 */	mr r31, r4
/* 813B9818 | 3B C0 00 00 */	li r30, 0x0
.L_813B981C:
/* 813B981C | 7F C3 F3 78 */	mr r3, r30
/* 813B9820 | 4B F7 C1 A9 */	bl getController__Q23ipl6SystemFi
/* 813B9824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9828 | 41 82 00 14 */	beq .L_813B983C
/* 813B982C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B9830 | 81 8C 00 38 */	lwz r12, 0x38(r12)
/* 813B9834 | 7D 89 03 A6 */	mtctr r12
/* 813B9838 | 4E 80 04 21 */	bctrl
.L_813B983C:
/* 813B983C | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813B9840 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 813B9844 | 41 80 FF D8 */	blt .L_813B981C
/* 813B9848 | 2C 1F 00 0F */	cmpwi r31, 0xf
/* 813B984C | 41 82 00 14 */	beq .L_813B9860
/* 813B9850 | 2C 1F 00 11 */	cmpwi r31, 0x11
/* 813B9854 | 41 82 00 0C */	beq .L_813B9860
/* 813B9858 | 2C 1F 00 21 */	cmpwi r31, 0x21
/* 813B985C | 40 82 00 14 */	bne .L_813B9870
.L_813B9860:
/* 813B9860 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B9864 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B9868 | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 813B986C | 4B F8 EA AD */	bl disable__Q23ipl14HomeButtonMenuFv
.L_813B9870:
/* 813B9870 | 2C 1F 00 11 */	cmpwi r31, 0x11
/* 813B9874 | 41 82 00 0C */	beq .L_813B9880
/* 813B9878 | 2C 1F 00 21 */	cmpwi r31, 0x21
/* 813B987C | 40 82 00 4C */	bne .L_813B98C8
.L_813B9880:
/* 813B9880 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B9884 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B9888 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B988C | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813B9890 | 4B F9 E5 0D */	bl setPrevPage__Q33ipl8savedata7ManagerFi
/* 813B9894 | 83 DF 00 94 */	lwz r30, 0x94(r31)
/* 813B9898 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813B989C | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813B98A0 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813B98A4 | 4B F7 EA 05 */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813B98A8 | 7C 65 1B 78 */	mr r5, r3
/* 813B98AC | 7C 86 23 78 */	mr r6, r4
/* 813B98B0 | 7F C3 F3 78 */	mr r3, r30
/* 813B98B4 | 4B F9 FE 05 */	bl iplSavedata_813596B8
/* 813B98B8 | 80 7F 00 94 */	lwz r3, 0x94(r31)
/* 813B98BC | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813B98C0 | 4B F9 E5 75 */	bl flushAsync__Q33ipl8savedata7ManagerFPQ23EGG4Heap
/* 813B98C4 | 90 7D 03 44 */	stw r3, 0x344(r29)
.L_813B98C8:
/* 813B98C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B98CC | 48 23 FC 49 */	bl _restgpr_29
/* 813B98D0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B98D4 | 7C 08 03 A6 */	mtlr r0
/* 813B98D8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B98DC | 4E 80 00 20 */	blr
.endfn prepareForBoot1__Q33ipl5scene12ChannelTitleFi

# .text:0x58B0 | 0x813B98E0 | size: 0x98
# ipl::scene::ChannelTitle::prepareForBoot2(int)
.fn prepareForBoot2__Q33ipl5scene12ChannelTitleFi, global
/* 813B98E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B98E4 | 7C 08 02 A6 */	mflr r0
/* 813B98E8 | 2C 04 00 11 */	cmpwi r4, 0x11
/* 813B98EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B98F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B98F4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B98F8 | 40 82 00 14 */	bne .L_813B990C
/* 813B98FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B9900 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B9904 | 80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 813B9908 | 4B FA 71 D1 */	bl abort__Q33ipl3bs27ManagerFv
.L_813B990C:
/* 813B990C | 38 60 00 01 */	li r3, 0x1
/* 813B9910 | 48 1B FD F5 */	bl __WPADReconnect
/* 813B9914 | 4B F7 A3 75 */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 813B9918 | 48 1B 0F 7D */	bl fn_8156A894
/* 813B991C | 7C 80 1B 79 */	or. r0, r4, r3
/* 813B9920 | 90 9F 03 6C */	stw r4, 0x36c(r31)
/* 813B9924 | 90 7F 03 68 */	stw r3, 0x368(r31)
/* 813B9928 | 41 82 00 34 */	beq .L_813B995C
/* 813B992C | 38 80 00 00 */	li r4, 0x0
/* 813B9930 | 38 60 00 00 */	li r3, 0x0
/* 813B9934 | 48 1B 0F D9 */	bl fn_8156A90C
/* 813B9938 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B993C | 3C 80 81 3C */	lis r4, iplChannelTitle_813BA784@ha
/* 813B9940 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B9944 | 7F E5 FB 78 */	mr r5, r31
/* 813B9948 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 813B994C | 38 84 A7 84 */	addi r4, r4, iplChannelTitle_813BA784@l
/* 813B9950 | 38 C0 00 00 */	li r6, 0x0
/* 813B9954 | 48 23 E8 F5 */	bl fn_815F8248
/* 813B9958 | 48 00 00 0C */	b .L_813B9964
.L_813B995C:
/* 813B995C | 38 00 00 01 */	li r0, 0x1
/* 813B9960 | 98 1F 03 70 */	stb r0, 0x370(r31)
.L_813B9964:
/* 813B9964 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B9968 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B996C | 7C 08 03 A6 */	mtlr r0
/* 813B9970 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B9974 | 4E 80 00 20 */	blr
.endfn prepareForBoot2__Q33ipl5scene12ChannelTitleFi

# .text:0x5948 | 0x813B9978 | size: 0x68
# ipl::scene::ChannelTitle::rebootSystem()
.fn rebootSystem__Q33ipl5scene12ChannelTitleFv, global
/* 813B9978 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B997C | 7C 08 02 A6 */	mflr r0
/* 813B9980 | 38 80 00 00 */	li r4, 0x0
/* 813B9984 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B9988 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B998C | 3F E0 81 09 */	lis r31, sSystem__Q23ipl3snd@ha
/* 813B9990 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813B9994 | 4B FB 21 7D */	bl stopAllSound__Q33ipl3snd6SystemFi
/* 813B9998 | 38 7F 99 2C */	addi r3, r31, sSystem__Q23ipl3snd@l
/* 813B999C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B99A0 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813B99A4 | 7D 89 03 A6 */	mtctr r12
/* 813B99A8 | 4E 80 04 21 */	bctrl
/* 813B99AC | 38 60 00 01 */	li r3, 0x1
/* 813B99B0 | 48 18 47 79 */	bl VISetBlack
/* 813B99B4 | 48 18 45 ED */	bl VIFlush
/* 813B99B8 | 48 18 36 31 */	bl VIWaitForRetrace
.L_813B99BC:
/* 813B99BC | 48 17 96 C5 */	bl __OSSyncSram
/* 813B99C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B99C4 | 41 82 FF F8 */	beq .L_813B99BC
/* 813B99C8 | 4B FC 6B 75 */	bl OSRebootSystem
/* 813B99CC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B99D0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B99D4 | 7C 08 03 A6 */	mtlr r0
/* 813B99D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B99DC | 4E 80 00 20 */	blr
.endfn rebootSystem__Q33ipl5scene12ChannelTitleFv

# .text:0x59B0 | 0x813B99E0 | size: 0xE0
# ipl::scene::ChannelTitle::isEnableToExecute(int, int)
.fn isEnableToExecute__Q33ipl5scene12ChannelTitleFii, global
/* 813B99E0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B99E4 | 7C 08 02 A6 */	mflr r0
/* 813B99E8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B99EC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B99F0 | 48 23 FA D5 */	bl _savegpr_28
/* 813B99F4 | 7C 7C 1B 78 */	mr r28, r3
/* 813B99F8 | 7C 9D 23 78 */	mr r29, r4
/* 813B99FC | 7C BE 2B 78 */	mr r30, r5
/* 813B9A00 | 4B FF F5 B1 */	bl isDiskChannelByDraw__Q33ipl5scene12ChannelTitleFii
/* 813B9A04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9A08 | 41 82 00 0C */	beq .L_813B9A14
/* 813B9A0C | 38 60 00 00 */	li r3, 0x0
/* 813B9A10 | 48 00 00 98 */	b .L_813B9AA8
.L_813B9A14:
/* 813B9A14 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813B9A18 | 7F A4 EB 78 */	mr r4, r29
/* 813B9A1C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813B9A20 | 7F C5 F3 78 */	mr r5, r30
/* 813B9A24 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813B9A28 | 4B FF 87 FD */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B9A2C | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813B9A30 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B9A34 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813B9A38 | 41 82 00 34 */	beq .L_813B9A6C
/* 813B9A3C | 80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 813B9A40 | 38 00 00 01 */	li r0, 0x1
/* 813B9A44 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 813B9A48 | 2C 03 00 45 */	cmpwi r3, 0x45
/* 813B9A4C | 41 82 00 10 */	beq .L_813B9A5C
/* 813B9A50 | 2C 03 00 48 */	cmpwi r3, 0x48
/* 813B9A54 | 41 82 00 08 */	beq .L_813B9A5C
/* 813B9A58 | 38 00 00 00 */	li r0, 0x0
.L_813B9A5C:
/* 813B9A5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9A60 | 41 82 00 0C */	beq .L_813B9A6C
/* 813B9A64 | 38 60 00 00 */	li r3, 0x0
/* 813B9A68 | 48 00 00 40 */	b .L_813B9AA8
.L_813B9A6C:
/* 813B9A6C | 7F 83 E3 78 */	mr r3, r28
/* 813B9A70 | 48 00 05 1D */	bl isLimitOutChannel__Q33ipl5scene12ChannelTitleFv
/* 813B9A74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9A78 | 41 82 00 0C */	beq .L_813B9A84
/* 813B9A7C | 38 60 00 00 */	li r3, 0x0
/* 813B9A80 | 48 00 00 28 */	b .L_813B9AA8
.L_813B9A84:
/* 813B9A84 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B9A88 | 7F A4 EB 78 */	mr r4, r29
/* 813B9A8C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B9A90 | 7F C5 F3 78 */	mr r5, r30
/* 813B9A94 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813B9A98 | 4B F7 F4 1D */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813B9A9C | 38 63 FF FF */	subi r3, r3, 0x1
/* 813B9AA0 | 30 03 FF FF */	subic r0, r3, 0x1
/* 813B9AA4 | 7C 60 19 10 */	subfe r3, r0, r3
.L_813B9AA8:
/* 813B9AA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B9AAC | 48 23 FA 65 */	bl _restgpr_28
/* 813B9AB0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B9AB4 | 7C 08 03 A6 */	mtlr r0
/* 813B9AB8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B9ABC | 4E 80 00 20 */	blr
.endfn isEnableToExecute__Q33ipl5scene12ChannelTitleFii

# .text:0x5A90 | 0x813B9AC0 | size: 0x54
# ipl::scene::ChannelTitle::isEnableAppStart()
.fn isEnableAppStart__Q33ipl5scene12ChannelTitleFv, global
/* 813B9AC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813B9AC4 | 7C 08 02 A6 */	mflr r0
/* 813B9AC8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813B9ACC | C0 02 86 0C */	lfs f0, lbl_81694A0C@sda21(r0)
/* 813B9AD0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813B9AD4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813B9AD8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813B9ADC | 7C 7F 1B 78 */	mr r31, r3
/* 813B9AE0 | 80 64 00 74 */	lwz r3, 0x74(r4)
/* 813B9AE4 | C0 23 00 14 */	lfs f1, 0x14(r3)
/* 813B9AE8 | EC 20 08 24 */	fdivs f1, f0, f1
/* 813B9AEC | 48 23 F8 AD */	bl __cvt_fp2unsigned
/* 813B9AF0 | 80 1F 00 88 */	lwz r0, 0x88(r31)
/* 813B9AF4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813B9AF8 | 7C 00 18 10 */	subfc r0, r0, r3
/* 813B9AFC | 7C 00 01 10 */	subfe r0, r0, r0
/* 813B9B00 | 7C 60 00 D0 */	neg r3, r0
/* 813B9B04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813B9B08 | 7C 08 03 A6 */	mtlr r0
/* 813B9B0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813B9B10 | 4E 80 00 20 */	blr
.endfn isEnableAppStart__Q33ipl5scene12ChannelTitleFv

# .text:0x5AE4 | 0x813B9B14 | size: 0xE8
# ipl::scene::ChannelTitle::changeStartButton()
.fn changeStartButton__Q33ipl5scene12ChannelTitleFv, global
/* 813B9B14 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B9B18 | 7C 08 02 A6 */	mflr r0
/* 813B9B1C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B9B20 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B9B24 | 48 23 F9 A5 */	bl _savegpr_29
/* 813B9B28 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813B9B2C | 7C 7D 1B 78 */	mr r29, r3
/* 813B9B30 | 80 A3 00 64 */	lwz r5, 0x64(r3)
/* 813B9B34 | 4B FF FE AD */	bl isEnableToExecute__Q33ipl5scene12ChannelTitleFii
/* 813B9B38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9B3C | 40 82 00 40 */	bne .L_813B9B7C
/* 813B9B40 | 80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 813B9B44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9B48 | 41 82 00 28 */	beq .L_813B9B70
/* 813B9B4C | 80 7D 01 6C */	lwz r3, 0x16c(r29)
/* 813B9B50 | 3B E0 00 00 */	li r31, 0x0
/* 813B9B54 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 813B9B58 | 83 DD 01 68 */	lwz r30, 0x168(r29)
/* 813B9B5C | 7F C3 F3 78 */	mr r3, r30
/* 813B9B60 | 4B FA 8D 11 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B9B64 | 38 00 00 01 */	li r0, 0x1
/* 813B9B68 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813B9B6C | 93 FD 00 8C */	stw r31, 0x8c(r29)
.L_813B9B70:
/* 813B9B70 | 38 00 00 00 */	li r0, 0x0
/* 813B9B74 | 90 1D 03 50 */	stw r0, 0x350(r29)
/* 813B9B78 | 48 00 00 6C */	b .L_813B9BE4
.L_813B9B7C:
/* 813B9B7C | 80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 813B9B80 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9B84 | 40 82 00 58 */	bne .L_813B9BDC
/* 813B9B88 | 80 7D 01 68 */	lwz r3, 0x168(r29)
/* 813B9B8C | 3B E0 00 00 */	li r31, 0x0
/* 813B9B90 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 813B9B94 | 83 DD 01 6C */	lwz r30, 0x16c(r29)
/* 813B9B98 | 7F C3 F3 78 */	mr r3, r30
/* 813B9B9C | 4B FA 8C D5 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813B9BA0 | 38 00 00 01 */	li r0, 0x1
/* 813B9BA4 | 38 6D 89 E0 */	li r3, lbl_81696A20@sda21
/* 813B9BA8 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813B9BAC | 38 A0 00 01 */	li r5, 0x1
/* 813B9BB0 | 80 DD 02 08 */	lwz r6, 0x208(r29)
/* 813B9BB4 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 813B9BB8 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 813B9BBC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813B9BC0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813B9BC4 | 7D 89 03 A6 */	mtctr r12
/* 813B9BC8 | 4E 80 04 21 */	bctrl
/* 813B9BCC | 7C 64 1B 78 */	mr r4, r3
/* 813B9BD0 | 80 7D 02 0C */	lwz r3, 0x20c(r29)
/* 813B9BD4 | 4B FB 16 45 */	bl initPane__Q33ipl3gui11PaneManagerFPQ34nw4r3lyt4Pane
/* 813B9BD8 | 93 FD 03 50 */	stw r31, 0x350(r29)
.L_813B9BDC:
/* 813B9BDC | 38 00 00 01 */	li r0, 0x1
/* 813B9BE0 | 90 1D 00 8C */	stw r0, 0x8c(r29)
.L_813B9BE4:
/* 813B9BE4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813B9BE8 | 48 23 F9 2D */	bl _restgpr_29
/* 813B9BEC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B9BF0 | 7C 08 03 A6 */	mtlr r0
/* 813B9BF4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B9BF8 | 4E 80 00 20 */	blr
.endfn changeStartButton__Q33ipl5scene12ChannelTitleFv

# .text:0x5BCC | 0x813B9BFC | size: 0x10C
# ipl::scene::ChannelTitle::drawPolygonAroundRect(const nw4r::ut::Rect&, _GXColor)
.fn drawPolygonAroundRect__Q33ipl5scene12ChannelTitleFRCQ34nw4r2ut4Rect8_GXColor, global
/* 813B9BFC | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813B9C00 | 7C 08 02 A6 */	mflr r0
/* 813B9C04 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813B9C08 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813B9C0C | 48 23 F8 B9 */	bl _savegpr_28
/* 813B9C10 | 7C 9C 23 78 */	mr r28, r4
/* 813B9C14 | 7C BD 2B 78 */	mr r29, r5
/* 813B9C18 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813B9C1C | 4B F7 C8 0D */	bl __ct__Q34nw4r2ut4RectFv
/* 813B9C20 | 38 61 00 0C */	addi r3, r1, 0xc
/* 813B9C24 | 4B F7 BC F5 */	bl getProjectionRect__Q23ipl6SystemFPQ34nw4r2ut4Rect
/* 813B9C28 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813B9C2C | 4B F7 C7 FD */	bl __ct__Q34nw4r2ut4RectFv
/* 813B9C30 | 38 61 00 2C */	addi r3, r1, 0x2c
/* 813B9C34 | 4B F7 C7 F5 */	bl __ct__Q34nw4r2ut4RectFv
/* 813B9C38 | 38 61 00 3C */	addi r3, r1, 0x3c
/* 813B9C3C | 4B F7 C7 ED */	bl __ct__Q34nw4r2ut4RectFv
/* 813B9C40 | 38 61 00 4C */	addi r3, r1, 0x4c
/* 813B9C44 | 4B F7 C7 E5 */	bl __ct__Q34nw4r2ut4RectFv
/* 813B9C48 | C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 813B9C4C | 3B C0 00 00 */	li r30, 0x0
/* 813B9C50 | C0 9C 00 04 */	lfs f4, 0x4(r28)
/* 813B9C54 | 3B E0 00 00 */	li r31, 0x0
/* 813B9C58 | C0 A1 00 14 */	lfs f5, 0x14(r1)
/* 813B9C5C | C0 7C 00 08 */	lfs f3, 0x8(r28)
/* 813B9C60 | C0 41 00 10 */	lfs f2, 0x10(r1)
/* 813B9C64 | C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 813B9C68 | C0 C1 00 18 */	lfs f6, 0x18(r1)
/* 813B9C6C | C0 1C 00 00 */	lfs f0, 0x0(r28)
/* 813B9C70 | D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 813B9C74 | D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 813B9C78 | D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 813B9C7C | D0 81 00 28 */	stfs f4, 0x28(r1)
/* 813B9C80 | D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 813B9C84 | D0 81 00 30 */	stfs f4, 0x30(r1)
/* 813B9C88 | D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 813B9C8C | D0 41 00 38 */	stfs f2, 0x38(r1)
/* 813B9C90 | D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 813B9C94 | D0 21 00 40 */	stfs f1, 0x40(r1)
/* 813B9C98 | D0 61 00 44 */	stfs f3, 0x44(r1)
/* 813B9C9C | D0 41 00 48 */	stfs f2, 0x48(r1)
/* 813B9CA0 | D0 E1 00 4C */	stfs f7, 0x4c(r1)
/* 813B9CA4 | D0 81 00 50 */	stfs f4, 0x50(r1)
/* 813B9CA8 | D0 01 00 54 */	stfs f0, 0x54(r1)
/* 813B9CAC | D0 21 00 58 */	stfs f1, 0x58(r1)
.L_813B9CB0:
/* 813B9CB0 | 88 FD 00 00 */	lbz r7, 0x0(r29)
/* 813B9CB4 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813B9CB8 | 88 DD 00 01 */	lbz r6, 0x1(r29)
/* 813B9CBC | 7C 63 FA 14 */	add r3, r3, r31
/* 813B9CC0 | 88 BD 00 02 */	lbz r5, 0x2(r29)
/* 813B9CC4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B9CC8 | 88 1D 00 03 */	lbz r0, 0x3(r29)
/* 813B9CCC | 98 E1 00 08 */	stb r7, 0x8(r1)
/* 813B9CD0 | 98 C1 00 09 */	stb r6, 0x9(r1)
/* 813B9CD4 | 98 A1 00 0A */	stb r5, 0xa(r1)
/* 813B9CD8 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 813B9CDC | 4B FA 90 61 */	bl drawPolygon__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4Rect8_GXColor
/* 813B9CE0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 813B9CE4 | 3B FF 00 10 */	addi r31, r31, 0x10
/* 813B9CE8 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 813B9CEC | 41 80 FF C4 */	blt .L_813B9CB0
/* 813B9CF0 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813B9CF4 | 48 23 F8 1D */	bl _restgpr_28
/* 813B9CF8 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813B9CFC | 7C 08 03 A6 */	mtlr r0
/* 813B9D00 | 38 21 00 70 */	addi r1, r1, 0x70
/* 813B9D04 | 4E 80 00 20 */	blr
.endfn drawPolygonAroundRect__Q33ipl5scene12ChannelTitleFRCQ34nw4r2ut4Rect8_GXColor

# .text:0x5CD8 | 0x813B9D08 | size: 0xB8
# ipl::scene::ChannelTitle::setMessage(nw4r::lyt::Pane*, unsigned long, bool)
.fn setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb, global
/* 813B9D08 | 94 21 FD F0 */	stwu r1, -0x210(r1)
/* 813B9D0C | 7C 08 02 A6 */	mflr r0
/* 813B9D10 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813B9D14 | 90 01 02 14 */	stw r0, 0x214(r1)
/* 813B9D18 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813B9D1C | 93 E1 02 0C */	stw r31, 0x20c(r1)
/* 813B9D20 | 7C DF 33 78 */	mr r31, r6
/* 813B9D24 | 93 C1 02 08 */	stw r30, 0x208(r1)
/* 813B9D28 | 7C 9E 23 78 */	mr r30, r4
/* 813B9D2C | 7C A4 2B 78 */	mr r4, r5
/* 813B9D30 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813B9D34 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813B9D38 | 4B F8 4A 85 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813B9D3C | 7C 64 1B 78 */	mr r4, r3
/* 813B9D40 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B9D44 | 38 A0 01 00 */	li r5, 0x100
/* 813B9D48 | 48 24 E9 9D */	bl fn_816086E4
/* 813B9D4C | 38 00 00 00 */	li r0, 0x0
/* 813B9D50 | 7F C3 F3 78 */	mr r3, r30
/* 813B9D54 | B0 01 02 06 */	sth r0, 0x206(r1)
/* 813B9D58 | 4B F8 C1 0D */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813B9D5C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813B9D60 | 7C 7F 1B 78 */	mr r31, r3
/* 813B9D64 | 41 82 00 28 */	beq .L_813B9D8C
/* 813B9D68 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813B9D6C | 48 24 E9 41 */	bl fn_816086AC
/* 813B9D70 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813B9D74 | 7C 60 1B 78 */	mr r0, r3
/* 813B9D78 | 7F E3 FB 78 */	mr r3, r31
/* 813B9D7C | 81 8C 00 64 */	lwz r12, 0x64(r12)
/* 813B9D80 | 54 04 04 3E */	clrlwi r4, r0, 16
/* 813B9D84 | 7D 89 03 A6 */	mtctr r12
/* 813B9D88 | 4E 80 04 21 */	bctrl
.L_813B9D8C:
/* 813B9D8C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813B9D90 | 7F E3 FB 78 */	mr r3, r31
/* 813B9D94 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813B9D98 | 38 A0 00 00 */	li r5, 0x0
/* 813B9D9C | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813B9DA0 | 7D 89 03 A6 */	mtctr r12
/* 813B9DA4 | 4E 80 04 21 */	bctrl
/* 813B9DA8 | 80 01 02 14 */	lwz r0, 0x214(r1)
/* 813B9DAC | 83 E1 02 0C */	lwz r31, 0x20c(r1)
/* 813B9DB0 | 83 C1 02 08 */	lwz r30, 0x208(r1)
/* 813B9DB4 | 7C 08 03 A6 */	mtlr r0
/* 813B9DB8 | 38 21 02 10 */	addi r1, r1, 0x210
/* 813B9DBC | 4E 80 00 20 */	blr
.endfn setMessage__Q33ipl5scene12ChannelTitleFPQ34nw4r3lyt4PaneUlb

# .text:0x5D90 | 0x813B9DC0 | size: 0x188
# ipl::scene::ChannelTitle::loadLayoutFileAsync(int, int, void**, ipl::nand::File**, void**)
.fn loadLayoutFileAsync__Q33ipl5scene12ChannelTitleFiiPPvPPQ33ipl4nand4FilePPv, global
/* 813B9DC0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813B9DC4 | 7C 08 02 A6 */	mflr r0
/* 813B9DC8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813B9DCC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B9DD0 | 48 23 F6 E9 */	bl _savegpr_25
/* 813B9DD4 | 3F A0 81 09 */	lis r29, smArg__Q23ipl6System@ha
/* 813B9DD8 | 7C 7E 1B 78 */	mr r30, r3
/* 813B9DDC | 3B BD 90 08 */	addi r29, r29, smArg__Q23ipl6System@l
/* 813B9DE0 | 7C 99 23 78 */	mr r25, r4
/* 813B9DE4 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B9DE8 | 7C BA 2B 78 */	mr r26, r5
/* 813B9DEC | 7C DB 33 78 */	mr r27, r6
/* 813B9DF0 | 7C FC 3B 78 */	mr r28, r7
/* 813B9DF4 | 7D 1F 43 78 */	mr r31, r8
/* 813B9DF8 | 4B FF 84 2D */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813B9DFC | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813B9E00 | 7C 00 00 34 */	cntlzw r0, r0
/* 813B9E04 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813B9E08 | 41 82 00 A4 */	beq .L_813B9EAC
/* 813B9E0C | 80 1E 00 74 */	lwz r0, 0x74(r30)
/* 813B9E10 | 2C 00 00 0B */	cmpwi r0, 0xb
/* 813B9E14 | 40 82 00 34 */	bne .L_813B9E48
/* 813B9E18 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B9E1C | 38 80 00 01 */	li r4, 0x1
/* 813B9E20 | 4B F7 E3 35 */	bl getDiskBanner__Q33ipl7channel7ManagerFb
/* 813B9E24 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 813B9E28 | 38 00 00 00 */	li r0, 0x0
/* 813B9E2C | 38 80 00 01 */	li r4, 0x1
/* 813B9E30 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 813B9E34 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B9E38 | 4B F7 E3 29 */	bl getDiskSound__Q33ipl7channel7ManagerFb
/* 813B9E3C | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 813B9E40 | 38 60 00 00 */	li r3, 0x0
/* 813B9E44 | 48 00 00 EC */	b .L_813B9F30
.L_813B9E48:
/* 813B9E48 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 813B9E4C | 40 82 00 44 */	bne .L_813B9E90
/* 813B9E50 | 80 1E 03 28 */	lwz r0, 0x328(r30)
/* 813B9E54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9E58 | 40 82 00 20 */	bne .L_813B9E78
/* 813B9E5C | 3C A0 81 65 */	lis r5, lbl_8164EE80@ha
/* 813B9E60 | 80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 813B9E64 | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 813B9E68 | 38 A5 EE 80 */	addi r5, r5, lbl_8164EE80@l
/* 813B9E6C | 38 C0 00 00 */	li r6, 0x0
/* 813B9E70 | 4B F8 3A 45 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 813B9E74 | 90 7E 03 28 */	stw r3, 0x328(r30)
.L_813B9E78:
/* 813B9E78 | 38 00 00 00 */	li r0, 0x0
/* 813B9E7C | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 813B9E80 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 813B9E84 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813B9E88 | 80 7E 03 28 */	lwz r3, 0x328(r30)
/* 813B9E8C | 48 00 00 A4 */	b .L_813B9F30
.L_813B9E90:
/* 813B9E90 | 38 00 00 00 */	li r0, 0x0
/* 813B9E94 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 813B9E98 | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 813B9E9C | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 813B9EA0 | 90 1E 00 74 */	stw r0, 0x74(r30)
/* 813B9EA4 | 80 7E 02 50 */	lwz r3, 0x250(r30)
/* 813B9EA8 | 48 00 00 88 */	b .L_813B9F30
.L_813B9EAC:
/* 813B9EAC | 3B C0 00 00 */	li r30, 0x0
/* 813B9EB0 | 7F 25 CB 78 */	mr r5, r25
/* 813B9EB4 | 93 DB 00 00 */	stw r30, 0x0(r27)
/* 813B9EB8 | 7F 46 D3 78 */	mr r6, r26
/* 813B9EBC | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B9EC0 | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 813B9EC4 | 4B F7 E4 E1 */	bl loadSoundAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii
/* 813B9EC8 | 90 7C 00 00 */	stw r3, 0x0(r28)
/* 813B9ECC | 7F 25 CB 78 */	mr r5, r25
/* 813B9ED0 | 7F 46 D3 78 */	mr r6, r26
/* 813B9ED4 | 93 DF 00 00 */	stw r30, 0x0(r31)
/* 813B9ED8 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B9EDC | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 813B9EE0 | 4B F7 E3 FD */	bl loadBannerAsync__Q33ipl7channel7ManagerFPQ23EGG4Heapii
/* 813B9EE4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B9EE8 | 80 7D 00 84 */	lwz r3, 0x84(r29)
/* 813B9EEC | 7F 24 CB 78 */	mr r4, r25
/* 813B9EF0 | 7F 45 D3 78 */	mr r5, r26
/* 813B9EF4 | 4B F7 E9 39 */	bl loadLockedMsgAsync__Q33ipl7channel7ManagerFii
/* 813B9EF8 | 80 9D 00 28 */	lwz r4, 0x28(r29)
/* 813B9EFC | 38 60 00 0C */	li r3, 0xc
/* 813B9F00 | 38 A0 00 04 */	li r5, 0x4
/* 813B9F04 | 48 23 E1 AD */	bl __nw__FUlPQ23EGG4Heapi
/* 813B9F08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9F0C | 7C 7D 1B 78 */	mr r29, r3
/* 813B9F10 | 41 82 00 1C */	beq .L_813B9F2C
/* 813B9F14 | 4B F8 13 D1 */	bl __ct__Q33ipl4nand4BaseFv
/* 813B9F18 | 93 FD 00 04 */	stw r31, 0x4(r29)
/* 813B9F1C | 3C 60 81 63 */	lis r3, __vt__Q33ipl4nand10LayoutFile@ha
/* 813B9F20 | 38 63 4C D8 */	addi r3, r3, __vt__Q33ipl4nand10LayoutFile@l
/* 813B9F24 | 93 DD 00 08 */	stw r30, 0x8(r29)
/* 813B9F28 | 90 7D 00 00 */	stw r3, 0x0(r29)
.L_813B9F2C:
/* 813B9F2C | 7F A3 EB 78 */	mr r3, r29
.L_813B9F30:
/* 813B9F30 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813B9F34 | 48 23 F5 D1 */	bl _restgpr_25
/* 813B9F38 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813B9F3C | 7C 08 03 A6 */	mtlr r0
/* 813B9F40 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813B9F44 | 4E 80 00 20 */	blr
.endfn loadLayoutFileAsync__Q33ipl5scene12ChannelTitleFiiPPvPPQ33ipl4nand4FilePPv

# .text:0x5F18 | 0x813B9F48 | size: 0x44
# ipl::scene::ChannelTitle::isTimeLimitedChannel(unsigned long*, unsigned long*)
.fn isTimeLimitedChannel__Q33ipl5scene12ChannelTitleFPUlPUl, global
/* 813B9F48 | 80 03 03 74 */	lwz r0, 0x374(r3)
/* 813B9F4C | 28 00 00 01 */	cmplwi r0, 0x1
/* 813B9F50 | 40 82 00 34 */	bne .L_813B9F84
/* 813B9F54 | 80 E3 03 78 */	lwz r7, 0x378(r3)
/* 813B9F58 | 38 C0 0E 10 */	li r6, 0xe10
/* 813B9F5C | 38 00 00 3C */	li r0, 0x3c
/* 813B9F60 | 7C C7 33 96 */	divwu r6, r7, r6
/* 813B9F64 | 90 C4 00 00 */	stw r6, 0x0(r4)
/* 813B9F68 | 1C C6 0E 10 */	mulli r6, r6, 0xe10
/* 813B9F6C | 80 83 03 78 */	lwz r4, 0x378(r3)
/* 813B9F70 | 38 60 00 01 */	li r3, 0x1
/* 813B9F74 | 7C 86 20 50 */	subf r4, r6, r4
/* 813B9F78 | 7C 04 03 96 */	divwu r0, r4, r0
/* 813B9F7C | 90 05 00 00 */	stw r0, 0x0(r5)
/* 813B9F80 | 4E 80 00 20 */	blr
.L_813B9F84:
/* 813B9F84 | 38 60 00 00 */	li r3, 0x0
/* 813B9F88 | 4E 80 00 20 */	blr
.endfn isTimeLimitedChannel__Q33ipl5scene12ChannelTitleFPUlPUl

# .text:0x5F5C | 0x813B9F8C | size: 0x54
# ipl::scene::ChannelTitle::isLimitOutChannel()
.fn isLimitOutChannel__Q33ipl5scene12ChannelTitleFv, global
/* 813B9F8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813B9F90 | 7C 08 02 A6 */	mflr r0
/* 813B9F94 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813B9F98 | 38 81 00 0C */	addi r4, r1, 0xc
/* 813B9F9C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813B9FA0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813B9FA4 | 7C 7F 1B 78 */	mr r31, r3
/* 813B9FA8 | 4B FF FF A1 */	bl isTimeLimitedChannel__Q33ipl5scene12ChannelTitleFPUlPUl
/* 813B9FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813B9FB0 | 41 82 00 18 */	beq .L_813B9FC8
/* 813B9FB4 | 80 1F 03 78 */	lwz r0, 0x378(r31)
/* 813B9FB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813B9FBC | 40 82 00 0C */	bne .L_813B9FC8
/* 813B9FC0 | 38 60 00 01 */	li r3, 0x1
/* 813B9FC4 | 48 00 00 08 */	b .L_813B9FCC
.L_813B9FC8:
/* 813B9FC8 | 38 60 00 00 */	li r3, 0x0
.L_813B9FCC:
/* 813B9FCC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813B9FD0 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813B9FD4 | 7C 08 03 A6 */	mtlr r0
/* 813B9FD8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813B9FDC | 4E 80 00 20 */	blr
.endfn isLimitOutChannel__Q33ipl5scene12ChannelTitleFv

# .text:0x5FB0 | 0x813B9FE0 | size: 0x104
# ipl::scene::ChannelTitle::dispTimeLimitWindow()
.fn dispTimeLimitWindow__Q33ipl5scene12ChannelTitleFv, global
/* 813B9FE0 | 94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 813B9FE4 | 7C 08 02 A6 */	mflr r0
/* 813B9FE8 | 90 01 00 A4 */	stw r0, 0xa4(r1)
/* 813B9FEC | 38 81 00 0C */	addi r4, r1, 0xc
/* 813B9FF0 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813B9FF4 | 93 E1 00 9C */	stw r31, 0x9c(r1)
/* 813B9FF8 | 7C 7F 1B 78 */	mr r31, r3
/* 813B9FFC | 4B FF FF 4D */	bl isTimeLimitedChannel__Q33ipl5scene12ChannelTitleFPUlPUl
/* 813BA000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA004 | 41 82 00 AC */	beq .L_813BA0B0
/* 813BA008 | 7F E3 FB 78 */	mr r3, r31
/* 813BA00C | 4B FF FF 81 */	bl isLimitOutChannel__Q33ipl5scene12ChannelTitleFv
/* 813BA010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA014 | 41 82 00 28 */	beq .L_813BA03C
/* 813BA018 | 80 7F 02 10 */	lwz r3, 0x210(r31)
/* 813BA01C | 38 80 00 00 */	li r4, 0x0
/* 813BA020 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BA024 | 4B F8 A3 F1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BA028 | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 813BA02C | 38 80 00 01 */	li r4, 0x1
/* 813BA030 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BA034 | 4B F8 A3 E1 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BA038 | 48 00 00 98 */	b .L_813BA0D0
.L_813BA03C:
/* 813BA03C | 80 7F 02 10 */	lwz r3, 0x210(r31)
/* 813BA040 | 38 80 00 01 */	li r4, 0x1
/* 813BA044 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BA048 | 4B F8 A3 CD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BA04C | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 813BA050 | 38 80 00 00 */	li r4, 0x0
/* 813BA054 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BA058 | 4B F8 A3 BD */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BA05C | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 813BA060 | 7F E3 FB 78 */	mr r3, r31
/* 813BA064 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 813BA068 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813BA06C | 48 00 00 79 */	bl getTimeLimitString__Q33ipl5scene12ChannelTitleFPwUlUl
/* 813BA070 | 80 7F 02 10 */	lwz r3, 0x210(r31)
/* 813BA074 | 38 8D 8A AB */	li r4, lbl_81696AEB@sda21
/* 813BA078 | 38 A0 00 01 */	li r5, 0x1
/* 813BA07C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BA080 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BA084 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BA088 | 7D 89 03 A6 */	mtctr r12
/* 813BA08C | 4E 80 04 21 */	bctrl
/* 813BA090 | 4B F8 BD D5 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813BA094 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BA098 | 38 81 00 10 */	addi r4, r1, 0x10
/* 813BA09C | 38 A0 00 00 */	li r5, 0x0
/* 813BA0A0 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813BA0A4 | 7D 89 03 A6 */	mtctr r12
/* 813BA0A8 | 4E 80 04 21 */	bctrl
/* 813BA0AC | 48 00 00 24 */	b .L_813BA0D0
.L_813BA0B0:
/* 813BA0B0 | 80 7F 02 10 */	lwz r3, 0x210(r31)
/* 813BA0B4 | 38 80 00 00 */	li r4, 0x0
/* 813BA0B8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BA0BC | 4B F8 A3 59 */	bl SetVisible__Q34nw4r3lyt4PaneFb
/* 813BA0C0 | 80 7F 02 14 */	lwz r3, 0x214(r31)
/* 813BA0C4 | 38 80 00 00 */	li r4, 0x0
/* 813BA0C8 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BA0CC | 4B F8 A3 49 */	bl SetVisible__Q34nw4r3lyt4PaneFb
.L_813BA0D0:
/* 813BA0D0 | 80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 813BA0D4 | 83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 813BA0D8 | 7C 08 03 A6 */	mtlr r0
/* 813BA0DC | 38 21 00 A0 */	addi r1, r1, 0xa0
/* 813BA0E0 | 4E 80 00 20 */	blr
.endfn dispTimeLimitWindow__Q33ipl5scene12ChannelTitleFv

# .text:0x60B4 | 0x813BA0E4 | size: 0x484
# ipl::scene::ChannelTitle::getTimeLimitString(wchar_t*, unsigned long, unsigned long)
.fn getTimeLimitString__Q33ipl5scene12ChannelTitleFPwUlUl, global
/* 813BA0E4 | 94 21 FF A0 */	stwu r1, -0x60(r1)
/* 813BA0E8 | 7C 08 02 A6 */	mflr r0
/* 813BA0EC | 90 01 00 64 */	stw r0, 0x64(r1)
/* 813BA0F0 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813BA0F4 | 48 23 F3 D1 */	bl _savegpr_28
/* 813BA0F8 | 28 05 00 64 */	cmplwi r5, 0x64
/* 813BA0FC | 3F E0 81 65 */	lis r31, lbl_8164E768@ha
/* 813BA100 | 7C 9C 23 78 */	mr r28, r4
/* 813BA104 | 7C BD 2B 78 */	mr r29, r5
/* 813BA108 | 7C DE 33 78 */	mr r30, r6
/* 813BA10C | 3B FF E7 68 */	addi r31, r31, lbl_8164E768@l
/* 813BA110 | 41 80 00 0C */	blt .L_813BA11C
/* 813BA114 | 3B A0 00 63 */	li r29, 0x63
/* 813BA118 | 3B C0 00 3B */	li r30, 0x3b
.L_813BA11C:
/* 813BA11C | 7F 83 E3 78 */	mr r3, r28
/* 813BA120 | 38 80 00 00 */	li r4, 0x0
/* 813BA124 | 38 A0 00 82 */	li r5, 0x82
/* 813BA128 | 4B F7 62 0D */	bl memset
/* 813BA12C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA130 | 38 80 00 16 */	li r4, 0x16
/* 813BA134 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA138 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA13C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA140 | 4B F8 46 7D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA144 | 7C 64 1B 78 */	mr r4, r3
/* 813BA148 | 7F 83 E3 78 */	mr r3, r28
/* 813BA14C | 48 24 E5 7D */	bl fn_816086C8
/* 813BA150 | 38 00 00 08 */	li r0, 0x8
/* 813BA154 | 38 81 00 26 */	addi r4, r1, 0x26
/* 813BA158 | 38 60 00 00 */	li r3, 0x0
/* 813BA15C | 7C 09 03 A6 */	mtctr r0
.L_813BA160:
/* 813BA160 | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813BA164 | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 813BA168 | 42 00 FF F8 */	bdnz .L_813BA160
/* 813BA16C | 38 00 00 08 */	li r0, 0x8
/* 813BA170 | 38 81 00 06 */	addi r4, r1, 0x6
/* 813BA174 | 38 60 00 00 */	li r3, 0x0
/* 813BA178 | 7C 09 03 A6 */	mtctr r0
.L_813BA17C:
/* 813BA17C | B0 64 00 02 */	sth r3, 0x2(r4)
/* 813BA180 | B4 64 00 04 */	sthu r3, 0x4(r4)
/* 813BA184 | 42 00 FF F8 */	bdnz .L_813BA17C
/* 813BA188 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813BA18C | 40 82 00 44 */	bne .L_813BA1D0
/* 813BA190 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813BA194 | 40 82 00 3C */	bne .L_813BA1D0
/* 813BA198 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA19C | 38 80 00 17 */	li r4, 0x17
/* 813BA1A0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA1A4 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA1A8 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA1AC | 4B F8 46 11 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA1B0 | 7C 67 1B 78 */	mr r7, r3
/* 813BA1B4 | 7F 83 E3 78 */	mr r3, r28
/* 813BA1B8 | 7F 86 E3 78 */	mr r6, r28
/* 813BA1BC | 38 BF 07 24 */	addi r5, r31, 0x724
/* 813BA1C0 | 38 80 00 41 */	li r4, 0x41
/* 813BA1C4 | 4C C6 31 82 */	crclr cr1eq
/* 813BA1C8 | 48 24 E4 09 */	bl swprintf
/* 813BA1CC | 48 00 03 84 */	b .L_813BA550
.L_813BA1D0:
/* 813BA1D0 | 4B F7 B8 1D */	bl getLanguage__Q23ipl6SystemFv
/* 813BA1D4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813BA1D8 | 40 82 00 44 */	bne .L_813BA21C
/* 813BA1DC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA1E0 | 38 80 00 1F */	li r4, 0x1f
/* 813BA1E4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA1E8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA1EC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA1F0 | 4B F8 45 CD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA1F4 | 7C 68 1B 78 */	mr r8, r3
/* 813BA1F8 | 7F 83 E3 78 */	mr r3, r28
/* 813BA1FC | 7F 86 E3 78 */	mr r6, r28
/* 813BA200 | 7F A7 EB 78 */	mr r7, r29
/* 813BA204 | 7F C9 F3 78 */	mr r9, r30
/* 813BA208 | 38 BF 07 34 */	addi r5, r31, 0x734
/* 813BA20C | 38 80 00 41 */	li r4, 0x41
/* 813BA210 | 4C C6 31 82 */	crclr cr1eq
/* 813BA214 | 48 24 E3 BD */	bl swprintf
/* 813BA218 | 48 00 03 38 */	b .L_813BA550
.L_813BA21C:
/* 813BA21C | 4B F7 B7 D1 */	bl getLanguage__Q23ipl6SystemFv
/* 813BA220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA224 | 41 82 00 1C */	beq .L_813BA240
/* 813BA228 | 4B F7 B7 C5 */	bl getLanguage__Q23ipl6SystemFv
/* 813BA22C | 28 03 00 09 */	cmplwi r3, 0x9
/* 813BA230 | 41 82 00 10 */	beq .L_813BA240
/* 813BA234 | 4B F7 B7 B9 */	bl getLanguage__Q23ipl6SystemFv
/* 813BA238 | 28 03 00 02 */	cmplwi r3, 0x2
/* 813BA23C | 40 82 00 F8 */	bne .L_813BA334
.L_813BA240:
/* 813BA240 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 813BA244 | 40 82 00 38 */	bne .L_813BA27C
/* 813BA248 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA24C | 38 80 00 18 */	li r4, 0x18
/* 813BA250 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA254 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA258 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA25C | 4B F8 45 61 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA260 | 7C 66 1B 78 */	mr r6, r3
/* 813BA264 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813BA268 | 38 BF 07 50 */	addi r5, r31, 0x750
/* 813BA26C | 38 80 00 10 */	li r4, 0x10
/* 813BA270 | 4C C6 31 82 */	crclr cr1eq
/* 813BA274 | 48 24 E3 5D */	bl swprintf
/* 813BA278 | 48 00 00 40 */	b .L_813BA2B8
.L_813BA27C:
/* 813BA27C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813BA280 | 41 82 00 38 */	beq .L_813BA2B8
/* 813BA284 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA288 | 38 80 00 1F */	li r4, 0x1f
/* 813BA28C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA290 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA294 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA298 | 4B F8 45 25 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA29C | 7C 67 1B 78 */	mr r7, r3
/* 813BA2A0 | 7F A6 EB 78 */	mr r6, r29
/* 813BA2A4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813BA2A8 | 38 BF 07 5A */	addi r5, r31, 0x75a
/* 813BA2AC | 38 80 00 10 */	li r4, 0x10
/* 813BA2B0 | 4C C6 31 82 */	crclr cr1eq
/* 813BA2B4 | 48 24 E3 1D */	bl swprintf
.L_813BA2B8:
/* 813BA2B8 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 813BA2BC | 40 82 00 38 */	bne .L_813BA2F4
/* 813BA2C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA2C4 | 38 80 00 19 */	li r4, 0x19
/* 813BA2C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA2CC | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA2D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA2D4 | 4B F8 44 E9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA2D8 | 7C 66 1B 78 */	mr r6, r3
/* 813BA2DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BA2E0 | 38 BF 07 50 */	addi r5, r31, 0x750
/* 813BA2E4 | 38 80 00 10 */	li r4, 0x10
/* 813BA2E8 | 4C C6 31 82 */	crclr cr1eq
/* 813BA2EC | 48 24 E2 E5 */	bl swprintf
/* 813BA2F0 | 48 00 02 40 */	b .L_813BA530
.L_813BA2F4:
/* 813BA2F4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813BA2F8 | 41 82 02 38 */	beq .L_813BA530
/* 813BA2FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA300 | 38 80 00 20 */	li r4, 0x20
/* 813BA304 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA308 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA30C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA310 | 4B F8 44 AD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA314 | 7C 67 1B 78 */	mr r7, r3
/* 813BA318 | 7F C6 F3 78 */	mr r6, r30
/* 813BA31C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BA320 | 38 BF 07 5A */	addi r5, r31, 0x75a
/* 813BA324 | 38 80 00 10 */	li r4, 0x10
/* 813BA328 | 4C C6 31 82 */	crclr cr1eq
/* 813BA32C | 48 24 E2 A5 */	bl swprintf
/* 813BA330 | 48 00 02 00 */	b .L_813BA530
.L_813BA334:
/* 813BA334 | 4B F7 B6 B9 */	bl getLanguage__Q23ipl6SystemFv
/* 813BA338 | 28 03 00 03 */	cmplwi r3, 0x3
/* 813BA33C | 41 82 00 10 */	beq .L_813BA34C
/* 813BA340 | 4B F7 B6 AD */	bl getLanguage__Q23ipl6SystemFv
/* 813BA344 | 28 03 00 05 */	cmplwi r3, 0x5
/* 813BA348 | 40 82 00 F8 */	bne .L_813BA440
.L_813BA34C:
/* 813BA34C | 28 1D 00 01 */	cmplwi r29, 0x1
/* 813BA350 | 40 82 00 38 */	bne .L_813BA388
/* 813BA354 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA358 | 38 80 00 18 */	li r4, 0x18
/* 813BA35C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA360 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA364 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA368 | 4B F8 44 55 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA36C | 7C 66 1B 78 */	mr r6, r3
/* 813BA370 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813BA374 | 38 BF 07 66 */	addi r5, r31, 0x766
/* 813BA378 | 38 80 00 10 */	li r4, 0x10
/* 813BA37C | 4C C6 31 82 */	crclr cr1eq
/* 813BA380 | 48 24 E2 51 */	bl swprintf
/* 813BA384 | 48 00 00 40 */	b .L_813BA3C4
.L_813BA388:
/* 813BA388 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813BA38C | 41 82 00 38 */	beq .L_813BA3C4
/* 813BA390 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA394 | 38 80 00 1F */	li r4, 0x1f
/* 813BA398 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA39C | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA3A0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA3A4 | 4B F8 44 19 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA3A8 | 7C 67 1B 78 */	mr r7, r3
/* 813BA3AC | 7F A6 EB 78 */	mr r6, r29
/* 813BA3B0 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813BA3B4 | 38 BF 07 72 */	addi r5, r31, 0x772
/* 813BA3B8 | 38 80 00 10 */	li r4, 0x10
/* 813BA3BC | 4C C6 31 82 */	crclr cr1eq
/* 813BA3C0 | 48 24 E2 11 */	bl swprintf
.L_813BA3C4:
/* 813BA3C4 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 813BA3C8 | 40 82 00 38 */	bne .L_813BA400
/* 813BA3CC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA3D0 | 38 80 00 19 */	li r4, 0x19
/* 813BA3D4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA3D8 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA3DC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA3E0 | 4B F8 43 DD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA3E4 | 7C 66 1B 78 */	mr r6, r3
/* 813BA3E8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BA3EC | 38 BF 07 66 */	addi r5, r31, 0x766
/* 813BA3F0 | 38 80 00 10 */	li r4, 0x10
/* 813BA3F4 | 4C C6 31 82 */	crclr cr1eq
/* 813BA3F8 | 48 24 E1 D9 */	bl swprintf
/* 813BA3FC | 48 00 01 34 */	b .L_813BA530
.L_813BA400:
/* 813BA400 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813BA404 | 41 82 01 2C */	beq .L_813BA530
/* 813BA408 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA40C | 38 80 00 20 */	li r4, 0x20
/* 813BA410 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA414 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA418 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA41C | 4B F8 43 A1 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA420 | 7C 67 1B 78 */	mr r7, r3
/* 813BA424 | 7F C6 F3 78 */	mr r6, r30
/* 813BA428 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BA42C | 38 BF 07 72 */	addi r5, r31, 0x772
/* 813BA430 | 38 80 00 10 */	li r4, 0x10
/* 813BA434 | 4C C6 31 82 */	crclr cr1eq
/* 813BA438 | 48 24 E1 99 */	bl swprintf
/* 813BA43C | 48 00 00 F4 */	b .L_813BA530
.L_813BA440:
/* 813BA440 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 813BA444 | 40 82 00 38 */	bne .L_813BA47C
/* 813BA448 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA44C | 38 80 00 18 */	li r4, 0x18
/* 813BA450 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA454 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA458 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA45C | 4B F8 43 61 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA460 | 7C 66 1B 78 */	mr r6, r3
/* 813BA464 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813BA468 | 38 BF 07 50 */	addi r5, r31, 0x750
/* 813BA46C | 38 80 00 10 */	li r4, 0x10
/* 813BA470 | 4C C6 31 82 */	crclr cr1eq
/* 813BA474 | 48 24 E1 5D */	bl swprintf
/* 813BA478 | 48 00 00 40 */	b .L_813BA4B8
.L_813BA47C:
/* 813BA47C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813BA480 | 41 82 00 38 */	beq .L_813BA4B8
/* 813BA484 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA488 | 38 80 00 1F */	li r4, 0x1f
/* 813BA48C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA490 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA494 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA498 | 4B F8 43 25 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA49C | 7C 67 1B 78 */	mr r7, r3
/* 813BA4A0 | 7F A6 EB 78 */	mr r6, r29
/* 813BA4A4 | 38 61 00 28 */	addi r3, r1, 0x28
/* 813BA4A8 | 38 BF 07 5A */	addi r5, r31, 0x75a
/* 813BA4AC | 38 80 00 10 */	li r4, 0x10
/* 813BA4B0 | 4C C6 31 82 */	crclr cr1eq
/* 813BA4B4 | 48 24 E1 1D */	bl swprintf
.L_813BA4B8:
/* 813BA4B8 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 813BA4BC | 40 82 00 38 */	bne .L_813BA4F4
/* 813BA4C0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA4C4 | 38 80 00 19 */	li r4, 0x19
/* 813BA4C8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA4CC | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA4D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA4D4 | 4B F8 42 E9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA4D8 | 7C 66 1B 78 */	mr r6, r3
/* 813BA4DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BA4E0 | 38 BF 07 66 */	addi r5, r31, 0x766
/* 813BA4E4 | 38 80 00 10 */	li r4, 0x10
/* 813BA4E8 | 4C C6 31 82 */	crclr cr1eq
/* 813BA4EC | 48 24 E0 E5 */	bl swprintf
/* 813BA4F0 | 48 00 00 40 */	b .L_813BA530
.L_813BA4F4:
/* 813BA4F4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813BA4F8 | 41 82 00 38 */	beq .L_813BA530
/* 813BA4FC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BA500 | 38 80 00 20 */	li r4, 0x20
/* 813BA504 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BA508 | 80 63 00 80 */	lwz r3, 0x80(r3)
/* 813BA50C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA510 | 4B F8 42 AD */	bl getMessage__Q33ipl7message7MessageCFUl
/* 813BA514 | 7C 67 1B 78 */	mr r7, r3
/* 813BA518 | 7F C6 F3 78 */	mr r6, r30
/* 813BA51C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BA520 | 38 BF 07 72 */	addi r5, r31, 0x772
/* 813BA524 | 38 80 00 10 */	li r4, 0x10
/* 813BA528 | 4C C6 31 82 */	crclr cr1eq
/* 813BA52C | 48 24 E0 A5 */	bl swprintf
.L_813BA530:
/* 813BA530 | 7F 83 E3 78 */	mr r3, r28
/* 813BA534 | 7F 86 E3 78 */	mr r6, r28
/* 813BA538 | 38 BF 07 82 */	addi r5, r31, 0x782
/* 813BA53C | 38 E1 00 28 */	addi r7, r1, 0x28
/* 813BA540 | 39 01 00 08 */	addi r8, r1, 0x8
/* 813BA544 | 38 80 00 41 */	li r4, 0x41
/* 813BA548 | 4C C6 31 82 */	crclr cr1eq
/* 813BA54C | 48 24 E0 85 */	bl swprintf
.L_813BA550:
/* 813BA550 | 39 61 00 60 */	addi r11, r1, 0x60
/* 813BA554 | 48 23 EF BD */	bl _restgpr_28
/* 813BA558 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 813BA55C | 7C 08 03 A6 */	mtlr r0
/* 813BA560 | 38 21 00 60 */	addi r1, r1, 0x60
/* 813BA564 | 4E 80 00 20 */	blr
.endfn getTimeLimitString__Q33ipl5scene12ChannelTitleFPwUlUl

# .text:0x6538 | 0x813BA568 | size: 0x11C
# ipl::scene::ChannelTitle::getTmdTask(void*)
.fn getTmdTask__Q33ipl5scene12ChannelTitleFPv, global
/* 813BA568 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BA56C | 7C 08 02 A6 */	mflr r0
/* 813BA570 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BA574 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BA578 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BA57C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BA580 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BA584 | 7C 7E 1B 78 */	mr r30, r3
/* 813BA588 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813BA58C | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BA590 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813BA594 | 4B F7 E9 21 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813BA598 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA59C | 41 82 00 5C */	beq .L_813BA5F8
/* 813BA5A0 | 3C C0 81 0B */	lis r6, msUnlockTicket__Q33ipl5scene12ChannelTitle@ha
/* 813BA5A4 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BA5A8 | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813BA5AC | 38 C6 74 20 */	addi r6, r6, msUnlockTicket__Q33ipl5scene12ChannelTitle@l
/* 813BA5B0 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813BA5B4 | 4B F7 E9 C5 */	bl getUnlockTicket__Q33ipl7channel7ManagerCFiiP12ESTicketView
/* 813BA5B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA5BC | 40 80 00 3C */	bge .L_813BA5F8
/* 813BA5C0 | 3C C0 81 65 */	lis r6, lbl_8164EF00@ha
/* 813BA5C4 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA5C8 | 38 C6 EF 00 */	addi r6, r6, lbl_8164EF00@l
/* 813BA5CC | 38 8D 8A B3 */	li r4, lbl_81696AF3@sda21
/* 813BA5D0 | 38 A0 00 00 */	li r5, 0x0
/* 813BA5D4 | 38 E0 12 82 */	li r7, 0x1282
/* 813BA5D8 | 4B F9 C1 21 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813BA5DC | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA5E0 | 38 80 00 01 */	li r4, 0x1
/* 813BA5E4 | 38 A0 00 02 */	li r5, 0x2
/* 813BA5E8 | 38 C0 00 00 */	li r6, 0x0
/* 813BA5EC | 38 E0 00 00 */	li r7, 0x0
/* 813BA5F0 | 39 00 FF FF */	li r8, -0x1
/* 813BA5F4 | 4B F9 BF 21 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813BA5F8:
/* 813BA5F8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BA5FC | 80 9E 00 60 */	lwz r4, 0x60(r30)
/* 813BA600 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BA604 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813BA608 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BA60C | 4B F7 DC 9D */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813BA610 | 7C 65 1B 78 */	mr r5, r3
/* 813BA614 | 80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 813BA618 | 7C 86 23 78 */	mr r6, r4
/* 813BA61C | 38 FE 03 5C */	addi r7, r30, 0x35c
/* 813BA620 | 4B FA B0 E5 */	bl GetTmdView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxPP9ESTmdView
/* 813BA624 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA628 | 7C 65 1B 78 */	mr r5, r3
/* 813BA62C | 41 82 00 38 */	beq .L_813BA664
/* 813BA630 | 3C C0 81 65 */	lis r6, lbl_8164EF00@ha
/* 813BA634 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA638 | 38 8D 8A B7 */	li r4, lbl_81696AF7@sda21
/* 813BA63C | 38 E0 12 8C */	li r7, 0x128c
/* 813BA640 | 38 C6 EF 00 */	addi r6, r6, lbl_8164EF00@l
/* 813BA644 | 4B F9 C0 B5 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813BA648 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA64C | 38 80 00 01 */	li r4, 0x1
/* 813BA650 | 38 A0 00 02 */	li r5, 0x2
/* 813BA654 | 38 C0 00 00 */	li r6, 0x0
/* 813BA658 | 38 E0 00 00 */	li r7, 0x0
/* 813BA65C | 39 00 FF FF */	li r8, -0x1
/* 813BA660 | 4B F9 BE B5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813BA664:
/* 813BA664 | 38 00 00 01 */	li r0, 0x1
/* 813BA668 | 98 1E 03 60 */	stb r0, 0x360(r30)
/* 813BA66C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BA670 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BA674 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BA678 | 7C 08 03 A6 */	mtlr r0
/* 813BA67C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BA680 | 4E 80 00 20 */	blr
.endfn getTmdTask__Q33ipl5scene12ChannelTitleFPv

# .text:0x6654 | 0x813BA684 | size: 0xC
.fn iplChannelTitle_813BA684, global
/* 813BA684 | 38 00 00 01 */	li r0, 0x1
/* 813BA688 | 98 03 03 60 */	stb r0, 0x360(r3)
/* 813BA68C | 4E 80 00 20 */	blr
.endfn iplChannelTitle_813BA684

# .text:0x6660 | 0x813BA690 | size: 0xF4
# ipl::scene::ChannelTitle::getTicketLimitTask(void*)
.fn getTicketLimitTask__Q33ipl5scene12ChannelTitleFPv, global
/* 813BA690 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BA694 | 7C 08 02 A6 */	mflr r0
/* 813BA698 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BA69C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BA6A0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BA6A4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BA6A8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BA6AC | 7C 7E 1B 78 */	mr r30, r3
/* 813BA6B0 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813BA6B4 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BA6B8 | 80 BE 00 64 */	lwz r5, 0x64(r30)
/* 813BA6BC | 4B F7 DB ED */	bl getTitleID__Q33ipl7channel7ManagerCFii
/* 813BA6C0 | 80 1E 00 60 */	lwz r0, 0x60(r30)
/* 813BA6C4 | 7C 65 1B 78 */	mr r5, r3
/* 813BA6C8 | 81 5E 00 64 */	lwz r10, 0x64(r30)
/* 813BA6CC | 3C E0 81 0B */	lis r7, msTicketView__Q33ipl5scene12ChannelTitle@ha
/* 813BA6D0 | 1D 00 05 40 */	mulli r8, r0, 0x540
/* 813BA6D4 | 81 3F 00 84 */	lwz r9, 0x84(r31)
/* 813BA6D8 | 7C 86 23 78 */	mr r6, r4
/* 813BA6DC | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 813BA6E0 | 38 E7 73 40 */	addi r7, r7, msTicketView__Q33ipl5scene12ChannelTitle@l
/* 813BA6E4 | 1C 0A 00 70 */	mulli r0, r10, 0x70
/* 813BA6E8 | 7C 89 42 14 */	add r4, r9, r8
/* 813BA6EC | 7C 84 02 14 */	add r4, r4, r0
/* 813BA6F0 | 81 04 00 20 */	lwz r8, 0x20(r4)
/* 813BA6F4 | 4B FA B2 55 */	bl GetTicketView__Q33ipl7utility6ESMiscFPQ23EGG4HeapUxP12ESTicketViewi
/* 813BA6F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA6FC | 7C 65 1B 78 */	mr r5, r3
/* 813BA700 | 41 82 00 38 */	beq .L_813BA738
/* 813BA704 | 3C C0 81 65 */	lis r6, lbl_8164EF00@ha
/* 813BA708 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA70C | 38 8D 8A B7 */	li r4, lbl_81696AF7@sda21
/* 813BA710 | 38 E0 12 B5 */	li r7, 0x12b5
/* 813BA714 | 38 C6 EF 00 */	addi r6, r6, lbl_8164EF00@l
/* 813BA718 | 4B F9 BF E1 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813BA71C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA720 | 38 80 00 01 */	li r4, 0x1
/* 813BA724 | 38 A0 00 02 */	li r5, 0x2
/* 813BA728 | 38 C0 00 00 */	li r6, 0x0
/* 813BA72C | 38 E0 00 00 */	li r7, 0x0
/* 813BA730 | 39 00 FF FF */	li r8, -0x1
/* 813BA734 | 4B F9 BD E1 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813BA738:
/* 813BA738 | 3C 60 81 0B */	lis r3, msTicketView__Q33ipl5scene12ChannelTitle@ha
/* 813BA73C | 38 9E 03 78 */	addi r4, r30, 0x378
/* 813BA740 | 38 63 73 40 */	addi r3, r3, msTicketView__Q33ipl5scene12ChannelTitle@l
/* 813BA744 | 48 00 01 21 */	bl isTimeLimitedTicket__Q33ipl5scene12ChannelTitleFP12ESTicketViewPUl
/* 813BA748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA74C | 41 82 00 10 */	beq .L_813BA75C
/* 813BA750 | 38 00 00 01 */	li r0, 0x1
/* 813BA754 | 90 1E 03 74 */	stw r0, 0x374(r30)
/* 813BA758 | 48 00 00 0C */	b .L_813BA764
.L_813BA75C:
/* 813BA75C | 38 00 00 00 */	li r0, 0x0
/* 813BA760 | 90 1E 03 74 */	stw r0, 0x374(r30)
.L_813BA764:
/* 813BA764 | 38 00 00 01 */	li r0, 0x1
/* 813BA768 | 98 1E 03 71 */	stb r0, 0x371(r30)
/* 813BA76C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BA770 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BA774 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BA778 | 7C 08 03 A6 */	mtlr r0
/* 813BA77C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BA780 | 4E 80 00 20 */	blr
.endfn getTicketLimitTask__Q33ipl5scene12ChannelTitleFPv

# .text:0x6754 | 0x813BA784 | size: 0xE0
.fn iplChannelTitle_813BA784, global
/* 813BA784 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BA788 | 7C 08 02 A6 */	mflr r0
/* 813BA78C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BA790 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BA794 | 48 23 ED 2D */	bl _savegpr_27
/* 813BA798 | 80 03 03 68 */	lwz r0, 0x368(r3)
/* 813BA79C | 7C 7B 1B 78 */	mr r27, r3
/* 813BA7A0 | 80 63 03 6C */	lwz r3, 0x36c(r3)
/* 813BA7A4 | 7C 60 03 79 */	or. r0, r3, r0
/* 813BA7A8 | 41 82 00 9C */	beq .L_813BA844
/* 813BA7AC | 38 00 00 00 */	li r0, 0x0
/* 813BA7B0 | 3B C0 00 0A */	li r30, 0xa
/* 813BA7B4 | 7F E0 F1 D6 */	mullw r31, r0, r30
/* 813BA7B8 | 3F 80 80 00 */	lis r28, 0x8000
/* 813BA7BC | 3B A0 03 E8 */	li r29, 0x3e8
/* 813BA7C0 | 48 00 00 20 */	b .L_813BA7E0
.L_813BA7C4:
/* 813BA7C4 | 80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 813BA7C8 | 54 00 F0 BE */	srwi r0, r0, 2
/* 813BA7CC | 7C 60 EB 96 */	divwu r3, r0, r29
/* 813BA7D0 | 7C 03 F0 16 */	mulhwu r0, r3, r30
/* 813BA7D4 | 1C 83 00 0A */	mulli r4, r3, 0xa
/* 813BA7D8 | 7C 60 FA 14 */	add r3, r0, r31
/* 813BA7DC | 48 17 B3 F1 */	bl OSSleepTicks
.L_813BA7E0:
/* 813BA7E0 | 4B F7 95 ED */	bl isReceiveScheduleStopped__Q23ipl6SystemFv
/* 813BA7E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA7E8 | 41 82 FF DC */	beq .L_813BA7C4
/* 813BA7EC | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BA7F0 | 80 BB 03 68 */	lwz r5, 0x368(r27)
/* 813BA7F4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BA7F8 | 80 DB 03 6C */	lwz r6, 0x36c(r27)
/* 813BA7FC | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 813BA800 | 4B FA C6 E5 */	bl iplES_81366EE4
/* 813BA804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA808 | 7C 65 1B 78 */	mr r5, r3
/* 813BA80C | 41 82 00 38 */	beq .L_813BA844
/* 813BA810 | 3C C0 81 65 */	lis r6, lbl_8164EF00@ha
/* 813BA814 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA818 | 38 8D 8A B7 */	li r4, lbl_81696AF7@sda21
/* 813BA81C | 38 E0 12 D8 */	li r7, 0x12d8
/* 813BA820 | 38 C6 EF 00 */	addi r6, r6, lbl_8164EF00@l
/* 813BA824 | 4B F9 BE D5 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813BA828 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA82C | 38 80 00 01 */	li r4, 0x1
/* 813BA830 | 38 A0 00 02 */	li r5, 0x2
/* 813BA834 | 38 C0 00 00 */	li r6, 0x0
/* 813BA838 | 38 E0 00 00 */	li r7, 0x0
/* 813BA83C | 39 00 FF FF */	li r8, -0x1
/* 813BA840 | 4B F9 BC D5 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813BA844:
/* 813BA844 | 38 00 00 01 */	li r0, 0x1
/* 813BA848 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BA84C | 98 1B 03 70 */	stb r0, 0x370(r27)
/* 813BA850 | 48 23 EC BD */	bl _restgpr_27
/* 813BA854 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BA858 | 7C 08 03 A6 */	mtlr r0
/* 813BA85C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BA860 | 4E 80 00 20 */	blr
.endfn iplChannelTitle_813BA784

# .text:0x6834 | 0x813BA864 | size: 0xF4
# ipl::scene::ChannelTitle::isTimeLimitedTicket(ESTicketView*, unsigned long*)
.fn isTimeLimitedTicket__Q33ipl5scene12ChannelTitleFP12ESTicketViewPUl, global
/* 813BA864 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BA868 | 7C 08 02 A6 */	mflr r0
/* 813BA86C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BA870 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BA874 | 48 23 EC 55 */	bl _savegpr_29
/* 813BA878 | 7C 7D 1B 78 */	mr r29, r3
/* 813BA87C | 7C 9E 23 78 */	mr r30, r4
/* 813BA880 | 48 17 B4 19 */	bl fn_81535C98
/* 813BA884 | 48 1B 6E BD */	bl ESP_InitLib
/* 813BA888 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA88C | 41 82 00 44 */	beq .L_813BA8D0
/* 813BA890 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BA894 | 3C C0 81 65 */	lis r6, lbl_8164EF00@ha
/* 813BA898 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BA89C | 7C 65 1B 78 */	mr r5, r3
/* 813BA8A0 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA8A4 | 38 C6 EF 00 */	addi r6, r6, lbl_8164EF00@l
/* 813BA8A8 | 38 8D 8A B7 */	li r4, lbl_81696AF7@sda21
/* 813BA8AC | 38 E0 12 F3 */	li r7, 0x12f3
/* 813BA8B0 | 4B F9 BE 49 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813BA8B4 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA8B8 | 38 80 00 01 */	li r4, 0x1
/* 813BA8BC | 38 A0 00 02 */	li r5, 0x2
/* 813BA8C0 | 38 C0 00 00 */	li r6, 0x0
/* 813BA8C4 | 38 E0 00 00 */	li r7, 0x0
/* 813BA8C8 | 39 00 FF FF */	li r8, -0x1
/* 813BA8CC | 4B F9 BC 49 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813BA8D0:
/* 813BA8D0 | 7F A3 EB 78 */	mr r3, r29
/* 813BA8D4 | 7F C5 F3 78 */	mr r5, r30
/* 813BA8D8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813BA8DC | 48 17 DA 0D */	bl fn_815382E8
/* 813BA8E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BA8E4 | 41 82 00 44 */	beq .L_813BA928
/* 813BA8E8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BA8EC | 3C C0 81 65 */	lis r6, lbl_8164EF00@ha
/* 813BA8F0 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BA8F4 | 7C 65 1B 78 */	mr r5, r3
/* 813BA8F8 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA8FC | 38 C6 EF 00 */	addi r6, r6, lbl_8164EF00@l
/* 813BA900 | 38 8D 8A B7 */	li r4, lbl_81696AF7@sda21
/* 813BA904 | 38 E0 12 FC */	li r7, 0x12fc
/* 813BA908 | 4B F9 BD F1 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813BA90C | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813BA910 | 38 80 00 01 */	li r4, 0x1
/* 813BA914 | 38 A0 00 02 */	li r5, 0x2
/* 813BA918 | 38 C0 00 00 */	li r6, 0x0
/* 813BA91C | 38 E0 00 00 */	li r7, 0x0
/* 813BA920 | 39 00 FF FF */	li r8, -0x1
/* 813BA924 | 4B F9 BB F1 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_813BA928:
/* 813BA928 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813BA92C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BA930 | 40 82 00 0C */	bne .L_813BA93C
/* 813BA934 | 38 60 00 01 */	li r3, 0x1
/* 813BA938 | 48 00 00 08 */	b .L_813BA940
.L_813BA93C:
/* 813BA93C | 38 60 00 00 */	li r3, 0x0
.L_813BA940:
/* 813BA940 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BA944 | 48 23 EB D1 */	bl _restgpr_29
/* 813BA948 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BA94C | 7C 08 03 A6 */	mtlr r0
/* 813BA950 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BA954 | 4E 80 00 20 */	blr
.endfn isTimeLimitedTicket__Q33ipl5scene12ChannelTitleFP12ESTicketViewPUl

# .text:0x6928 | 0x813BA958 | size: 0x8C
# ipl::scene::ChannelTitle::startGetTicketLimitTask()
.fn startGetTicketLimitTask__Q33ipl5scene12ChannelTitleFv, global
/* 813BA958 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BA95C | 7C 08 02 A6 */	mflr r0
/* 813BA960 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BA964 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BA968 | 48 23 EB 61 */	bl _savegpr_29
/* 813BA96C | 3B C0 00 00 */	li r30, 0x0
/* 813BA970 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BA974 | 93 C3 03 74 */	stw r30, 0x374(r3)
/* 813BA978 | 7C 7D 1B 78 */	mr r29, r3
/* 813BA97C | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BA980 | 80 83 00 60 */	lwz r4, 0x60(r3)
/* 813BA984 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BA988 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813BA98C | 4B FF 78 99 */	bl getSceneID__Q33ipl7channel7ManagerCFii
/* 813BA990 | 38 03 FF F1 */	subi r0, r3, 0xf
/* 813BA994 | 7C 00 00 34 */	cntlzw r0, r0
/* 813BA998 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 813BA99C | 41 82 00 10 */	beq .L_813BA9AC
/* 813BA9A0 | 38 00 00 01 */	li r0, 0x1
/* 813BA9A4 | 98 1D 03 71 */	stb r0, 0x371(r29)
/* 813BA9A8 | 48 00 00 24 */	b .L_813BA9CC
.L_813BA9AC:
/* 813BA9AC | 9B DD 03 71 */	stb r30, 0x371(r29)
/* 813BA9B0 | 3C 80 81 3C */	lis r4, getTicketLimitTask__Q33ipl5scene12ChannelTitleFPv@ha
/* 813BA9B4 | 7F A5 EB 78 */	mr r5, r29
/* 813BA9B8 | 38 C0 00 00 */	li r6, 0x0
/* 813BA9BC | 80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 813BA9C0 | 38 84 A6 90 */	addi r4, r4, getTicketLimitTask__Q33ipl5scene12ChannelTitleFPv@l
/* 813BA9C4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 813BA9C8 | 48 23 D8 81 */	bl fn_815F8248
.L_813BA9CC:
/* 813BA9CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BA9D0 | 48 23 EB 45 */	bl _restgpr_29
/* 813BA9D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BA9D8 | 7C 08 03 A6 */	mtlr r0
/* 813BA9DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BA9E0 | 4E 80 00 20 */	blr
.endfn startGetTicketLimitTask__Q33ipl5scene12ChannelTitleFv

# .text:0x69B4 | 0x813BA9E4 | size: 0x16C
# ipl::scene::ChannelTitle::updateLockedMsg(int)
.fn updateLockedMsg__Q33ipl5scene12ChannelTitleFi, global
/* 813BA9E4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BA9E8 | 7C 08 02 A6 */	mflr r0
/* 813BA9EC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BA9F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BA9F4 | 48 23 EA D5 */	bl _savegpr_29
/* 813BA9F8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813BA9FC | 7C 7D 1B 78 */	mr r29, r3
/* 813BAA00 | 7C 9E 23 78 */	mr r30, r4
/* 813BAA04 | 40 82 00 48 */	bne .L_813BAA4C
/* 813BAA08 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BAA0C | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813BAA10 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BAA14 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813BAA18 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BAA1C | 4B F7 E4 99 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813BAA20 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813BAA24 | 40 82 00 0C */	bne .L_813BAA30
/* 813BAA28 | 3B C0 00 01 */	li r30, 0x1
/* 813BAA2C | 48 00 00 20 */	b .L_813BAA4C
.L_813BAA30:
/* 813BAA30 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BAA34 | 80 9D 00 60 */	lwz r4, 0x60(r29)
/* 813BAA38 | 80 BD 00 64 */	lwz r5, 0x64(r29)
/* 813BAA3C | 4B F7 E4 79 */	bl getUnlockChannelState__Q33ipl7channel7ManagerCFii
/* 813BAA40 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813BAA44 | 40 82 00 08 */	bne .L_813BAA4C
/* 813BAA48 | 3B C0 00 02 */	li r30, 0x2
.L_813BAA4C:
/* 813BAA4C | 2C 1E 00 01 */	cmpwi r30, 0x1
/* 813BAA50 | 40 82 00 B0 */	bne .L_813BAB00
/* 813BAA54 | 88 1D 03 40 */	lbz r0, 0x340(r29)
/* 813BAA58 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BAA5C | 40 82 00 DC */	bne .L_813BAB38
/* 813BAA60 | 7F A3 EB 78 */	mr r3, r29
/* 813BAA64 | 4B FF F5 29 */	bl isLimitOutChannel__Q33ipl5scene12ChannelTitleFv
/* 813BAA68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAA6C | 40 82 00 CC */	bne .L_813BAB38
/* 813BAA70 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813BAA74 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813BAA78 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BAA7C | 4B F7 DE C5 */	bl getLockedMsg__Q33ipl7channel7ManagerFv
/* 813BAA80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAA84 | 41 82 00 B4 */	beq .L_813BAB38
/* 813BAA88 | 80 7D 03 34 */	lwz r3, 0x334(r29)
/* 813BAA8C | 3C 80 81 65 */	lis r4, lbl_8164EF14@ha
/* 813BAA90 | 38 84 EF 14 */	addi r4, r4, lbl_8164EF14@l
/* 813BAA94 | 38 A0 00 01 */	li r5, 0x1
/* 813BAA98 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 813BAA9C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BAAA0 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 813BAAA4 | 7D 89 03 A6 */	mtctr r12
/* 813BAAA8 | 4E 80 04 21 */	bctrl
/* 813BAAAC | 4B F8 B3 B9 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 813BAAB0 | 7C 7E 1B 78 */	mr r30, r3
/* 813BAAB4 | 80 7F 00 84 */	lwz r3, 0x84(r31)
/* 813BAAB8 | 4B F7 DE 89 */	bl getLockedMsg__Q33ipl7channel7ManagerFv
/* 813BAABC | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813BAAC0 | 7C 64 1B 78 */	mr r4, r3
/* 813BAAC4 | 7F C3 F3 78 */	mr r3, r30
/* 813BAAC8 | 38 A0 00 00 */	li r5, 0x0
/* 813BAACC | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 813BAAD0 | 7D 89 03 A6 */	mtctr r12
/* 813BAAD4 | 4E 80 04 21 */	bctrl
/* 813BAAD8 | 80 7D 03 3C */	lwz r3, 0x33c(r29)
/* 813BAADC | 38 00 00 00 */	li r0, 0x0
/* 813BAAE0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813BAAE4 | 83 FD 03 38 */	lwz r31, 0x338(r29)
/* 813BAAE8 | 7F E3 FB 78 */	mr r3, r31
/* 813BAAEC | 4B FA 7D 85 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BAAF0 | 38 00 00 01 */	li r0, 0x1
/* 813BAAF4 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 813BAAF8 | 98 1D 03 40 */	stb r0, 0x340(r29)
/* 813BAAFC | 48 00 00 3C */	b .L_813BAB38
.L_813BAB00:
/* 813BAB00 | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 813BAB04 | 40 82 00 34 */	bne .L_813BAB38
/* 813BAB08 | 88 1D 03 40 */	lbz r0, 0x340(r29)
/* 813BAB0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BAB10 | 41 82 00 28 */	beq .L_813BAB38
/* 813BAB14 | 80 7D 03 38 */	lwz r3, 0x338(r29)
/* 813BAB18 | 3B E0 00 00 */	li r31, 0x0
/* 813BAB1C | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 813BAB20 | 83 DD 03 3C */	lwz r30, 0x33c(r29)
/* 813BAB24 | 7F C3 F3 78 */	mr r3, r30
/* 813BAB28 | 4B FA 7D 49 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BAB2C | 38 00 00 01 */	li r0, 0x1
/* 813BAB30 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 813BAB34 | 9B FD 03 40 */	stb r31, 0x340(r29)
.L_813BAB38:
/* 813BAB38 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BAB3C | 48 23 E9 D9 */	bl _restgpr_29
/* 813BAB40 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BAB44 | 7C 08 03 A6 */	mtlr r0
/* 813BAB48 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BAB4C | 4E 80 00 20 */	blr
.endfn updateLockedMsg__Q33ipl5scene12ChannelTitleFi

# .text:0x6B20 | 0x813BAB50 | size: 0x100
# ipl::scene::ChannelTitle::CheckParentalControl(ESTmdView*)
.fn CheckParentalControl__Q33ipl5scene12ChannelTitleFP9ESTmdView, global
/* 813BAB50 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 813BAB54 | 7C 08 02 A6 */	mflr r0
/* 813BAB58 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 813BAB5C | 39 61 00 70 */	addi r11, r1, 0x70
/* 813BAB60 | 48 23 E9 65 */	bl _savegpr_28
/* 813BAB64 | 7C 7C 1B 78 */	mr r28, r3
/* 813BAB68 | 7C 9D 23 78 */	mr r29, r4
/* 813BAB6C | 4B FA B7 39 */	bl __IsPCEnable__Q33ipl7utility6ESMiscFv
/* 813BAB70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAB74 | 40 82 00 0C */	bne .L_813BAB80
/* 813BAB78 | 38 60 00 01 */	li r3, 0x1
/* 813BAB7C | 48 00 00 BC */	b .L_813BAC38
.L_813BAB80:
/* 813BAB80 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813BAB84 | 48 1A F5 F5 */	bl fn_8156A178
/* 813BAB88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAB8C | 40 82 00 0C */	bne .L_813BAB98
/* 813BAB90 | 38 60 00 01 */	li r3, 0x1
/* 813BAB94 | 48 00 00 A4 */	b .L_813BAC38
.L_813BAB98:
/* 813BAB98 | 88 01 00 08 */	lbz r0, 0x8(r1)
/* 813BAB9C | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813BABA0 | 41 82 00 94 */	beq .L_813BAC34
/* 813BABA4 | 3F C0 81 09 */	lis r30, smArg__Q23ipl6System@ha
/* 813BABA8 | 80 9C 00 60 */	lwz r4, 0x60(r28)
/* 813BABAC | 3B DE 90 08 */	addi r30, r30, smArg__Q23ipl6System@l
/* 813BABB0 | 80 BC 00 64 */	lwz r5, 0x64(r28)
/* 813BABB4 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813BABB8 | 4B F7 E1 59 */	bl isParentalRestricted__Q33ipl7channel7ManagerCFii
/* 813BABBC | 7C 7F 1B 78 */	mr r31, r3
/* 813BABC0 | 48 1A FA ED */	bl fn_8156A6AC
/* 813BABC4 | 7C 60 F8 39 */	and. r0, r3, r31
/* 813BABC8 | 41 82 00 0C */	beq .L_813BABD4
/* 813BABCC | 38 60 00 00 */	li r3, 0x0
/* 813BABD0 | 48 00 00 68 */	b .L_813BAC38
.L_813BABD4:
/* 813BABD4 | 48 1A F7 C9 */	bl fn_8156A39C
/* 813BABD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BABDC | 41 82 00 24 */	beq .L_813BAC00
/* 813BABE0 | 80 7E 00 84 */	lwz r3, 0x84(r30)
/* 813BABE4 | 80 9C 00 60 */	lwz r4, 0x60(r28)
/* 813BABE8 | 80 BC 00 64 */	lwz r5, 0x64(r28)
/* 813BABEC | 4B F7 E1 8D */	bl isInternetChannel__Q33ipl7channel7ManagerCFii
/* 813BABF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BABF4 | 41 82 00 0C */	beq .L_813BAC00
/* 813BABF8 | 38 60 00 00 */	li r3, 0x0
/* 813BABFC | 48 00 00 3C */	b .L_813BAC38
.L_813BAC00:
/* 813BAC00 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BAC04 | 80 9C 00 60 */	lwz r4, 0x60(r28)
/* 813BAC08 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BAC0C | 80 BC 00 64 */	lwz r5, 0x64(r28)
/* 813BAC10 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 813BAC14 | 4B F7 E1 65 */	bl isInternetChannel__Q33ipl7channel7ManagerCFii
/* 813BAC18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAC1C | 41 82 00 0C */	beq .L_813BAC28
/* 813BAC20 | 38 60 00 01 */	li r3, 0x1
/* 813BAC24 | 48 00 00 14 */	b .L_813BAC38
.L_813BAC28:
/* 813BAC28 | 7F A3 EB 78 */	mr r3, r29
/* 813BAC2C | 4B FA B6 C9 */	bl CheckTmdParentalControl__Q33ipl7utility6ESMiscFP9ESTmdView
/* 813BAC30 | 48 00 00 08 */	b .L_813BAC38
.L_813BAC34:
/* 813BAC34 | 38 60 00 01 */	li r3, 0x1
.L_813BAC38:
/* 813BAC38 | 39 61 00 70 */	addi r11, r1, 0x70
/* 813BAC3C | 48 23 E8 D5 */	bl _restgpr_28
/* 813BAC40 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 813BAC44 | 7C 08 03 A6 */	mtlr r0
/* 813BAC48 | 38 21 00 70 */	addi r1, r1, 0x70
/* 813BAC4C | 4E 80 00 20 */	blr
.endfn CheckParentalControl__Q33ipl5scene12ChannelTitleFP9ESTmdView

# .text:0x6C20 | 0x813BAC50 | size: 0x2CC
# ipl::scene::ChannelTitleEventHandler::onEvent(unsigned long, unsigned long, void*)
.fn onEvent__Q33ipl5scene24ChannelTitleEventHandlerFUlUlPv, global
/* 813BAC50 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813BAC54 | 7C 08 02 A6 */	mflr r0
/* 813BAC58 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813BAC5C | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BAC60 | 48 23 E8 59 */	bl _savegpr_25
/* 813BAC64 | 7C 7C 1B 78 */	mr r28, r3
/* 813BAC68 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813BAC6C | 3F E0 81 65 */	lis r31, lbl_8164E768@ha
/* 813BAC70 | 7C B9 2B 78 */	mr r25, r5
/* 813BAC74 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BAC78 | 7C DD 33 78 */	mr r29, r6
/* 813BAC7C | 3B FF E7 68 */	addi r31, r31, lbl_8164E768@l
/* 813BAC80 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813BAC84 | 7D 89 03 A6 */	mtctr r12
/* 813BAC88 | 4E 80 04 21 */	bctrl
/* 813BAC8C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BAC90 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813BAC94 | 7D 89 03 A6 */	mtctr r12
/* 813BAC98 | 4E 80 04 21 */	bctrl
/* 813BAC9C | 2C 19 00 01 */	cmpwi r25, 0x1
/* 813BACA0 | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813BACA4 | 41 82 01 14 */	beq .L_813BADB8
/* 813BACA8 | 40 80 00 10 */	bge .L_813BACB8
/* 813BACAC | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813BACB0 | 40 80 00 14 */	bge .L_813BACC4
/* 813BACB4 | 48 00 02 50 */	b .L_813BAF04
.L_813BACB8:
/* 813BACB8 | 2C 19 00 03 */	cmpwi r25, 0x3
/* 813BACBC | 40 80 02 48 */	bge .L_813BAF04
/* 813BACC0 | 48 00 01 B4 */	b .L_813BAE74
.L_813BACC4:
/* 813BACC4 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BACC8 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813BACCC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BACD0 | 40 82 02 34 */	bne .L_813BAF04
/* 813BACD4 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813BACD8 | 3C 80 00 10 */	lis r4, 0x10
/* 813BACDC | 7F A3 EB 78 */	mr r3, r29
/* 813BACE0 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BACE4 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813BACE8 | 7D 89 03 A6 */	mtctr r12
/* 813BACEC | 4E 80 04 21 */	bctrl
/* 813BACF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BACF4 | 41 82 02 10 */	beq .L_813BAF04
/* 813BACF8 | 80 8D 89 E0 */	lwz r4, lbl_81696A20@sda21(r0)
/* 813BACFC | 7F C3 F3 78 */	mr r3, r30
/* 813BAD00 | 48 24 77 81 */	bl strcmp
/* 813BAD04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAD08 | 40 82 00 44 */	bne .L_813BAD4C
/* 813BAD0C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAD10 | 83 43 00 EC */	lwz r26, 0xec(r3)
/* 813BAD14 | 7F 43 D3 78 */	mr r3, r26
/* 813BAD18 | 4B FA 7B 59 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BAD1C | 38 00 00 01 */	li r0, 0x1
/* 813BAD20 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BAD24 | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813BAD28 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BAD2C | 38 9F 07 B7 */	addi r4, r31, 0x7b7
/* 813BAD30 | 4B FB 07 3D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BAD34 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAD38 | 38 00 00 0A */	li r0, 0xa
/* 813BAD3C | 90 03 00 58 */	stw r0, 0x58(r3)
/* 813BAD40 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAD44 | 4B FF C9 95 */	bl tryToGoBackward__Q33ipl5scene12ChannelTitleFv
/* 813BAD48 | 48 00 01 BC */	b .L_813BAF04
.L_813BAD4C:
/* 813BAD4C | 38 8D 89 E0 */	li r4, lbl_81696A20@sda21
/* 813BAD50 | 7F C3 F3 78 */	mr r3, r30
/* 813BAD54 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 813BAD58 | 48 24 77 29 */	bl strcmp
/* 813BAD5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAD60 | 40 82 01 A4 */	bne .L_813BAF04
/* 813BAD64 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAD68 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813BAD6C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813BAD70 | 41 82 00 18 */	beq .L_813BAD88
/* 813BAD74 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BAD78 | 38 9F 05 E9 */	addi r4, r31, 0x5e9
/* 813BAD7C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BAD80 | 4B FB 06 ED */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BAD84 | 48 00 01 80 */	b .L_813BAF04
.L_813BAD88:
/* 813BAD88 | 4B FF E7 01 */	bl reserveNextScene__Q33ipl5scene12ChannelTitleFv
/* 813BAD8C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAD90 | 83 43 01 14 */	lwz r26, 0x114(r3)
/* 813BAD94 | 7F 43 D3 78 */	mr r3, r26
/* 813BAD98 | 4B FA 7A D9 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BAD9C | 38 00 00 01 */	li r0, 0x1
/* 813BADA0 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BADA4 | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813BADA8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BADAC | 38 9F 05 FD */	addi r4, r31, 0x5fd
/* 813BADB0 | 4B FB 06 BD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BADB4 | 48 00 01 50 */	b .L_813BAF04
.L_813BADB8:
/* 813BADB8 | 3B 20 00 00 */	li r25, 0x0
/* 813BADBC | 3B 60 00 00 */	li r27, 0x0
/* 813BADC0 | 3B 4D 89 E0 */	li r26, lbl_81696A20@sda21
.L_813BADC4:
/* 813BADC4 | 7C 9A D8 2E */	lwzx r4, r26, r27
/* 813BADC8 | 7F C3 F3 78 */	mr r3, r30
/* 813BADCC | 48 24 76 B5 */	bl strcmp
/* 813BADD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BADD4 | 40 82 00 8C */	bne .L_813BAE60
/* 813BADD8 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813BADDC | 41 82 00 14 */	beq .L_813BADF0
/* 813BADE0 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BADE4 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813BADE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BADEC | 40 81 00 74 */	ble .L_813BAE60
.L_813BADF0:
/* 813BADF0 | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 813BADF4 | 7C 80 DA 14 */	add r4, r0, r27
/* 813BADF8 | 80 64 03 4C */	lwz r3, 0x34c(r4)
/* 813BADFC | 38 03 00 01 */	addi r0, r3, 0x1
/* 813BAE00 | 90 04 03 4C */	stw r0, 0x34c(r4)
/* 813BAE04 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 813BAE08 | 7C 64 DA 14 */	add r3, r4, r27
/* 813BAE0C | 80 03 03 4C */	lwz r0, 0x34c(r3)
/* 813BAE10 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BAE14 | 41 81 00 4C */	bgt .L_813BAE60
/* 813BAE18 | 1C 19 00 28 */	mulli r0, r25, 0x28
/* 813BAE1C | 7C 64 02 14 */	add r3, r4, r0
/* 813BAE20 | 83 43 00 98 */	lwz r26, 0x98(r3)
/* 813BAE24 | 7F 43 D3 78 */	mr r3, r26
/* 813BAE28 | 4B FA 7A 49 */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BAE2C | 38 00 00 01 */	li r0, 0x1
/* 813BAE30 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BAE34 | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813BAE38 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BAE3C | 38 9F 07 C7 */	addi r4, r31, 0x7c7
/* 813BAE40 | 4B FB 06 2D */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BAE44 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813BAE48 | 7F A3 EB 78 */	mr r3, r29
/* 813BAE4C | 38 80 00 00 */	li r4, 0x0
/* 813BAE50 | 81 8C 00 34 */	lwz r12, 0x34(r12)
/* 813BAE54 | 7D 89 03 A6 */	mtctr r12
/* 813BAE58 | 4E 80 04 21 */	bctrl
/* 813BAE5C | 48 00 00 A8 */	b .L_813BAF04
.L_813BAE60:
/* 813BAE60 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813BAE64 | 3B 7B 00 04 */	addi r27, r27, 0x4
/* 813BAE68 | 2C 19 00 02 */	cmpwi r25, 0x2
/* 813BAE6C | 41 80 FF 58 */	blt .L_813BADC4
/* 813BAE70 | 48 00 00 94 */	b .L_813BAF04
.L_813BAE74:
/* 813BAE74 | 3B 20 00 00 */	li r25, 0x0
/* 813BAE78 | 3B A0 00 00 */	li r29, 0x0
/* 813BAE7C | 3B 6D 89 E0 */	li r27, lbl_81696A20@sda21
.L_813BAE80:
/* 813BAE80 | 7C 9B E8 2E */	lwzx r4, r27, r29
/* 813BAE84 | 7F C3 F3 78 */	mr r3, r30
/* 813BAE88 | 48 24 75 F9 */	bl strcmp
/* 813BAE8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAE90 | 40 82 00 64 */	bne .L_813BAEF4
/* 813BAE94 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 813BAE98 | 41 82 00 14 */	beq .L_813BAEAC
/* 813BAE9C | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAEA0 | 80 03 00 8C */	lwz r0, 0x8c(r3)
/* 813BAEA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BAEA8 | 40 81 00 4C */	ble .L_813BAEF4
.L_813BAEAC:
/* 813BAEAC | 80 1C 00 0C */	lwz r0, 0xc(r28)
/* 813BAEB0 | 7C 80 EA 14 */	add r4, r0, r29
/* 813BAEB4 | 80 64 03 4C */	lwz r3, 0x34c(r4)
/* 813BAEB8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813BAEBC | 90 04 03 4C */	stw r0, 0x34c(r4)
/* 813BAEC0 | 80 9C 00 0C */	lwz r4, 0xc(r28)
/* 813BAEC4 | 7C 64 EA 14 */	add r3, r4, r29
/* 813BAEC8 | 80 03 03 4C */	lwz r0, 0x34c(r3)
/* 813BAECC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BAED0 | 41 81 00 24 */	bgt .L_813BAEF4
/* 813BAED4 | 1C 19 00 28 */	mulli r0, r25, 0x28
/* 813BAED8 | 7C 64 02 14 */	add r3, r4, r0
/* 813BAEDC | 83 43 00 94 */	lwz r26, 0x94(r3)
/* 813BAEE0 | 7F 43 D3 78 */	mr r3, r26
/* 813BAEE4 | 4B FA 79 8D */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 813BAEE8 | 38 00 00 01 */	li r0, 0x1
/* 813BAEEC | 90 1A 00 14 */	stw r0, 0x14(r26)
/* 813BAEF0 | 48 00 00 14 */	b .L_813BAF04
.L_813BAEF4:
/* 813BAEF4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813BAEF8 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 813BAEFC | 2C 19 00 02 */	cmpwi r25, 0x2
/* 813BAF00 | 41 80 FF 80 */	blt .L_813BAE80
.L_813BAF04:
/* 813BAF04 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BAF08 | 48 23 E5 FD */	bl _restgpr_25
/* 813BAF0C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813BAF10 | 7C 08 03 A6 */	mtlr r0
/* 813BAF14 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813BAF18 | 4E 80 00 20 */	blr
.endfn onEvent__Q33ipl5scene24ChannelTitleEventHandlerFUlUlPv

# .text:0x6EEC | 0x813BAF1C | size: 0x174
# ipl::scene::CsChanTtlButtonEventHandler::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene27CsChanTtlButtonEventHandlerFUlUlPCQ33ipl10controller9Interface, global
/* 813BAF1C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813BAF20 | 7C 08 02 A6 */	mflr r0
/* 813BAF24 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813BAF28 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BAF2C | 48 23 E5 99 */	bl _savegpr_28
/* 813BAF30 | 7C 7C 1B 78 */	mr r28, r3
/* 813BAF34 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 813BAF38 | 7C BE 2B 78 */	mr r30, r5
/* 813BAF3C | 7C DD 33 78 */	mr r29, r6
/* 813BAF40 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BAF44 | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813BAF48 | 7D 89 03 A6 */	mtctr r12
/* 813BAF4C | 4E 80 04 21 */	bctrl
/* 813BAF50 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813BAF54 | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 813BAF58 | 7D 89 03 A6 */	mtctr r12
/* 813BAF5C | 4E 80 04 21 */	bctrl
/* 813BAF60 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813BAF64 | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 813BAF68 | 41 82 00 08 */	beq .L_813BAF70
/* 813BAF6C | 48 00 01 0C */	b .L_813BB078
.L_813BAF70:
/* 813BAF70 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAF74 | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 813BAF78 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BAF7C | 40 82 00 FC */	bne .L_813BB078
/* 813BAF80 | 81 9D 00 00 */	lwz r12, 0x0(r29)
/* 813BAF84 | 3C 80 00 10 */	lis r4, 0x10
/* 813BAF88 | 7F A3 EB 78 */	mr r3, r29
/* 813BAF8C | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 813BAF90 | 38 84 08 00 */	addi r4, r4, 0x800
/* 813BAF94 | 7D 89 03 A6 */	mtctr r12
/* 813BAF98 | 4E 80 04 21 */	bctrl
/* 813BAF9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAFA0 | 41 82 00 D8 */	beq .L_813BB078
/* 813BAFA4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 813BAFA8 | 38 80 00 05 */	li r4, 0x5
/* 813BAFAC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 813BAFB0 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 813BAFB4 | 48 05 01 85 */	bl getScene__Q33ipl5scene7ManagerFi
/* 813BAFB8 | 3F E0 81 65 */	lis r31, mscButtonName__Q33ipl5scene6Button@ha
/* 813BAFBC | 7C 7D 1B 78 */	mr r29, r3
/* 813BAFC0 | 3B FF BF 5C */	addi r31, r31, mscButtonName__Q33ipl5scene6Button@l
/* 813BAFC4 | 7F C3 F3 78 */	mr r3, r30
/* 813BAFC8 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 813BAFCC | 48 24 74 B5 */	bl strcmp
/* 813BAFD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BAFD4 | 40 82 00 4C */	bne .L_813BB020
/* 813BAFD8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAFDC | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813BAFE0 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 813BAFE4 | 38 80 00 01 */	li r4, 0x1
/* 813BAFE8 | 4B FF E1 C9 */	bl searchChannel__Q33ipl5scene12ChannelTitleCFiPiPi
/* 813BAFEC | 7F A3 EB 78 */	mr r3, r29
/* 813BAFF0 | 38 80 00 14 */	li r4, 0x14
/* 813BAFF4 | 4B FE 1B 65 */	bl iplButton_8139CB58
/* 813BAFF8 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BAFFC | 80 81 00 14 */	lwz r4, 0x14(r1)
/* 813BB000 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 813BB004 | 4B FF E2 8D */	bl startChangeChannel__Q33ipl5scene12ChannelTitleFii
/* 813BB008 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BB00C | 3C 80 81 65 */	lis r4, lbl_8164ED74@ha
/* 813BB010 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BB014 | 38 84 ED 74 */	addi r4, r4, lbl_8164ED74@l
/* 813BB018 | 4B FB 04 55 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 813BB01C | 48 00 00 5C */	b .L_813BB078
.L_813BB020:
/* 813BB020 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 813BB024 | 7F C3 F3 78 */	mr r3, r30
/* 813BB028 | 48 24 74 59 */	bl strcmp
/* 813BB02C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BB030 | 40 82 00 48 */	bne .L_813BB078
/* 813BB034 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BB038 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 813BB03C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 813BB040 | 38 80 00 00 */	li r4, 0x0
/* 813BB044 | 4B FF E1 6D */	bl searchChannel__Q33ipl5scene12ChannelTitleCFiPiPi
/* 813BB048 | 7F A3 EB 78 */	mr r3, r29
/* 813BB04C | 38 80 00 13 */	li r4, 0x13
/* 813BB050 | 4B FE 1B 09 */	bl iplButton_8139CB58
/* 813BB054 | 80 7C 00 0C */	lwz r3, 0xc(r28)
/* 813BB058 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 813BB05C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 813BB060 | 4B FF E2 31 */	bl startChangeChannel__Q33ipl5scene12ChannelTitleFii
/* 813BB064 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BB068 | 3C 80 81 65 */	lis r4, lbl_8164ED74@ha
/* 813BB06C | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BB070 | 38 84 ED 74 */	addi r4, r4, lbl_8164ED74@l
/* 813BB074 | 4B FB 03 F9 */	bl startSE__Q33ipl3snd6SystemFPCc
.L_813BB078:
/* 813BB078 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813BB07C | 48 23 E4 95 */	bl _restgpr_28
/* 813BB080 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813BB084 | 7C 08 03 A6 */	mtlr r0
/* 813BB088 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813BB08C | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene27CsChanTtlButtonEventHandlerFUlUlPCQ33ipl10controller9Interface

# .text:0x7060 | 0x813BB090 | size: 0xC
# ipl::scene::ChannelTitle::startResetting()
.fn startResetting__Q33ipl5scene12ChannelTitleFv, global
/* 813BB090 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813BB094 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813BB098 | 4B FB 0B 7C */	b resetAllSound__Q33ipl3snd6SystemFv
.endfn startResetting__Q33ipl5scene12ChannelTitleFv

# .text:0x706C | 0x813BB09C | size: 0x8
.fn "@20@__dt__Q33ipl5scene12ChannelTitleFv", global
/* 813BB09C | 38 63 FF EC */	subi r3, r3, 0x14
/* 813BB0A0 | 4B FF 91 BC */	b __dt__Q33ipl5scene12ChannelTitleFv
.endfn "@20@__dt__Q33ipl5scene12ChannelTitleFv"

# 0x816102E0..0x81610310 | size: 0x30
.rodata
.balign 8

# .rodata:0x0 | 0x816102E0 | size: 0x10
.obj lbl_816102E0, global
	.4byte 0x00000000
	.4byte 0x52543800
	.4byte 0x00000000
	.4byte 0x52543700
.endobj lbl_816102E0

# .rodata:0x10 | 0x816102F0 | size: 0x20
.obj lbl_816102F0, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x00000000
.endobj lbl_816102F0

# 0x8164E768..0x8164F0B8 | size: 0x950
.data
.balign 8

# .data:0x0 | 0x8164E768 | size: 0xC
.obj lbl_8164E768, global
	.string "G_FocusBtnA"
.endobj lbl_8164E768

# .data:0xC | 0x8164E774 | size: 0xC
.obj lbl_8164E774, global
	.string "G_FocusBtnB"
.endobj lbl_8164E774

# .data:0x18 | 0x8164E780 | size: 0xD
.obj lbl_8164E780, global
	.string "G_SelectBtnA"
.endobj lbl_8164E780

# .data:0x25 | 0x8164E78D | size: 0xD
.obj lbl_8164E78D, global
	.string "G_SelectBtnB"
.endobj lbl_8164E78D

# .data:0x32 | 0x8164E79A | size: 0xC
.obj lbl_8164E79A, global
	.string "G_OnOffBtnA"
.endobj lbl_8164E79A

# .data:0x3E | 0x8164E7A6 | size: 0xC
.obj lbl_8164E7A6, global
	.string "G_OnOffBtnB"
.endobj lbl_8164E7A6

# .data:0x4A | 0x8164E7B2 | size: 0xE
.obj lbl_8164E7B2, global
	.string "G_ChangeTextA"
.endobj lbl_8164E7B2

# .data:0x58 | 0x8164E7C0 | size: 0x34
.obj lbl_8164E7C0, global
	.4byte 0x475F4368
	.4byte 0x616E6765
	.4byte 0x54657874
	.4byte 0x42000000
	.4byte lbl_8164E768
	.4byte lbl_8164E774
	.4byte lbl_8164E780
	.4byte lbl_8164E78D
	.4byte lbl_8164E79A
	.4byte lbl_8164E7A6
	.4byte lbl_8164E7B2
	.4byte lbl_8164E7C0
	.4byte 0x00000000
.endobj lbl_8164E7C0

# .data:0x8C | 0x8164E7F4 | size: 0x1F
.obj lbl_8164E7F4, global
	.string "my_ChTop_a_FocusBtnA_off.brlan"
.endobj lbl_8164E7F4

# .data:0xAB | 0x8164E813 | size: 0x1D
.obj lbl_8164E813, global
	.string "my_ChTop_a_FocusBtn_on.brlan"
.endobj lbl_8164E813

# .data:0xC8 | 0x8164E830 | size: 0x1E
.obj lbl_8164E830, global
	.string "my_ChTop_a_SelectBtn_Ac.brlan"
.endobj lbl_8164E830

# .data:0xE6 | 0x8164E84E | size: 0x18
.obj lbl_8164E84E, global
	.string "my_ChTop_a_OffBtn.brlan"
.endobj lbl_8164E84E

# .data:0xFE | 0x8164E866 | size: 0x17
.obj lbl_8164E866, global
	.string "my_ChTop_a_OnBtn.brlan"
.endobj lbl_8164E866

# .data:0x115 | 0x8164E87D | size: 0x1F
.obj lbl_8164E87D, global
	.string "my_ChTop_a_ChangeTextOut.brlan"
.endobj lbl_8164E87D

# .data:0x134 | 0x8164E89C | size: 0x1E
.obj lbl_8164E89C, global
	.string "my_ChTop_a_ChangeTextIn.brlan"
.endobj lbl_8164E89C

# .data:0x152 | 0x8164E8BA | size: 0x1A
.obj lbl_8164E8BA, global
	.string "my_ChTop_a_ChangeIn.brlan"
.endobj lbl_8164E8BA

# .data:0x16C | 0x8164E8D4 | size: 0x1C
.obj lbl_8164E8D4, global
	.string "my_ChTop_a_ChangeRoop.brlan"
.endobj lbl_8164E8D4

# .data:0x188 | 0x8164E8F0 | size: 0x44
.obj lbl_8164E8F0, global
	.4byte 0x6D795F43
	.4byte 0x68546F70
	.4byte 0x5F615F43
	.4byte 0x68616E67
	.4byte 0x654F7574
	.4byte 0x2E62726C
	.4byte 0x616E0000
	.4byte lbl_8164E7F4
	.4byte lbl_8164E813
	.4byte lbl_8164E830
	.4byte lbl_8164E84E
	.4byte lbl_8164E866
	.4byte lbl_8164E87D
	.4byte lbl_8164E89C
	.4byte lbl_8164E8BA
	.4byte lbl_8164E8D4
	.4byte lbl_8164E8F0
.endobj lbl_8164E8F0

# .data:0x1CC | 0x8164E934 | size: 0xD
.obj lbl_8164E934, global
	.string "banner.brlan"
.endobj lbl_8164E934

# .data:0x1D9 | 0x8164E941 | size: 0x13
.obj lbl_8164E941, global
	.string "banner_Start.brlan"
.endobj lbl_8164E941

# .data:0x1EC | 0x8164E954 | size: 0x14
.obj lbl_8164E954, global
	.4byte 0x62616E6E
	.4byte 0x65725F4C
	.4byte 0x6F6F702E
	.4byte 0x62726C61
	.4byte 0x6E000000
.endobj lbl_8164E954

# .data:0x200 | 0x8164E968 | size: 0xC
.obj lbl_8164E968, global
	.4byte lbl_8164E934
	.4byte lbl_8164E941
	.4byte lbl_8164E954
.endobj lbl_8164E968

# .data:0x20C | 0x8164E974 | size: 0xB
.obj lbl_8164E974, global
	.string "G_Comment0"
.endobj lbl_8164E974

# .data:0x217 | 0x8164E97F | size: 0x9
.obj lbl_8164E97F, global
	.string "G_DiskIn"
.endobj lbl_8164E97F

# .data:0x220 | 0x8164E988 | size: 0x14
.obj lbl_8164E988, global
	.4byte lbl_8164E974
	.4byte lbl_81696A34
	.4byte lbl_81696A3A
	.4byte lbl_8164E97F
	.4byte 0x00000000
.endobj lbl_8164E988

# .data:0x234 | 0x8164E99C | size: 0x18
.obj lbl_8164E99C, global
	.string "my_DiskCh_a_Start.brlan"
.endobj lbl_8164E99C

# .data:0x24C | 0x8164E9B4 | size: 0x1C
.obj lbl_8164E9B4, global
	.string "my_DiskCh_a_DiskStart.brlan"
.endobj lbl_8164E9B4

# .data:0x268 | 0x8164E9D0 | size: 0x1B
.obj lbl_8164E9D0, global
	.string "my_DiskCh_a_DiskLoop.brlan"
.endobj lbl_8164E9D0

# .data:0x283 | 0x8164E9EB | size: 0x1A
.obj lbl_8164E9EB, global
	.string "my_DiskCh_a_DiskEnd.brlan"
.endobj lbl_8164E9EB

# .data:0x29D | 0x8164EA05 | size: 0x1B
.obj lbl_8164EA05, global
	.string "my_DiskCh_a_DiskLost.brlan"
.endobj lbl_8164EA05

# .data:0x2B8 | 0x8164EA20 | size: 0x19
.obj lbl_8164EA20, global
	.string "my_DiskCh_a_DiskIn.brlan"
.endobj lbl_8164EA20

# .data:0x2D1 | 0x8164EA39 | size: 0x1C
.obj lbl_8164EA39, global
	.string "my_DiskCh_a_DiskEject.brlan"
.endobj lbl_8164EA39

# .data:0x2ED | 0x8164EA55 | size: 0x1A
.obj lbl_8164EA55, global
	.string "my_DiskCh_a_Unknown.brlan"
.endobj lbl_8164EA55

# .data:0x307 | 0x8164EA6F | size: 0x1E
.obj lbl_8164EA6F, global
	.string "my_DiskCh_a_UnknownLoop.brlan"
.endobj lbl_8164EA6F

# .data:0x325 | 0x8164EA8D | size: 0x1F
.obj lbl_8164EA8D, global
	.4byte 0x6D795F44
	.4byte 0x69736B43
	.4byte 0x685F615F
	.4byte 0x556E6B6E
	.4byte 0x776E456A
	.4byte 0x6563742E
	.4byte 0x62726C61
	.byte 0x6E, 0x00, 0x00
.endobj lbl_8164EA8D

# .data:0x344 | 0x8164EAAC | size: 0x28
.obj lbl_8164EAAC, global
	.4byte lbl_8164E99C
	.4byte lbl_8164E9B4
	.4byte lbl_8164E9D0
	.4byte lbl_8164E9EB
	.4byte lbl_8164EA05
	.4byte lbl_8164EA20
	.4byte lbl_8164EA39
	.4byte lbl_8164EA55
	.4byte lbl_8164EA6F
	.4byte lbl_8164EA8D
.endobj lbl_8164EAAC

# .data:0x36C | 0x8164EAD4 | size: 0x12
.obj lbl_8164EAD4, global
	.string "my_DiskCh_a.brlyt"
.endobj lbl_8164EAD4

# .data:0x37E | 0x8164EAE6 | size: 0x4A
.obj lbl_8164EAE6, global
	.4byte 0x6D795F47
	.4byte 0x43546F70
	.4byte 0x5F615F42
	.4byte 0x61636B4C
	.4byte 0x6F6F702E
	.4byte 0x62726C61
	.2byte 0x6E00
	.4byte lbl_81696A54
	.4byte lbl_81696A5A
	.4byte lbl_81696A60
	.4byte lbl_81696A66
	.4byte lbl_81696A6C
	.4byte lbl_81696A72
	.4byte lbl_81696A78
	.4byte lbl_81696A7E
	.4byte lbl_81696A84
	.4byte lbl_81696A8A
	.4byte lbl_81696A90
	.4byte lbl_81696A96
.endobj lbl_8164EAE6

# .data:0x3C8 | 0x8164EB30 | size: 0xC
.obj lbl_8164EB30, global
	.string "chanTtl.ash"
.endobj lbl_8164EB30

# .data:0x3D4 | 0x8164EB3C | size: 0xCC
.obj lbl_8164EB3C, global
	.4byte 0x6469736B
	.4byte 0x42616E6E
	.4byte 0x2E617368
	.4byte 0x006D795F
	.4byte 0x4368546F
	.4byte 0x705F612E
	.4byte 0x62726C79
	.4byte 0x74005069
	.4byte 0x63747572
	.4byte 0x655F3034
	.4byte 0x00506963
	.4byte 0x74757265
	.4byte 0x5F303500
	.4byte 0x50696374
	.4byte 0x7572655F
	.4byte 0x3036006D
	.4byte 0x795F5469
	.4byte 0x6D65725F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D795F54
	.4byte 0x696D6572
	.4byte 0x5F622E62
	.4byte 0x726C7974
	.4byte 0x00545F54
	.4byte 0x696D6572
	.4byte 0x4D657300
	.4byte 0x6D795F43
	.4byte 0x68546F70
	.4byte 0x4D65735F
	.4byte 0x612E6272
	.4byte 0x6C797400
	.4byte 0x6D795F43
	.4byte 0x68546F70
	.4byte 0x4D65735F
	.4byte 0x615F4170
	.4byte 0x70656172
	.4byte 0x2E62726C
	.4byte 0x616E006D
	.4byte 0x795F4368
	.4byte 0x546F704D
	.4byte 0x65735F61
	.4byte 0x5F4C6F73
	.4byte 0x742E6272
	.4byte 0x6C616E00
	.4byte 0x545F436F
	.4byte 0x6D6D656E
	.4byte 0x74300054
	.4byte 0x5F436F6D
	.4byte 0x6D656E74
	.4byte 0x31000000
.endobj lbl_8164EB3C

# .data:0x4A0 | 0x8164EC08 | size: 0x64
.obj jumptable_8164EC08, local
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5070
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B4FCC
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5070
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5070
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B4FD4
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5070
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5070
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5070
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B4FE8
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B4FF0
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B4FF8
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5000
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5008
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5010
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5018
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5020
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5028
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5030
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5038
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5040
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5048
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5050
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5058
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5060
	.rel calcNormal__Q33ipl5scene12ChannelTitleFv, .L_813B5068
.endobj jumptable_8164EC08

# .data:0x504 | 0x8164EC6C | size: 0xB0
.obj lbl_8164EC6C, global
	.4byte 0x736F756E
	.4byte 0x64207374
	.4byte 0x6F707065
	.4byte 0x640A004E
	.4byte 0x57433234
	.4byte 0x20536368
	.4byte 0x6564756C
	.4byte 0x65722073
	.4byte 0x746F7070
	.4byte 0x65642E0A
	.4byte 0x004E616E
	.4byte 0x64206675
	.4byte 0x6C6C2120
	.4byte 0x4F535265
	.4byte 0x626F6F74
	.4byte 0x53797374
	.4byte 0x656D2E0A
	.4byte 0x00776169
	.4byte 0x7420666F
	.4byte 0x72205750
	.4byte 0x41440A00
	.4byte 0x77616974
	.4byte 0x20666F72
	.4byte 0x20425332
	.4byte 0x0A005344
	.4byte 0x5646576F
	.4byte 0x726B6572
	.4byte 0x2074656D
	.4byte 0x696E6174
	.4byte 0x65642E0A
	.4byte 0x00564920
	.4byte 0x426C6163
	.4byte 0x6B0A0073
	.4byte 0x796E6320
	.4byte 0x7372616D
	.4byte 0x0A004372
	.4byte 0x65617465
	.4byte 0x20706C61
	.4byte 0x79207265
	.4byte 0x636F6465
	.4byte 0x0A005749
	.4byte 0x504C5F42
	.4byte 0x474D5F4D
	.4byte 0x454E5500
.endobj lbl_8164EC6C

# .data:0x5B4 | 0x8164ED1C | size: 0x17
.obj lbl_8164ED1C, global
	.string "/title/%08x/%08x/data/"
.endobj lbl_8164ED1C

# .data:0x5CB | 0x8164ED33 | size: 0x11
.obj lbl_8164ED33, global
	.string "my_GCTop_a.brlyt"
.endobj lbl_8164ED33

# .data:0x5DC | 0x8164ED44 | size: 0x30
.obj lbl_8164ED44, global
	.4byte 0x62616E6E
	.4byte 0x65722E62
	.4byte 0x726C7974
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F475241
	.4byte 0x595F4255
	.4byte 0x54544F4E
	.4byte 0x00574950
	.4byte 0x4C5F5345
	.4byte 0x5F444543
	.4byte 0x49444500
.endobj lbl_8164ED44

# .data:0x60C | 0x8164ED74 | size: 0xB
.obj lbl_8164ED74, global
	.string "WSD_SELECT"
.endobj lbl_8164ED74

# .data:0x617 | 0x8164ED7F | size: 0x74
.obj lbl_8164ED7F, global
	.4byte 0x5749504C
	.4byte 0x5F53455F
	.4byte 0x43485F55
	.4byte 0x4E53454C
	.4byte 0x45435400
	.4byte 0x4D6F6475
	.4byte 0x6C652773
	.4byte 0x20496D70
	.4byte 0x6F727453
	.4byte 0x796D626F
	.4byte 0x6C206973
	.4byte 0x20726573
	.4byte 0x6F6C7665
	.4byte 0x6420616C
	.4byte 0x6C2E0A00
	.4byte 0x2564206D
	.4byte 0x6F64756C
	.4byte 0x65277320
	.4byte 0x496D706F
	.4byte 0x72745379
	.4byte 0x6D626F6C
	.4byte 0x73206172
	.4byte 0x65206E6F
	.4byte 0x74207265
	.4byte 0x736F6C76
	.4byte 0x65642E0A
	.4byte 0x00546872
	.4byte 0x65616443
	.4byte 0x616C6300
.endobj lbl_8164ED7F

# .data:0x68B | 0x8164EDF3 | size: 0x45
.obj lbl_8164EDF3, global
	.4byte 0x5749504C
	.4byte 0x5F4D455F
	.4byte 0x47435F42
	.4byte 0x414E4E45
	.4byte 0x52005749
	.4byte 0x504C5F4D
	.4byte 0x455F4E4F
	.4byte 0x5F444953
	.4byte 0x435F4241
	.4byte 0x4E4E4552
	.4byte 0x00574950
	.4byte 0x4C5F4D45
	.4byte 0x5F494E56
	.4byte 0x414C4944
	.4byte 0x5F444953
	.4byte 0x435F4241
	.4byte 0x4E4E4552
	.byte 0x00
.endobj lbl_8164EDF3

# .data:0x6D0 | 0x8164EE38 | size: 0x48
.obj jumptable_8164EE38, local
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B876C
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8838
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B88D4
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8F98
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8F98
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8F98
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8918
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8964
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8ABC
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8B60
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8CCC
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8D24
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8D7C
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8DD4
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8E14
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8EB4
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8EE4
	.rel updateDiskState__Q33ipl5scene12ChannelTitleFii, .L_813B8F80
.endobj jumptable_8164EE38

# .data:0x718 | 0x8164EE80 | size: 0x80
.obj lbl_8164EE80, global
	.4byte 0x47434261
	.4byte 0x6E6E2E61
	.4byte 0x73680000
	.4byte 0x0025006C
	.4byte 0x00730020
	.4byte 0x0025006C
	.4byte 0x00730000
	.4byte 0x0025006C
	.4byte 0x00730020
	.4byte 0x00250064
	.4byte 0x0025006C
	.4byte 0x00730025
	.4byte 0x00300032
	.4byte 0x00640000
	.4byte 0x00310025
	.4byte 0x006C0073
	.4byte 0x00000025
	.4byte 0x00640025
	.4byte 0x006C0073
	.4byte 0x00000030
	.4byte 0x00310025
	.4byte 0x006C0073
	.4byte 0x00000025
	.4byte 0x00300032
	.4byte 0x00640025
	.4byte 0x006C0073
	.4byte 0x00000025
	.4byte 0x006C0073
	.4byte 0x00200025
	.4byte 0x006C0073
	.4byte 0x0025006C
	.4byte 0x00730000
.endobj lbl_8164EE80

# .data:0x798 | 0x8164EF00 | size: 0x14
.obj lbl_8164EF00, global
	.string "iplChannelTitle.cpp"
.endobj lbl_8164EF00

# .data:0x7AC | 0x8164EF14 | size: 0x34
.obj lbl_8164EF14, global
	.4byte 0x545F4368
	.4byte 0x546F704D
	.4byte 0x65730057
	.4byte 0x49504C5F
	.4byte 0x53455F42
	.4byte 0x545F5055
	.4byte 0x53480057
	.4byte 0x49504C5F
	.4byte 0x53455F42
	.4byte 0x545F5441
	.4byte 0x52474554
	.4byte 0x54494E47
	.4byte 0x00000000
.endobj lbl_8164EF14

# .data:0x7E0 | 0x8164EF48 | size: 0x1C
# ipl::scene::CsChanTtlButtonEventHandler::__vtable
.obj __vt__Q33ipl5scene27CsChanTtlButtonEventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte onEventDerived__Q33ipl5scene27CsChanTtlButtonEventHandlerFUlUlPCQ33ipl10controller9Interface
.endobj __vt__Q33ipl5scene27CsChanTtlButtonEventHandler

# .data:0x7FC | 0x8164EF64 | size: 0x18
# ipl::scene::ChannelTitleEventHandler::__vtable
.obj __vt__Q33ipl5scene24ChannelTitleEventHandler, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene24ChannelTitleEventHandlerFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
.endobj __vt__Q33ipl5scene24ChannelTitleEventHandler

# .data:0x814 | 0x8164EF7C | size: 0x13C
# ipl::scene::ChannelTitle::__vtable
.obj __vt__Q33ipl5scene12ChannelTitle, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene12ChannelTitleFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene12ChannelTitleFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene12ChannelTitleCFv
	.4byte startResetting__Q33ipl5scene12ChannelTitleFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene12ChannelTitleFv
	.4byte create__Q33ipl5scene12ChannelTitleFv
	.4byte fn_8140B254
	.4byte draw__Q33ipl5scene12ChannelTitleFv
	.4byte destroy__Q33ipl5scene12ChannelTitleFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene12ChannelTitleFv
	.4byte calcCommon__Q33ipl5scene12ChannelTitleFv
	.4byte calcFadein__Q33ipl5scene12ChannelTitleFv
	.4byte calcNormal__Q33ipl5scene12ChannelTitleFv
	.4byte calcFadeout__Q33ipl5scene12ChannelTitleFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene12ChannelTitle

# 0x816949F0..0x81694A10 | size: 0x20
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816949F0 | size: 0x4
.obj lbl_816949F0, global
	.float 0
.endobj lbl_816949F0

# .sdata2:0x4 | 0x816949F4 | size: 0x4
.obj lbl_816949F4, global
	.float 28
.endobj lbl_816949F4

# .sdata2:0x8 | 0x816949F8 | size: 0x4
.obj lbl_816949F8, global
	.float 1
.endobj lbl_816949F8

# .sdata2:0xC | 0x816949FC | size: 0x1
.obj lbl_816949FC, global
	.byte 0xFF
.endobj lbl_816949FC

# .sdata2:0xD | 0x816949FD | size: 0x1
.obj lbl_816949FD, global
	.byte 0xFF
.endobj lbl_816949FD

# .sdata2:0xE | 0x816949FE | size: 0x1
.obj lbl_816949FE, global
	.byte 0xFF
.endobj lbl_816949FE

# .sdata2:0xF | 0x816949FF | size: 0x1
.obj lbl_816949FF, global
	.byte 0x00
.endobj lbl_816949FF

# .sdata2:0x10 | 0x81694A00 | size: 0x4
.obj lbl_81694A00, global
	.float 2
.endobj lbl_81694A00

# .sdata2:0x14 | 0x81694A04 | size: 0x4
.obj lbl_81694A04, global
	.float 3
.endobj lbl_81694A04

# .sdata2:0x18 | 0x81694A08 | size: 0x4
.obj lbl_81694A08, global
	.float 63
.endobj lbl_81694A08

# .sdata2:0x1C | 0x81694A0C | size: 0x4
.obj lbl_81694A0C, global
	.float 100
.endobj lbl_81694A0C

# 0x81696A10..0x81696B00 | size: 0xF0
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696A10 | size: 0x7
.obj lbl_81696A10, global
	.string "B_BtnA"
.endobj lbl_81696A10

# .sdata:0x7 | 0x81696A17 | size: 0x9
.obj lbl_81696A17, global
	.4byte 0x425F4274
	.4byte 0x6E420000
	.byte 0x00
.endobj lbl_81696A17

# .sdata:0x10 | 0x81696A20 | size: 0x8
.obj lbl_81696A20, global
	.4byte lbl_81696A10
	.4byte lbl_81696A17
.endobj lbl_81696A20

# .sdata:0x18 | 0x81696A28 | size: 0x8
.obj lbl_81696A28, global
	.4byte 0x4368616E
	.4byte 0x67650000
.endobj lbl_81696A28

# .sdata:0x20 | 0x81696A30 | size: 0x4
.obj lbl_81696A30, global
	.4byte lbl_81696A28
.endobj lbl_81696A30

# .sdata:0x24 | 0x81696A34 | size: 0x6
.obj lbl_81696A34, global
	.string "G_Wii"
.endobj lbl_81696A34

# .sdata:0x2A | 0x81696A3A | size: 0x6
.obj lbl_81696A3A, global
	.4byte 0x475F4743
	.2byte 0x0000
.endobj lbl_81696A3A

# .sdata:0x30 | 0x81696A40 | size: 0x4
.obj lbl_81696A40, global
	.4byte lbl_8164EAD4
.endobj lbl_81696A40

# .sdata:0x34 | 0x81696A44 | size: 0x8
.obj lbl_81696A44, global
	.4byte 0x475F4261
	.4byte 0x636B0000
.endobj lbl_81696A44

# .sdata:0x3C | 0x81696A4C | size: 0x4
.obj lbl_81696A4C, global
	.4byte lbl_81696A44
.endobj lbl_81696A4C

# .sdata:0x40 | 0x81696A50 | size: 0x4
.obj lbl_81696A50, global
	.4byte lbl_8164EAE6
.endobj lbl_81696A50

# .sdata:0x44 | 0x81696A54 | size: 0x6
.obj lbl_81696A54, global
	.string "Fre_a"
.endobj lbl_81696A54

# .sdata:0x4A | 0x81696A5A | size: 0x6
.obj lbl_81696A5A, global
	.string "Fre_d"
.endobj lbl_81696A5A

# .sdata:0x50 | 0x81696A60 | size: 0x6
.obj lbl_81696A60, global
	.string "Fre_i"
.endobj lbl_81696A60

# .sdata:0x56 | 0x81696A66 | size: 0x6
.obj lbl_81696A66, global
	.string "Fre_l"
.endobj lbl_81696A66

# .sdata:0x5C | 0x81696A6C | size: 0x6
.obj lbl_81696A6C, global
	.string "Fre_e"
.endobj lbl_81696A6C

# .sdata:0x62 | 0x81696A72 | size: 0x6
.obj lbl_81696A72, global
	.string "Fre_f"
.endobj lbl_81696A72

# .sdata:0x68 | 0x81696A78 | size: 0x6
.obj lbl_81696A78, global
	.string "Fre_g"
.endobj lbl_81696A78

# .sdata:0x6E | 0x81696A7E | size: 0x6
.obj lbl_81696A7E, global
	.string "Fre_h"
.endobj lbl_81696A7E

# .sdata:0x74 | 0x81696A84 | size: 0x6
.obj lbl_81696A84, global
	.string "Fre_b"
.endobj lbl_81696A84

# .sdata:0x7A | 0x81696A8A | size: 0x6
.obj lbl_81696A8A, global
	.string "Fre_c"
.endobj lbl_81696A8A

# .sdata:0x80 | 0x81696A90 | size: 0x6
.obj lbl_81696A90, global
	.string "Fre_j"
.endobj lbl_81696A90

# .sdata:0x86 | 0x81696A96 | size: 0x6
.obj lbl_81696A96, global
	.string "Fre_k"
.endobj lbl_81696A96

# .sdata:0x8C | 0x81696A9C | size: 0x7
.obj lbl_81696A9C, global
	.string "T_BtnA"
.endobj lbl_81696A9C

# .sdata:0x93 | 0x81696AA3 | size: 0x9
.obj lbl_81696AA3, global
	.4byte 0x545F4274
	.4byte 0x6E420000
	.byte 0x00
.endobj lbl_81696AA3

# .sdata:0x9C | 0x81696AAC | size: 0x8
.obj lbl_81696AAC, global
	.4byte lbl_81696A9C
	.4byte lbl_81696AA3
.endobj lbl_81696AAC

# .sdata:0xA4 | 0x81696AB4 | size: 0x4
.obj lbl_81696AB4, global
	.4byte 0x00000000
.endobj lbl_81696AB4

# .sdata:0xA8 | 0x81696AB8 | size: 0x4
.obj lbl_81696AB8, global
	.4byte 0x437F0000
.endobj lbl_81696AB8

# .sdata:0xAC | 0x81696ABC | size: 0x4
.obj lbl_81696ABC, global
	.string "arc"
.endobj lbl_81696ABC

# .sdata:0xB0 | 0x81696AC0 | size: 0x6
.obj lbl_81696AC0, global
	.string "T_Bar"
.endobj lbl_81696AC0

# .sdata:0xB6 | 0x81696AC6 | size: 0xA
.obj lbl_81696AC6, global
	.4byte 0x4C61756E
	.4byte 0x63680A00
	.2byte 0x0000
.endobj lbl_81696AC6

# .sdata:0xC0 | 0x81696AD0 | size: 0x4
.obj lbl_81696AD0, global
	.4byte 0x00000000
.endobj lbl_81696AD0

# .sdata:0xC4 | 0x81696AD4 | size: 0x4
.obj lbl_81696AD4, global
	.4byte 0x437F0000
.endobj lbl_81696AD4

# .sdata:0xC8 | 0x81696AD8 | size: 0x5
.obj lbl_81696AD8, global
	.string "Calc"
.endobj lbl_81696AD8

# .sdata:0xCD | 0x81696ADD | size: 0x7
.obj lbl_81696ADD, global
	.string "Create"
.endobj lbl_81696ADD

# .sdata:0xD4 | 0x81696AE4 | size: 0x7
.obj lbl_81696AE4, global
	.string "banner"
.endobj lbl_81696AE4

# .sdata:0xDB | 0x81696AEB | size: 0x8
.obj lbl_81696AEB, global
	.string "T_Timer"
.endobj lbl_81696AEB

# .sdata:0xE3 | 0x81696AF3 | size: 0x4
.obj lbl_81696AF3, global
	.string "BS2"
.endobj lbl_81696AF3

# .sdata:0xE7 | 0x81696AF7 | size: 0x9
.obj lbl_81696AF7, global
	.4byte 0x45530000
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_81696AF7
