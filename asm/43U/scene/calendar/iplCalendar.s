.include "macros.inc"
.file "iplCalendar.cpp"

# 0x810B7300..0x810B7318 | size: 0x18
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B7300 | size: 0xC
# ipl::scene::Calendar::mscMinDate
.obj mscMinDate__Q33ipl5scene8Calendar, global
	.skip 0xC
.endobj mscMinDate__Q33ipl5scene8Calendar

# .bss:0xC | 0x810B730C | size: 0xC
# ipl::scene::Calendar::mscMaxDate
.obj mscMaxDate__Q33ipl5scene8Calendar, global
	.skip 0xC
.endobj mscMaxDate__Q33ipl5scene8Calendar

# 0x8139DBB0..0x8139F8CC | size: 0x1D1C
.text
.balign 4

# .text:0x0 | 0x8139DBB0 | size: 0xE4
# ipl::scene::Calendar::Calendar(EGG::Heap*)
.fn __ct__Q33ipl5scene8CalendarFPQ23EGG4Heap, global
/* 8139DBB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139DBB4 | 7C 08 02 A6 */	mflr r0
/* 8139DBB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139DBBC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139DBC0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139DBC4 | 7C 7E 1B 78 */	mr r30, r3
/* 8139DBC8 | 48 06 D6 41 */	bl __ct__Q33ipl5scene14FaderSceneBaseFPQ23EGG4Heap
/* 8139DBCC | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene8Calendar@ha
/* 8139DBD0 | 3B E0 00 00 */	li r31, 0x0
/* 8139DBD4 | 38 63 C5 7C */	addi r3, r3, __vt__Q33ipl5scene8Calendar@l
/* 8139DBD8 | 93 FE 00 A0 */	stw r31, 0xa0(r30)
/* 8139DBDC | 38 A3 00 1C */	addi r5, r3, 0x1c
/* 8139DBE0 | 38 80 00 40 */	li r4, 0x40
/* 8139DBE4 | 38 03 00 68 */	addi r0, r3, 0x68
/* 8139DBE8 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 8139DBEC | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8139DBF0 | 93 FE 00 60 */	stw r31, 0x60(r30)
/* 8139DBF4 | 90 BE 00 14 */	stw r5, 0x14(r30)
/* 8139DBF8 | 90 1E 00 58 */	stw r0, 0x58(r30)
/* 8139DBFC | 93 FE 00 64 */	stw r31, 0x64(r30)
/* 8139DC00 | 93 FE 00 68 */	stw r31, 0x68(r30)
/* 8139DC04 | 93 FE 00 6C */	stw r31, 0x6c(r30)
/* 8139DC08 | 93 FE 00 70 */	stw r31, 0x70(r30)
/* 8139DC0C | 93 FE 00 74 */	stw r31, 0x74(r30)
/* 8139DC10 | 93 FE 00 78 */	stw r31, 0x78(r30)
/* 8139DC14 | 93 FE 00 7C */	stw r31, 0x7c(r30)
/* 8139DC18 | 93 FE 00 80 */	stw r31, 0x80(r30)
/* 8139DC1C | 9B FE 00 9C */	stb r31, 0x9c(r30)
/* 8139DC20 | 93 FE 00 A4 */	stw r31, 0xa4(r30)
/* 8139DC24 | 93 FE 00 A8 */	stw r31, 0xa8(r30)
/* 8139DC28 | 48 17 44 35 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8139DC2C | 38 7E 00 90 */	addi r3, r30, 0x90
/* 8139DC30 | 38 80 00 48 */	li r4, 0x48
/* 8139DC34 | 48 17 44 29 */	bl List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
/* 8139DC38 | 4B F9 7E 55 */	bl getRegion__Q23ipl6SystemFv
/* 8139DC3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DC40 | 41 82 00 1C */	beq .L_8139DC5C
/* 8139DC44 | 4B F9 7E 49 */	bl getRegion__Q23ipl6SystemFv
/* 8139DC48 | 28 03 00 06 */	cmplwi r3, 0x6
/* 8139DC4C | 41 82 00 10 */	beq .L_8139DC5C
/* 8139DC50 | 4B F9 7E 3D */	bl getRegion__Q23ipl6SystemFv
/* 8139DC54 | 28 03 00 0B */	cmplwi r3, 0xb
/* 8139DC58 | 40 82 00 08 */	bne .L_8139DC60
.L_8139DC5C:
/* 8139DC5C | 3B E0 00 01 */	li r31, 0x1
.L_8139DC60:
/* 8139DC60 | 9B FE 00 AC */	stb r31, 0xac(r30)
/* 8139DC64 | 4B F9 7E 29 */	bl getRegion__Q23ipl6SystemFv
/* 8139DC68 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139DC6C | 7F C3 F3 78 */	mr r3, r30
/* 8139DC70 | 7C 00 00 34 */	cntlzw r0, r0
/* 8139DC74 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8139DC78 | 98 1E 00 AD */	stb r0, 0xad(r30)
/* 8139DC7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139DC80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139DC84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139DC88 | 7C 08 03 A6 */	mtlr r0
/* 8139DC8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139DC90 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene8CalendarFPQ23EGG4Heap

# .text:0xE4 | 0x8139DC94 | size: 0x4C
# ipl::scene::Calendar::prepare()
.fn prepare__Q33ipl5scene8CalendarFv, global
/* 8139DC94 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139DC98 | 7C 08 02 A6 */	mflr r0
/* 8139DC9C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8139DCA0 | 3C A0 81 65 */	lis r5, lbl_8164C4BC@ha
/* 8139DCA4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139DCA8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139DCAC | 38 A5 C4 BC */	addi r5, r5, lbl_8164C4BC@l
/* 8139DCB0 | 38 C0 00 00 */	li r6, 0x0
/* 8139DCB4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139DCB8 | 7C 7F 1B 78 */	mr r31, r3
/* 8139DCBC | 80 64 00 6C */	lwz r3, 0x6c(r4)
/* 8139DCC0 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8139DCC4 | 4B F9 FB F1 */	bl readLayoutAsync__Q33ipl4nand7ManagerFPQ23EGG4HeapPCcb
/* 8139DCC8 | 90 7F 00 70 */	stw r3, 0x70(r31)
/* 8139DCCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139DCD0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139DCD4 | 7C 08 03 A6 */	mtlr r0
/* 8139DCD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139DCDC | 4E 80 00 20 */	blr
.endfn prepare__Q33ipl5scene8CalendarFv

# .text:0x130 | 0x8139DCE0 | size: 0x1FC
# ipl::scene::Calendar::create()
.fn create__Q33ipl5scene8CalendarFv, global
/* 8139DCE0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139DCE4 | 7C 08 02 A6 */	mflr r0
/* 8139DCE8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139DCEC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139DCF0 | 48 25 B7 D5 */	bl _savegpr_28
/* 8139DCF4 | 3F E0 81 65 */	lis r31, lbl_8164C348@ha
/* 8139DCF8 | 7C 7C 1B 78 */	mr r28, r3
/* 8139DCFC | 3B FF C3 48 */	addi r31, r31, lbl_8164C348@l
/* 8139DD00 | 38 60 05 80 */	li r3, 0x580
/* 8139DD04 | 48 25 A3 99 */	bl __nw__FUl
/* 8139DD08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DD0C | 41 82 00 18 */	beq .L_8139DD24
/* 8139DD10 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8139DD14 | 38 FF 01 81 */	addi r7, r31, 0x181
/* 8139DD18 | 80 BC 00 70 */	lwz r5, 0x70(r28)
/* 8139DD1C | 38 CD 87 80 */	li r6, lbl_816967C0@sda21
/* 8139DD20 | 4B FC C3 05 */	bl __ct__Q33ipl6layout6ObjectFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
.L_8139DD24:
/* 8139DD24 | 90 7C 00 6C */	stw r3, 0x6c(r28)
/* 8139DD28 | 38 9F 01 93 */	addi r4, r31, 0x193
/* 8139DD2C | 38 AD 87 84 */	li r5, lbl_816967C4@sda21
/* 8139DD30 | 38 C0 00 00 */	li r6, 0x0
/* 8139DD34 | 38 E0 00 01 */	li r7, 0x1
/* 8139DD38 | 4B FC C7 A9 */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139DD3C | 90 7C 00 74 */	stw r3, 0x74(r28)
/* 8139DD40 | 38 9F 01 93 */	addi r4, r31, 0x193
/* 8139DD44 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 8139DD48 | 38 AD 87 8A */	li r5, lbl_816967CA@sda21
/* 8139DD4C | 38 C0 00 01 */	li r6, 0x1
/* 8139DD50 | 38 E0 00 01 */	li r7, 0x1
/* 8139DD54 | 4B FC C7 8D */	bl bindToGroup__Q33ipl6layout6ObjectFPCcPCcbb
/* 8139DD58 | 90 7C 00 78 */	stw r3, 0x78(r28)
/* 8139DD5C | 7F 83 E3 78 */	mr r3, r28
/* 8139DD60 | 38 80 00 00 */	li r4, 0x0
/* 8139DD64 | 48 00 04 D5 */	bl doAnim__Q33ipl5scene8CalendarFi
/* 8139DD68 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 8139DD6C | 4B FC C9 99 */	bl calc__Q33ipl6layout6ObjectFv
/* 8139DD70 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 8139DD74 | 4B FC C8 C1 */	bl finishBinding__Q33ipl6layout6ObjectFv
/* 8139DD78 | 3B A0 00 00 */	li r29, 0x0
.L_8139DD7C:
/* 8139DD7C | 38 60 00 50 */	li r3, 0x50
/* 8139DD80 | 48 25 A3 1D */	bl __nw__FUl
/* 8139DD84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DD88 | 7C 7E 1B 78 */	mr r30, r3
/* 8139DD8C | 41 82 00 1C */	beq .L_8139DDA8
/* 8139DD90 | 80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8139DD94 | 38 FF 01 A5 */	addi r7, r31, 0x1a5
/* 8139DD98 | 80 BC 00 70 */	lwz r5, 0x70(r28)
/* 8139DD9C | 38 CD 87 80 */	li r6, lbl_816967C0@sda21
/* 8139DDA0 | 48 00 1B 2D */	bl __ct__Q33ipl5scene4DateFPQ23EGG4HeapPQ33ipl4nand10LayoutFilePCcPCc
/* 8139DDA4 | 7C 7E 1B 78 */	mr r30, r3
.L_8139DDA8:
/* 8139DDA8 | 2C 1D 00 2A */	cmpwi r29, 0x2a
/* 8139DDAC | 40 80 00 10 */	bge .L_8139DDBC
/* 8139DDB0 | 7F C4 F3 78 */	mr r4, r30
/* 8139DDB4 | 38 7C 00 90 */	addi r3, r28, 0x90
/* 8139DDB8 | 48 17 42 BD */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
.L_8139DDBC:
/* 8139DDBC | 7F C4 F3 78 */	mr r4, r30
/* 8139DDC0 | 38 7C 00 84 */	addi r3, r28, 0x84
/* 8139DDC4 | 48 17 42 B1 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8139DDC8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8139DDCC | 2C 1D 00 54 */	cmpwi r29, 0x54
/* 8139DDD0 | 41 80 FF AC */	blt .L_8139DD7C
/* 8139DDD4 | 7F 83 E3 78 */	mr r3, r28
/* 8139DDD8 | 38 80 00 01 */	li r4, 0x1
/* 8139DDDC | 48 00 15 D5 */	bl set_date_pos__Q33ipl5scene8CalendarFi
/* 8139DDE0 | 7F 83 E3 78 */	mr r3, r28
/* 8139DDE4 | 38 80 00 02 */	li r4, 0x2
/* 8139DDE8 | 48 00 15 C9 */	bl set_date_pos__Q33ipl5scene8CalendarFi
/* 8139DDEC | 3B A0 00 00 */	li r29, 0x0
/* 8139DDF0 | 48 00 00 0C */	b .L_8139DDFC
.L_8139DDF4:
/* 8139DDF4 | 7F A3 EB 78 */	mr r3, r29
/* 8139DDF8 | 48 00 1C DD */	bl calc__Q33ipl5scene4DateFv
.L_8139DDFC:
/* 8139DDFC | 7F A4 EB 78 */	mr r4, r29
/* 8139DE00 | 38 7C 00 84 */	addi r3, r28, 0x84
/* 8139DE04 | 48 17 44 D9 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8139DE08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DE0C | 7C 7D 1B 78 */	mr r29, r3
/* 8139DE10 | 40 82 FF E4 */	bne .L_8139DDF4
/* 8139DE14 | 38 60 00 0C */	li r3, 0xc
/* 8139DE18 | 48 25 A2 85 */	bl __nw__FUl
/* 8139DE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DE20 | 7C 7F 1B 78 */	mr r31, r3
/* 8139DE24 | 41 82 00 30 */	beq .L_8139DE54
/* 8139DE28 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 8139DE2C | 7F 83 E3 78 */	mr r3, r28
/* 8139DE30 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8139DE34 | 7D 89 03 A6 */	mtctr r12
/* 8139DE38 | 4E 80 04 21 */	bctrl
/* 8139DE3C | 80 03 0D 08 */	lwz r0, 0xd08(r3)
/* 8139DE40 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8139DE44 | 80 03 0D 0C */	lwz r0, 0xd0c(r3)
/* 8139DE48 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139DE4C | 80 03 0D 10 */	lwz r0, 0xd10(r3)
/* 8139DE50 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_8139DE54:
/* 8139DE54 | 93 FC 00 7C */	stw r31, 0x7c(r28)
/* 8139DE58 | 7F 83 E3 78 */	mr r3, r28
/* 8139DE5C | 48 00 0E B1 */	bl set_textbox_day__Q33ipl5scene8CalendarFv
/* 8139DE60 | 7F 83 E3 78 */	mr r3, r28
/* 8139DE64 | 48 00 0F 3D */	bl set_textbox_month__Q33ipl5scene8CalendarFv
/* 8139DE68 | 80 BC 00 7C */	lwz r5, 0x7c(r28)
/* 8139DE6C | 7F 83 E3 78 */	mr r3, r28
/* 8139DE70 | 38 80 00 01 */	li r4, 0x1
/* 8139DE74 | 48 00 12 31 */	bl set_textbox_date__Q33ipl5scene8CalendarFiRCQ33ipl7utility4Date
/* 8139DE78 | 7F 83 E3 78 */	mr r3, r28
/* 8139DE7C | 48 00 18 C9 */	bl exec_search_task__Q33ipl5scene8CalendarFv
/* 8139DE80 | 88 1C 00 AC */	lbz r0, 0xac(r28)
/* 8139DE84 | 38 80 00 00 */	li r4, 0x0
/* 8139DE88 | 80 7C 00 78 */	lwz r3, 0x78(r28)
/* 8139DE8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139DE90 | 40 82 00 14 */	bne .L_8139DEA4
/* 8139DE94 | 88 1C 00 AD */	lbz r0, 0xad(r28)
/* 8139DE98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139DE9C | 40 82 00 08 */	bne .L_8139DEA4
/* 8139DEA0 | 38 80 00 01 */	li r4, 0x1
.L_8139DEA4:
/* 8139DEA4 | 6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8139DEA8 | 3C 00 43 30 */	lis r0, 0x4330
/* 8139DEAC | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8139DEB0 | C8 22 84 D8 */	lfd f1, lbl_816948D8@sda21(r0)
/* 8139DEB4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8139DEB8 | C8 01 00 08 */	lfd f0, 0x8(r1)
/* 8139DEBC | EC 20 08 28 */	fsubs f1, f0, f1
/* 8139DEC0 | 4B FC BD A1 */	bl initAnmFrame__Q33ipl6layout8AnimatorFf
/* 8139DEC4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139DEC8 | 48 25 B6 49 */	bl _restgpr_28
/* 8139DECC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139DED0 | 7C 08 03 A6 */	mtlr r0
/* 8139DED4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139DED8 | 4E 80 00 20 */	blr
.endfn create__Q33ipl5scene8CalendarFv

# .text:0x32C | 0x8139DEDC | size: 0xA4
# ipl::scene::Calendar::calcCommon()
.fn calcCommon__Q33ipl5scene8CalendarFv, global
/* 8139DEDC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139DEE0 | 7C 08 02 A6 */	mflr r0
/* 8139DEE4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139DEE8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139DEEC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139DEF0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139DEF4 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8139DEF8 | 4B FC C8 0D */	bl calc__Q33ipl6layout6ObjectFv
/* 8139DEFC | 7F C3 F3 78 */	mr r3, r30
/* 8139DF00 | 38 80 00 01 */	li r4, 0x1
/* 8139DF04 | 48 00 14 AD */	bl set_date_pos__Q33ipl5scene8CalendarFi
/* 8139DF08 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8139DF0C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139DF10 | 41 82 00 24 */	beq .L_8139DF34
/* 8139DF14 | 40 80 00 2C */	bge .L_8139DF40
/* 8139DF18 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139DF1C | 40 80 00 08 */	bge .L_8139DF24
/* 8139DF20 | 48 00 00 20 */	b .L_8139DF40
.L_8139DF24:
/* 8139DF24 | 7F C3 F3 78 */	mr r3, r30
/* 8139DF28 | 38 80 00 02 */	li r4, 0x2
/* 8139DF2C | 48 00 14 85 */	bl set_date_pos__Q33ipl5scene8CalendarFi
/* 8139DF30 | 48 00 00 10 */	b .L_8139DF40
.L_8139DF34:
/* 8139DF34 | 7F C3 F3 78 */	mr r3, r30
/* 8139DF38 | 38 80 00 00 */	li r4, 0x0
/* 8139DF3C | 48 00 14 75 */	bl set_date_pos__Q33ipl5scene8CalendarFi
.L_8139DF40:
/* 8139DF40 | 3B E0 00 00 */	li r31, 0x0
/* 8139DF44 | 48 00 00 0C */	b .L_8139DF50
.L_8139DF48:
/* 8139DF48 | 7F E3 FB 78 */	mr r3, r31
/* 8139DF4C | 48 00 1B 89 */	bl calc__Q33ipl5scene4DateFv
.L_8139DF50:
/* 8139DF50 | 7F E4 FB 78 */	mr r4, r31
/* 8139DF54 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8139DF58 | 48 17 43 85 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8139DF5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DF60 | 7C 7F 1B 78 */	mr r31, r3
/* 8139DF64 | 40 82 FF E4 */	bne .L_8139DF48
/* 8139DF68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139DF6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139DF70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139DF74 | 7C 08 03 A6 */	mtlr r0
/* 8139DF78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139DF7C | 4E 80 00 20 */	blr
.endfn calcCommon__Q33ipl5scene8CalendarFv

# .text:0x3D0 | 0x8139DF80 | size: 0xC4
# ipl::scene::Calendar::calcFadein()
.fn calcFadein__Q33ipl5scene8CalendarFv, global
/* 8139DF80 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139DF84 | 7C 08 02 A6 */	mflr r0
/* 8139DF88 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139DF8C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139DF90 | 48 25 B5 39 */	bl _savegpr_29
/* 8139DF94 | 7C 7D 1B 78 */	mr r29, r3
/* 8139DF98 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8139DF9C | 3B C0 00 00 */	li r30, 0x0
/* 8139DFA0 | 38 80 00 00 */	li r4, 0x0
/* 8139DFA4 | 4B FC CB 2D */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 8139DFA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DFAC | 40 82 00 7C */	bne .L_8139E028
/* 8139DFB0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139DFB4 | 38 80 00 05 */	li r4, 0x5
/* 8139DFB8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139DFBC | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139DFC0 | 48 06 D1 79 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139DFC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DFC8 | 7C 7F 1B 78 */	mr r31, r3
/* 8139DFCC | 41 82 00 5C */	beq .L_8139E028
/* 8139DFD0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 8139DFD4 | 7F A4 EB 78 */	mr r4, r29
/* 8139DFD8 | 41 82 00 08 */	beq .L_8139DFE0
/* 8139DFDC | 38 9D 00 58 */	addi r4, r29, 0x58
.L_8139DFE0:
/* 8139DFE0 | 7F E3 FB 78 */	mr r3, r31
/* 8139DFE4 | 38 A0 00 00 */	li r5, 0x0
/* 8139DFE8 | 4B FF E9 55 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8139DFEC | 7F A3 EB 78 */	mr r3, r29
/* 8139DFF0 | 48 00 17 ED */	bl is_lower_limit__Q33ipl5scene8CalendarFv
/* 8139DFF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139DFF8 | 40 82 00 10 */	bne .L_8139E008
/* 8139DFFC | 7F E3 FB 78 */	mr r3, r31
/* 8139E000 | 38 80 00 18 */	li r4, 0x18
/* 8139E004 | 4B FF EB 55 */	bl iplButton_8139CB58
.L_8139E008:
/* 8139E008 | 7F A3 EB 78 */	mr r3, r29
/* 8139E00C | 48 00 17 99 */	bl is_upper_limit__Q33ipl5scene8CalendarFv
/* 8139E010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E014 | 40 82 00 10 */	bne .L_8139E024
/* 8139E018 | 7F E3 FB 78 */	mr r3, r31
/* 8139E01C | 38 80 00 17 */	li r4, 0x17
/* 8139E020 | 4B FF EB 39 */	bl iplButton_8139CB58
.L_8139E024:
/* 8139E024 | 3B C0 00 01 */	li r30, 0x1
.L_8139E028:
/* 8139E028 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139E02C | 7F C3 F3 78 */	mr r3, r30
/* 8139E030 | 48 25 B4 E5 */	bl _restgpr_29
/* 8139E034 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139E038 | 7C 08 03 A6 */	mtlr r0
/* 8139E03C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139E040 | 4E 80 00 20 */	blr
.endfn calcFadein__Q33ipl5scene8CalendarFv

# .text:0x494 | 0x8139E044 | size: 0x8C
# ipl::scene::Calendar::calcNormal()
.fn calcNormal__Q33ipl5scene8CalendarFv, global
/* 8139E044 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E048 | 7C 08 02 A6 */	mflr r0
/* 8139E04C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E050 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E054 | 7C 7F 1B 78 */	mr r31, r3
/* 8139E058 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 8139E05C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139E060 | 41 82 00 38 */	beq .L_8139E098
/* 8139E064 | 40 80 00 14 */	bge .L_8139E078
/* 8139E068 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139E06C | 41 82 00 1C */	beq .L_8139E088
/* 8139E070 | 40 80 00 20 */	bge .L_8139E090
/* 8139E074 | 48 00 00 38 */	b .L_8139E0AC
.L_8139E078:
/* 8139E078 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 8139E07C | 41 82 00 2C */	beq .L_8139E0A8
/* 8139E080 | 40 80 00 2C */	bge .L_8139E0AC
/* 8139E084 | 48 00 00 1C */	b .L_8139E0A0
.L_8139E088:
/* 8139E088 | 48 00 04 65 */	bl on_normal__Q33ipl5scene8CalendarFv
/* 8139E08C | 48 00 00 20 */	b .L_8139E0AC
.L_8139E090:
/* 8139E090 | 48 00 05 61 */	bl on_scroll__Q33ipl5scene8CalendarFv
/* 8139E094 | 48 00 00 18 */	b .L_8139E0AC
.L_8139E098:
/* 8139E098 | 48 00 05 59 */	bl on_scroll__Q33ipl5scene8CalendarFv
/* 8139E09C | 48 00 00 10 */	b .L_8139E0AC
.L_8139E0A0:
/* 8139E0A0 | 48 00 06 91 */	bl on_wait_task__Q33ipl5scene8CalendarFv
/* 8139E0A4 | 48 00 00 08 */	b .L_8139E0AC
.L_8139E0A8:
/* 8139E0A8 | 48 00 06 CD */	bl on_wait_exit__Q33ipl5scene8CalendarFv
.L_8139E0AC:
/* 8139E0AC | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139E0B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139E0B4 | 38 03 FF FB */	subi r0, r3, 0x5
/* 8139E0B8 | 7C 00 00 34 */	cntlzw r0, r0
/* 8139E0BC | 54 03 D9 7E */	srwi r3, r0, 5
/* 8139E0C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E0C4 | 7C 08 03 A6 */	mtlr r0
/* 8139E0C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E0CC | 4E 80 00 20 */	blr
.endfn calcNormal__Q33ipl5scene8CalendarFv

# .text:0x520 | 0x8139E0D0 | size: 0x64
# ipl::scene::Calendar::initCalcFadeout()
.fn initCalcFadeout__Q33ipl5scene8CalendarFv, global
/* 8139E0D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E0D4 | 7C 08 02 A6 */	mflr r0
/* 8139E0D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E0DC | 80 03 00 A8 */	lwz r0, 0xa8(r3)
/* 8139E0E0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139E0E4 | 40 82 00 24 */	bne .L_8139E108
/* 8139E0E8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139E0EC | 38 80 00 05 */	li r4, 0x5
/* 8139E0F0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139E0F4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139E0F8 | 48 06 D0 41 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139E0FC | 38 80 00 05 */	li r4, 0x5
/* 8139E100 | 4B FF EA 59 */	bl iplButton_8139CB58
/* 8139E104 | 48 00 00 20 */	b .L_8139E124
.L_8139E108:
/* 8139E108 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139E10C | 38 80 00 05 */	li r4, 0x5
/* 8139E110 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139E114 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139E118 | 48 06 D0 21 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139E11C | 38 80 00 06 */	li r4, 0x6
/* 8139E120 | 4B FF EA 39 */	bl iplButton_8139CB58
.L_8139E124:
/* 8139E124 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E128 | 7C 08 03 A6 */	mtlr r0
/* 8139E12C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E130 | 4E 80 00 20 */	blr
.endfn initCalcFadeout__Q33ipl5scene8CalendarFv

# .text:0x584 | 0x8139E134 | size: 0x30
# ipl::scene::Calendar::calcFadeout()
.fn calcFadeout__Q33ipl5scene8CalendarFv, global
/* 8139E134 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E138 | 7C 08 02 A6 */	mflr r0
/* 8139E13C | 38 80 00 00 */	li r4, 0x0
/* 8139E140 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E144 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8139E148 | 4B FC C9 89 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 8139E14C | 7C 60 00 34 */	cntlzw r0, r3
/* 8139E150 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8139E154 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E158 | 7C 08 03 A6 */	mtlr r0
/* 8139E15C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E160 | 4E 80 00 20 */	blr
.endfn calcFadeout__Q33ipl5scene8CalendarFv

# .text:0x5B4 | 0x8139E164 | size: 0xD4
# ipl::scene::Calendar::draw()
.fn draw__Q33ipl5scene8CalendarFv, global
/* 8139E164 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E168 | 7C 08 02 A6 */	mflr r0
/* 8139E16C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8139E170 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E174 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139E178 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E17C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139E180 | 7C 7E 1B 78 */	mr r30, r3
/* 8139E184 | 80 64 00 64 */	lwz r3, 0x64(r4)
/* 8139E188 | 80 03 01 00 */	lwz r0, 0x100(r3)
/* 8139E18C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139E190 | 40 82 00 90 */	bne .L_8139E220
/* 8139E194 | 38 60 00 00 */	li r3, 0x0
/* 8139E198 | 4B FC 48 D5 */	bl setOrtho__Q33ipl7utility8GraphicsFUl
/* 8139E19C | 80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8139E1A0 | 4B FC C5 FD */	bl draw__Q33ipl6layout6ObjectFv
/* 8139E1A4 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8139E1A8 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139E1AC | 28 00 00 01 */	cmplwi r0, 0x1
/* 8139E1B0 | 41 81 00 28 */	bgt .L_8139E1D8
/* 8139E1B4 | 3B E0 00 53 */	li r31, 0x53
.L_8139E1B8:
/* 8139E1B8 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8139E1BC | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8139E1C0 | 48 17 41 59 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139E1C4 | 38 80 00 00 */	li r4, 0x0
/* 8139E1C8 | 48 00 19 A5 */	bl draw__Q33ipl5scene4DateFb
/* 8139E1CC | 37 FF FF FF */	subic. r31, r31, 0x1
/* 8139E1D0 | 40 80 FF E8 */	bge .L_8139E1B8
/* 8139E1D4 | 48 00 00 4C */	b .L_8139E220
.L_8139E1D8:
/* 8139E1D8 | 3B E0 00 00 */	li r31, 0x0
.L_8139E1DC:
/* 8139E1DC | 38 7E 00 90 */	addi r3, r30, 0x90
/* 8139E1E0 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8139E1E4 | 48 17 41 35 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139E1E8 | 38 80 00 00 */	li r4, 0x0
/* 8139E1EC | 48 00 19 81 */	bl draw__Q33ipl5scene4DateFb
/* 8139E1F0 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8139E1F4 | 28 1F 00 2A */	cmplwi r31, 0x2a
/* 8139E1F8 | 41 80 FF E4 */	blt .L_8139E1DC
/* 8139E1FC | 3B E0 00 00 */	li r31, 0x0
.L_8139E200:
/* 8139E200 | 38 7E 00 90 */	addi r3, r30, 0x90
/* 8139E204 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8139E208 | 48 17 41 11 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139E20C | 38 80 00 01 */	li r4, 0x1
/* 8139E210 | 48 00 19 5D */	bl draw__Q33ipl5scene4DateFb
/* 8139E214 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8139E218 | 28 1F 00 2A */	cmplwi r31, 0x2a
/* 8139E21C | 41 80 FF E4 */	blt .L_8139E200
.L_8139E220:
/* 8139E220 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E224 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139E228 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139E22C | 7C 08 03 A6 */	mtlr r0
/* 8139E230 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E234 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene8CalendarFv

# .text:0x688 | 0x8139E238 | size: 0x6C
# ipl::scene::Calendar::doAnim(int)
.fn doAnim__Q33ipl5scene8CalendarFi, global
/* 8139E238 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E23C | 7C 08 02 A6 */	mflr r0
/* 8139E240 | 3C C0 81 61 */	lis r6, scAnmFrame__Q23ipl5scene@ha
/* 8139E244 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E248 | 54 80 18 38 */	slwi r0, r4, 3
/* 8139E24C | 38 C6 F9 E0 */	addi r6, r6, scAnmFrame__Q23ipl5scene@l
/* 8139E250 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E254 | 7C 86 02 14 */	add r4, r6, r0
/* 8139E258 | 7C 06 04 2E */	lfsx f0, r6, r0
/* 8139E25C | 38 00 00 00 */	li r0, 0x0
/* 8139E260 | 80 A3 00 74 */	lwz r5, 0x74(r3)
/* 8139E264 | C0 24 00 04 */	lfs f1, 0x4(r4)
/* 8139E268 | D0 05 00 08 */	stfs f0, 0x8(r5)
/* 8139E26C | 80 83 00 74 */	lwz r4, 0x74(r3)
/* 8139E270 | D0 24 00 04 */	stfs f1, 0x4(r4)
/* 8139E274 | 80 83 00 74 */	lwz r4, 0x74(r3)
/* 8139E278 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 8139E27C | 83 E3 00 74 */	lwz r31, 0x74(r3)
/* 8139E280 | 7F E3 FB 78 */	mr r3, r31
/* 8139E284 | 4B FC 45 ED */	bl initFrame__Q33ipl7utility15FrameControllerFv
/* 8139E288 | 38 00 00 01 */	li r0, 0x1
/* 8139E28C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8139E290 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139E294 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E298 | 7C 08 03 A6 */	mtlr r0
/* 8139E29C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E2A0 | 4E 80 00 20 */	blr
.endfn doAnim__Q33ipl5scene8CalendarFi

# .text:0x6F4 | 0x8139E2A4 | size: 0x170
# ipl::scene::Calendar::onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn onEventDerived__Q33ipl5scene8CalendarFUlUlPCQ33ipl10controller9Interface, global
/* 8139E2A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139E2A8 | 7C 08 02 A6 */	mflr r0
/* 8139E2AC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139E2B0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139E2B4 | 48 25 B2 15 */	bl _savegpr_29
/* 8139E2B8 | 7C 7D 1B 78 */	mr r29, r3
/* 8139E2BC | 80 63 00 5C */	lwz r3, 0x5c(r3)
/* 8139E2C0 | 7C BE 2B 78 */	mr r30, r5
/* 8139E2C4 | 7C DF 33 78 */	mr r31, r6
/* 8139E2C8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139E2CC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8139E2D0 | 7D 89 03 A6 */	mtctr r12
/* 8139E2D4 | 4E 80 04 21 */	bctrl
/* 8139E2D8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139E2DC | 81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8139E2E0 | 7D 89 03 A6 */	mtctr r12
/* 8139E2E4 | 4E 80 04 21 */	bctrl
/* 8139E2E8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8139E2EC | 3B C3 00 B4 */	addi r30, r3, 0xb4
/* 8139E2F0 | 41 82 00 08 */	beq .L_8139E2F8
/* 8139E2F4 | 48 00 01 08 */	b .L_8139E3FC
.L_8139E2F8:
/* 8139E2F8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139E2FC | 3C 80 00 10 */	lis r4, 0x10
/* 8139E300 | 7F E3 FB 78 */	mr r3, r31
/* 8139E304 | 81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8139E308 | 38 84 08 00 */	addi r4, r4, 0x800
/* 8139E30C | 7D 89 03 A6 */	mtctr r12
/* 8139E310 | 4E 80 04 21 */	bctrl
/* 8139E314 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E318 | 41 82 00 E4 */	beq .L_8139E3FC
/* 8139E31C | 3F E0 81 65 */	lis r31, mscButtonName__Q33ipl5scene6Button@ha
/* 8139E320 | 7F C3 F3 78 */	mr r3, r30
/* 8139E324 | 3B FF BF 5C */	addi r31, r31, mscButtonName__Q33ipl5scene6Button@l
/* 8139E328 | 80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8139E32C | 48 26 41 55 */	bl strcmp
/* 8139E330 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E334 | 40 82 00 2C */	bne .L_8139E360
/* 8139E338 | 38 00 00 00 */	li r0, 0x0
/* 8139E33C | 7F A3 EB 78 */	mr r3, r29
/* 8139E340 | 90 1D 00 A8 */	stw r0, 0xa8(r29)
/* 8139E344 | 48 00 08 15 */	bl start_exit__Q33ipl5scene8CalendarFv
/* 8139E348 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139E34C | 3C 80 81 65 */	lis r4, lbl_8164C4FF@ha
/* 8139E350 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139E354 | 38 84 C4 FF */	addi r4, r4, lbl_8164C4FF@l
/* 8139E358 | 4B FC D1 15 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139E35C | 48 00 00 A0 */	b .L_8139E3FC
.L_8139E360:
/* 8139E360 | 80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8139E364 | 7F C3 F3 78 */	mr r3, r30
/* 8139E368 | 48 26 41 19 */	bl strcmp
/* 8139E36C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E370 | 40 82 00 3C */	bne .L_8139E3AC
/* 8139E374 | 7F A3 EB 78 */	mr r3, r29
/* 8139E378 | 48 00 14 2D */	bl is_upper_limit__Q33ipl5scene8CalendarFv
/* 8139E37C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E380 | 40 82 00 2C */	bne .L_8139E3AC
/* 8139E384 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139E388 | 38 80 00 05 */	li r4, 0x5
/* 8139E38C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139E390 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139E394 | 48 06 CD A5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139E398 | 38 80 00 13 */	li r4, 0x13
/* 8139E39C | 4B FF E7 BD */	bl iplButton_8139CB58
/* 8139E3A0 | 7F A3 EB 78 */	mr r3, r29
/* 8139E3A4 | 48 00 03 F5 */	bl start_scroll_r__Q33ipl5scene8CalendarFv
/* 8139E3A8 | 48 00 00 54 */	b .L_8139E3FC
.L_8139E3AC:
/* 8139E3AC | 3C 80 81 65 */	lis r4, mscButtonName__Q33ipl5scene6Button@ha
/* 8139E3B0 | 7F C3 F3 78 */	mr r3, r30
/* 8139E3B4 | 38 84 BF 5C */	addi r4, r4, mscButtonName__Q33ipl5scene6Button@l
/* 8139E3B8 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 8139E3BC | 48 26 40 C5 */	bl strcmp
/* 8139E3C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E3C4 | 40 82 00 38 */	bne .L_8139E3FC
/* 8139E3C8 | 7F A3 EB 78 */	mr r3, r29
/* 8139E3CC | 48 00 14 11 */	bl is_lower_limit__Q33ipl5scene8CalendarFv
/* 8139E3D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E3D4 | 40 82 00 28 */	bne .L_8139E3FC
/* 8139E3D8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139E3DC | 38 80 00 05 */	li r4, 0x5
/* 8139E3E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139E3E4 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139E3E8 | 48 06 CD 51 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139E3EC | 38 80 00 14 */	li r4, 0x14
/* 8139E3F0 | 4B FF E7 69 */	bl iplButton_8139CB58
/* 8139E3F4 | 7F A3 EB 78 */	mr r3, r29
/* 8139E3F8 | 48 00 05 75 */	bl start_scroll_l__Q33ipl5scene8CalendarFv
.L_8139E3FC:
/* 8139E3FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139E400 | 48 25 B1 15 */	bl _restgpr_29
/* 8139E404 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139E408 | 7C 08 03 A6 */	mtlr r0
/* 8139E40C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139E410 | 4E 80 00 20 */	blr
.endfn onEventDerived__Q33ipl5scene8CalendarFUlUlPCQ33ipl10controller9Interface

# .text:0x864 | 0x8139E414 | size: 0x48
# ipl::scene::Calendar::onPointDate(ipl::scene::Date*)
.fn onPointDate__Q33ipl5scene8CalendarFPQ33ipl5scene4Date, global
/* 8139E414 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E418 | 7C 08 02 A6 */	mflr r0
/* 8139E41C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E420 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E424 | 7C 9F 23 78 */	mr r31, r4
/* 8139E428 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139E42C | 7C 7E 1B 78 */	mr r30, r3
/* 8139E430 | 38 63 00 90 */	addi r3, r3, 0x90
/* 8139E434 | 48 17 3E 3D */	bl List_Remove__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8139E438 | 7F E4 FB 78 */	mr r4, r31
/* 8139E43C | 38 7E 00 90 */	addi r3, r30, 0x90
/* 8139E440 | 48 17 3C 35 */	bl List_Append__Q24nw4r2utFPQ34nw4r2ut4ListPv
/* 8139E444 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E448 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139E44C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139E450 | 7C 08 03 A6 */	mtlr r0
/* 8139E454 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E458 | 4E 80 00 20 */	blr
.endfn onPointDate__Q33ipl5scene8CalendarFPQ33ipl5scene4Date

# .text:0x8AC | 0x8139E45C | size: 0x90
# ipl::scene::Calendar::onTrigDate(ipl::scene::Date*)
.fn onTrigDate__Q33ipl5scene8CalendarFPQ33ipl5scene4Date, global
/* 8139E45C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E460 | 7C 08 02 A6 */	mflr r0
/* 8139E464 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E468 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E46C | 7C 9F 23 78 */	mr r31, r4
/* 8139E470 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139E474 | 7C 7E 1B 78 */	mr r30, r3
/* 8139E478 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 8139E47C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139E480 | 40 82 00 54 */	bne .L_8139E4D4
/* 8139E484 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139E488 | 38 80 00 04 */	li r4, 0x4
/* 8139E48C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139E490 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139E494 | 48 06 CC A5 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139E498 | 80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8139E49C | 4B FF 14 29 */	bl updateDate__Q33ipl5scene5BoardFRCQ33ipl7utility4Date
/* 8139E4A0 | 7F E3 FB 78 */	mr r3, r31
/* 8139E4A4 | 38 80 00 02 */	li r4, 0x2
/* 8139E4A8 | 48 00 16 F9 */	bl doAnim__Q33ipl5scene4DateFi
/* 8139E4AC | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139E4B0 | 3C 80 81 65 */	lis r4, lbl_8164C50E@ha
/* 8139E4B4 | 93 FE 00 80 */	stw r31, 0x80(r30)
/* 8139E4B8 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139E4BC | 38 84 C5 0E */	addi r4, r4, lbl_8164C50E@l
/* 8139E4C0 | 4B FC CF AD */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139E4C4 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8139E4C8 | 38 00 00 04 */	li r0, 0x4
/* 8139E4CC | 90 7E 00 68 */	stw r3, 0x68(r30)
/* 8139E4D0 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8139E4D4:
/* 8139E4D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E4D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139E4DC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139E4E0 | 7C 08 03 A6 */	mtlr r0
/* 8139E4E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E4E8 | 4E 80 00 20 */	blr
.endfn onTrigDate__Q33ipl5scene8CalendarFPQ33ipl5scene4Date

# .text:0x93C | 0x8139E4EC | size: 0x104
# ipl::scene::Calendar::on_normal()
.fn on_normal__Q33ipl5scene8CalendarFv, global
/* 8139E4EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E4F0 | 7C 08 02 A6 */	mflr r0
/* 8139E4F4 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139E4F8 | 38 80 00 05 */	li r4, 0x5
/* 8139E4FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E500 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139E504 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E508 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139E50C | 7C 7E 1B 78 */	mr r30, r3
/* 8139E510 | 80 65 00 64 */	lwz r3, 0x64(r5)
/* 8139E514 | 48 06 CC 25 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139E518 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E51C | 7C 7F 1B 78 */	mr r31, r3
/* 8139E520 | 41 82 00 18 */	beq .L_8139E538
/* 8139E524 | 4B FF E3 F1 */	bl isActive__Q33ipl5scene6ButtonCFv
/* 8139E528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E52C | 41 82 00 0C */	beq .L_8139E538
/* 8139E530 | 7F E3 FB 78 */	mr r3, r31
/* 8139E534 | 4B FF E0 39 */	bl update__Q33ipl5scene6ButtonFv
.L_8139E538:
/* 8139E538 | 3B E0 00 00 */	li r31, 0x0
.L_8139E53C:
/* 8139E53C | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8139E540 | 57 E4 04 3E */	clrlwi r4, r31, 16
/* 8139E544 | 48 17 3D D5 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139E548 | 48 00 19 2D */	bl update__Q33ipl5scene4DateFv
/* 8139E54C | 3B FF 00 01 */	addi r31, r31, 0x1
/* 8139E550 | 28 1F 00 2A */	cmplwi r31, 0x2a
/* 8139E554 | 41 80 FF E8 */	blt .L_8139E53C
/* 8139E558 | 4B F9 74 51 */	bl getMasterController__Q23ipl6SystemFv
/* 8139E55C | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139E560 | 3C 80 30 00 */	lis r4, 0x3000
/* 8139E564 | 7C 7F 1B 78 */	mr r31, r3
/* 8139E568 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8139E56C | 38 84 10 00 */	addi r4, r4, 0x1000
/* 8139E570 | 7D 89 03 A6 */	mtctr r12
/* 8139E574 | 4E 80 04 21 */	bctrl
/* 8139E578 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E57C | 41 82 00 20 */	beq .L_8139E59C
/* 8139E580 | 7F C3 F3 78 */	mr r3, r30
/* 8139E584 | 48 00 12 59 */	bl is_lower_limit__Q33ipl5scene8CalendarFv
/* 8139E588 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E58C | 40 82 00 10 */	bne .L_8139E59C
/* 8139E590 | 7F C3 F3 78 */	mr r3, r30
/* 8139E594 | 48 00 03 D9 */	bl start_scroll_l__Q33ipl5scene8CalendarFv
/* 8139E598 | 48 00 00 40 */	b .L_8139E5D8
.L_8139E59C:
/* 8139E59C | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139E5A0 | 3C 80 06 00 */	lis r4, 0x600
/* 8139E5A4 | 7F E3 FB 78 */	mr r3, r31
/* 8139E5A8 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8139E5AC | 38 84 00 10 */	addi r4, r4, 0x10
/* 8139E5B0 | 7D 89 03 A6 */	mtctr r12
/* 8139E5B4 | 4E 80 04 21 */	bctrl
/* 8139E5B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E5BC | 41 82 00 1C */	beq .L_8139E5D8
/* 8139E5C0 | 7F C3 F3 78 */	mr r3, r30
/* 8139E5C4 | 48 00 11 E1 */	bl is_upper_limit__Q33ipl5scene8CalendarFv
/* 8139E5C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E5CC | 40 82 00 0C */	bne .L_8139E5D8
/* 8139E5D0 | 7F C3 F3 78 */	mr r3, r30
/* 8139E5D4 | 48 00 01 C5 */	bl start_scroll_r__Q33ipl5scene8CalendarFv
.L_8139E5D8:
/* 8139E5D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E5DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139E5E0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139E5E4 | 7C 08 03 A6 */	mtlr r0
/* 8139E5E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E5EC | 4E 80 00 20 */	blr
.endfn on_normal__Q33ipl5scene8CalendarFv

# .text:0xA40 | 0x8139E5F0 | size: 0x140
# ipl::scene::Calendar::on_scroll()
.fn on_scroll__Q33ipl5scene8CalendarFv, global
/* 8139E5F0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139E5F4 | 7C 08 02 A6 */	mflr r0
/* 8139E5F8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139E5FC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139E600 | 48 25 AE C5 */	bl _savegpr_28
/* 8139E604 | 88 03 00 9C */	lbz r0, 0x9c(r3)
/* 8139E608 | 7C 7C 1B 78 */	mr r28, r3
/* 8139E60C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139E610 | 41 82 00 44 */	beq .L_8139E654
/* 8139E614 | 80 03 00 64 */	lwz r0, 0x64(r3)
/* 8139E618 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139E61C | 41 82 00 24 */	beq .L_8139E640
/* 8139E620 | 40 80 00 2C */	bge .L_8139E64C
/* 8139E624 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139E628 | 40 80 00 08 */	bge .L_8139E630
/* 8139E62C | 48 00 00 20 */	b .L_8139E64C
.L_8139E630:
/* 8139E630 | 80 A3 00 7C */	lwz r5, 0x7c(r3)
/* 8139E634 | 38 80 00 02 */	li r4, 0x2
/* 8139E638 | 48 00 0A 6D */	bl set_textbox_date__Q33ipl5scene8CalendarFiRCQ33ipl7utility4Date
/* 8139E63C | 48 00 00 10 */	b .L_8139E64C
.L_8139E640:
/* 8139E640 | 80 A3 00 7C */	lwz r5, 0x7c(r3)
/* 8139E644 | 38 80 00 00 */	li r4, 0x0
/* 8139E648 | 48 00 0A 5D */	bl set_textbox_date__Q33ipl5scene8CalendarFiRCQ33ipl7utility4Date
.L_8139E64C:
/* 8139E64C | 38 00 00 00 */	li r0, 0x0
/* 8139E650 | 98 1C 00 9C */	stb r0, 0x9c(r28)
.L_8139E654:
/* 8139E654 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 8139E658 | 38 80 00 00 */	li r4, 0x0
/* 8139E65C | 4B FC C4 75 */	bl isPlaying__Q33ipl6layout6ObjectCFi
/* 8139E660 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E664 | 40 82 00 B4 */	bne .L_8139E718
/* 8139E668 | 3B E0 00 00 */	li r31, 0x0
/* 8139E66C | 48 00 00 0C */	b .L_8139E678
.L_8139E670:
/* 8139E670 | 7F E3 FB 78 */	mr r3, r31
/* 8139E674 | 48 00 1C E5 */	bl initEvent__Q33ipl5scene4DateFv
.L_8139E678:
/* 8139E678 | 7F E4 FB 78 */	mr r4, r31
/* 8139E67C | 38 7C 00 84 */	addi r3, r28, 0x84
/* 8139E680 | 48 17 3C 5D */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8139E684 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E688 | 7C 7F 1B 78 */	mr r31, r3
/* 8139E68C | 40 82 FF E4 */	bne .L_8139E670
/* 8139E690 | 7F 83 E3 78 */	mr r3, r28
/* 8139E694 | 48 00 07 0D */	bl set_textbox_month__Q33ipl5scene8CalendarFv
/* 8139E698 | 80 BC 00 7C */	lwz r5, 0x7c(r28)
/* 8139E69C | 7F 83 E3 78 */	mr r3, r28
/* 8139E6A0 | 38 80 00 01 */	li r4, 0x1
/* 8139E6A4 | 48 00 0A 01 */	bl set_textbox_date__Q33ipl5scene8CalendarFiRCQ33ipl7utility4Date
/* 8139E6A8 | 7F 83 E3 78 */	mr r3, r28
/* 8139E6AC | 38 80 00 01 */	li r4, 0x1
/* 8139E6B0 | 4B FF FB 89 */	bl doAnim__Q33ipl5scene8CalendarFi
/* 8139E6B4 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 8139E6B8 | 4B FC C0 4D */	bl calc__Q33ipl6layout6ObjectFv
/* 8139E6BC | 7F 83 E3 78 */	mr r3, r28
/* 8139E6C0 | 38 80 00 01 */	li r4, 0x1
/* 8139E6C4 | 48 00 0C ED */	bl set_date_pos__Q33ipl5scene8CalendarFi
/* 8139E6C8 | 3B C0 00 00 */	li r30, 0x0
/* 8139E6CC | 3B E0 00 00 */	li r31, 0x0
.L_8139E6D0:
/* 8139E6D0 | 38 7C 00 84 */	addi r3, r28, 0x84
/* 8139E6D4 | 57 C4 04 3E */	clrlwi r4, r30, 16
/* 8139E6D8 | 48 17 3C 41 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139E6DC | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 8139E6E0 | 7C 7D 1B 78 */	mr r29, r3
/* 8139E6E4 | 38 80 00 0B */	li r4, 0xb
/* 8139E6E8 | 48 00 14 B9 */	bl doAnim__Q33ipl5scene4DateFi
/* 8139E6EC | 7F A3 EB 78 */	mr r3, r29
/* 8139E6F0 | 48 00 13 E5 */	bl calc__Q33ipl5scene4DateFv
/* 8139E6F4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8139E6F8 | 28 1E 00 2A */	cmplwi r30, 0x2a
/* 8139E6FC | 41 80 FF D4 */	blt .L_8139E6D0
/* 8139E700 | 7F 83 E3 78 */	mr r3, r28
/* 8139E704 | 48 00 10 41 */	bl exec_search_task__Q33ipl5scene8CalendarFv
/* 8139E708 | 80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8139E70C | 38 00 00 00 */	li r0, 0x0
/* 8139E710 | 90 7C 00 68 */	stw r3, 0x68(r28)
/* 8139E714 | 90 1C 00 64 */	stw r0, 0x64(r28)
.L_8139E718:
/* 8139E718 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139E71C | 48 25 AD F5 */	bl _restgpr_28
/* 8139E720 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139E724 | 7C 08 03 A6 */	mtlr r0
/* 8139E728 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139E72C | 4E 80 00 20 */	blr
.endfn on_scroll__Q33ipl5scene8CalendarFv

# .text:0xB80 | 0x8139E730 | size: 0x44
# ipl::scene::Calendar::on_wait_task()
.fn on_wait_task__Q33ipl5scene8CalendarFv, global
/* 8139E730 | 80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8139E734 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139E738 | 4C 82 00 20 */	bnelr
/* 8139E73C | 80 03 00 68 */	lwz r0, 0x68(r3)
/* 8139E740 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8139E744 | 41 82 00 24 */	beq .L_8139E768
/* 8139E748 | 40 80 00 10 */	bge .L_8139E758
/* 8139E74C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139E750 | 40 80 00 14 */	bge .L_8139E764
/* 8139E754 | 4E 80 00 20 */	blr
.L_8139E758:
/* 8139E758 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8139E75C | 41 82 00 10 */	beq .L_8139E76C
/* 8139E760 | 4E 80 00 20 */	blr
.L_8139E764:
/* 8139E764 | 48 00 00 7C */	b do_scroll_r__Q33ipl5scene8CalendarFv
.L_8139E768:
/* 8139E768 | 48 00 02 50 */	b do_scroll_l__Q33ipl5scene8CalendarFv
.L_8139E76C:
/* 8139E76C | 48 00 04 60 */	b do_exit__Q33ipl5scene8CalendarFv
/* 8139E770 | 4E 80 00 20 */	blr
.endfn on_wait_task__Q33ipl5scene8CalendarFv

# .text:0xBC4 | 0x8139E774 | size: 0x24
# ipl::scene::Calendar::on_wait_exit()
.fn on_wait_exit__Q33ipl5scene8CalendarFv, global
/* 8139E774 | 80 83 00 80 */	lwz r4, 0x80(r3)
/* 8139E778 | 80 84 00 30 */	lwz r4, 0x30(r4)
/* 8139E77C | 80 04 00 14 */	lwz r0, 0x14(r4)
/* 8139E780 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139E784 | 4D 82 00 20 */	beqlr
/* 8139E788 | 38 00 00 01 */	li r0, 0x1
/* 8139E78C | 90 03 00 A8 */	stw r0, 0xa8(r3)
/* 8139E790 | 48 00 03 C8 */	b start_exit__Q33ipl5scene8CalendarFv
/* 8139E794 | 4E 80 00 20 */	blr
.endfn on_wait_exit__Q33ipl5scene8CalendarFv

# .text:0xBE8 | 0x8139E798 | size: 0x48
# ipl::scene::Calendar::start_scroll_r()
.fn start_scroll_r__Q33ipl5scene8CalendarFv, global
/* 8139E798 | 80 A3 00 64 */	lwz r5, 0x64(r3)
/* 8139E79C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8139E7A0 | 41 82 00 0C */	beq .L_8139E7AC
/* 8139E7A4 | 2C 05 00 03 */	cmpwi r5, 0x3
/* 8139E7A8 | 4C 82 00 20 */	bnelr
.L_8139E7AC:
/* 8139E7AC | 80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8139E7B0 | 38 80 00 01 */	li r4, 0x1
/* 8139E7B4 | 90 A3 00 68 */	stw r5, 0x68(r3)
/* 8139E7B8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139E7BC | 90 83 00 64 */	stw r4, 0x64(r3)
/* 8139E7C0 | 40 82 00 18 */	bne .L_8139E7D8
/* 8139E7C4 | 38 00 00 03 */	li r0, 0x3
/* 8139E7C8 | 90 83 00 A4 */	stw r4, 0xa4(r3)
/* 8139E7CC | 90 83 00 68 */	stw r4, 0x68(r3)
/* 8139E7D0 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8139E7D4 | 4E 80 00 20 */	blr
.L_8139E7D8:
/* 8139E7D8 | 48 00 00 08 */	b do_scroll_r__Q33ipl5scene8CalendarFv
/* 8139E7DC | 4E 80 00 20 */	blr
.endfn start_scroll_r__Q33ipl5scene8CalendarFv

# .text:0xC30 | 0x8139E7E0 | size: 0x124
# ipl::scene::Calendar::do_scroll_r()
.fn do_scroll_r__Q33ipl5scene8CalendarFv, global
/* 8139E7E0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E7E4 | 7C 08 02 A6 */	mflr r0
/* 8139E7E8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E7EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E7F0 | 3B E0 00 00 */	li r31, 0x0
/* 8139E7F4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139E7F8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139E7FC | 48 00 00 0C */	b .L_8139E808
.L_8139E800:
/* 8139E800 | 7F E3 FB 78 */	mr r3, r31
/* 8139E804 | 48 00 1B 55 */	bl initEvent__Q33ipl5scene4DateFv
.L_8139E808:
/* 8139E808 | 7F E4 FB 78 */	mr r4, r31
/* 8139E80C | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8139E810 | 48 17 3A CD */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8139E814 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E818 | 7C 7F 1B 78 */	mr r31, r3
/* 8139E81C | 40 82 FF E4 */	bne .L_8139E800
/* 8139E820 | 7F C3 F3 78 */	mr r3, r30
/* 8139E824 | 48 00 0F 81 */	bl is_upper_limit__Q33ipl5scene8CalendarFv
/* 8139E828 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E82C | 40 82 00 C0 */	bne .L_8139E8EC
/* 8139E830 | 7F C3 F3 78 */	mr r3, r30
/* 8139E834 | 48 00 0F A9 */	bl is_lower_limit__Q33ipl5scene8CalendarFv
/* 8139E838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E83C | 41 82 00 24 */	beq .L_8139E860
/* 8139E840 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139E844 | 38 80 00 05 */	li r4, 0x5
/* 8139E848 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139E84C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139E850 | 48 06 C8 E9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139E854 | 38 80 00 18 */	li r4, 0x18
/* 8139E858 | 4B FF E3 01 */	bl iplButton_8139CB58
/* 8139E85C | 48 00 00 50 */	b .L_8139E8AC
.L_8139E860:
/* 8139E860 | 80 BE 00 7C */	lwz r5, 0x7c(r30)
/* 8139E864 | 3C 60 81 0B */	lis r3, mscMaxDate__Q33ipl5scene8Calendar@ha
/* 8139E868 | 80 03 73 0C */	lwz r0, mscMaxDate__Q33ipl5scene8Calendar@l(r3)
/* 8139E86C | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 8139E870 | 7C 04 00 00 */	cmpw r4, r0
/* 8139E874 | 40 82 00 38 */	bne .L_8139E8AC
/* 8139E878 | 38 63 73 0C */	addi r3, r3, mscMaxDate__Q33ipl5scene8Calendar@l
/* 8139E87C | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8139E880 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8139E884 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139E888 | 7C 04 00 00 */	cmpw r4, r0
/* 8139E88C | 40 82 00 20 */	bne .L_8139E8AC
/* 8139E890 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139E894 | 38 80 00 05 */	li r4, 0x5
/* 8139E898 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139E89C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139E8A0 | 48 06 C8 99 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139E8A4 | 38 80 00 19 */	li r4, 0x19
/* 8139E8A8 | 4B FF E2 B1 */	bl iplButton_8139CB58
.L_8139E8AC:
/* 8139E8AC | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8139E8B0 | 7C 64 1B 78 */	mr r4, r3
/* 8139E8B4 | 48 00 00 51 */	bl getNextMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 8139E8B8 | 7F C3 F3 78 */	mr r3, r30
/* 8139E8BC | 38 80 00 02 */	li r4, 0x2
/* 8139E8C0 | 4B FF F9 79 */	bl doAnim__Q33ipl5scene8CalendarFi
/* 8139E8C4 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139E8C8 | 3C 80 81 65 */	lis r4, lbl_8164C522@ha
/* 8139E8CC | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139E8D0 | 38 84 C5 22 */	addi r4, r4, lbl_8164C522@l
/* 8139E8D4 | 4B FC CB 99 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139E8D8 | 80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8139E8DC | 38 60 00 01 */	li r3, 0x1
/* 8139E8E0 | 98 7E 00 9C */	stb r3, 0x9c(r30)
/* 8139E8E4 | 90 1E 00 68 */	stw r0, 0x68(r30)
/* 8139E8E8 | 90 7E 00 64 */	stw r3, 0x64(r30)
.L_8139E8EC:
/* 8139E8EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E8F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139E8F4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139E8F8 | 7C 08 03 A6 */	mtlr r0
/* 8139E8FC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E900 | 4E 80 00 20 */	blr
.endfn do_scroll_r__Q33ipl5scene8CalendarFv

# .text:0xD54 | 0x8139E904 | size: 0x68
# ipl::utility::Calendar::getNextMonth(const ipl::utility::Date&, ipl::utility::Date*)
.fn getNextMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date, weak
/* 8139E904 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E908 | 7C 08 02 A6 */	mflr r0
/* 8139E90C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E910 | 7C 60 1B 78 */	mr r0, r3
/* 8139E914 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E918 | 7C 9F 23 78 */	mr r31, r4
/* 8139E91C | 7F E3 FB 78 */	mr r3, r31
/* 8139E920 | 7C 04 03 78 */	mr r4, r0
/* 8139E924 | 4B FF 11 A9 */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 8139E928 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8139E92C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8139E930 | 2C 00 00 0C */	cmpwi r0, 0xc
/* 8139E934 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139E938 | 40 81 00 18 */	ble .L_8139E950
/* 8139E93C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8139E940 | 38 00 00 01 */	li r0, 0x1
/* 8139E944 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139E948 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8139E94C | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8139E950:
/* 8139E950 | 38 00 00 01 */	li r0, 0x1
/* 8139E954 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8139E958 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139E95C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139E960 | 7C 08 03 A6 */	mtlr r0
/* 8139E964 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139E968 | 4E 80 00 20 */	blr
.endfn getNextMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date

# .text:0xDBC | 0x8139E96C | size: 0x4C
# ipl::scene::Calendar::start_scroll_l()
.fn start_scroll_l__Q33ipl5scene8CalendarFv, global
/* 8139E96C | 80 83 00 64 */	lwz r4, 0x64(r3)
/* 8139E970 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139E974 | 41 82 00 0C */	beq .L_8139E980
/* 8139E978 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 8139E97C | 4C 82 00 20 */	bnelr
.L_8139E980:
/* 8139E980 | 80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8139E984 | 38 A0 00 02 */	li r5, 0x2
/* 8139E988 | 90 83 00 68 */	stw r4, 0x68(r3)
/* 8139E98C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139E990 | 90 A3 00 64 */	stw r5, 0x64(r3)
/* 8139E994 | 41 82 00 1C */	beq .L_8139E9B0
/* 8139E998 | 38 80 00 01 */	li r4, 0x1
/* 8139E99C | 38 00 00 03 */	li r0, 0x3
/* 8139E9A0 | 90 83 00 A4 */	stw r4, 0xa4(r3)
/* 8139E9A4 | 90 A3 00 68 */	stw r5, 0x68(r3)
/* 8139E9A8 | 90 03 00 64 */	stw r0, 0x64(r3)
/* 8139E9AC | 4E 80 00 20 */	blr
.L_8139E9B0:
/* 8139E9B0 | 48 00 00 08 */	b do_scroll_l__Q33ipl5scene8CalendarFv
/* 8139E9B4 | 4E 80 00 20 */	blr
.endfn start_scroll_l__Q33ipl5scene8CalendarFv

# .text:0xE08 | 0x8139E9B8 | size: 0x128
# ipl::scene::Calendar::do_scroll_l()
.fn do_scroll_l__Q33ipl5scene8CalendarFv, global
/* 8139E9B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139E9BC | 7C 08 02 A6 */	mflr r0
/* 8139E9C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139E9C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139E9C8 | 3B E0 00 00 */	li r31, 0x0
/* 8139E9CC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139E9D0 | 7C 7E 1B 78 */	mr r30, r3
/* 8139E9D4 | 48 00 00 0C */	b .L_8139E9E0
.L_8139E9D8:
/* 8139E9D8 | 7F E3 FB 78 */	mr r3, r31
/* 8139E9DC | 48 00 19 7D */	bl initEvent__Q33ipl5scene4DateFv
.L_8139E9E0:
/* 8139E9E0 | 7F E4 FB 78 */	mr r4, r31
/* 8139E9E4 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8139E9E8 | 48 17 38 F5 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8139E9EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139E9F0 | 7C 7F 1B 78 */	mr r31, r3
/* 8139E9F4 | 40 82 FF E4 */	bne .L_8139E9D8
/* 8139E9F8 | 7F C3 F3 78 */	mr r3, r30
/* 8139E9FC | 48 00 0D E1 */	bl is_lower_limit__Q33ipl5scene8CalendarFv
/* 8139EA00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139EA04 | 40 82 00 C4 */	bne .L_8139EAC8
/* 8139EA08 | 7F C3 F3 78 */	mr r3, r30
/* 8139EA0C | 48 00 0D 99 */	bl is_upper_limit__Q33ipl5scene8CalendarFv
/* 8139EA10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139EA14 | 41 82 00 24 */	beq .L_8139EA38
/* 8139EA18 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139EA1C | 38 80 00 05 */	li r4, 0x5
/* 8139EA20 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139EA24 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139EA28 | 48 06 C7 11 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139EA2C | 38 80 00 17 */	li r4, 0x17
/* 8139EA30 | 4B FF E1 29 */	bl iplButton_8139CB58
/* 8139EA34 | 48 00 00 50 */	b .L_8139EA84
.L_8139EA38:
/* 8139EA38 | 80 BE 00 7C */	lwz r5, 0x7c(r30)
/* 8139EA3C | 3C 60 81 0B */	lis r3, mscMinDate__Q33ipl5scene8Calendar@ha
/* 8139EA40 | 80 03 73 00 */	lwz r0, mscMinDate__Q33ipl5scene8Calendar@l(r3)
/* 8139EA44 | 80 85 00 00 */	lwz r4, 0x0(r5)
/* 8139EA48 | 7C 04 00 00 */	cmpw r4, r0
/* 8139EA4C | 40 82 00 38 */	bne .L_8139EA84
/* 8139EA50 | 38 63 73 00 */	addi r3, r3, mscMinDate__Q33ipl5scene8Calendar@l
/* 8139EA54 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8139EA58 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8139EA5C | 38 03 00 01 */	addi r0, r3, 0x1
/* 8139EA60 | 7C 04 00 00 */	cmpw r4, r0
/* 8139EA64 | 40 82 00 20 */	bne .L_8139EA84
/* 8139EA68 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139EA6C | 38 80 00 05 */	li r4, 0x5
/* 8139EA70 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139EA74 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139EA78 | 48 06 C6 C1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139EA7C | 38 80 00 1A */	li r4, 0x1a
/* 8139EA80 | 4B FF E0 D9 */	bl iplButton_8139CB58
.L_8139EA84:
/* 8139EA84 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8139EA88 | 7C 64 1B 78 */	mr r4, r3
/* 8139EA8C | 48 00 00 55 */	bl getLastMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 8139EA90 | 7F C3 F3 78 */	mr r3, r30
/* 8139EA94 | 38 80 00 03 */	li r4, 0x3
/* 8139EA98 | 4B FF F7 A1 */	bl doAnim__Q33ipl5scene8CalendarFi
/* 8139EA9C | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 8139EAA0 | 3C 80 81 65 */	lis r4, lbl_8164C522@ha
/* 8139EAA4 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 8139EAA8 | 38 84 C5 22 */	addi r4, r4, lbl_8164C522@l
/* 8139EAAC | 4B FC C9 C1 */	bl startSE__Q33ipl3snd6SystemFPCc
/* 8139EAB0 | 80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8139EAB4 | 38 80 00 01 */	li r4, 0x1
/* 8139EAB8 | 38 00 00 02 */	li r0, 0x2
/* 8139EABC | 98 9E 00 9C */	stb r4, 0x9c(r30)
/* 8139EAC0 | 90 7E 00 68 */	stw r3, 0x68(r30)
/* 8139EAC4 | 90 1E 00 64 */	stw r0, 0x64(r30)
.L_8139EAC8:
/* 8139EAC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139EACC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139EAD0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139EAD4 | 7C 08 03 A6 */	mtlr r0
/* 8139EAD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139EADC | 4E 80 00 20 */	blr
.endfn do_scroll_l__Q33ipl5scene8CalendarFv

# .text:0xF30 | 0x8139EAE0 | size: 0x78
# ipl::utility::Calendar::getLastMonth(const ipl::utility::Date&, ipl::utility::Date*)
.fn getLastMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date, weak
/* 8139EAE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139EAE4 | 7C 08 02 A6 */	mflr r0
/* 8139EAE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139EAEC | 7C 60 1B 78 */	mr r0, r3
/* 8139EAF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139EAF4 | 7C 9F 23 78 */	mr r31, r4
/* 8139EAF8 | 7F E3 FB 78 */	mr r3, r31
/* 8139EAFC | 7C 04 03 78 */	mr r4, r0
/* 8139EB00 | 4B FF 0F CD */	bl __as__Q33ipl7utility4DateFRCQ33ipl7utility4Date
/* 8139EB04 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8139EB08 | 34 63 FF FF */	subic. r3, r3, 0x1
/* 8139EB0C | 90 7F 00 04 */	stw r3, 0x4(r31)
/* 8139EB10 | 41 81 00 24 */	bgt .L_8139EB34
/* 8139EB14 | 34 03 FF FF */	subic. r0, r3, 0x1
/* 8139EB18 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139EB1C | 41 81 00 18 */	bgt .L_8139EB34
/* 8139EB20 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8139EB24 | 38 00 00 0C */	li r0, 0xc
/* 8139EB28 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8139EB2C | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139EB30 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8139EB34:
/* 8139EB34 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8139EB38 | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8139EB3C | 4B FF 0F AD */	bl getDays__Q33ipl7utility8CalendarFii
/* 8139EB40 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 8139EB44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139EB48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139EB4C | 7C 08 03 A6 */	mtlr r0
/* 8139EB50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139EB54 | 4E 80 00 20 */	blr
.endfn getLastMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date

# .text:0xFA8 | 0x8139EB58 | size: 0x74
# ipl::scene::Calendar::start_exit()
.fn start_exit__Q33ipl5scene8CalendarFv, global
/* 8139EB58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139EB5C | 7C 08 02 A6 */	mflr r0
/* 8139EB60 | 38 80 00 05 */	li r4, 0x5
/* 8139EB64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139EB68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139EB6C | 7C 7F 1B 78 */	mr r31, r3
/* 8139EB70 | 80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8139EB74 | 80 A3 00 64 */	lwz r5, 0x64(r3)
/* 8139EB78 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139EB7C | 90 A3 00 68 */	stw r5, 0x68(r3)
/* 8139EB80 | 90 83 00 64 */	stw r4, 0x64(r3)
/* 8139EB84 | 40 82 00 30 */	bne .L_8139EBB4
/* 8139EB88 | 3C 60 81 65 */	lis r3, lbl_8164C53A@ha
/* 8139EB8C | 38 63 C5 3A */	addi r3, r3, lbl_8164C53A@l
/* 8139EB90 | 4C C6 31 82 */	crclr cr1eq
/* 8139EB94 | 48 18 FB 0D */	bl OSReport
/* 8139EB98 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139EB9C | 38 80 00 01 */	li r4, 0x1
/* 8139EBA0 | 38 00 00 03 */	li r0, 0x3
/* 8139EBA4 | 90 9F 00 A4 */	stw r4, 0xa4(r31)
/* 8139EBA8 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 8139EBAC | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8139EBB0 | 48 00 00 08 */	b .L_8139EBB8
.L_8139EBB4:
/* 8139EBB4 | 48 00 00 19 */	bl do_exit__Q33ipl5scene8CalendarFv
.L_8139EBB8:
/* 8139EBB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139EBBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139EBC0 | 7C 08 03 A6 */	mtlr r0
/* 8139EBC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139EBC8 | 4E 80 00 20 */	blr
.endfn start_exit__Q33ipl5scene8CalendarFv

# .text:0x101C | 0x8139EBCC | size: 0xB8
# ipl::scene::Calendar::do_exit()
.fn do_exit__Q33ipl5scene8CalendarFv, global
/* 8139EBCC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139EBD0 | 7C 08 02 A6 */	mflr r0
/* 8139EBD4 | 38 80 00 04 */	li r4, 0x4
/* 8139EBD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139EBDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139EBE0 | 7C 7F 1B 78 */	mr r31, r3
/* 8139EBE4 | 4B FF F6 55 */	bl doAnim__Q33ipl5scene8CalendarFi
/* 8139EBE8 | 7F E3 FB 78 */	mr r3, r31
/* 8139EBEC | 48 00 0B B9 */	bl is_upper_limit__Q33ipl5scene8CalendarFv
/* 8139EBF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139EBF4 | 40 82 00 20 */	bne .L_8139EC14
/* 8139EBF8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139EBFC | 38 80 00 05 */	li r4, 0x5
/* 8139EC00 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139EC04 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139EC08 | 48 06 C5 31 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139EC0C | 38 80 00 19 */	li r4, 0x19
/* 8139EC10 | 4B FF DF 49 */	bl iplButton_8139CB58
.L_8139EC14:
/* 8139EC14 | 7F E3 FB 78 */	mr r3, r31
/* 8139EC18 | 48 00 0B C5 */	bl is_lower_limit__Q33ipl5scene8CalendarFv
/* 8139EC1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139EC20 | 40 82 00 20 */	bne .L_8139EC40
/* 8139EC24 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139EC28 | 38 80 00 05 */	li r4, 0x5
/* 8139EC2C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139EC30 | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139EC34 | 48 06 C5 05 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139EC38 | 38 80 00 1A */	li r4, 0x1a
/* 8139EC3C | 4B FF DF 1D */	bl iplButton_8139CB58
.L_8139EC40:
/* 8139EC40 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139EC44 | 38 80 00 05 */	li r4, 0x5
/* 8139EC48 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139EC4C | 80 63 00 64 */	lwz r3, 0x64(r3)
/* 8139EC50 | 48 06 C4 E9 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139EC54 | 38 80 00 00 */	li r4, 0x0
/* 8139EC58 | 38 A0 00 00 */	li r5, 0x0
/* 8139EC5C | 4B FF DC E1 */	bl setEventHandler__Q33ipl5scene6ButtonFPQ23gui12EventHandlerPQ23gui12EventHandler
/* 8139EC60 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139EC64 | 38 00 00 05 */	li r0, 0x5
/* 8139EC68 | 90 7F 00 68 */	stw r3, 0x68(r31)
/* 8139EC6C | 90 1F 00 64 */	stw r0, 0x64(r31)
/* 8139EC70 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139EC74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139EC78 | 7C 08 03 A6 */	mtlr r0
/* 8139EC7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139EC80 | 4E 80 00 20 */	blr
.endfn do_exit__Q33ipl5scene8CalendarFv

# .text:0x10D4 | 0x8139EC84 | size: 0x88
# ipl::scene::Calendar::set_textbox(const char*, unsigned long)
.fn set_textbox__Q33ipl5scene8CalendarFPCcUl, global
/* 8139EC84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139EC88 | 7C 08 02 A6 */	mflr r0
/* 8139EC8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139EC90 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139EC94 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139EC98 | 7C BE 2B 78 */	mr r30, r5
/* 8139EC9C | 38 A0 00 01 */	li r5, 0x1
/* 8139ECA0 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8139ECA4 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139ECA8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139ECAC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139ECB0 | 7D 89 03 A6 */	mtctr r12
/* 8139ECB4 | 4E 80 04 21 */	bctrl
/* 8139ECB8 | 4B FA 71 AD */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8139ECBC | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139ECC0 | 7C 7F 1B 78 */	mr r31, r3
/* 8139ECC4 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139ECC8 | 7F C4 F3 78 */	mr r4, r30
/* 8139ECCC | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 8139ECD0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139ECD4 | 4B F9 FA E9 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139ECD8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8139ECDC | 7C 64 1B 78 */	mr r4, r3
/* 8139ECE0 | 7F E3 FB 78 */	mr r3, r31
/* 8139ECE4 | 38 A0 00 00 */	li r5, 0x0
/* 8139ECE8 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8139ECEC | 7D 89 03 A6 */	mtctr r12
/* 8139ECF0 | 4E 80 04 21 */	bctrl
/* 8139ECF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139ECF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139ECFC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139ED00 | 7C 08 03 A6 */	mtlr r0
/* 8139ED04 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139ED08 | 4E 80 00 20 */	blr
.endfn set_textbox__Q33ipl5scene8CalendarFPCcUl

# .text:0x115C | 0x8139ED0C | size: 0x94
# ipl::scene::Calendar::set_textbox_day()
.fn set_textbox_day__Q33ipl5scene8CalendarFv, global
/* 8139ED0C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139ED10 | 7C 08 02 A6 */	mflr r0
/* 8139ED14 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139ED18 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139ED1C | 48 25 A7 A9 */	bl _savegpr_28
/* 8139ED20 | 88 03 00 AC */	lbz r0, 0xac(r3)
/* 8139ED24 | 7C 7C 1B 78 */	mr r28, r3
/* 8139ED28 | 38 80 00 00 */	li r4, 0x0
/* 8139ED2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139ED30 | 40 82 00 10 */	bne .L_8139ED40
/* 8139ED34 | 88 03 00 AD */	lbz r0, 0xad(r3)
/* 8139ED38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139ED3C | 41 82 00 08 */	beq .L_8139ED44
.L_8139ED40:
/* 8139ED40 | 38 80 00 01 */	li r4, 0x1
.L_8139ED44:
/* 8139ED44 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8139ED48 | 3F C0 81 61 */	lis r30, scWorldDayToMessageID__Q23ipl5scene@ha
/* 8139ED4C | 3B DE FA B0 */	addi r30, r30, scWorldDayToMessageID__Q23ipl5scene@l
/* 8139ED50 | 41 82 00 0C */	beq .L_8139ED5C
/* 8139ED54 | 3F C0 81 61 */	lis r30, scJapanDayToMessageID__Q23ipl5scene@ha
/* 8139ED58 | 3B DE FA 08 */	addi r30, r30, scJapanDayToMessageID__Q23ipl5scene@l
.L_8139ED5C:
/* 8139ED5C | 3B A0 00 00 */	li r29, 0x0
/* 8139ED60 | 3B E0 00 00 */	li r31, 0x0
.L_8139ED64:
/* 8139ED64 | 7C BE FA 14 */	add r5, r30, r31
/* 8139ED68 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 8139ED6C | 80 A5 00 04 */	lwz r5, 0x4(r5)
/* 8139ED70 | 7F 83 E3 78 */	mr r3, r28
/* 8139ED74 | 4B FF FF 11 */	bl set_textbox__Q33ipl5scene8CalendarFPCcUl
/* 8139ED78 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8139ED7C | 3B FF 00 08 */	addi r31, r31, 0x8
/* 8139ED80 | 2C 1D 00 15 */	cmpwi r29, 0x15
/* 8139ED84 | 41 80 FF E0 */	blt .L_8139ED64
/* 8139ED88 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139ED8C | 48 25 A7 85 */	bl _restgpr_28
/* 8139ED90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139ED94 | 7C 08 03 A6 */	mtlr r0
/* 8139ED98 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139ED9C | 4E 80 00 20 */	blr
.endfn set_textbox_day__Q33ipl5scene8CalendarFv

# .text:0x11F0 | 0x8139EDA0 | size: 0x90
# ipl::scene::Calendar::set_textbox_month()
.fn set_textbox_month__Q33ipl5scene8CalendarFv, global
/* 8139EDA0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8139EDA4 | 7C 08 02 A6 */	mflr r0
/* 8139EDA8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139EDAC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8139EDB0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8139EDB4 | 7C 7E 1B 78 */	mr r30, r3
/* 8139EDB8 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8139EDBC | 4B FF 0C 7D */	bl __ct__Q33ipl7utility4DateFv
/* 8139EDC0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139EDC4 | 4B FF 0C 75 */	bl __ct__Q33ipl7utility4DateFv
/* 8139EDC8 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8139EDCC | 38 81 00 14 */	addi r4, r1, 0x14
/* 8139EDD0 | 4B FF FD 11 */	bl getLastMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 8139EDD4 | 80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8139EDD8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139EDDC | 4B FF FB 29 */	bl getNextMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 8139EDE0 | 3F E0 81 65 */	lis r31, lbl_8164C458@ha
/* 8139EDE4 | 7F C3 F3 78 */	mr r3, r30
/* 8139EDE8 | 80 9F C4 58 */	lwz r4, lbl_8164C458@l(r31)
/* 8139EDEC | 38 A1 00 14 */	addi r5, r1, 0x14
/* 8139EDF0 | 48 00 00 41 */	bl set_textbox_month__Q33ipl5scene8CalendarFPCcRCQ33ipl7utility4Date
/* 8139EDF4 | 3B FF C4 58 */	addi r31, r31, lbl_8164C458@l
/* 8139EDF8 | 80 BE 00 7C */	lwz r5, 0x7c(r30)
/* 8139EDFC | 80 9F 00 04 */	lwz r4, 0x4(r31)
/* 8139EE00 | 7F C3 F3 78 */	mr r3, r30
/* 8139EE04 | 48 00 00 2D */	bl set_textbox_month__Q33ipl5scene8CalendarFPCcRCQ33ipl7utility4Date
/* 8139EE08 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 8139EE0C | 7F C3 F3 78 */	mr r3, r30
/* 8139EE10 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8139EE14 | 48 00 00 1D */	bl set_textbox_month__Q33ipl5scene8CalendarFPCcRCQ33ipl7utility4Date
/* 8139EE18 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139EE1C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8139EE20 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8139EE24 | 7C 08 03 A6 */	mtlr r0
/* 8139EE28 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139EE2C | 4E 80 00 20 */	blr
.endfn set_textbox_month__Q33ipl5scene8CalendarFv

# .text:0x1280 | 0x8139EE30 | size: 0x274
# ipl::scene::Calendar::set_textbox_month(const char*, const ipl::utility::Date&)
.fn set_textbox_month__Q33ipl5scene8CalendarFPCcRCQ33ipl7utility4Date, global
/* 8139EE30 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8139EE34 | 7C 08 02 A6 */	mflr r0
/* 8139EE38 | 90 01 00 84 */	stw r0, 0x84(r1)
/* 8139EE3C | 39 61 00 80 */	addi r11, r1, 0x80
/* 8139EE40 | 48 25 A6 81 */	bl _savegpr_27
/* 8139EE44 | 38 00 00 10 */	li r0, 0x10
/* 8139EE48 | 7C 9D 23 78 */	mr r29, r4
/* 8139EE4C | 7C 7C 1B 78 */	mr r28, r3
/* 8139EE50 | 38 C1 00 1A */	addi r6, r1, 0x1a
/* 8139EE54 | 38 80 00 00 */	li r4, 0x0
/* 8139EE58 | 7C 09 03 A6 */	mtctr r0
.L_8139EE5C:
/* 8139EE5C | B0 86 00 02 */	sth r4, 0x2(r6)
/* 8139EE60 | B4 86 00 04 */	sthu r4, 0x4(r6)
/* 8139EE64 | 42 00 FF F8 */	bdnz .L_8139EE5C
/* 8139EE68 | 3C 80 81 61 */	lis r4, lbl_8160FB88@ha
/* 8139EE6C | 38 00 00 05 */	li r0, 0x5
/* 8139EE70 | 38 84 FB 88 */	addi r4, r4, lbl_8160FB88@l
/* 8139EE74 | 38 E1 00 06 */	addi r7, r1, 0x6
/* 8139EE78 | 38 C4 FF FE */	subi r6, r4, 0x2
/* 8139EE7C | 7C 09 03 A6 */	mtctr r0
.L_8139EE80:
/* 8139EE80 | A0 86 00 02 */	lhz r4, 0x2(r6)
/* 8139EE84 | A4 06 00 04 */	lhzu r0, 0x4(r6)
/* 8139EE88 | B0 87 00 02 */	sth r4, 0x2(r7)
/* 8139EE8C | B4 07 00 04 */	sthu r0, 0x4(r7)
/* 8139EE90 | 42 00 FF F0 */	bdnz .L_8139EE80
/* 8139EE94 | 88 03 00 AC */	lbz r0, 0xac(r3)
/* 8139EE98 | 3B C0 00 00 */	li r30, 0x0
/* 8139EE9C | 83 E5 00 00 */	lwz r31, 0x0(r5)
/* 8139EEA0 | 3B 60 00 00 */	li r27, 0x0
/* 8139EEA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139EEA8 | 41 82 00 C0 */	beq .L_8139EF68
/* 8139EEAC | 38 00 00 64 */	li r0, 0x64
/* 8139EEB0 | 39 20 00 0A */	li r9, 0xa
/* 8139EEB4 | 7D 5F 03 D6 */	divw r10, r31, r0
/* 8139EEB8 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 8139EEBC | 39 00 03 E8 */	li r8, 0x3e8
/* 8139EEC0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139EEC4 | 3C 80 81 61 */	lis r4, scMonthToMessageID__Q23ipl5scene@ha
/* 8139EEC8 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139EECC | 7C FF 4B D6 */	divw r7, r31, r9
/* 8139EED0 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139EED4 | 54 00 10 3A */	slwi r0, r0, 2
/* 8139EED8 | 80 A5 00 80 */	lwz r5, 0x80(r5)
/* 8139EEDC | 38 84 FB 58 */	addi r4, r4, scMonthToMessageID__Q23ipl5scene@l
/* 8139EEE0 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8139EEE4 | 7C CA 4B D6 */	divw r6, r10, r9
/* 8139EEE8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139EEEC | 3B 60 00 08 */	li r27, 0x8
/* 8139EEF0 | 7D 7F 43 D6 */	divw r11, r31, r8
/* 8139EEF4 | 7D 06 49 D6 */	mullw r8, r6, r9
/* 8139EEF8 | 55 66 08 3C */	slwi r6, r11, 1
/* 8139EEFC | 7C C3 32 2E */	lhzx r6, r3, r6
/* 8139EF00 | B0 C1 00 1C */	sth r6, 0x1c(r1)
/* 8139EF04 | 7C 07 4B D6 */	divw r0, r7, r9
/* 8139EF08 | 7C C0 49 D6 */	mullw r6, r0, r9
/* 8139EF0C | 7C 08 50 50 */	subf r0, r8, r10
/* 8139EF10 | 54 00 08 3C */	slwi r0, r0, 1
/* 8139EF14 | 7D 03 02 2E */	lhzx r8, r3, r0
/* 8139EF18 | 7C 07 49 D6 */	mullw r0, r7, r9
/* 8139EF1C | 7C C6 38 50 */	subf r6, r6, r7
/* 8139EF20 | B1 01 00 1E */	sth r8, 0x1e(r1)
/* 8139EF24 | 54 C6 08 3C */	slwi r6, r6, 1
/* 8139EF28 | 7C C3 32 2E */	lhzx r6, r3, r6
/* 8139EF2C | 7C 00 F8 50 */	subf r0, r0, r31
/* 8139EF30 | 54 00 08 3C */	slwi r0, r0, 1
/* 8139EF34 | B0 C1 00 20 */	sth r6, 0x20(r1)
/* 8139EF38 | 7C 03 02 2E */	lhzx r0, r3, r0
/* 8139EF3C | B0 01 00 22 */	sth r0, 0x22(r1)
/* 8139EF40 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8139EF44 | 4B F9 F8 79 */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139EF48 | 38 81 00 1C */	addi r4, r1, 0x1c
.L_8139EF4C:
/* 8139EF4C | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8139EF50 | 38 63 00 02 */	addi r3, r3, 0x2
/* 8139EF54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139EF58 | 7C 04 DB 2E */	sthx r0, r4, r27
/* 8139EF5C | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 8139EF60 | 40 82 FF EC */	bne .L_8139EF4C
/* 8139EF64 | 48 00 00 EC */	b .L_8139F050
.L_8139EF68:
/* 8139EF68 | 80 65 00 04 */	lwz r3, 0x4(r5)
/* 8139EF6C | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8139EF70 | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8139EF74 | 3C 80 81 61 */	lis r4, scMonthToMessageID__Q23ipl5scene@ha
/* 8139EF78 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139EF7C | 80 65 00 80 */	lwz r3, 0x80(r5)
/* 8139EF80 | 54 00 10 3A */	slwi r0, r0, 2
/* 8139EF84 | 38 84 FB 58 */	addi r4, r4, scMonthToMessageID__Q23ipl5scene@l
/* 8139EF88 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8139EF8C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8139EF90 | 4B F9 F8 2D */	bl getMessage__Q33ipl7message7MessageCFUl
/* 8139EF94 | 38 81 00 1C */	addi r4, r1, 0x1c
.L_8139EF98:
/* 8139EF98 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 8139EF9C | 38 63 00 02 */	addi r3, r3, 0x2
/* 8139EFA0 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8139EFA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139EFA8 | 7C 04 DB 2E */	sthx r0, r4, r27
/* 8139EFAC | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 8139EFB0 | 40 82 FF E8 */	bne .L_8139EF98
/* 8139EFB4 | 38 00 00 64 */	li r0, 0x64
/* 8139EFB8 | 39 40 00 0A */	li r10, 0xa
/* 8139EFBC | 7D 7F 03 D6 */	divw r11, r31, r0
/* 8139EFC0 | 3B DE FF FF */	subi r30, r30, 0x1
/* 8139EFC4 | 39 20 03 E8 */	li r9, 0x3e8
/* 8139EFC8 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8139EFCC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8139EFD0 | 38 60 00 20 */	li r3, 0x20
/* 8139EFD4 | 57 CC 08 3C */	slwi r12, r30, 1
/* 8139EFD8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8139EFDC | 57 C8 08 3C */	slwi r8, r30, 1
/* 8139EFE0 | 7C 64 03 2E */	sthx r3, r4, r0
/* 8139EFE4 | 7C FF 53 D6 */	divw r7, r31, r10
/* 8139EFE8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8139EFEC | 3B 61 00 08 */	addi r27, r1, 0x8
/* 8139EFF0 | 57 C5 08 3C */	slwi r5, r30, 1
/* 8139EFF4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 8139EFF8 | 57 C0 08 3C */	slwi r0, r30, 1
/* 8139EFFC | 7C CB 53 D6 */	divw r6, r11, r10
/* 8139F000 | 7F DF 4B D6 */	divw r30, r31, r9
/* 8139F004 | 7D 26 51 D6 */	mullw r9, r6, r10
/* 8139F008 | 57 C6 08 3C */	slwi r6, r30, 1
/* 8139F00C | 7C DB 32 2E */	lhzx r6, r27, r6
/* 8139F010 | 7C C4 63 2E */	sthx r6, r4, r12
/* 8139F014 | 7C 67 53 D6 */	divw r3, r7, r10
/* 8139F018 | 7C C3 51 D6 */	mullw r6, r3, r10
/* 8139F01C | 7C 69 58 50 */	subf r3, r9, r11
/* 8139F020 | 54 63 08 3C */	slwi r3, r3, 1
/* 8139F024 | 7D 3B 1A 2E */	lhzx r9, r27, r3
/* 8139F028 | 7C 67 51 D6 */	mullw r3, r7, r10
/* 8139F02C | 7C C6 38 50 */	subf r6, r6, r7
/* 8139F030 | 7D 24 43 2E */	sthx r9, r4, r8
/* 8139F034 | 54 C6 08 3C */	slwi r6, r6, 1
/* 8139F038 | 7C DB 32 2E */	lhzx r6, r27, r6
/* 8139F03C | 7C 63 F8 50 */	subf r3, r3, r31
/* 8139F040 | 54 63 08 3C */	slwi r3, r3, 1
/* 8139F044 | 7C C4 2B 2E */	sthx r6, r4, r5
/* 8139F048 | 7C 7B 1A 2E */	lhzx r3, r27, r3
/* 8139F04C | 7C 64 03 2E */	sthx r3, r4, r0
.L_8139F050:
/* 8139F050 | 80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 8139F054 | 7F A4 EB 78 */	mr r4, r29
/* 8139F058 | 38 A0 00 01 */	li r5, 0x1
/* 8139F05C | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8139F060 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139F064 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139F068 | 7D 89 03 A6 */	mtctr r12
/* 8139F06C | 4E 80 04 21 */	bctrl
/* 8139F070 | 4B FA 6D F5 */	bl "DynamicCast<PQ34nw4r3lyt7TextBox,Q34nw4r3lyt4Pane>__Q24nw4r2utFPQ34nw4r3lyt4Pane_PQ34nw4r3lyt7TextBox"
/* 8139F074 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139F078 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 8139F07C | 38 A0 00 00 */	li r5, 0x0
/* 8139F080 | 81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8139F084 | 7D 89 03 A6 */	mtctr r12
/* 8139F088 | 4E 80 04 21 */	bctrl
/* 8139F08C | 39 61 00 80 */	addi r11, r1, 0x80
/* 8139F090 | 48 25 A4 7D */	bl _restgpr_27
/* 8139F094 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8139F098 | 7C 08 03 A6 */	mtlr r0
/* 8139F09C | 38 21 00 80 */	addi r1, r1, 0x80
/* 8139F0A0 | 4E 80 00 20 */	blr
.endfn set_textbox_month__Q33ipl5scene8CalendarFPCcRCQ33ipl7utility4Date

# .text:0x14F4 | 0x8139F0A4 | size: 0x29C
# ipl::scene::Calendar::set_textbox_date(int, const ipl::utility::Date&)
.fn set_textbox_date__Q33ipl5scene8CalendarFiRCQ33ipl7utility4Date, global
/* 8139F0A4 | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8139F0A8 | 7C 08 02 A6 */	mflr r0
/* 8139F0AC | 90 01 00 94 */	stw r0, 0x94(r1)
/* 8139F0B0 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8139F0B4 | 48 25 A3 F9 */	bl _savegpr_22
/* 8139F0B8 | 7C 76 1B 78 */	mr r22, r3
/* 8139F0BC | 7C 99 23 78 */	mr r25, r4
/* 8139F0C0 | 7C B7 2B 78 */	mr r23, r5
/* 8139F0C4 | 4B F9 69 29 */	bl getLanguage__Q23ipl6SystemFv
/* 8139F0C8 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8139F0CC | 38 A0 00 01 */	li r5, 0x1
/* 8139F0D0 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8139F0D4 | 48 00 02 6D */	bl getWeek__Q33ipl7utility8CalendarFiii
/* 8139F0D8 | 7C 7C 1B 78 */	mr r28, r3
/* 8139F0DC | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8139F0E0 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8139F0E4 | 4B FF 0A 05 */	bl getDays__Q33ipl7utility8CalendarFii
/* 8139F0E8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8139F0EC | 38 00 00 05 */	li r0, 0x5
/* 8139F0F0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8139F0F4 | 7C 7D 1B 78 */	mr r29, r3
/* 8139F0F8 | 38 A1 00 34 */	addi r5, r1, 0x34
/* 8139F0FC | 38 84 00 38 */	addi r4, r4, 0x38
/* 8139F100 | 7C 09 03 A6 */	mtctr r0
.L_8139F104:
/* 8139F104 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 8139F108 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 8139F10C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 8139F110 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 8139F114 | 42 00 FF F0 */	bdnz .L_8139F104
/* 8139F118 | 80 A1 00 48 */	lwz r5, 0x48(r1)
/* 8139F11C | 38 61 00 2C */	addi r3, r1, 0x2c
/* 8139F120 | 80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8139F124 | 80 C1 00 44 */	lwz r6, 0x44(r1)
/* 8139F128 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 8139F12C | 48 00 02 75 */	bl __ct__Q33ipl7utility4DateFiii
/* 8139F130 | 38 61 00 20 */	addi r3, r1, 0x20
/* 8139F134 | 4B FF 09 05 */	bl __ct__Q33ipl7utility4DateFv
/* 8139F138 | 38 61 00 14 */	addi r3, r1, 0x14
/* 8139F13C | 4B FF 08 FD */	bl __ct__Q33ipl7utility4DateFv
/* 8139F140 | 7E E3 BB 78 */	mr r3, r23
/* 8139F144 | 38 81 00 20 */	addi r4, r1, 0x20
/* 8139F148 | 4B FF F9 99 */	bl getLastMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 8139F14C | 7E E3 BB 78 */	mr r3, r23
/* 8139F150 | 38 81 00 14 */	addi r4, r1, 0x14
/* 8139F154 | 4B FF F7 B1 */	bl getNextMonth__Q33ipl7utility8CalendarFRCQ33ipl7utility4DatePQ33ipl7utility4Date
/* 8139F158 | 88 16 00 AC */	lbz r0, 0xac(r22)
/* 8139F15C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139F160 | 40 82 00 10 */	bne .L_8139F170
/* 8139F164 | 88 16 00 AD */	lbz r0, 0xad(r22)
/* 8139F168 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139F16C | 41 82 00 1C */	beq .L_8139F188
.L_8139F170:
/* 8139F170 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8139F174 | 7F A5 EB 78 */	mr r5, r29
/* 8139F178 | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8139F17C | 48 00 01 C5 */	bl getWeek__Q33ipl7utility8CalendarFiii
/* 8139F180 | 23 03 00 06 */	subfic r24, r3, 0x6
/* 8139F184 | 48 00 00 34 */	b .L_8139F1B8
.L_8139F188:
/* 8139F188 | 37 9C FF FF */	subic. r28, r28, 0x1
/* 8139F18C | 40 80 00 08 */	bge .L_8139F194
/* 8139F190 | 3B 80 00 06 */	li r28, 0x6
.L_8139F194:
/* 8139F194 | 80 77 00 00 */	lwz r3, 0x0(r23)
/* 8139F198 | 7F A5 EB 78 */	mr r5, r29
/* 8139F19C | 80 97 00 04 */	lwz r4, 0x4(r23)
/* 8139F1A0 | 48 00 01 A1 */	bl getWeek__Q33ipl7utility8CalendarFiii
/* 8139F1A4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8139F1A8 | 23 00 00 06 */	subfic r24, r0, 0x6
/* 8139F1AC | 2C 18 00 07 */	cmpwi r24, 0x7
/* 8139F1B0 | 41 80 00 08 */	blt .L_8139F1B8
/* 8139F1B4 | 3B 00 00 00 */	li r24, 0x0
.L_8139F1B8:
/* 8139F1B8 | 38 79 FF FF */	subi r3, r25, 0x1
/* 8139F1BC | 38 00 00 2A */	li r0, 0x2a
/* 8139F1C0 | 30 83 FF FF */	subic r4, r3, 0x1
/* 8139F1C4 | 7C 84 21 10 */	subfe r4, r4, r4
/* 8139F1C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8139F1CC | 7C 1B 20 78 */	andc r27, r0, r4
/* 8139F1D0 | 4B FF 08 69 */	bl __ct__Q33ipl7utility4DateFv
/* 8139F1D4 | 7F DD E2 14 */	add r30, r29, r28
/* 8139F1D8 | 3B 20 00 00 */	li r25, 0x0
/* 8139F1DC | 7F F8 F2 14 */	add r31, r24, r30
.L_8139F1E0:
/* 8139F1E0 | 38 76 00 84 */	addi r3, r22, 0x84
/* 8139F1E4 | 57 64 04 3E */	clrlwi r4, r27, 16
/* 8139F1E8 | 48 17 31 31 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139F1EC | 7C 78 1B 78 */	mr r24, r3
/* 8139F1F0 | 38 80 00 01 */	li r4, 0x1
/* 8139F1F4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 8139F1F8 | 48 00 0A D1 */	bl setVisible__Q33ipl5scene4DateFb
/* 8139F1FC | 7C 19 E0 51 */	subf. r0, r25, r28
/* 8139F200 | 3B 40 00 00 */	li r26, 0x0
/* 8139F204 | 40 81 00 2C */	ble .L_8139F230
/* 8139F208 | 80 01 00 28 */	lwz r0, 0x28(r1)
/* 8139F20C | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8139F210 | 7C 1C 00 50 */	subf r0, r28, r0
/* 8139F214 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 8139F218 | 7C 79 02 14 */	add r3, r25, r0
/* 8139F21C | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8139F220 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8139F224 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8139F228 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8139F22C | 48 00 00 D8 */	b .L_8139F304
.L_8139F230:
/* 8139F230 | 7C 19 F0 51 */	subf. r0, r25, r30
/* 8139F234 | 40 81 00 94 */	ble .L_8139F2C8
/* 8139F238 | 80 D7 00 00 */	lwz r6, 0x0(r23)
/* 8139F23C | 7C 7C C8 50 */	subf r3, r28, r25
/* 8139F240 | 80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8139F244 | 38 83 00 01 */	addi r4, r3, 0x1
/* 8139F248 | 80 B7 00 04 */	lwz r5, 0x4(r23)
/* 8139F24C | 63 5A 00 02 */	ori r26, r26, 0x2
/* 8139F250 | 7C 06 00 00 */	cmpw r6, r0
/* 8139F254 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 8139F258 | 38 60 00 00 */	li r3, 0x0
/* 8139F25C | 90 A1 00 0C */	stw r5, 0xc(r1)
/* 8139F260 | 90 81 00 10 */	stw r4, 0x10(r1)
/* 8139F264 | 40 82 00 20 */	bne .L_8139F284
/* 8139F268 | 80 01 00 30 */	lwz r0, 0x30(r1)
/* 8139F26C | 7C 05 00 00 */	cmpw r5, r0
/* 8139F270 | 40 82 00 14 */	bne .L_8139F284
/* 8139F274 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139F278 | 7C 04 00 00 */	cmpw r4, r0
/* 8139F27C | 40 82 00 08 */	bne .L_8139F284
/* 8139F280 | 38 60 00 01 */	li r3, 0x1
.L_8139F284:
/* 8139F284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139F288 | 41 82 00 08 */	beq .L_8139F290
/* 8139F28C | 63 5A 00 01 */	ori r26, r26, 0x1
.L_8139F290:
/* 8139F290 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8139F294 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 8139F298 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8139F29C | 48 00 00 A5 */	bl getWeek__Q33ipl7utility8CalendarFiii
/* 8139F2A0 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 8139F2A4 | 41 82 00 14 */	beq .L_8139F2B8
/* 8139F2A8 | 40 80 00 5C */	bge .L_8139F304
/* 8139F2AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139F2B0 | 41 82 00 10 */	beq .L_8139F2C0
/* 8139F2B4 | 48 00 00 50 */	b .L_8139F304
.L_8139F2B8:
/* 8139F2B8 | 63 5A 00 08 */	ori r26, r26, 0x8
/* 8139F2BC | 48 00 00 48 */	b .L_8139F304
.L_8139F2C0:
/* 8139F2C0 | 63 5A 00 04 */	ori r26, r26, 0x4
/* 8139F2C4 | 48 00 00 40 */	b .L_8139F304
.L_8139F2C8:
/* 8139F2C8 | 7C 19 F8 51 */	subf. r0, r25, r31
/* 8139F2CC | 40 81 00 28 */	ble .L_8139F2F4
/* 8139F2D0 | 7C 1D C8 50 */	subf r0, r29, r25
/* 8139F2D4 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8139F2D8 | 7C 7C 00 50 */	subf r3, r28, r0
/* 8139F2DC | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 8139F2E0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 8139F2E4 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 8139F2E8 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 8139F2EC | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8139F2F0 | 48 00 00 14 */	b .L_8139F304
.L_8139F2F4:
/* 8139F2F4 | 7F 03 C3 78 */	mr r3, r24
/* 8139F2F8 | 38 80 00 00 */	li r4, 0x0
/* 8139F2FC | 48 00 09 CD */	bl setVisible__Q33ipl5scene4DateFb
/* 8139F300 | 48 00 00 1C */	b .L_8139F31C
.L_8139F304:
/* 8139F304 | 7F 03 C3 78 */	mr r3, r24
/* 8139F308 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139F30C | 48 00 0B 41 */	bl setDate__Q33ipl5scene4DateFRCQ33ipl7utility4Date
/* 8139F310 | 7F 03 C3 78 */	mr r3, r24
/* 8139F314 | 7F 44 D3 78 */	mr r4, r26
/* 8139F318 | 48 00 0A 55 */	bl setAttribute__Q33ipl5scene4DateFi
.L_8139F31C:
/* 8139F31C | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8139F320 | 2C 19 00 2A */	cmpwi r25, 0x2a
/* 8139F324 | 41 80 FE BC */	blt .L_8139F1E0
/* 8139F328 | 39 61 00 90 */	addi r11, r1, 0x90
/* 8139F32C | 48 25 A1 CD */	bl _restgpr_22
/* 8139F330 | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 8139F334 | 7C 08 03 A6 */	mtlr r0
/* 8139F338 | 38 21 00 90 */	addi r1, r1, 0x90
/* 8139F33C | 4E 80 00 20 */	blr
.endfn set_textbox_date__Q33ipl5scene8CalendarFiRCQ33ipl7utility4Date

# .text:0x1790 | 0x8139F340 | size: 0x60
# ipl::utility::Calendar::getWeek(int, int, int)
.fn getWeek__Q33ipl7utility8CalendarFiii, weak
/* 8139F340 | 2C 04 00 02 */	cmpwi r4, 0x2
/* 8139F344 | 41 81 00 0C */	bgt .L_8139F350
/* 8139F348 | 38 63 FF FF */	subi r3, r3, 0x1
/* 8139F34C | 38 84 00 0C */	addi r4, r4, 0xc
.L_8139F350:
/* 8139F350 | 1C 84 00 0D */	mulli r4, r4, 0xd
/* 8139F354 | 38 C0 00 64 */	li r6, 0x64
/* 8139F358 | 7C 60 16 70 */	srawi r0, r3, 2
/* 8139F35C | 38 E0 01 90 */	li r7, 0x190
/* 8139F360 | 39 04 00 08 */	addi r8, r4, 0x8
/* 8139F364 | 7C 00 01 94 */	addze r0, r0
/* 8139F368 | 38 80 00 05 */	li r4, 0x5
/* 8139F36C | 7D 08 23 D6 */	divw r8, r8, r4
/* 8139F370 | 7C 03 02 14 */	add r0, r3, r0
/* 8139F374 | 38 80 00 07 */	li r4, 0x7
/* 8139F378 | 7C C3 33 D6 */	divw r6, r3, r6
/* 8139F37C | 7C A5 42 14 */	add r5, r5, r8
/* 8139F380 | 7C 63 3B D6 */	divw r3, r3, r7
/* 8139F384 | 7C 06 00 50 */	subf r0, r6, r0
/* 8139F388 | 7C 03 02 14 */	add r0, r3, r0
/* 8139F38C | 7C 65 02 14 */	add r3, r5, r0
/* 8139F390 | 7C 03 23 D6 */	divw r0, r3, r4
/* 8139F394 | 7C 00 21 D6 */	mullw r0, r0, r4
/* 8139F398 | 7C 60 18 50 */	subf r3, r0, r3
/* 8139F39C | 4E 80 00 20 */	blr
.endfn getWeek__Q33ipl7utility8CalendarFiii

# .text:0x17F0 | 0x8139F3A0 | size: 0x10
# ipl::utility::Date::Date(int, int, int)
.fn __ct__Q33ipl7utility4DateFiii, weak
/* 8139F3A0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8139F3A4 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8139F3A8 | 90 C3 00 08 */	stw r6, 0x8(r3)
/* 8139F3AC | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl7utility4DateFiii

# .text:0x1800 | 0x8139F3B0 | size: 0x16C
# ipl::scene::Calendar::set_date_pos(int)
.fn set_date_pos__Q33ipl5scene8CalendarFi, global
/* 8139F3B0 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8139F3B4 | 7C 08 02 A6 */	mflr r0
/* 8139F3B8 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 8139F3BC | DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8139F3C0 | F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 8139F3C4 | DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8139F3C8 | F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 8139F3CC | 39 61 00 50 */	addi r11, r1, 0x50
/* 8139F3D0 | 48 25 A0 E5 */	bl _savegpr_24
/* 8139F3D4 | 80 C3 00 6C */	lwz r6, 0x6c(r3)
/* 8139F3D8 | 7C 7E 1B 78 */	mr r30, r3
/* 8139F3DC | 3C A0 81 65 */	lis r5, lbl_8164C480@ha
/* 8139F3E0 | 54 9B 10 3A */	slwi r27, r4, 2
/* 8139F3E4 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 8139F3E8 | 38 A5 C4 80 */	addi r5, r5, lbl_8164C480@l
/* 8139F3EC | 7C 98 23 78 */	mr r24, r4
/* 8139F3F0 | 7C 85 D8 2E */	lwzx r4, r5, r27
/* 8139F3F4 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139F3F8 | 38 A0 00 01 */	li r5, 0x1
/* 8139F3FC | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139F400 | 7D 89 03 A6 */	mtctr r12
/* 8139F404 | 4E 80 04 21 */	bctrl
/* 8139F408 | 80 DE 00 6C */	lwz r6, 0x6c(r30)
/* 8139F40C | 7C 7F 1B 78 */	mr r31, r3
/* 8139F410 | 3C 80 81 65 */	lis r4, lbl_8164C4B0@ha
/* 8139F414 | 38 A0 00 01 */	li r5, 0x1
/* 8139F418 | 80 66 00 14 */	lwz r3, 0x14(r6)
/* 8139F41C | 38 84 C4 B0 */	addi r4, r4, lbl_8164C4B0@l
/* 8139F420 | 7C 84 D8 2E */	lwzx r4, r4, r27
/* 8139F424 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8139F428 | 81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8139F42C | 7D 89 03 A6 */	mtctr r12
/* 8139F430 | 4E 80 04 21 */	bctrl
/* 8139F434 | 38 18 FF FF */	subi r0, r24, 0x1
/* 8139F438 | CB C2 84 D8 */	lfd f30, lbl_816948D8@sda21(r0)
/* 8139F43C | 30 00 FF FF */	subic r0, r0, 0x1
/* 8139F440 | C3 E2 84 E0 */	lfs f31, lbl_816948E0@sda21(r0)
/* 8139F444 | 7C 80 01 10 */	subfe r4, r0, r0
/* 8139F448 | 3B 63 00 84 */	addi r27, r3, 0x84
/* 8139F44C | 38 00 00 2A */	li r0, 0x2a
/* 8139F450 | 3B 20 00 00 */	li r25, 0x0
/* 8139F454 | 7C 1A 20 78 */	andc r26, r0, r4
/* 8139F458 | 3B 80 00 07 */	li r28, 0x7
/* 8139F45C | 3F A0 43 30 */	lis r29, 0x4330
.L_8139F460:
/* 8139F460 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8139F464 | 57 44 04 3E */	clrlwi r4, r26, 16
/* 8139F468 | 48 17 2E B1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139F46C | 57 26 04 3E */	clrlwi r6, r25, 16
/* 8139F470 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139F474 | 7C E6 E3 D6 */	divw r7, r6, r28
/* 8139F478 | 7C 78 1B 78 */	mr r24, r3
/* 8139F47C | 93 A1 00 18 */	stw r29, 0x18(r1)
/* 8139F480 | 7F 63 DB 78 */	mr r3, r27
/* 8139F484 | 7C 85 23 78 */	mr r5, r4
/* 8139F488 | 93 A1 00 20 */	stw r29, 0x20(r1)
/* 8139F48C | 7C 07 E1 D6 */	mullw r0, r7, r28
/* 8139F490 | D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 8139F494 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 8139F498 | 7C 00 30 50 */	subf r0, r0, r6
/* 8139F49C | 1C C0 00 46 */	mulli r6, r0, 0x46
/* 8139F4A0 | 1C 07 FF D0 */	mulli r0, r7, -0x30
/* 8139F4A4 | 6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8139F4A8 | 90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8139F4AC | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8139F4B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139F4B4 | C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8139F4B8 | C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8139F4BC | EC 21 F0 28 */	fsubs f1, f1, f30
/* 8139F4C0 | EC 00 F0 28 */	fsubs f0, f0, f30
/* 8139F4C4 | D0 21 00 08 */	stfs f1, 0x8(r1)
/* 8139F4C8 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8139F4CC | 48 1A 1F F1 */	bl fn_815414BC
/* 8139F4D0 | 7F 03 C3 78 */	mr r3, r24
/* 8139F4D4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139F4D8 | 48 00 07 99 */	bl setTranslate__Q33ipl5scene4DateFRCQ34nw4r4math4VEC3
/* 8139F4DC | 7F 03 C3 78 */	mr r3, r24
/* 8139F4E0 | 38 9F 00 38 */	addi r4, r31, 0x38
/* 8139F4E4 | 48 00 07 35 */	bl setRotate__Q33ipl5scene4DateFRCQ34nw4r4math4VEC3
/* 8139F4E8 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 8139F4EC | 28 19 00 2A */	cmplwi r25, 0x2a
/* 8139F4F0 | 41 80 FF 70 */	blt .L_8139F460
/* 8139F4F4 | E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 8139F4F8 | CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8139F4FC | E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 8139F500 | 39 61 00 50 */	addi r11, r1, 0x50
/* 8139F504 | CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8139F508 | 48 25 9F F9 */	bl _restgpr_24
/* 8139F50C | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 8139F510 | 7C 08 03 A6 */	mtlr r0
/* 8139F514 | 38 21 00 70 */	addi r1, r1, 0x70
/* 8139F518 | 4E 80 00 20 */	blr
.endfn set_date_pos__Q33ipl5scene8CalendarFi

# .text:0x196C | 0x8139F51C | size: 0xD0
# ipl::scene::search_task_cb_(void*, _CDBRecord*)
.fn search_task_cb___Q23ipl5sceneFPvP10_CDBRecord, global
/* 8139F51C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8139F520 | 7C 08 02 A6 */	mflr r0
/* 8139F524 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8139F528 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139F52C | 48 25 9F 9D */	bl _savegpr_29
/* 8139F530 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8139F534 | 7C 9E 23 78 */	mr r30, r4
/* 8139F538 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8139F53C | 7C 7D 1B 78 */	mr r29, r3
/* 8139F540 | 80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8139F544 | 38 80 00 07 */	li r4, 0x7
/* 8139F548 | 48 06 BB F1 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139F54C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139F550 | 41 82 00 80 */	beq .L_8139F5D0
/* 8139F554 | 38 00 00 00 */	li r0, 0x0
/* 8139F558 | 7F C3 F3 78 */	mr r3, r30
/* 8139F55C | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8139F560 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139F564 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8139F568 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8139F56C | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8139F570 | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8139F574 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 8139F578 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 8139F57C | 98 01 00 0F */	stb r0, 0xf(r1)
/* 8139F580 | 48 0E D5 99 */	bl CDBRecordGetTypeForce
/* 8139F584 | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8139F588 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139F58C | 41 82 00 0C */	beq .L_8139F598
/* 8139F590 | 38 60 00 00 */	li r3, 0x0
/* 8139F594 | 48 00 00 08 */	b .L_8139F59C
.L_8139F598:
/* 8139F598 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
.L_8139F59C:
/* 8139F59C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8139F5A0 | 4B FA 03 E9 */	bl isTxtValidType__Q33ipl3cdb7ManagerFPCc
/* 8139F5A4 | 90 7D 00 0C */	stw r3, 0xc(r29)
/* 8139F5A8 | 80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8139F5AC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139F5B0 | 40 82 00 0C */	bne .L_8139F5BC
/* 8139F5B4 | 38 60 00 01 */	li r3, 0x1
/* 8139F5B8 | 48 00 00 1C */	b .L_8139F5D4
.L_8139F5BC:
/* 8139F5BC | 7F A3 EB 78 */	mr r3, r29
/* 8139F5C0 | 38 80 00 0A */	li r4, 0xa
/* 8139F5C4 | 48 00 05 DD */	bl doAnim__Q33ipl5scene4DateFi
/* 8139F5C8 | 7F A3 EB 78 */	mr r3, r29
/* 8139F5CC | 48 00 05 09 */	bl calc__Q33ipl5scene4DateFv
.L_8139F5D0:
/* 8139F5D0 | 38 60 00 00 */	li r3, 0x0
.L_8139F5D4:
/* 8139F5D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8139F5D8 | 48 25 9F 3D */	bl _restgpr_29
/* 8139F5DC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8139F5E0 | 7C 08 03 A6 */	mtlr r0
/* 8139F5E4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8139F5E8 | 4E 80 00 20 */	blr
.endfn search_task_cb___Q23ipl5sceneFPvP10_CDBRecord

# .text:0x1A3C | 0x8139F5EC | size: 0x158
# ipl::scene::search_task_(void*)
.fn search_task___Q23ipl5sceneFPv, global
/* 8139F5EC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8139F5F0 | 7C 08 02 A6 */	mflr r0
/* 8139F5F4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8139F5F8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139F5FC | 48 25 9E C5 */	bl _savegpr_27
/* 8139F600 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139F604 | 38 80 00 07 */	li r4, 0x7
/* 8139F608 | 3B A3 90 08 */	addi r29, r3, smArg__Q23ipl6System@l
/* 8139F60C | 80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8139F610 | 48 06 BB 29 */	bl getScene__Q33ipl5scene7ManagerFi
/* 8139F614 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139F618 | 7C 7E 1B 78 */	mr r30, r3
/* 8139F61C | 41 82 01 10 */	beq .L_8139F72C
/* 8139F620 | 3B 80 00 00 */	li r28, 0x0
/* 8139F624 | 3F E0 81 3A */	lis r31, search_task_cb___Q23ipl5sceneFPvP10_CDBRecord@ha
.L_8139F628:
/* 8139F628 | 80 1E 00 A4 */	lwz r0, 0xa4(r30)
/* 8139F62C | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8139F630 | 40 82 00 20 */	bne .L_8139F650
/* 8139F634 | 3C 60 81 65 */	lis r3, lbl_8164C54E@ha
/* 8139F638 | 38 63 C5 4E */	addi r3, r3, lbl_8164C54E@l
/* 8139F63C | 4C C6 31 82 */	crclr cr1eq
/* 8139F640 | 48 18 F0 61 */	bl OSReport
/* 8139F644 | 38 00 00 00 */	li r0, 0x0
/* 8139F648 | 90 1E 00 A4 */	stw r0, 0xa4(r30)
/* 8139F64C | 48 00 00 C4 */	b .L_8139F710
.L_8139F650:
/* 8139F650 | 38 7E 00 84 */	addi r3, r30, 0x84
/* 8139F654 | 57 84 04 3E */	clrlwi r4, r28, 16
/* 8139F658 | 48 17 2C C1 */	bl List_GetNth__Q24nw4r2utFPCQ34nw4r2ut4ListUs
/* 8139F65C | 7C 7B 1B 78 */	mr r27, r3
/* 8139F660 | 48 00 06 C5 */	bl getVisible__Q33ipl5scene4DateFv
/* 8139F664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139F668 | 41 82 00 9C */	beq .L_8139F704
/* 8139F66C | 80 BB 00 38 */	lwz r5, 0x38(r27)
/* 8139F670 | 38 C0 00 00 */	li r6, 0x0
/* 8139F674 | 38 E0 00 00 */	li r7, 0x0
/* 8139F678 | 39 00 00 00 */	li r8, 0x0
/* 8139F67C | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8139F680 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8139F684 | 80 A5 00 08 */	lwz r5, 0x8(r5)
/* 8139F688 | 38 84 FF FF */	subi r4, r4, 0x1
/* 8139F68C | 48 0E 6C 5D */	bl CDBMakeCDBDate
/* 8139F690 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8139F694 | 38 C0 00 17 */	li r6, 0x17
/* 8139F698 | 38 E0 00 3B */	li r7, 0x3b
/* 8139F69C | 39 00 00 3B */	li r8, 0x3b
/* 8139F6A0 | 80 BB 00 38 */	lwz r5, 0x38(r27)
/* 8139F6A4 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8139F6A8 | 80 65 00 00 */	lwz r3, 0x0(r5)
/* 8139F6AC | 80 A5 00 08 */	lwz r5, 0x8(r5)
/* 8139F6B0 | 38 84 FF FF */	subi r4, r4, 0x1
/* 8139F6B4 | 48 0E 6C 35 */	bl CDBMakeCDBDate
/* 8139F6B8 | 88 1D 02 BC */	lbz r0, 0x2bc(r29)
/* 8139F6BC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8139F6C0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139F6C4 | 41 82 00 0C */	beq .L_8139F6D0
/* 8139F6C8 | 38 60 00 00 */	li r3, 0x0
/* 8139F6CC | 48 00 00 08 */	b .L_8139F6D4
.L_8139F6D0:
/* 8139F6D0 | 80 7D 00 7C */	lwz r3, 0x7c(r29)
.L_8139F6D4:
/* 8139F6D4 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 8139F6D8 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8139F6DC | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8139F6E0 | 38 C0 00 01 */	li r6, 0x1
/* 8139F6E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8139F6E8 | 38 E0 00 01 */	li r7, 0x1
/* 8139F6EC | 41 82 00 08 */	beq .L_8139F6F4
/* 8139F6F0 | 38 E0 00 03 */	li r7, 0x3
.L_8139F6F4:
/* 8139F6F4 | 7F 6A DB 78 */	mr r10, r27
/* 8139F6F8 | 39 3F F5 1C */	addi r9, r31, search_task_cb___Q23ipl5sceneFPvP10_CDBRecord@l
/* 8139F6FC | 39 00 00 00 */	li r8, 0x0
/* 8139F700 | 4B FA 06 61 */	bl search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv
.L_8139F704:
/* 8139F704 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8139F708 | 28 1C 00 2A */	cmplwi r28, 0x2a
/* 8139F70C | 41 80 FF 1C */	blt .L_8139F628
.L_8139F710:
/* 8139F710 | 3C 60 81 65 */	lis r3, lbl_8164C566@ha
/* 8139F714 | 38 63 C5 66 */	addi r3, r3, lbl_8164C566@l
/* 8139F718 | 4C C6 31 82 */	crclr cr1eq
/* 8139F71C | 48 18 EF 85 */	bl OSReport
/* 8139F720 | 38 00 00 00 */	li r0, 0x0
/* 8139F724 | 90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 8139F728 | 90 1E 00 A4 */	stw r0, 0xa4(r30)
.L_8139F72C:
/* 8139F72C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8139F730 | 48 25 9D DD */	bl _restgpr_27
/* 8139F734 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8139F738 | 7C 08 03 A6 */	mtlr r0
/* 8139F73C | 38 21 00 30 */	addi r1, r1, 0x30
/* 8139F740 | 4E 80 00 20 */	blr
.endfn search_task___Q23ipl5sceneFPv

# .text:0x1B94 | 0x8139F744 | size: 0x60
# ipl::scene::Calendar::exec_search_task()
.fn exec_search_task__Q33ipl5scene8CalendarFv, global
/* 8139F744 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139F748 | 7C 08 02 A6 */	mflr r0
/* 8139F74C | 3C 80 81 65 */	lis r4, lbl_8164C572@ha
/* 8139F750 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139F754 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139F758 | 7C 7F 1B 78 */	mr r31, r3
/* 8139F75C | 38 64 C5 72 */	addi r3, r4, lbl_8164C572@l
/* 8139F760 | 4C C6 31 82 */	crclr cr1eq
/* 8139F764 | 48 18 EF 3D */	bl OSReport
/* 8139F768 | 38 00 00 01 */	li r0, 0x1
/* 8139F76C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8139F770 | 90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 8139F774 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8139F778 | 3C 80 81 3A */	lis r4, search_task___Q23ipl5sceneFPv@ha
/* 8139F77C | 7F E5 FB 78 */	mr r5, r31
/* 8139F780 | 80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 8139F784 | 38 84 F5 EC */	addi r4, r4, search_task___Q23ipl5sceneFPv@l
/* 8139F788 | 38 C0 00 00 */	li r6, 0x0
/* 8139F78C | 48 25 8B 41 */	bl fn_815F82CC
/* 8139F790 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139F794 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139F798 | 7C 08 03 A6 */	mtlr r0
/* 8139F79C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139F7A0 | 4E 80 00 20 */	blr
.endfn exec_search_task__Q33ipl5scene8CalendarFv

# .text:0x1BF4 | 0x8139F7A4 | size: 0x38
# ipl::scene::Calendar::is_upper_limit()
.fn is_upper_limit__Q33ipl5scene8CalendarFv, global
/* 8139F7A4 | 80 C3 00 7C */	lwz r6, 0x7c(r3)
/* 8139F7A8 | 3C 80 81 0B */	lis r4, mscMaxDate__Q33ipl5scene8Calendar@ha
/* 8139F7AC | 80 04 73 0C */	lwz r0, mscMaxDate__Q33ipl5scene8Calendar@l(r4)
/* 8139F7B0 | 38 60 00 00 */	li r3, 0x0
/* 8139F7B4 | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8139F7B8 | 7C 05 00 00 */	cmpw r5, r0
/* 8139F7BC | 4C 82 00 20 */	bnelr
/* 8139F7C0 | 38 84 73 0C */	addi r4, r4, mscMaxDate__Q33ipl5scene8Calendar@l
/* 8139F7C4 | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 8139F7C8 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8139F7CC | 7C 05 00 00 */	cmpw r5, r0
/* 8139F7D0 | 4C 82 00 20 */	bnelr
/* 8139F7D4 | 38 60 00 01 */	li r3, 0x1
/* 8139F7D8 | 4E 80 00 20 */	blr
.endfn is_upper_limit__Q33ipl5scene8CalendarFv

# .text:0x1C2C | 0x8139F7DC | size: 0x38
# ipl::scene::Calendar::is_lower_limit()
.fn is_lower_limit__Q33ipl5scene8CalendarFv, global
/* 8139F7DC | 80 C3 00 7C */	lwz r6, 0x7c(r3)
/* 8139F7E0 | 3C 80 81 0B */	lis r4, mscMinDate__Q33ipl5scene8Calendar@ha
/* 8139F7E4 | 80 04 73 00 */	lwz r0, mscMinDate__Q33ipl5scene8Calendar@l(r4)
/* 8139F7E8 | 38 60 00 00 */	li r3, 0x0
/* 8139F7EC | 80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8139F7F0 | 7C 05 00 00 */	cmpw r5, r0
/* 8139F7F4 | 4C 82 00 20 */	bnelr
/* 8139F7F8 | 38 84 73 00 */	addi r4, r4, mscMinDate__Q33ipl5scene8Calendar@l
/* 8139F7FC | 80 A6 00 04 */	lwz r5, 0x4(r6)
/* 8139F800 | 80 04 00 04 */	lwz r0, 0x4(r4)
/* 8139F804 | 7C 05 00 00 */	cmpw r5, r0
/* 8139F808 | 4C 82 00 20 */	bnelr
/* 8139F80C | 38 60 00 01 */	li r3, 0x1
/* 8139F810 | 4E 80 00 20 */	blr
.endfn is_lower_limit__Q33ipl5scene8CalendarFv

# .text:0x1C64 | 0x8139F814 | size: 0x5C
# ipl::scene::Calendar::~Calendar()
.fn __dt__Q33ipl5scene8CalendarFv, global
/* 8139F814 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139F818 | 7C 08 02 A6 */	mflr r0
/* 8139F81C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8139F820 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139F824 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8139F828 | 7C 9F 23 78 */	mr r31, r4
/* 8139F82C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8139F830 | 7C 7E 1B 78 */	mr r30, r3
/* 8139F834 | 41 82 00 20 */	beq .L_8139F854
/* 8139F838 | 41 82 00 0C */	beq .L_8139F844
/* 8139F83C | 38 80 00 00 */	li r4, 0x0
/* 8139F840 | 48 06 A4 25 */	bl __dt__Q33ipl5scene4BaseFv
.L_8139F844:
/* 8139F844 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8139F848 | 40 81 00 0C */	ble .L_8139F854
/* 8139F84C | 7F C3 F3 78 */	mr r3, r30
/* 8139F850 | 48 25 88 95 */	bl __dl__FPv
.L_8139F854:
/* 8139F854 | 7F C3 F3 78 */	mr r3, r30
/* 8139F858 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8139F85C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8139F860 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139F864 | 7C 08 03 A6 */	mtlr r0
/* 8139F868 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139F86C | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene8CalendarFv

# .text:0x1CC0 | 0x8139F870 | size: 0x4C
.fn "__sinit_\\iplCalendar_cpp", global
/* 8139F870 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8139F874 | 7C 08 02 A6 */	mflr r0
/* 8139F878 | 3C 60 81 0B */	lis r3, mscMinDate__Q33ipl5scene8Calendar@ha
/* 8139F87C | 38 80 07 D0 */	li r4, 0x7d0
/* 8139F880 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8139F884 | 38 63 73 00 */	addi r3, r3, mscMinDate__Q33ipl5scene8Calendar@l
/* 8139F888 | 38 A0 00 01 */	li r5, 0x1
/* 8139F88C | 38 C0 00 01 */	li r6, 0x1
/* 8139F890 | 4B FF FB 11 */	bl __ct__Q33ipl7utility4DateFiii
/* 8139F894 | 3C 60 81 0B */	lis r3, mscMaxDate__Q33ipl5scene8Calendar@ha
/* 8139F898 | 38 80 07 F3 */	li r4, 0x7f3
/* 8139F89C | 38 63 73 0C */	addi r3, r3, mscMaxDate__Q33ipl5scene8Calendar@l
/* 8139F8A0 | 38 A0 00 0C */	li r5, 0xc
/* 8139F8A4 | 38 C0 00 1F */	li r6, 0x1f
/* 8139F8A8 | 4B FF FA F9 */	bl __ct__Q33ipl7utility4DateFiii
/* 8139F8AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8139F8B0 | 7C 08 03 A6 */	mtlr r0
/* 8139F8B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8139F8B8 | 4E 80 00 20 */	blr
.endfn "__sinit_\\iplCalendar_cpp"

# .text:0x1D0C | 0x8139F8BC | size: 0x8
.fn "@20@__dt__Q33ipl5scene8CalendarFv", global
/* 8139F8BC | 38 63 FF EC */	subi r3, r3, 0x14
/* 8139F8C0 | 4B FF FF 54 */	b __dt__Q33ipl5scene8CalendarFv
.endfn "@20@__dt__Q33ipl5scene8CalendarFv"

# .text:0x1D14 | 0x8139F8C4 | size: 0x8
# ipl::scene::Calendar::@88@onEventDerived(unsigned long, unsigned long, const ipl::controller::Interface*)
.fn "@88@onEventDerived__Q33ipl5scene8CalendarFUlUlPCQ33ipl10controller9Interface", global
/* 8139F8C4 | 38 63 FF A8 */	subi r3, r3, 0x58
/* 8139F8C8 | 4B FF E9 DC */	b onEventDerived__Q33ipl5scene8CalendarFUlUlPCQ33ipl10controller9Interface
.endfn "@88@onEventDerived__Q33ipl5scene8CalendarFUlUlPCQ33ipl10controller9Interface"

# 0x8160D1E0..0x8160D1E4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplCalendar_cpp"

# 0x8160F9E0..0x8160FBA0 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x8160F9E0 | size: 0x28
# ipl::scene::scAnmFrame
.obj scAnmFrame__Q23ipl5scene, local
	.4byte 0x447A0000
	.4byte 0x44820000
	.4byte 0x44820000
	.4byte 0x44820000
	.4byte 0x44FA0000
	.4byte 0x44FDC000
	.4byte 0x453B8000
	.4byte 0x453D6000
	.4byte 0x457A0000
	.4byte 0x457B4000
.endobj scAnmFrame__Q23ipl5scene

# .rodata:0x28 | 0x8160FA08 | size: 0xA8
# ipl::scene::scJapanDayToMessageID
.obj scJapanDayToMessageID__Q23ipl5scene, local
	.4byte lbl_8164C348
	.4byte 0x00000074
	.4byte lbl_8164C353
	.4byte 0x0000006E
	.4byte lbl_8164C35E
	.4byte 0x0000006F
	.4byte lbl_8164C369
	.4byte 0x00000070
	.4byte lbl_8164C374
	.4byte 0x00000071
	.4byte lbl_8164C37F
	.4byte 0x00000072
	.4byte lbl_8164C38A
	.4byte 0x00000073
	.4byte lbl_8164C395
	.4byte 0x00000074
	.4byte lbl_8164C3A0
	.4byte 0x0000006E
	.4byte lbl_8164C3AB
	.4byte 0x0000006F
	.4byte lbl_8164C3B6
	.4byte 0x00000070
	.4byte lbl_8164C3C1
	.4byte 0x00000071
	.4byte lbl_8164C3CC
	.4byte 0x00000072
	.4byte lbl_8164C3D7
	.4byte 0x00000073
	.4byte lbl_8164C3E2
	.4byte 0x00000074
	.4byte lbl_8164C3ED
	.4byte 0x0000006E
	.4byte lbl_8164C3F8
	.4byte 0x0000006F
	.4byte lbl_8164C403
	.4byte 0x00000070
	.4byte lbl_8164C40E
	.4byte 0x00000071
	.4byte lbl_8164C419
	.4byte 0x00000072
	.4byte lbl_8164C424
	.4byte 0x00000073
.endobj scJapanDayToMessageID__Q23ipl5scene

# .rodata:0xD0 | 0x8160FAB0 | size: 0xA8
# ipl::scene::scWorldDayToMessageID
.obj scWorldDayToMessageID__Q23ipl5scene, local
	.4byte lbl_8164C348
	.4byte 0x0000006E
	.4byte lbl_8164C353
	.4byte 0x0000006F
	.4byte lbl_8164C35E
	.4byte 0x00000070
	.4byte lbl_8164C369
	.4byte 0x00000071
	.4byte lbl_8164C374
	.4byte 0x00000072
	.4byte lbl_8164C37F
	.4byte 0x00000073
	.4byte lbl_8164C38A
	.4byte 0x00000074
	.4byte lbl_8164C395
	.4byte 0x0000006E
	.4byte lbl_8164C3A0
	.4byte 0x0000006F
	.4byte lbl_8164C3AB
	.4byte 0x00000070
	.4byte lbl_8164C3B6
	.4byte 0x00000071
	.4byte lbl_8164C3C1
	.4byte 0x00000072
	.4byte lbl_8164C3CC
	.4byte 0x00000073
	.4byte lbl_8164C3D7
	.4byte 0x00000074
	.4byte lbl_8164C3E2
	.4byte 0x0000006E
	.4byte lbl_8164C3ED
	.4byte 0x0000006F
	.4byte lbl_8164C3F8
	.4byte 0x00000070
	.4byte lbl_8164C403
	.4byte 0x00000071
	.4byte lbl_8164C40E
	.4byte 0x00000072
	.4byte lbl_8164C419
	.4byte 0x00000073
	.4byte lbl_8164C424
	.4byte 0x00000074
.endobj scWorldDayToMessageID__Q23ipl5scene

# .rodata:0x178 | 0x8160FB58 | size: 0x30
# ipl::scene::scMonthToMessageID
.obj scMonthToMessageID__Q23ipl5scene, local
	.4byte 0x00000076
	.4byte 0x00000077
	.4byte 0x00000078
	.4byte 0x00000079
	.4byte 0x0000007A
	.4byte 0x0000007B
	.4byte 0x0000007C
	.4byte 0x0000007D
	.4byte 0x0000007E
	.4byte 0x0000007F
	.4byte 0x00000080
	.4byte 0x00000081
.endobj scMonthToMessageID__Q23ipl5scene

# .rodata:0x1A8 | 0x8160FB88 | size: 0x18
.obj lbl_8160FB88, global
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
	.2byte 0x0000
	.2byte 0x0000
.endobj lbl_8160FB88

# 0x8164C348..0x8164C620 | size: 0x2D8
.data
.balign 8

# .data:0x0 | 0x8164C348 | size: 0xB
.obj lbl_8164C348, global
	.string "TextBox_00"
.endobj lbl_8164C348

# .data:0xB | 0x8164C353 | size: 0xB
.obj lbl_8164C353, global
	.string "TextBox_01"
.endobj lbl_8164C353

# .data:0x16 | 0x8164C35E | size: 0xB
.obj lbl_8164C35E, global
	.string "TextBox_02"
.endobj lbl_8164C35E

# .data:0x21 | 0x8164C369 | size: 0xB
.obj lbl_8164C369, global
	.string "TextBox_03"
.endobj lbl_8164C369

# .data:0x2C | 0x8164C374 | size: 0xB
.obj lbl_8164C374, global
	.string "TextBox_04"
.endobj lbl_8164C374

# .data:0x37 | 0x8164C37F | size: 0xB
.obj lbl_8164C37F, global
	.string "TextBox_05"
.endobj lbl_8164C37F

# .data:0x42 | 0x8164C38A | size: 0xB
.obj lbl_8164C38A, global
	.string "TextBox_06"
.endobj lbl_8164C38A

# .data:0x4D | 0x8164C395 | size: 0xB
.obj lbl_8164C395, global
	.string "TextBox_08"
.endobj lbl_8164C395

# .data:0x58 | 0x8164C3A0 | size: 0xB
.obj lbl_8164C3A0, global
	.string "TextBox_09"
.endobj lbl_8164C3A0

# .data:0x63 | 0x8164C3AB | size: 0xB
.obj lbl_8164C3AB, global
	.string "TextBox_10"
.endobj lbl_8164C3AB

# .data:0x6E | 0x8164C3B6 | size: 0xB
.obj lbl_8164C3B6, global
	.string "TextBox_11"
.endobj lbl_8164C3B6

# .data:0x79 | 0x8164C3C1 | size: 0xB
.obj lbl_8164C3C1, global
	.string "TextBox_12"
.endobj lbl_8164C3C1

# .data:0x84 | 0x8164C3CC | size: 0xB
.obj lbl_8164C3CC, global
	.string "TextBox_13"
.endobj lbl_8164C3CC

# .data:0x8F | 0x8164C3D7 | size: 0xB
.obj lbl_8164C3D7, global
	.string "TextBox_07"
.endobj lbl_8164C3D7

# .data:0x9A | 0x8164C3E2 | size: 0xB
.obj lbl_8164C3E2, global
	.string "TextBox_16"
.endobj lbl_8164C3E2

# .data:0xA5 | 0x8164C3ED | size: 0xB
.obj lbl_8164C3ED, global
	.string "TextBox_17"
.endobj lbl_8164C3ED

# .data:0xB0 | 0x8164C3F8 | size: 0xB
.obj lbl_8164C3F8, global
	.string "TextBox_18"
.endobj lbl_8164C3F8

# .data:0xBB | 0x8164C403 | size: 0xB
.obj lbl_8164C403, global
	.string "TextBox_19"
.endobj lbl_8164C403

# .data:0xC6 | 0x8164C40E | size: 0xB
.obj lbl_8164C40E, global
	.string "TextBox_20"
.endobj lbl_8164C40E

# .data:0xD1 | 0x8164C419 | size: 0xB
.obj lbl_8164C419, global
	.string "TextBox_14"
.endobj lbl_8164C419

# .data:0xDC | 0x8164C424 | size: 0xB
.obj lbl_8164C424, global
	.string "TextBox_15"
.endobj lbl_8164C424

# .data:0xE7 | 0x8164C42F | size: 0xD
.obj lbl_8164C42F, global
	.string "T_CalMonth_a"
.endobj lbl_8164C42F

# .data:0xF4 | 0x8164C43C | size: 0xD
.obj lbl_8164C43C, global
	.string "T_CalMonth_b"
.endobj lbl_8164C43C

# .data:0x101 | 0x8164C449 | size: 0xF
.obj lbl_8164C449, global
	.4byte 0x545F4361
	.4byte 0x6C4D6F6E
	.4byte 0x74685F63
	.byte 0x00, 0x00, 0x00
.endobj lbl_8164C449

# .data:0x110 | 0x8164C458 | size: 0xC
.obj lbl_8164C458, global
	.4byte lbl_8164C42F
	.4byte lbl_8164C43C
	.4byte lbl_8164C449
.endobj lbl_8164C458

# .data:0x11C | 0x8164C464 | size: 0x9
.obj lbl_8164C464, global
	.string "N_Cal_a1"
.endobj lbl_8164C464

# .data:0x125 | 0x8164C46D | size: 0x9
.obj lbl_8164C46D, global
	.string "N_Cal_b1"
.endobj lbl_8164C46D

# .data:0x12E | 0x8164C476 | size: 0xA
.obj lbl_8164C476, global
	.4byte 0x4E5F4361
	.4byte 0x6C5F6331
	.2byte 0x0000
.endobj lbl_8164C476

# .data:0x138 | 0x8164C480 | size: 0xC
.obj lbl_8164C480, global
	.4byte lbl_8164C464
	.4byte lbl_8164C46D
	.4byte lbl_8164C476
.endobj lbl_8164C480

# .data:0x144 | 0x8164C48C | size: 0xB
.obj lbl_8164C48C, global
	.string "N_CalPos_a"
.endobj lbl_8164C48C

# .data:0x14F | 0x8164C497 | size: 0xB
.obj lbl_8164C497, global
	.string "N_CalPos_b"
.endobj lbl_8164C497

# .data:0x15A | 0x8164C4A2 | size: 0xE
.obj lbl_8164C4A2, global
	.4byte 0x4E5F4361
	.4byte 0x6C506F73
	.4byte 0x5F630000
	.2byte 0x0000
.endobj lbl_8164C4A2

# .data:0x168 | 0x8164C4B0 | size: 0xC
.obj lbl_8164C4B0, global
	.4byte lbl_8164C48C
	.4byte lbl_8164C497
	.4byte lbl_8164C4A2
.endobj lbl_8164C4B0

# .data:0x174 | 0x8164C4BC | size: 0x43
.obj lbl_8164C4BC, global
	.4byte 0x63616C65
	.4byte 0x6E646172
	.4byte 0x2E617368
	.4byte 0x006D795F
	.4byte 0x49706C54
	.4byte 0x6F705F67
	.4byte 0x2E62726C
	.4byte 0x7974006D
	.4byte 0x795F4970
	.4byte 0x6C546F70
	.4byte 0x5F672E62
	.4byte 0x726C616E
	.4byte 0x006D795F
	.4byte 0x49706C54
	.4byte 0x6F705F66
	.4byte 0x2E62726C
	.byte 0x79, 0x74, 0x00
.endobj lbl_8164C4BC

# .data:0x1B7 | 0x8164C4FF | size: 0xF
.obj lbl_8164C4FF, global
	.string "WIPL_SE_CANCEL"
.endobj lbl_8164C4FF

# .data:0x1C6 | 0x8164C50E | size: 0x14
.obj lbl_8164C50E, global
	.string "WIPL_SE_DATE_SELECT"
.endobj lbl_8164C50E

# .data:0x1DA | 0x8164C522 | size: 0x18
.obj lbl_8164C522, global
	.string "WIPL_SE_CALENDAR_SCROLL"
.endobj lbl_8164C522

# .data:0x1F2 | 0x8164C53A | size: 0x14
.obj lbl_8164C53A, global
	.4byte 0x8C9F8DF5
	.4byte 0x835E8358
	.4byte 0x834E8F49
	.4byte 0x97B99776
	.4byte 0x8B810A00
.endobj lbl_8164C53A

# .data:0x206 | 0x8164C54E | size: 0x18
.obj lbl_8164C54E, global
	.4byte 0x835E8358
	.4byte 0x834E834C
	.4byte 0x83838393
	.4byte 0x835A838B
	.4byte 0x82B382EA
	.4byte 0x82BD0A00
.endobj lbl_8164C54E

# .data:0x21E | 0x8164C566 | size: 0xC
.obj lbl_8164C566, global
	.4byte 0x835E8358
	.4byte 0x834E8F49
	.4byte 0x97B90A00
.endobj lbl_8164C566

# .data:0x22A | 0x8164C572 | size: 0xA
.obj lbl_8164C572, global
	.4byte 0x8C9F8DF5
	.4byte 0x8A4A8E6E
	.2byte 0x0A00
.endobj lbl_8164C572

# .data:0x234 | 0x8164C57C | size: 0xA4
# ipl::scene::Calendar::__vtable
.obj __vt__Q33ipl5scene8Calendar, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene8CalendarFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene8CalendarFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene8CalendarFv
	.4byte create__Q33ipl5scene8CalendarFv
	.4byte calc__Q33ipl5scene14FaderSceneBaseFv
	.4byte draw__Q33ipl5scene8CalendarFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte initCalcNormal__Q33ipl5scene14FaderSceneBaseFv
	.4byte initCalcFadeout__Q33ipl5scene8CalendarFv
	.4byte calcCommon__Q33ipl5scene8CalendarFv
	.4byte calcFadein__Q33ipl5scene8CalendarFv
	.4byte calcNormal__Q33ipl5scene8CalendarFv
	.4byte calcFadeout__Q33ipl5scene8CalendarFv
	.4byte calcCommonAfter__Q33ipl5scene14FaderSceneBaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte onEvent__Q33ipl5scene22ButtonEventHandlerBaseFUlUlPv
	.4byte setManager__Q23gui12EventHandlerFPQ23gui7Manager
	.4byte setLatestEventCtrlNo__Q23gui12EventHandlerFi
	.4byte getLatestEventCtrlNo__Q23gui12EventHandlerFv
	.4byte "@88@onEventDerived__Q33ipl5scene8CalendarFUlUlPCQ33ipl10controller9Interface"
	.4byte onEventDerived__Q33ipl5scene8CalendarFUlUlPCQ33ipl10controller9Interface
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene8Calendar

# 0x816948D8..0x816948E8 | size: 0x10
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816948D8 | size: 0x8
.obj lbl_816948D8, global
	.double 4503601774854144
.endobj lbl_816948D8

# .sdata2:0x8 | 0x816948E0 | size: 0x8
.obj lbl_816948E0, global
	.float 0
	.float 0
.endobj lbl_816948E0

# 0x816967C0..0x816967D8 | size: 0x18
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816967C0 | size: 0x4
.obj lbl_816967C0, global
	.string "arc"
.endobj lbl_816967C0

# .sdata:0x4 | 0x816967C4 | size: 0x6
.obj lbl_816967C4, global
	.string "G_All"
.endobj lbl_816967C4

# .sdata:0xA | 0x816967CA | size: 0xE
.obj lbl_816967CA, global
	.4byte 0x475F596F
	.4byte 0x62690000
	.4byte 0x00000000
	.2byte 0x0000
.endobj lbl_816967CA
