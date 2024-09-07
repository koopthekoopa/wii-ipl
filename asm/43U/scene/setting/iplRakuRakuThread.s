.include "macros.inc"
.file "iplRakuRakuThread.cpp"

# 0x810BDDD0..0x810BDEF8 | size: 0x128
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810BDDD0 | size: 0x10
.obj RakuRakuThread_810BDDD0, global
	.skip 0x10
.endobj RakuRakuThread_810BDDD0

# .bss:0x10 | 0x810BDDE0 | size: 0xF4
.obj RakuRakuThread_810BDDE0, global
	.skip 0xF4
.endobj RakuRakuThread_810BDDE0

# .bss:0x104 | 0x810BDED4 | size: 0x24
.obj RakuRakuThread_810BDED4, global
	.skip 0x24
.endobj RakuRakuThread_810BDED4

# 0x813FDA04..0x813FE27C | size: 0x878
.text
.balign 4

# .text:0x0 | 0x813FDA04 | size: 0x6C
# ipl::scene::RakuRakuThread::RakuRakuThread_813FDA04()
.fn RakuRakuThread_813FDA04__Q33ipl5scene14RakuRakuThreadFv, local
/* 813FDA04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FDA08 | 7C 08 02 A6 */	mflr r0
/* 813FDA0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FDA10 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FDA14 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FDA18 | 7C 7E 1B 78 */	mr r30, r3
/* 813FDA1C | 48 13 2E 69 */	bl OSDisableInterrupts
/* 813FDA20 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 813FDA24 | 3C A0 81 0C */	lis r5, RakuRakuThread_810BDDE0@ha
/* 813FDA28 | 38 85 DD E0 */	addi r4, r5, RakuRakuThread_810BDDE0@l
/* 813FDA2C | 7C 7F 1B 78 */	mr r31, r3
/* 813FDA30 | 90 05 DD E0 */	stw r0, RakuRakuThread_810BDDE0@l(r5)
/* 813FDA34 | 80 1E 00 04 */	lwz r0, 0x4(r30)
/* 813FDA38 | 90 04 00 04 */	stw r0, 0x4(r4)
/* 813FDA3C | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 813FDA40 | 90 04 00 08 */	stw r0, 0x8(r4)
/* 813FDA44 | 48 13 82 3D */	bl OSGetTime
/* 813FDA48 | 90 6D AC 20 */	stw r3, lbl_81698C60@sda21(r0)
/* 813FDA4C | 7F E3 FB 78 */	mr r3, r31
/* 813FDA50 | 90 8D AC 24 */	stw r4, lbl_81698C64@sda21(r0)
/* 813FDA54 | 48 13 2E 59 */	bl OSRestoreInterrupts
/* 813FDA58 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FDA5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FDA60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FDA64 | 7C 08 03 A6 */	mtlr r0
/* 813FDA68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FDA6C | 4E 80 00 20 */	blr
.endfn RakuRakuThread_813FDA04__Q33ipl5scene14RakuRakuThreadFv

# .text:0x6C | 0x813FDA70 | size: 0xD8
# ipl::scene::RakuRakuThread::RakuRakuThread(EGG::Heap*)
.fn __ct__Q33ipl5scene14RakuRakuThreadFPQ23EGG4Heap, global
/* 813FDA70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FDA74 | 7C 08 02 A6 */	mflr r0
/* 813FDA78 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FDA7C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FDA80 | 7C 9F 23 78 */	mr r31, r4
/* 813FDA84 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FDA88 | 7C 7E 1B 78 */	mr r30, r3
/* 813FDA8C | 4B F6 71 45 */	bl __ct__Q33ipl7utility9ut_threadFv
/* 813FDA90 | 3C 60 81 65 */	lis r3, __vt__Q33ipl5scene14RakuRakuThread@ha
/* 813FDA94 | 38 63 7C 18 */	addi r3, r3, __vt__Q33ipl5scene14RakuRakuThread@l
/* 813FDA98 | 90 7E 00 00 */	stw r3, 0x0(r30)
/* 813FDA9C | 48 00 92 1D */	bl ATERMi_ApConfigGetVersion
/* 813FDAA0 | 54 60 A7 3E */	extrwi r0, r3, 4, 16
/* 813FDAA4 | 54 63 C7 3E */	extrwi r3, r3, 4, 20
/* 813FDAA8 | 1C 00 00 0A */	mulli r0, r0, 0xa
/* 813FDAAC | 7C 03 02 14 */	add r0, r3, r0
/* 813FDAB0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813FDAB4 | 41 82 00 10 */	beq .L_813FDAC4
/* 813FDAB8 | 38 00 00 00 */	li r0, 0x0
/* 813FDABC | 90 1E 03 3C */	stw r0, 0x33c(r30)
/* 813FDAC0 | 48 00 00 44 */	b .L_813FDB04
.L_813FDAC4:
/* 813FDAC4 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813FDAC8 | 7F E3 FB 78 */	mr r3, r31
/* 813FDACC | 3C 80 00 04 */	lis r4, 0x4
/* 813FDAD0 | 38 A0 00 20 */	li r5, 0x20
/* 813FDAD4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813FDAD8 | 7D 89 03 A6 */	mtctr r12
/* 813FDADC | 4E 80 04 21 */	bctrl
/* 813FDAE0 | 90 7E 03 3C */	stw r3, 0x33c(r30)
/* 813FDAE4 | 7F E3 FB 78 */	mr r3, r31
/* 813FDAE8 | 38 80 10 00 */	li r4, 0x1000
/* 813FDAEC | 38 A0 00 20 */	li r5, 0x20
/* 813FDAF0 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813FDAF4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813FDAF8 | 7D 89 03 A6 */	mtctr r12
/* 813FDAFC | 4E 80 04 21 */	bctrl
/* 813FDB00 | 90 7E 03 40 */	stw r3, 0x340(r30)
.L_813FDB04:
/* 813FDB04 | 38 00 00 00 */	li r0, 0x0
/* 813FDB08 | 3C 60 81 0C */	lis r3, RakuRakuThread_810BDED4@ha
/* 813FDB0C | 90 1E 03 44 */	stw r0, 0x344(r30)
/* 813FDB10 | 38 63 DE D4 */	addi r3, r3, RakuRakuThread_810BDED4@l
/* 813FDB14 | 38 8D AC 2C */	li r4, lbl_81698C6C@sda21
/* 813FDB18 | 38 A0 00 01 */	li r5, 0x1
/* 813FDB1C | 98 0D AC 28 */	stb r0, lbl_81698C68@sda21(r0)
/* 813FDB20 | 90 1E 03 30 */	stw r0, 0x330(r30)
/* 813FDB24 | 90 1E 03 34 */	stw r0, 0x334(r30)
/* 813FDB28 | 48 13 34 F9 */	bl OSInitMessageQueue
/* 813FDB2C | 7F C3 F3 78 */	mr r3, r30
/* 813FDB30 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FDB34 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FDB38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FDB3C | 7C 08 03 A6 */	mtlr r0
/* 813FDB40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FDB44 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene14RakuRakuThreadFPQ23EGG4Heap

# .text:0x144 | 0x813FDB48 | size: 0xA4
# ipl::scene::RakuRakuThread::~RakuRakuThread()
.fn __dt__Q33ipl5scene14RakuRakuThreadFv, global
/* 813FDB48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FDB4C | 7C 08 02 A6 */	mflr r0
/* 813FDB50 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FDB54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FDB58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FDB5C | 7C 9F 23 78 */	mr r31, r4
/* 813FDB60 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FDB64 | 7C 7E 1B 78 */	mr r30, r3
/* 813FDB68 | 41 82 00 68 */	beq .L_813FDBD0
/* 813FDB6C | 80 03 03 34 */	lwz r0, 0x334(r3)
/* 813FDB70 | 3C 80 81 65 */	lis r4, __vt__Q33ipl5scene14RakuRakuThread@ha
/* 813FDB74 | 38 84 7C 18 */	addi r4, r4, __vt__Q33ipl5scene14RakuRakuThread@l
/* 813FDB78 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FDB7C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 813FDB80 | 41 82 00 2C */	beq .L_813FDBAC
/* 813FDB84 | 3C 60 81 0C */	lis r3, RakuRakuThread_810BDED4@ha
/* 813FDB88 | 38 80 00 02 */	li r4, 0x2
/* 813FDB8C | 38 63 DE D4 */	addi r3, r3, RakuRakuThread_810BDED4@l
/* 813FDB90 | 38 A0 00 01 */	li r5, 0x1
/* 813FDB94 | 48 13 36 91 */	bl OSJamMessage
/* 813FDB98 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813FDB9C | 7F C3 F3 78 */	mr r3, r30
/* 813FDBA0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813FDBA4 | 7D 89 03 A6 */	mtctr r12
/* 813FDBA8 | 4E 80 04 21 */	bctrl
.L_813FDBAC:
/* 813FDBAC | 7F C3 F3 78 */	mr r3, r30
/* 813FDBB0 | 48 00 00 3D */	bl destroy__Q33ipl5scene14RakuRakuThreadFv
/* 813FDBB4 | 7F C3 F3 78 */	mr r3, r30
/* 813FDBB8 | 38 80 00 00 */	li r4, 0x0
/* 813FDBBC | 4B F6 70 39 */	bl __dt__Q33ipl7utility9ut_threadFv
/* 813FDBC0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813FDBC4 | 40 81 00 0C */	ble .L_813FDBD0
/* 813FDBC8 | 7F C3 F3 78 */	mr r3, r30
/* 813FDBCC | 48 1F A5 19 */	bl __dl__FPv
.L_813FDBD0:
/* 813FDBD0 | 7F C3 F3 78 */	mr r3, r30
/* 813FDBD4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FDBD8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FDBDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FDBE0 | 7C 08 03 A6 */	mtlr r0
/* 813FDBE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FDBE8 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene14RakuRakuThreadFv

# .text:0x1E8 | 0x813FDBEC | size: 0xD8
# ipl::scene::RakuRakuThread::destroy()
.fn destroy__Q33ipl5scene14RakuRakuThreadFv, global
/* 813FDBEC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813FDBF0 | 7C 08 02 A6 */	mflr r0
/* 813FDBF4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813FDBF8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FDBFC | 48 1F B8 C9 */	bl _savegpr_28
/* 813FDC00 | 88 0D AC 28 */	lbz r0, lbl_81698C68@sda21(r0)
/* 813FDC04 | 7C 7C 1B 78 */	mr r28, r3
/* 813FDC08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FDC0C | 41 82 00 74 */	beq .L_813FDC80
/* 813FDC10 | 3C 60 81 0C */	lis r3, RakuRakuThread_810BDED4@ha
/* 813FDC14 | 38 80 00 01 */	li r4, 0x1
/* 813FDC18 | 38 63 DE D4 */	addi r3, r3, RakuRakuThread_810BDED4@l
/* 813FDC1C | 38 A0 00 00 */	li r5, 0x0
/* 813FDC20 | 48 13 34 61 */	bl OSSendMessage
/* 813FDC24 | 48 13 80 75 */	bl fn_81535C98
/* 813FDC28 | 7C 7D 1B 78 */	mr r29, r3
/* 813FDC2C | 3F C0 80 00 */	lis r30, 0x8000
/* 813FDC30 | 3B E0 03 E8 */	li r31, 0x3e8
/* 813FDC34 | 48 00 00 20 */	b .L_813FDC54
.L_813FDC38:
/* 813FDC38 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FDC3C | 48 00 8F C1 */	bl ATERMi_ApConfigGetState
/* 813FDC40 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 813FDC44 | 40 82 00 10 */	bne .L_813FDC54
/* 813FDC48 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813FDC4C | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813FDC50 | 41 82 00 24 */	beq .L_813FDC74
.L_813FDC54:
/* 813FDC54 | 48 13 80 45 */	bl fn_81535C98
/* 813FDC58 | 80 1E 00 F8 */	lwz r0, 0xf8(r30)
/* 813FDC5C | 7C 7D 18 50 */	subf r3, r29, r3
/* 813FDC60 | 54 00 F0 BE */	srwi r0, r0, 2
/* 813FDC64 | 7C 00 FB 96 */	divwu r0, r0, r31
/* 813FDC68 | 7C 03 03 96 */	divwu r0, r3, r0
/* 813FDC6C | 28 00 07 D0 */	cmplwi r0, 0x7d0
/* 813FDC70 | 41 80 FF C8 */	blt .L_813FDC38
.L_813FDC74:
/* 813FDC74 | 48 0B 44 8D */	bl fn_814B2100
/* 813FDC78 | 38 00 00 00 */	li r0, 0x0
/* 813FDC7C | 98 0D AC 28 */	stb r0, lbl_81698C68@sda21(r0)
.L_813FDC80:
/* 813FDC80 | 80 7C 03 44 */	lwz r3, 0x344(r28)
/* 813FDC84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FDC88 | 41 82 00 24 */	beq .L_813FDCAC
/* 813FDC8C | 48 15 CA 99 */	bl fn_8155A724
/* 813FDC90 | 3C 60 81 0C */	lis r3, RakuRakuThread_810BDDD0@ha
/* 813FDC94 | 38 80 00 00 */	li r4, 0x0
/* 813FDC98 | 38 63 DD D0 */	addi r3, r3, RakuRakuThread_810BDDD0@l
/* 813FDC9C | 38 A0 00 10 */	li r5, 0x10
/* 813FDCA0 | 4B F3 26 95 */	bl memset
/* 813FDCA4 | 38 00 00 00 */	li r0, 0x0
/* 813FDCA8 | 90 1C 03 44 */	stw r0, 0x344(r28)
.L_813FDCAC:
/* 813FDCAC | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FDCB0 | 48 1F B8 61 */	bl _restgpr_28
/* 813FDCB4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813FDCB8 | 7C 08 03 A6 */	mtlr r0
/* 813FDCBC | 38 21 00 30 */	addi r1, r1, 0x30
/* 813FDCC0 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene14RakuRakuThreadFv

# .text:0x2C0 | 0x813FDCC4 | size: 0x180
# ipl::scene::RakuRakuThread::start()
.fn start__Q33ipl5scene14RakuRakuThreadFv, global
/* 813FDCC4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FDCC8 | 7C 08 02 A6 */	mflr r0
/* 813FDCCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FDCD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FDCD4 | 48 1F B7 F1 */	bl _savegpr_28
/* 813FDCD8 | 88 0D AC 28 */	lbz r0, lbl_81698C68@sda21(r0)
/* 813FDCDC | 3F C0 81 0C */	lis r30, RakuRakuThread_810BDDD0@ha
/* 813FDCE0 | 7C 7C 1B 78 */	mr r28, r3
/* 813FDCE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FDCE8 | 3B DE DD D0 */	addi r30, r30, RakuRakuThread_810BDDD0@l
/* 813FDCEC | 40 82 00 10 */	bne .L_813FDCFC
/* 813FDCF0 | 80 03 03 3C */	lwz r0, 0x33c(r3)
/* 813FDCF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FDCF8 | 40 82 00 0C */	bne .L_813FDD04
.L_813FDCFC:
/* 813FDCFC | 38 60 00 00 */	li r3, 0x0
/* 813FDD00 | 48 00 01 2C */	b .L_813FDE2C
.L_813FDD04:
/* 813FDD04 | 48 13 2B 81 */	bl OSDisableInterrupts
/* 813FDD08 | 7C 7D 1B 78 */	mr r29, r3
/* 813FDD0C | 48 13 7F 75 */	bl OSGetTime
/* 813FDD10 | 90 8D AC 24 */	stw r4, lbl_81698C64@sda21(r0)
/* 813FDD14 | 3C 80 00 04 */	lis r4, 0x4
/* 813FDD18 | 38 A0 00 02 */	li r5, 0x2
/* 813FDD1C | 90 6D AC 20 */	stw r3, lbl_81698C60@sda21(r0)
/* 813FDD20 | 80 7C 03 3C */	lwz r3, 0x33c(r28)
/* 813FDD24 | 48 15 C9 51 */	bl fn_8155A674
/* 813FDD28 | 90 7C 03 44 */	stw r3, 0x344(r28)
/* 813FDD2C | 7C 64 1B 78 */	mr r4, r3
/* 813FDD30 | 38 7E 00 00 */	addi r3, r30, 0x0
/* 813FDD34 | 38 A0 00 20 */	li r5, 0x20
/* 813FDD38 | 48 15 D9 51 */	bl fn_8155B688
/* 813FDD3C | 48 13 62 25 */	bl OSGetCurrentThread
/* 813FDD40 | 48 13 76 09 */	bl OSGetThreadPriority
/* 813FDD44 | 38 03 FF FF */	subi r0, r3, 0x1
/* 813FDD48 | 3B E0 00 01 */	li r31, 0x1
/* 813FDD4C | 90 1C 03 38 */	stw r0, 0x338(r28)
/* 813FDD50 | 38 00 00 00 */	li r0, 0x0
/* 813FDD54 | 38 7E 00 1C */	addi r3, r30, 0x1c
/* 813FDD58 | 38 80 00 00 */	li r4, 0x0
/* 813FDD5C | 9B ED AC 28 */	stb r31, lbl_81698C68@sda21(r0)
/* 813FDD60 | 38 A0 00 E8 */	li r5, 0xe8
/* 813FDD64 | 90 1C 03 30 */	stw r0, 0x330(r28)
/* 813FDD68 | 4B F3 25 CD */	bl memset
/* 813FDD6C | 38 7E 00 10 */	addi r3, r30, 0x10
/* 813FDD70 | 38 80 00 00 */	li r4, 0x0
/* 813FDD74 | 38 A0 00 0C */	li r5, 0xc
/* 813FDD78 | 4B F3 25 BD */	bl memset
/* 813FDD7C | 3C A0 81 40 */	lis r5, RakuRakuThread_813FDEF0@ha
/* 813FDD80 | 3C 80 81 40 */	lis r4, RakuRakuThread_813FDEFC@ha
/* 813FDD84 | 38 A5 DE F0 */	addi r5, r5, RakuRakuThread_813FDEF0@l
/* 813FDD88 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FDD8C | 38 84 DE FC */	addi r4, r4, RakuRakuThread_813FDEFC@l
/* 813FDD90 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 813FDD94 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 813FDD98 | 48 0B 41 A1 */	bl fn_814B1F38
/* 813FDD9C | 3C A0 81 40 */	lis r5, RakuRakuThread_813FDA04__Q33ipl5scene14RakuRakuThreadFv@ha
/* 813FDDA0 | 3C C0 81 40 */	lis r6, RakuRakuThread_813FDF08@ha
/* 813FDDA4 | 3C E0 81 40 */	lis r7, RakuRakuThread_813FDF18@ha
/* 813FDDA8 | 80 7C 03 38 */	lwz r3, 0x338(r28)
/* 813FDDAC | 38 A5 DA 04 */	addi r5, r5, RakuRakuThread_813FDA04__Q33ipl5scene14RakuRakuThreadFv@l
/* 813FDDB0 | 38 C6 DF 08 */	addi r6, r6, RakuRakuThread_813FDF08@l
/* 813FDDB4 | 38 E7 DF 18 */	addi r7, r7, RakuRakuThread_813FDF18@l
/* 813FDDB8 | 38 80 00 C8 */	li r4, 0xc8
/* 813FDDBC | 39 00 10 00 */	li r8, 0x1000
/* 813FDDC0 | 48 00 8A 9D */	bl ATERMi_ApConfigStart
/* 813FDDC4 | 80 1C 03 34 */	lwz r0, 0x334(r28)
/* 813FDDC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FDDCC | 40 82 00 54 */	bne .L_813FDE20
/* 813FDDD0 | 93 FC 03 34 */	stw r31, 0x334(r28)
/* 813FDDD4 | 38 80 00 00 */	li r4, 0x0
/* 813FDDD8 | 80 7C 03 40 */	lwz r3, 0x340(r28)
/* 813FDDDC | 38 A0 00 04 */	li r5, 0x4
/* 813FDDE0 | 4B F3 25 55 */	bl memset
/* 813FDDE4 | 81 9C 00 00 */	lwz r12, 0x0(r28)
/* 813FDDE8 | 7F 83 E3 78 */	mr r3, r28
/* 813FDDEC | 80 9C 03 38 */	lwz r4, 0x338(r28)
/* 813FDDF0 | 38 A0 10 00 */	li r5, 0x1000
/* 813FDDF4 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813FDDF8 | 38 E0 00 01 */	li r7, 0x1
/* 813FDDFC | 38 C4 FF FF */	subi r6, r4, 0x1
/* 813FDE00 | 80 9C 03 40 */	lwz r4, 0x340(r28)
/* 813FDE04 | 7D 89 03 A6 */	mtctr r12
/* 813FDE08 | 4E 80 04 21 */	bctrl
/* 813FDE0C | 3C 60 81 65 */	lis r3, lbl_81657BC0@ha
/* 813FDE10 | 80 9C 03 38 */	lwz r4, 0x338(r28)
/* 813FDE14 | 38 63 7B C0 */	addi r3, r3, lbl_81657BC0@l
/* 813FDE18 | 4C C6 31 82 */	crclr cr1eq
/* 813FDE1C | 48 13 08 85 */	bl OSReport
.L_813FDE20:
/* 813FDE20 | 7F A3 EB 78 */	mr r3, r29
/* 813FDE24 | 48 13 2A 89 */	bl OSRestoreInterrupts
/* 813FDE28 | 38 60 00 01 */	li r3, 0x1
.L_813FDE2C:
/* 813FDE2C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FDE30 | 48 1F B6 E1 */	bl _restgpr_28
/* 813FDE34 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813FDE38 | 7C 08 03 A6 */	mtlr r0
/* 813FDE3C | 38 21 00 20 */	addi r1, r1, 0x20
/* 813FDE40 | 4E 80 00 20 */	blr
.endfn start__Q33ipl5scene14RakuRakuThreadFv

# .text:0x440 | 0x813FDE44 | size: 0xAC
# ipl::scene::RakuRakuThread::Run()
.fn Run__Q33ipl5scene14RakuRakuThreadFv, global
/* 813FDE44 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FDE48 | 7C 08 02 A6 */	mflr r0
/* 813FDE4C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FDE50 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FDE54 | 48 1F B6 71 */	bl _savegpr_28
/* 813FDE58 | 3C 80 97 65 */	lis r4, 0x9765
/* 813FDE5C | 7C 7C 1B 78 */	mr r28, r3
/* 813FDE60 | 3B C4 43 21 */	addi r30, r4, 0x4321
/* 813FDE64 | 3B E0 00 01 */	li r31, 0x1
/* 813FDE68 | 3F A0 81 0C */	lis r29, RakuRakuThread_810BDED4@ha
/* 813FDE6C | 48 00 00 18 */	b .L_813FDE84
.L_813FDE70:
/* 813FDE70 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813FDE74 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813FDE78 | 40 82 00 0C */	bne .L_813FDE84
/* 813FDE7C | 7F 83 E3 78 */	mr r3, r28
/* 813FDE80 | 48 00 00 58 */	b .L_813FDED8
.L_813FDE84:
/* 813FDE84 | 38 7D DE D4 */	addi r3, r29, RakuRakuThread_810BDED4@l
/* 813FDE88 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813FDE8C | 38 A0 00 00 */	li r5, 0x0
/* 813FDE90 | 48 13 32 B9 */	bl OSReceiveMessage
/* 813FDE94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FDE98 | 40 82 FF D8 */	bne .L_813FDE70
/* 813FDE9C | 38 7D DE D4 */	addi r3, r29, RakuRakuThread_810BDED4@l
/* 813FDEA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813FDEA4 | 38 A0 00 01 */	li r5, 0x1
/* 813FDEA8 | 48 13 32 A1 */	bl OSReceiveMessage
/* 813FDEAC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 813FDEB0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813FDEB4 | 41 82 00 20 */	beq .L_813FDED4
/* 813FDEB8 | 80 7C 03 40 */	lwz r3, 0x340(r28)
/* 813FDEBC | 93 C3 3F C0 */	stw r30, 0x3fc0(r3)
/* 813FDEC0 | 48 00 8B 39 */	bl ATERMi_ApConfigEnd
/* 813FDEC4 | 80 1C 03 34 */	lwz r0, 0x334(r28)
/* 813FDEC8 | 93 FC 03 30 */	stw r31, 0x330(r28)
/* 813FDECC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FDED0 | 40 82 FF B4 */	bne .L_813FDE84
.L_813FDED4:
/* 813FDED4 | 7F 83 E3 78 */	mr r3, r28
.L_813FDED8:
/* 813FDED8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FDEDC | 48 1F B6 35 */	bl _restgpr_28
/* 813FDEE0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813FDEE4 | 7C 08 03 A6 */	mtlr r0
/* 813FDEE8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813FDEEC | 4E 80 00 20 */	blr
.endfn Run__Q33ipl5scene14RakuRakuThreadFv

# .text:0x4EC | 0x813FDEF0 | size: 0xC
.fn RakuRakuThread_813FDEF0, local
/* 813FDEF0 | 3C 60 81 0C */	lis r3, RakuRakuThread_810BDDD0@ha
/* 813FDEF4 | 38 63 DD D0 */	addi r3, r3, RakuRakuThread_810BDDD0@l
/* 813FDEF8 | 48 15 D7 70 */	b fn_8155B668
.endfn RakuRakuThread_813FDEF0

# .text:0x4F8 | 0x813FDEFC | size: 0xC
.fn RakuRakuThread_813FDEFC, local
/* 813FDEFC | 3C 60 81 0C */	lis r3, RakuRakuThread_810BDDD0@ha
/* 813FDF00 | 38 63 DD D0 */	addi r3, r3, RakuRakuThread_810BDDD0@l
/* 813FDF04 | 48 15 D7 74 */	b fn_8155B678
.endfn RakuRakuThread_813FDEFC

# .text:0x504 | 0x813FDF08 | size: 0x10
.fn RakuRakuThread_813FDF08, local
/* 813FDF08 | 3C A0 81 0C */	lis r5, RakuRakuThread_810BDDD0@ha
/* 813FDF0C | 7C 64 1B 78 */	mr r4, r3
/* 813FDF10 | 38 65 DD D0 */	addi r3, r5, RakuRakuThread_810BDDD0@l
/* 813FDF14 | 48 15 D7 54 */	b fn_8155B668
.endfn RakuRakuThread_813FDF08

# .text:0x514 | 0x813FDF18 | size: 0x10
.fn RakuRakuThread_813FDF18, local
/* 813FDF18 | 3C A0 81 0C */	lis r5, RakuRakuThread_810BDDD0@ha
/* 813FDF1C | 7C 64 1B 78 */	mr r4, r3
/* 813FDF20 | 38 65 DD D0 */	addi r3, r5, RakuRakuThread_810BDDD0@l
/* 813FDF24 | 48 15 D7 54 */	b fn_8155B678
.endfn RakuRakuThread_813FDF18

# .text:0x524 | 0x813FDF28 | size: 0x128
# ipl::scene::RakuRakuThread::getState()
.fn getState__Q33ipl5scene14RakuRakuThreadFv, global
/* 813FDF28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FDF2C | 7C 08 02 A6 */	mflr r0
/* 813FDF30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FDF34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FDF38 | 88 0D AC 28 */	lbz r0, lbl_81698C68@sda21(r0)
/* 813FDF3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FDF40 | 40 82 00 0C */	bne .L_813FDF4C
/* 813FDF44 | 38 60 00 00 */	li r3, 0x0
/* 813FDF48 | 48 00 00 F4 */	b .L_813FE03C
.L_813FDF4C:
/* 813FDF4C | 48 13 29 39 */	bl OSDisableInterrupts
/* 813FDF50 | 3C 80 81 0C */	lis r4, RakuRakuThread_810BDDE0@ha
/* 813FDF54 | 7C 7F 1B 78 */	mr r31, r3
/* 813FDF58 | 80 04 DD E0 */	lwz r0, RakuRakuThread_810BDDE0@l(r4)
/* 813FDF5C | 28 00 00 07 */	cmplwi r0, 0x7
/* 813FDF60 | 41 81 00 70 */	bgt .L_813FDFD0
/* 813FDF64 | 3C 60 81 65 */	lis r3, jumptable_81657BF8@ha
/* 813FDF68 | 54 00 10 3A */	slwi r0, r0, 2
/* 813FDF6C | 38 63 7B F8 */	addi r3, r3, jumptable_81657BF8@l
/* 813FDF70 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813FDF74 | 7C 69 03 A6 */	mtctr r3
/* 813FDF78 | 4E 80 04 20 */	bctr
.L_813FDF7C:
/* 813FDF7C | 38 00 00 01 */	li r0, 0x1
/* 813FDF80 | 90 0D 91 B8 */	stw r0, lbl_816971F8@sda21(r0)
/* 813FDF84 | 48 00 00 54 */	b .L_813FDFD8
.L_813FDF88:
/* 813FDF88 | 38 00 00 02 */	li r0, 0x2
/* 813FDF8C | 90 0D 91 B8 */	stw r0, lbl_816971F8@sda21(r0)
/* 813FDF90 | 48 00 00 48 */	b .L_813FDFD8
.L_813FDF94:
/* 813FDF94 | 38 00 00 02 */	li r0, 0x2
/* 813FDF98 | 90 0D 91 B8 */	stw r0, lbl_816971F8@sda21(r0)
/* 813FDF9C | 48 00 00 3C */	b .L_813FDFD8
.L_813FDFA0:
/* 813FDFA0 | 38 00 00 04 */	li r0, 0x4
/* 813FDFA4 | 90 0D 91 B8 */	stw r0, lbl_816971F8@sda21(r0)
/* 813FDFA8 | 48 00 00 30 */	b .L_813FDFD8
.L_813FDFAC:
/* 813FDFAC | 38 00 00 05 */	li r0, 0x5
/* 813FDFB0 | 90 0D 91 B8 */	stw r0, lbl_816971F8@sda21(r0)
/* 813FDFB4 | 48 00 00 24 */	b .L_813FDFD8
.L_813FDFB8:
/* 813FDFB8 | 38 00 00 06 */	li r0, 0x6
/* 813FDFBC | 90 0D 91 B8 */	stw r0, lbl_816971F8@sda21(r0)
/* 813FDFC0 | 48 00 00 18 */	b .L_813FDFD8
.L_813FDFC4:
/* 813FDFC4 | 38 00 00 07 */	li r0, 0x7
/* 813FDFC8 | 90 0D 91 B8 */	stw r0, lbl_816971F8@sda21(r0)
/* 813FDFCC | 48 00 00 0C */	b .L_813FDFD8
.L_813FDFD0:
/* 813FDFD0 | 38 00 00 01 */	li r0, 0x1
/* 813FDFD4 | 90 0D 91 B8 */	stw r0, lbl_816971F8@sda21(r0)
.L_813FDFD8:
/* 813FDFD8 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813FDFDC | 41 82 00 54 */	beq .L_813FE030
/* 813FDFE0 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813FDFE4 | 41 82 00 4C */	beq .L_813FE030
/* 813FDFE8 | 48 13 7C 99 */	bl OSGetTime
/* 813FDFEC | 3C 60 80 00 */	lis r3, 0x8000
/* 813FDFF0 | 80 CD AC 24 */	lwz r6, lbl_81698C64@sda21(r0)
/* 813FDFF4 | 80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 813FDFF8 | 3C 60 00 01 */	lis r3, 0x1
/* 813FDFFC | 7C C6 20 50 */	subf r6, r6, r4
/* 813FE000 | 38 A0 03 E8 */	li r5, 0x3e8
/* 813FE004 | 54 04 F0 BE */	srwi r4, r0, 2
/* 813FE008 | 38 03 5F 90 */	addi r0, r3, 0x5f90
/* 813FE00C | 7C 64 2B 96 */	divwu r3, r4, r5
/* 813FE010 | 7C 66 1B 96 */	divwu r3, r6, r3
/* 813FE014 | 7C 03 00 40 */	cmplw r3, r0
/* 813FE018 | 41 80 00 18 */	blt .L_813FE030
/* 813FE01C | 3C 60 81 0C */	lis r3, RakuRakuThread_810BDED4@ha
/* 813FE020 | 38 80 00 01 */	li r4, 0x1
/* 813FE024 | 38 63 DE D4 */	addi r3, r3, RakuRakuThread_810BDED4@l
/* 813FE028 | 38 A0 00 00 */	li r5, 0x0
/* 813FE02C | 48 13 30 55 */	bl OSSendMessage
.L_813FE030:
/* 813FE030 | 7F E3 FB 78 */	mr r3, r31
/* 813FE034 | 48 13 28 79 */	bl OSRestoreInterrupts
/* 813FE038 | 80 6D 91 B8 */	lwz r3, lbl_816971F8@sda21(r0)
.L_813FE03C:
/* 813FE03C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FE040 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FE044 | 7C 08 03 A6 */	mtlr r0
/* 813FE048 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FE04C | 4E 80 00 20 */	blr
.endfn getState__Q33ipl5scene14RakuRakuThreadFv

# .text:0x64C | 0x813FE050 | size: 0x14
# ipl::scene::RakuRakuThread::cancel()
.fn cancel__Q33ipl5scene14RakuRakuThreadFv, global
/* 813FE050 | 3C 60 81 0C */	lis r3, RakuRakuThread_810BDED4@ha
/* 813FE054 | 38 80 00 01 */	li r4, 0x1
/* 813FE058 | 38 63 DE D4 */	addi r3, r3, RakuRakuThread_810BDED4@l
/* 813FE05C | 38 A0 00 00 */	li r5, 0x0
/* 813FE060 | 48 13 30 20 */	b OSSendMessage
.endfn cancel__Q33ipl5scene14RakuRakuThreadFv

# .text:0x660 | 0x813FE064 | size: 0x214
# ipl::scene::RakuRakuThread::finish(NCDApConfig*, int*)
.fn finish__Q33ipl5scene14RakuRakuThreadFP11NCDApConfigPi, global
/* 813FE064 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813FE068 | 7C 08 02 A6 */	mflr r0
/* 813FE06C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813FE070 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FE074 | 48 1F B4 45 */	bl _savegpr_25
/* 813FE078 | 88 0D AC 28 */	lbz r0, lbl_81698C68@sda21(r0)
/* 813FE07C | 3F E0 81 0C */	lis r31, RakuRakuThread_810BDDD0@ha
/* 813FE080 | 7C 79 1B 78 */	mr r25, r3
/* 813FE084 | 7C 9D 23 78 */	mr r29, r4
/* 813FE088 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FE08C | 7C BE 2B 78 */	mr r30, r5
/* 813FE090 | 3B FF DD D0 */	addi r31, r31, RakuRakuThread_810BDDD0@l
/* 813FE094 | 40 82 00 1C */	bne .L_813FE0B0
/* 813FE098 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813FE09C | 41 82 00 0C */	beq .L_813FE0A8
/* 813FE0A0 | 38 00 FF 9D */	li r0, -0x63
/* 813FE0A4 | 90 05 00 00 */	stw r0, 0x0(r5)
.L_813FE0A8:
/* 813FE0A8 | 38 60 00 01 */	li r3, 0x1
/* 813FE0AC | 48 00 01 B4 */	b .L_813FE260
.L_813FE0B0:
/* 813FE0B0 | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 813FE0B4 | 38 04 FF FA */	subi r0, r4, 0x6
/* 813FE0B8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813FE0BC | 41 81 00 58 */	bgt .L_813FE114
/* 813FE0C0 | 80 03 03 30 */	lwz r0, 0x330(r3)
/* 813FE0C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FE0C8 | 40 82 00 34 */	bne .L_813FE0FC
/* 813FE0CC | 2C 04 00 06 */	cmpwi r4, 0x6
/* 813FE0D0 | 40 82 00 14 */	bne .L_813FE0E4
/* 813FE0D4 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 813FE0D8 | 48 00 8B B1 */	bl ATERMi_ApConfigGetResult
/* 813FE0DC | 7F 23 CB 78 */	mr r3, r25
/* 813FE0E0 | 48 00 01 99 */	bl printInfo__Q33ipl5scene14RakuRakuThreadFv
.L_813FE0E4:
/* 813FE0E4 | 38 7F 01 04 */	addi r3, r31, 0x104
/* 813FE0E8 | 38 80 00 01 */	li r4, 0x1
/* 813FE0EC | 38 A0 00 00 */	li r5, 0x0
/* 813FE0F0 | 48 13 2F 91 */	bl OSSendMessage
/* 813FE0F4 | 38 60 00 00 */	li r3, 0x0
/* 813FE0F8 | 48 00 01 68 */	b .L_813FE260
.L_813FE0FC:
/* 813FE0FC | 48 0B 40 05 */	bl fn_814B2100
/* 813FE100 | 3B 80 00 00 */	li r28, 0x0
/* 813FE104 | 7F 23 CB 78 */	mr r3, r25
/* 813FE108 | 9B 8D AC 28 */	stb r28, lbl_81698C68@sda21(r0)
/* 813FE10C | 4B FF FA E1 */	bl destroy__Q33ipl5scene14RakuRakuThreadFv
/* 813FE110 | 48 00 00 0C */	b .L_813FE11C
.L_813FE114:
/* 813FE114 | 38 60 00 00 */	li r3, 0x0
/* 813FE118 | 48 00 01 48 */	b .L_813FE260
.L_813FE11C:
/* 813FE11C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813FE120 | 41 82 01 28 */	beq .L_813FE248
/* 813FE124 | 7F A3 EB 78 */	mr r3, r29
/* 813FE128 | 38 9F 00 1C */	addi r4, r31, 0x1c
/* 813FE12C | 38 A0 00 20 */	li r5, 0x20
/* 813FE130 | 4B F3 21 01 */	bl memcpy
/* 813FE134 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 813FE138 | 48 1F AD C5 */	bl strlen
/* 813FE13C | B0 7D 00 20 */	sth r3, 0x20(r29)
/* 813FE140 | 3B 5F 00 1C */	addi r26, r31, 0x1c
/* 813FE144 | 80 1A 00 20 */	lwz r0, 0x20(r26)
/* 813FE148 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FE14C | 40 82 00 4C */	bne .L_813FE198
/* 813FE150 | 38 00 00 01 */	li r0, 0x1
/* 813FE154 | 3B 20 00 00 */	li r25, 0x0
/* 813FE158 | B0 1D 00 24 */	sth r0, 0x24(r29)
/* 813FE15C | 3B 60 00 00 */	li r27, 0x0
/* 813FE160 | 80 1A 00 24 */	lwz r0, 0x24(r26)
/* 813FE164 | B0 1D 00 28 */	sth r0, 0x28(r29)
.L_813FE168:
/* 813FE168 | 7C 7D E2 14 */	add r3, r29, r28
/* 813FE16C | 7C 9A DA 14 */	add r4, r26, r27
/* 813FE170 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813FE174 | 38 A0 00 05 */	li r5, 0x5
/* 813FE178 | 38 84 00 28 */	addi r4, r4, 0x28
/* 813FE17C | 4B F3 20 B5 */	bl memcpy
/* 813FE180 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813FE184 | 3B 9C 00 05 */	addi r28, r28, 0x5
/* 813FE188 | 2C 19 00 04 */	cmpwi r25, 0x4
/* 813FE18C | 3B 7B 00 20 */	addi r27, r27, 0x20
/* 813FE190 | 41 80 FF D8 */	blt .L_813FE168
/* 813FE194 | 48 00 00 B4 */	b .L_813FE248
.L_813FE198:
/* 813FE198 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813FE19C | 40 82 00 50 */	bne .L_813FE1EC
/* 813FE1A0 | 38 00 00 02 */	li r0, 0x2
/* 813FE1A4 | 3B 20 00 00 */	li r25, 0x0
/* 813FE1A8 | B0 1D 00 24 */	sth r0, 0x24(r29)
/* 813FE1AC | 3B 80 00 00 */	li r28, 0x0
/* 813FE1B0 | 3B 60 00 00 */	li r27, 0x0
/* 813FE1B4 | 80 1A 00 24 */	lwz r0, 0x24(r26)
/* 813FE1B8 | B0 1D 00 28 */	sth r0, 0x28(r29)
.L_813FE1BC:
/* 813FE1BC | 7C 7D DA 14 */	add r3, r29, r27
/* 813FE1C0 | 7C 9A E2 14 */	add r4, r26, r28
/* 813FE1C4 | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813FE1C8 | 38 A0 00 0D */	li r5, 0xd
/* 813FE1CC | 38 84 00 28 */	addi r4, r4, 0x28
/* 813FE1D0 | 4B F3 20 61 */	bl memcpy
/* 813FE1D4 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 813FE1D8 | 3B 7B 00 0D */	addi r27, r27, 0xd
/* 813FE1DC | 2C 19 00 04 */	cmpwi r25, 0x4
/* 813FE1E0 | 3B 9C 00 20 */	addi r28, r28, 0x20
/* 813FE1E4 | 41 80 FF D8 */	blt .L_813FE1BC
/* 813FE1E8 | 48 00 00 60 */	b .L_813FE248
.L_813FE1EC:
/* 813FE1EC | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813FE1F0 | 40 82 00 2C */	bne .L_813FE21C
/* 813FE1F4 | 38 00 00 04 */	li r0, 0x4
/* 813FE1F8 | 38 7D 00 2C */	addi r3, r29, 0x2c
/* 813FE1FC | B0 1D 00 24 */	sth r0, 0x24(r29)
/* 813FE200 | 38 9A 00 A8 */	addi r4, r26, 0xa8
/* 813FE204 | 38 A0 00 40 */	li r5, 0x40
/* 813FE208 | 4B F3 20 29 */	bl memcpy
/* 813FE20C | 38 7A 00 A8 */	addi r3, r26, 0xa8
/* 813FE210 | 48 1F AC ED */	bl strlen
/* 813FE214 | B0 7D 00 28 */	sth r3, 0x28(r29)
/* 813FE218 | 48 00 00 30 */	b .L_813FE248
.L_813FE21C:
/* 813FE21C | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813FE220 | 40 82 00 28 */	bne .L_813FE248
/* 813FE224 | 38 00 00 06 */	li r0, 0x6
/* 813FE228 | 38 7D 00 2C */	addi r3, r29, 0x2c
/* 813FE22C | B0 1D 00 24 */	sth r0, 0x24(r29)
/* 813FE230 | 38 9A 00 A8 */	addi r4, r26, 0xa8
/* 813FE234 | 38 A0 00 40 */	li r5, 0x40
/* 813FE238 | 4B F3 1F F9 */	bl memcpy
/* 813FE23C | 38 7A 00 A8 */	addi r3, r26, 0xa8
/* 813FE240 | 48 1F AC BD */	bl strlen
/* 813FE244 | B0 7D 00 28 */	sth r3, 0x28(r29)
.L_813FE248:
/* 813FE248 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813FE24C | 41 82 00 10 */	beq .L_813FE25C
/* 813FE250 | 38 7F 00 10 */	addi r3, r31, 0x10
/* 813FE254 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813FE258 | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_813FE25C:
/* 813FE25C | 38 60 00 01 */	li r3, 0x1
.L_813FE260:
/* 813FE260 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FE264 | 48 1F B2 A1 */	bl _restgpr_25
/* 813FE268 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813FE26C | 7C 08 03 A6 */	mtlr r0
/* 813FE270 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813FE274 | 4E 80 00 20 */	blr
.endfn finish__Q33ipl5scene14RakuRakuThreadFP11NCDApConfigPi

# .text:0x874 | 0x813FE278 | size: 0x4
# ipl::scene::RakuRakuThread::printInfo()
.fn printInfo__Q33ipl5scene14RakuRakuThreadFv, global
/* 813FE278 | 4E 80 00 20 */	blr
.endfn printInfo__Q33ipl5scene14RakuRakuThreadFv

# 0x81657BC0..0x81657C48 | size: 0x88
.data
.balign 8

# .data:0x0 | 0x81657BC0 | size: 0x38
.obj lbl_81657BC0, global
	.string "RakuRakuThread (for End function) start with prio(%d) \n"
.endobj lbl_81657BC0

# .data:0x38 | 0x81657BF8 | size: 0x20
.obj jumptable_81657BF8, local
	.rel getState__Q33ipl5scene14RakuRakuThreadFv, .L_813FDFD0
	.rel getState__Q33ipl5scene14RakuRakuThreadFv, .L_813FDF7C
	.rel getState__Q33ipl5scene14RakuRakuThreadFv, .L_813FDF88
	.rel getState__Q33ipl5scene14RakuRakuThreadFv, .L_813FDF94
	.rel getState__Q33ipl5scene14RakuRakuThreadFv, .L_813FDFA0
	.rel getState__Q33ipl5scene14RakuRakuThreadFv, .L_813FDFAC
	.rel getState__Q33ipl5scene14RakuRakuThreadFv, .L_813FDFB8
	.rel getState__Q33ipl5scene14RakuRakuThreadFv, .L_813FDFC4
.endobj jumptable_81657BF8

# .data:0x58 | 0x81657C18 | size: 0x30
# ipl::scene::RakuRakuThread::__vtable
.obj __vt__Q33ipl5scene14RakuRakuThread, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene14RakuRakuThreadFv
	.4byte Run__Q33ipl5scene14RakuRakuThreadFv
	.4byte Create__Q33ipl7utility9ut_threadFPvUlib
	.4byte Resume__Q33ipl7utility9ut_threadFv
	.4byte Suspend__Q33ipl7utility9ut_threadFv
	.4byte WaitForThreadExit__Q33ipl7utility9ut_threadFv
	.4byte IsThreadTerminated__Q33ipl7utility9ut_threadFv
	.4byte IsThreadSuspended__Q33ipl7utility9ut_threadFv
	.4byte SetThreadPriority__Q33ipl7utility9ut_threadFi
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene14RakuRakuThread

# 0x816971F8..0x81697200 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816971F8 | size: 0x8
.obj lbl_816971F8, global
	.4byte 0x00000001
	.4byte 0x00000000
.endobj lbl_816971F8

# 0x81698C60..0x81698C70 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698C60 | size: 0x4
.obj lbl_81698C60, global
	.skip 0x4
.endobj lbl_81698C60

# .sbss:0x4 | 0x81698C64 | size: 0x4
.obj lbl_81698C64, global
	.skip 0x4
.endobj lbl_81698C64

# .sbss:0x8 | 0x81698C68 | size: 0x1
.obj lbl_81698C68, global
	.skip 0x1
.endobj lbl_81698C68

# .sbss:0x9 | 0x81698C69 | size: 0x3
.obj gap_12_81698C69_sbss, global
.hidden gap_12_81698C69_sbss
	.skip 0x3
.endobj gap_12_81698C69_sbss

# .sbss:0xC | 0x81698C6C | size: 0x4
.obj lbl_81698C6C, global
	.skip 0x4
.endobj lbl_81698C6C
