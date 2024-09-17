.include "macros.inc"
.file "iplSceneCreator.cpp"

# 0x81409FC4..0x8140A4F8 | size: 0x534
.text
.balign 4

# .text:0x0 | 0x81409FC4 | size: 0x44
# ipl::scene::Creator::size(int)
.fn size__Q33ipl5scene7CreatorFi, global
/* 81409FC4 | 28 03 00 24 */	cmplwi r3, 0x24
/* 81409FC8 | 41 81 00 34 */	bgt .L_81409FFC
/* 81409FCC | 3C 80 81 66 */	lis r4, jumptable_816587D8@ha
/* 81409FD0 | 54 60 10 3A */	slwi r0, r3, 2
/* 81409FD4 | 38 84 87 D8 */	addi r4, r4, jumptable_816587D8@l
/* 81409FD8 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 81409FDC | 7C 89 03 A6 */	mtctr r4
/* 81409FE0 | 4E 80 04 20 */	bctr
.L_81409FE4:
/* 81409FE4 | 3C 60 00 13 */	lis r3, 0x13
/* 81409FE8 | 38 63 C0 00 */	subi r3, r3, 0x4000
/* 81409FEC | 4E 80 00 20 */	blr
.L_81409FF0:
/* 81409FF0 | 3C 60 00 0B */	lis r3, 0xb
/* 81409FF4 | 38 63 F0 00 */	subi r3, r3, 0x1000
/* 81409FF8 | 4E 80 00 20 */	blr
.L_81409FFC:
/* 81409FFC | 3C 60 00 01 */	lis r3, 0x1
/* 8140A000 | 38 63 DC 00 */	subi r3, r3, 0x2400
/* 8140A004 | 4E 80 00 20 */	blr
.endfn size__Q33ipl5scene7CreatorFi

# .text:0x44 | 0x8140A008 | size: 0x4F0
# ipl::scene::Creator::create(int, EGG::Heap*, void*)
.fn create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, global
/* 8140A008 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8140A00C | 7C 08 02 A6 */	mflr r0
/* 8140A010 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8140A014 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140A018 | 48 1E F4 B1 */	bl _savegpr_29
/* 8140A01C | 28 03 00 25 */	cmplwi r3, 0x25
/* 8140A020 | 7C 9D 23 78 */	mr r29, r4
/* 8140A024 | 7C BE 2B 78 */	mr r30, r5
/* 8140A028 | 3B E0 00 00 */	li r31, 0x0
/* 8140A02C | 41 81 04 B0 */	bgt .L_8140A4DC
/* 8140A030 | 3C 80 81 66 */	lis r4, jumptable_8165886C@ha
/* 8140A034 | 54 60 10 3A */	slwi r0, r3, 2
/* 8140A038 | 38 84 88 6C */	addi r4, r4, jumptable_8165886C@l
/* 8140A03C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8140A040 | 7C 89 03 A6 */	mtctr r4
/* 8140A044 | 4E 80 04 20 */	bctr
.L_8140A048:
/* 8140A048 | 38 60 00 5C */	li r3, 0x5c
/* 8140A04C | 48 1E E0 51 */	bl __nw__FUl
/* 8140A050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A054 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A058 | 41 82 04 84 */	beq .L_8140A4DC
/* 8140A05C | 7F A4 EB 78 */	mr r4, r29
/* 8140A060 | 4B FF FB 8D */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 8140A064 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene9RootScene@ha
/* 8140A068 | 38 00 00 00 */	li r0, 0x0
/* 8140A06C | 38 63 40 38 */	addi r3, r3, __vt__Q33ipl5scene9RootScene@l
/* 8140A070 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8140A074 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 8140A078 | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8140A07C | 90 1F 00 54 */	stw r0, 0x54(r31)
/* 8140A080 | 93 DF 00 58 */	stw r30, 0x58(r31)
/* 8140A084 | 48 00 04 58 */	b .L_8140A4DC
.L_8140A088:
/* 8140A088 | 38 60 02 D0 */	li r3, 0x2d0
/* 8140A08C | 48 1E E0 11 */	bl __nw__FUl
/* 8140A090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A094 | 41 82 00 10 */	beq .L_8140A0A4
/* 8140A098 | 7F A4 EB 78 */	mr r4, r29
/* 8140A09C | 7F C5 F3 78 */	mr r5, r30
/* 8140A0A0 | 4B FA 04 2D */	bl __ct__Q33ipl5scene13ChannelSelectFPQ23EGG4Heapi
.L_8140A0A4:
/* 8140A0A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A0A8 | 48 00 04 34 */	b .L_8140A4DC
.L_8140A0AC:
/* 8140A0AC | 38 60 04 08 */	li r3, 0x408
/* 8140A0B0 | 48 1E DF ED */	bl __nw__FUl
/* 8140A0B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A0B8 | 41 82 00 10 */	beq .L_8140A0C8
/* 8140A0BC | 7F A4 EB 78 */	mr r4, r29
/* 8140A0C0 | 7F C5 F3 78 */	mr r5, r30
/* 8140A0C4 | 4B FA 9F 6D */	bl __ct__Q33ipl5scene12ChannelTitleFPQ23EGG4HeapPQ33ipl5scene13ChannelSelect
.L_8140A0C8:
/* 8140A0C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A0CC | 48 00 04 10 */	b .L_8140A4DC
.L_8140A0D0:
/* 8140A0D0 | 38 60 0F C0 */	li r3, 0xfc0
/* 8140A0D4 | 48 1E DF C9 */	bl __nw__FUl
/* 8140A0D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A0DC | 41 82 00 10 */	beq .L_8140A0EC
/* 8140A0E0 | 7F A4 EB 78 */	mr r4, r29
/* 8140A0E4 | 7F C5 F3 78 */	mr r5, r30
/* 8140A0E8 | 4B F8 4D 01 */	bl __ct__Q33ipl5scene5BoardFPQ23EGG4Heap
.L_8140A0EC:
/* 8140A0EC | 7C 7F 1B 78 */	mr r31, r3
/* 8140A0F0 | 48 00 03 EC */	b .L_8140A4DC
.L_8140A0F4:
/* 8140A0F4 | 38 60 01 88 */	li r3, 0x188
/* 8140A0F8 | 48 1E DF A5 */	bl __nw__FUl
/* 8140A0FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A100 | 41 82 00 0C */	beq .L_8140A10C
/* 8140A104 | 7F A4 EB 78 */	mr r4, r29
/* 8140A108 | 4B F9 1B 8D */	bl __ct__Q33ipl5scene6ButtonFPQ23EGG4Heap
.L_8140A10C:
/* 8140A10C | 7C 7F 1B 78 */	mr r31, r3
/* 8140A110 | 48 00 03 CC */	b .L_8140A4DC
.L_8140A114:
/* 8140A114 | 38 60 00 54 */	li r3, 0x54
/* 8140A118 | 48 1E DF 85 */	bl __nw__FUl
/* 8140A11C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A120 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A124 | 41 82 03 B8 */	beq .L_8140A4DC
/* 8140A128 | 7F A4 EB 78 */	mr r4, r29
/* 8140A12C | 4B FF FA C1 */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 8140A130 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene5Arrow@ha
/* 8140A134 | 38 63 C2 F8 */	addi r3, r3, __vt__Q33ipl5scene5Arrow@l
/* 8140A138 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8140A13C | 38 03 00 1C */	addi r0, r3, 0x1c
/* 8140A140 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8140A144 | 48 00 03 98 */	b .L_8140A4DC
.L_8140A148:
/* 8140A148 | 38 60 00 B0 */	li r3, 0xb0
/* 8140A14C | 48 1E DF 51 */	bl __nw__FUl
/* 8140A150 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A154 | 41 82 00 0C */	beq .L_8140A160
/* 8140A158 | 7F A4 EB 78 */	mr r4, r29
/* 8140A15C | 4B F9 3A 55 */	bl __ct__Q33ipl5scene8CalendarFPQ23EGG4Heap
.L_8140A160:
/* 8140A160 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A164 | 48 00 03 78 */	b .L_8140A4DC
.L_8140A168:
/* 8140A168 | 38 60 00 8C */	li r3, 0x8c
/* 8140A16C | 48 1E DF 31 */	bl __nw__FUl
/* 8140A170 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A174 | 41 82 00 0C */	beq .L_8140A180
/* 8140A178 | 7F A4 EB 78 */	mr r4, r29
/* 8140A17C | 4B FB 82 9D */	bl __ct__Q33ipl5scene17MailAddressSelectFPQ23EGG4Heap
.L_8140A180:
/* 8140A180 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A184 | 48 00 03 58 */	b .L_8140A4DC
.L_8140A188:
/* 8140A188 | 38 60 00 D8 */	li r3, 0xd8
/* 8140A18C | 48 1E DF 11 */	bl __nw__FUl
/* 8140A190 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A194 | 41 82 00 0C */	beq .L_8140A1A0
/* 8140A198 | 7F A4 EB 78 */	mr r4, r29
/* 8140A19C | 4B F9 62 65 */	bl __ct__Q33ipl5scene11ChannelEditFPQ23EGG4Heap
.L_8140A1A0:
/* 8140A1A0 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A1A4 | 48 00 03 38 */	b .L_8140A4DC
.L_8140A1A8:
/* 8140A1A8 | 38 60 00 D4 */	li r3, 0xd4
/* 8140A1AC | 48 1E DE F1 */	bl __nw__FUl
/* 8140A1B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A1B4 | 41 82 00 0C */	beq .L_8140A1C0
/* 8140A1B8 | 7F A4 EB 78 */	mr r4, r29
/* 8140A1BC | 4B FB 9A 11 */	bl __ct__Q33ipl5scene6MemoryFPQ23EGG4Heap
.L_8140A1C0:
/* 8140A1C0 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A1C4 | 48 00 03 18 */	b .L_8140A4DC
.L_8140A1C8:
/* 8140A1C8 | 38 60 00 D0 */	li r3, 0xd0
/* 8140A1CC | 48 1E DE D1 */	bl __nw__FUl
/* 8140A1D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A1D4 | 41 82 00 0C */	beq .L_8140A1E0
/* 8140A1D8 | 7F A4 EB 78 */	mr r4, r29
/* 8140A1DC | 4B FB FB F1 */	bl __ct__Q33ipl5scene10MemoryCardFPQ23EGG4Heap
.L_8140A1E0:
/* 8140A1E0 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A1E4 | 48 00 02 F8 */	b .L_8140A4DC
.L_8140A1E8:
/* 8140A1E8 | 38 60 0B C0 */	li r3, 0xbc0
/* 8140A1EC | 48 1E DE B1 */	bl __nw__FUl
/* 8140A1F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A1F4 | 41 82 00 10 */	beq .L_8140A204
/* 8140A1F8 | 7F A4 EB 78 */	mr r4, r29
/* 8140A1FC | 7F C5 F3 78 */	mr r5, r30
/* 8140A200 | 4B FE 65 75 */	bl __ct__Q33ipl5scene7SettingFPQ23EGG4Heapi
.L_8140A204:
/* 8140A204 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A208 | 48 00 02 D4 */	b .L_8140A4DC
.L_8140A20C:
/* 8140A20C | 38 60 00 98 */	li r3, 0x98
/* 8140A210 | 48 1E DE 8D */	bl __nw__FUl
/* 8140A214 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A218 | 41 82 00 10 */	beq .L_8140A228
/* 8140A21C | 7F A4 EB 78 */	mr r4, r29
/* 8140A220 | 7F C5 F3 78 */	mr r5, r30
/* 8140A224 | 4B FF D8 D9 */	bl __ct__Q33ipl5scene13SettingSelectFPQ23EGG4Heapi
.L_8140A228:
/* 8140A228 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A22C | 48 00 02 B0 */	b .L_8140A4DC
.L_8140A230:
/* 8140A230 | 38 60 02 A0 */	li r3, 0x2a0
/* 8140A234 | 48 1E DE 69 */	bl __nw__FUl
/* 8140A238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A23C | 41 82 00 10 */	beq .L_8140A24C
/* 8140A240 | 7F A4 EB 78 */	mr r4, r29
/* 8140A244 | 7F C5 F3 78 */	mr r5, r30
/* 8140A248 | 4B F7 74 19 */	bl __ct__Q33ipl5scene7AddressFPQ23EGG4Heapi
.L_8140A24C:
/* 8140A24C | 7C 7F 1B 78 */	mr r31, r3
/* 8140A250 | 48 00 02 8C */	b .L_8140A4DC
.L_8140A254:
/* 8140A254 | 38 60 00 60 */	li r3, 0x60
/* 8140A258 | 48 1E DE 45 */	bl __nw__FUl
/* 8140A25C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A260 | 41 82 00 10 */	beq .L_8140A270
/* 8140A264 | 7F A4 EB 78 */	mr r4, r29
/* 8140A268 | 7F C5 F3 78 */	mr r5, r30
/* 8140A26C | 4B FF CA 55 */	bl __ct__Q33ipl5scene9SettingBgFPQ23EGG4Heapi
.L_8140A270:
/* 8140A270 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A274 | 48 00 02 68 */	b .L_8140A4DC
.L_8140A278:
/* 8140A278 | 38 60 02 90 */	li r3, 0x290
/* 8140A27C | 48 1E DE 21 */	bl __nw__FUl
/* 8140A280 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A284 | 41 82 00 10 */	beq .L_8140A294
/* 8140A288 | 7F A4 EB 78 */	mr r4, r29
/* 8140A28C | 7F C5 F3 78 */	mr r5, r30
/* 8140A290 | 4B FF CC 41 */	bl __ct__Q33ipl5scene13SettingButtonFPQ23EGG4Heapi
.L_8140A294:
/* 8140A294 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A298 | 48 00 02 44 */	b .L_8140A4DC
.L_8140A29C:
/* 8140A29C | 38 60 04 F0 */	li r3, 0x4f0
/* 8140A2A0 | 48 1E DD FD */	bl __nw__FUl
/* 8140A2A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A2A8 | 41 82 00 10 */	beq .L_8140A2B8
/* 8140A2AC | 7F A4 EB 78 */	mr r4, r29
/* 8140A2B0 | 7F C5 F3 78 */	mr r5, r30
/* 8140A2B4 | 4B F7 E0 29 */	bl __ct__Q33ipl5scene11AddressEditFPQ23EGG4Heapi
.L_8140A2B8:
/* 8140A2B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A2BC | 48 00 02 20 */	b .L_8140A4DC
.L_8140A2C0:
/* 8140A2C0 | 38 60 00 7C */	li r3, 0x7c
/* 8140A2C4 | 48 1E DD D9 */	bl __nw__FUl
/* 8140A2C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A2CC | 41 82 00 0C */	beq .L_8140A2D8
/* 8140A2D0 | 7F A4 EB 78 */	mr r4, r29
/* 8140A2D4 | 4B F7 D1 41 */	bl __ct__Q33ipl5scene13AddressAddSelFPQ23EGG4Heap
.L_8140A2D8:
/* 8140A2D8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A2DC | 48 00 02 00 */	b .L_8140A4DC
.L_8140A2E0:
/* 8140A2E0 | 38 60 00 A0 */	li r3, 0xa0
/* 8140A2E4 | 48 1E DD B9 */	bl __nw__FUl
/* 8140A2E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A2EC | 41 82 00 0C */	beq .L_8140A2F8
/* 8140A2F0 | 7F A4 EB 78 */	mr r4, r29
/* 8140A2F4 | 48 00 11 29 */	bl __ct__Q33ipl5scene10TextWriterFPQ23EGG4Heap
.L_8140A2F8:
/* 8140A2F8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A2FC | 48 00 01 E0 */	b .L_8140A4DC
.L_8140A300:
/* 8140A300 | 38 60 02 00 */	li r3, 0x200
/* 8140A304 | 48 1E DD 99 */	bl __nw__FUl
/* 8140A308 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A30C | 41 82 00 10 */	beq .L_8140A31C
/* 8140A310 | 7F A4 EB 78 */	mr r4, r29
/* 8140A314 | 7F C5 F3 78 */	mr r5, r30
/* 8140A318 | 4B FB 5F E1 */	bl __ct__Q33ipl5scene12LetterWriterFPQ23EGG4Heapi
.L_8140A31C:
/* 8140A31C | 7C 7F 1B 78 */	mr r31, r3
/* 8140A320 | 48 00 01 BC */	b .L_8140A4DC
.L_8140A324:
/* 8140A324 | 38 60 2B 90 */	li r3, 0x2b90
/* 8140A328 | 48 1E DD 75 */	bl __nw__FUl
/* 8140A32C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A330 | 41 82 00 0C */	beq .L_8140A33C
/* 8140A334 | 7F A4 EB 78 */	mr r4, r29
/* 8140A338 | 4B FC DC 59 */	bl __ct__Q33ipl5scene12NakamuraTestFPQ23EGG4Heap
.L_8140A33C:
/* 8140A33C | 7C 7F 1B 78 */	mr r31, r3
/* 8140A340 | 48 00 01 9C */	b .L_8140A4DC
.L_8140A344:
/* 8140A344 | 38 60 00 78 */	li r3, 0x78
/* 8140A348 | 48 1E DD 55 */	bl __nw__FUl
/* 8140A34C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A350 | 41 82 00 10 */	beq .L_8140A360
/* 8140A354 | 7F A4 EB 78 */	mr r4, r29
/* 8140A358 | 7F C5 F3 78 */	mr r5, r30
/* 8140A35C | 4B FB 3C B5 */	bl __ct__Q33ipl5scene12KitayamaTestFPQ23EGG4Heapi
.L_8140A360:
/* 8140A360 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A364 | 48 00 01 78 */	b .L_8140A4DC
.L_8140A368:
/* 8140A368 | 38 60 00 80 */	li r3, 0x80
/* 8140A36C | 48 1E DD 31 */	bl __nw__FUl
/* 8140A370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A374 | 41 82 00 0C */	beq .L_8140A380
/* 8140A378 | 7F A4 EB 78 */	mr r4, r29
/* 8140A37C | 4B FB 32 5D */	bl __ct__Q33ipl5scene8skHealthFPQ23EGG4Heap
.L_8140A380:
/* 8140A380 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A384 | 48 00 01 58 */	b .L_8140A4DC
.L_8140A388:
/* 8140A388 | 38 60 00 90 */	li r3, 0x90
/* 8140A38C | 48 1E DD 11 */	bl __nw__FUl
/* 8140A390 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A394 | 41 82 00 10 */	beq .L_8140A3A4
/* 8140A398 | 7F A4 EB 78 */	mr r4, r29
/* 8140A39C | 7F C5 F3 78 */	mr r5, r30
/* 8140A3A0 | 4B FC F2 1D */	bl __ct__Q33ipl5scene14ParentalDialogFPQ23EGG4Heapi
.L_8140A3A4:
/* 8140A3A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A3A8 | 48 00 01 34 */	b .L_8140A4DC
.L_8140A3AC:
/* 8140A3AC | 38 60 03 1C */	li r3, 0x31c
/* 8140A3B0 | 48 1E DC ED */	bl __nw__FUl
/* 8140A3B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A3B8 | 41 82 00 10 */	beq .L_8140A3C8
/* 8140A3BC | 7F A4 EB 78 */	mr r4, r29
/* 8140A3C0 | 7F C5 F3 78 */	mr r5, r30
/* 8140A3C4 | 4B FB 0C E1 */	bl __ct__Q33ipl5scene10FaceSelectFPQ23EGG4Heapi
.L_8140A3C8:
/* 8140A3C8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A3CC | 48 00 01 10 */	b .L_8140A4DC
.L_8140A3D0:
/* 8140A3D0 | 38 60 00 60 */	li r3, 0x60
/* 8140A3D4 | 48 1E DC C9 */	bl __nw__FUl
/* 8140A3D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A3DC | 41 82 00 0C */	beq .L_8140A3E8
/* 8140A3E0 | 7F A4 EB 78 */	mr r4, r29
/* 8140A3E4 | 4B F8 46 81 */	bl __ct__Q33ipl5scene8BackMenuFPQ23EGG4Heap
.L_8140A3E8:
/* 8140A3E8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A3EC | 48 00 00 F0 */	b .L_8140A4DC
.L_8140A3F0:
/* 8140A3F0 | 38 60 00 78 */	li r3, 0x78
/* 8140A3F4 | 48 1E DC A9 */	bl __nw__FUl
/* 8140A3F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A3FC | 41 82 00 0C */	beq .L_8140A408
/* 8140A400 | 7F A4 EB 78 */	mr r4, r29
/* 8140A404 | 4B FB 76 C1 */	bl __ct__Q33ipl5scene9LimitOverFPQ23EGG4Heap
.L_8140A408:
/* 8140A408 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A40C | 48 00 00 D0 */	b .L_8140A4DC
.L_8140A410:
/* 8140A410 | 38 60 00 58 */	li r3, 0x58
/* 8140A414 | 48 1E DC 89 */	bl __nw__FUl
/* 8140A418 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A41C | 7C 7F 1B 78 */	mr r31, r3
/* 8140A420 | 41 82 00 BC */	beq .L_8140A4DC
/* 8140A424 | 7F A4 EB 78 */	mr r4, r29
/* 8140A428 | 4B FF F7 C5 */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 8140A42C | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene6Reboot@ha
/* 8140A430 | 38 63 3F E8 */	addi r3, r3, __vt__Q33ipl5scene6Reboot@l
/* 8140A434 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8140A438 | 38 03 00 1C */	addi r0, r3, 0x1c
/* 8140A43C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8140A440 | 93 DF 00 54 */	stw r30, 0x54(r31)
/* 8140A444 | 48 00 00 98 */	b .L_8140A4DC
.L_8140A448:
/* 8140A448 | 38 60 07 80 */	li r3, 0x780
/* 8140A44C | 48 1E DC 51 */	bl __nw__FUl
/* 8140A450 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A454 | 41 82 00 0C */	beq .L_8140A460
/* 8140A458 | 7F A4 EB 78 */	mr r4, r29
/* 8140A45C | 4B FD 06 AD */	bl __ct__Q33ipl5scene15SDChannelSelectFPQ23EGG4Heapi
.L_8140A460:
/* 8140A460 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A464 | 48 00 00 78 */	b .L_8140A4DC
.L_8140A468:
/* 8140A468 | 38 60 34 B8 */	li r3, 0x34b8
/* 8140A46C | 48 1E DC 31 */	bl __nw__FUl
/* 8140A470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A474 | 41 82 00 10 */	beq .L_8140A484
/* 8140A478 | 7F A4 EB 78 */	mr r4, r29
/* 8140A47C | 7F C5 F3 78 */	mr r5, r30
/* 8140A480 | 4B FD A7 3D */	bl __ct__Q33ipl5scene14SDChannelTitleFPQ23EGG4Heapi
.L_8140A484:
/* 8140A484 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A488 | 48 00 00 54 */	b .L_8140A4DC
.L_8140A48C:
/* 8140A48C | 38 60 00 84 */	li r3, 0x84
/* 8140A490 | 48 1E DC 0D */	bl __nw__FUl
/* 8140A494 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A498 | 41 82 00 0C */	beq .L_8140A4A4
/* 8140A49C | 7F A4 EB 78 */	mr r4, r29
/* 8140A4A0 | 4B FD EF DD */	bl __ct__Q33ipl5scene15SDChannelButtonFPQ23EGG4Heap
.L_8140A4A4:
/* 8140A4A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A4A8 | 48 00 00 34 */	b .L_8140A4DC
.L_8140A4AC:
/* 8140A4AC | 38 60 00 54 */	li r3, 0x54
/* 8140A4B0 | 48 1E DB ED */	bl __nw__FUl
/* 8140A4B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8140A4B8 | 7C 7F 1B 78 */	mr r31, r3
/* 8140A4BC | 41 82 00 20 */	beq .L_8140A4DC
/* 8140A4C0 | 7F A4 EB 78 */	mr r4, r29
/* 8140A4C4 | 4B FF F7 29 */	bl __ct__Q33ipl5scene4BaseFPQ23EGG4Heap
/* 8140A4C8 | 3C 60 81 65 */	lis r3, lbl_81655A70@ha
/* 8140A4CC | 38 63 5A 70 */	addi r3, r3, lbl_81655A70@l
/* 8140A4D0 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8140A4D4 | 38 03 00 1C */	addi r0, r3, 0x1c
/* 8140A4D8 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8140A4DC:
/* 8140A4DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8140A4E0 | 7F E3 FB 78 */	mr r3, r31
/* 8140A4E4 | 48 1E F0 31 */	bl _restgpr_29
/* 8140A4E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8140A4EC | 7C 08 03 A6 */	mtlr r0
/* 8140A4F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8140A4F4 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv

# 0x816587D8..0x81658908 | size: 0x130
.data
.balign 8

# .data:0x0 | 0x816587D8 | size: 0x94
.obj jumptable_816587D8, local
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FFC
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FE4
	.rel size__Q33ipl5scene7CreatorFi, .L_81409FF0
.endobj jumptable_816587D8

# .data:0x94 | 0x8165886C | size: 0x98
.obj jumptable_8165886C, local
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A4DC
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A048
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A088
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A0AC
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A0D0
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A0F4
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A114
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A148
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A168
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A4DC
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A2E0
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A300
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A188
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A1A8
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A1C8
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A4DC
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A4DC
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A4DC
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A1E8
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A20C
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A230
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A254
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A278
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A29C
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A2C0
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A324
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A368
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A388
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A3AC
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A344
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A3D0
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A3F0
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A410
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A4DC
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A448
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A468
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A48C
	.rel create__Q33ipl5scene7CreatorFiPQ23EGG4HeapPv, .L_8140A4AC
.endobj jumptable_8165886C

# .data:0x12C | 0x81658904 | size: 0x4
.obj gap_08_81658904_data, global
.hidden gap_08_81658904_data
	.4byte 0x00000000
.endobj gap_08_81658904_data
