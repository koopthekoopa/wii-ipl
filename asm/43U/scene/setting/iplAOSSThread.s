.include "macros.inc"
.file "iplAOSSThread.cpp"

# 0x810BD498..0x810BD4A8 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810BD498 | size: 0x10
# ipl::scene::m_allocator
.obj m_allocator__Q23ipl5scene, global
	.skip 0x10
.endobj m_allocator__Q23ipl5scene

# 0x813FCA0C..0x813FD170 | size: 0x764
.text
.balign 4

# .text:0x0 | 0x813FCA0C | size: 0x94
# ipl::scene::AOSSThread::AOSSThread(EGG::Heap*)
.fn __ct__Q33ipl5scene10AOSSThreadFPQ23EGG4Heap, global
/* 813FCA0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FCA10 | 7C 08 02 A6 */	mflr r0
/* 813FCA14 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FCA18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FCA1C | 7C 9F 23 78 */	mr r31, r4
/* 813FCA20 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FCA24 | 7C 7E 1B 78 */	mr r30, r3
/* 813FCA28 | 4B F6 81 A9 */	bl __ct__Q33ipl7utility9ut_threadFv
/* 813FCA2C | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene10AOSSThread@ha
/* 813FCA30 | 38 00 00 00 */	li r0, 0x0
/* 813FCA34 | 38 A5 7B 60 */	addi r5, r5, __vt__Q33ipl5scene10AOSSThread@l
/* 813FCA38 | 90 1E 03 3C */	stw r0, 0x33c(r30)
/* 813FCA3C | 7F E3 FB 78 */	mr r3, r31
/* 813FCA40 | 3C 80 00 04 */	lis r4, 0x4
/* 813FCA44 | 90 BE 00 00 */	stw r5, 0x0(r30)
/* 813FCA48 | 38 A0 00 20 */	li r5, 0x20
/* 813FCA4C | 90 0D AB F0 */	stw r0, lbl_81698C30@sda21(r0)
/* 813FCA50 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813FCA54 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813FCA58 | 7D 89 03 A6 */	mtctr r12
/* 813FCA5C | 4E 80 04 21 */	bctrl
/* 813FCA60 | 90 7E 03 38 */	stw r3, 0x338(r30)
/* 813FCA64 | 7F E3 FB 78 */	mr r3, r31
/* 813FCA68 | 38 80 10 00 */	li r4, 0x1000
/* 813FCA6C | 38 A0 00 20 */	li r5, 0x20
/* 813FCA70 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813FCA74 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 813FCA78 | 7D 89 03 A6 */	mtctr r12
/* 813FCA7C | 4E 80 04 21 */	bctrl
/* 813FCA80 | 90 7E 03 34 */	stw r3, 0x334(r30)
/* 813FCA84 | 7F C3 F3 78 */	mr r3, r30
/* 813FCA88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FCA8C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FCA90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FCA94 | 7C 08 03 A6 */	mtlr r0
/* 813FCA98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FCA9C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5scene10AOSSThreadFPQ23EGG4Heap

# .text:0x94 | 0x813FCAA0 | size: 0x84
# ipl::scene::AOSSThread::destroy(int)
.fn destroy__Q33ipl5scene10AOSSThreadFi, global
/* 813FCAA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FCAA4 | 7C 08 02 A6 */	mflr r0
/* 813FCAA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FCAAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FCAB0 | 7C 7F 1B 78 */	mr r31, r3
/* 813FCAB4 | 80 0D AB F0 */	lwz r0, lbl_81698C30@sda21(r0)
/* 813FCAB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FCABC | 41 82 00 3C */	beq .L_813FCAF8
/* 813FCAC0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813FCAC4 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813FCAC8 | 7D 89 03 A6 */	mtctr r12
/* 813FCACC | 4E 80 04 21 */	bctrl
/* 813FCAD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FCAD4 | 41 82 00 24 */	beq .L_813FCAF8
/* 813FCAD8 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 813FCADC | 7F E3 FB 78 */	mr r3, r31
/* 813FCAE0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 813FCAE4 | 7D 89 03 A6 */	mtctr r12
/* 813FCAE8 | 4E 80 04 21 */	bctrl
/* 813FCAEC | 48 0B 56 15 */	bl SOFinish
/* 813FCAF0 | 38 00 00 00 */	li r0, 0x0
/* 813FCAF4 | 90 0D AB F0 */	stw r0, lbl_81698C30@sda21(r0)
.L_813FCAF8:
/* 813FCAF8 | 80 7F 03 3C */	lwz r3, 0x33c(r31)
/* 813FCAFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FCB00 | 41 82 00 10 */	beq .L_813FCB10
/* 813FCB04 | 48 15 DC 21 */	bl fn_8155A724
/* 813FCB08 | 38 00 00 00 */	li r0, 0x0
/* 813FCB0C | 90 1F 03 3C */	stw r0, 0x33c(r31)
.L_813FCB10:
/* 813FCB10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FCB14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FCB18 | 7C 08 03 A6 */	mtlr r0
/* 813FCB1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FCB20 | 4E 80 00 20 */	blr
.endfn destroy__Q33ipl5scene10AOSSThreadFi

# .text:0x118 | 0x813FCB24 | size: 0x70
# ipl::scene::AOSSThread::~AOSSThread()
.fn __dt__Q33ipl5scene10AOSSThreadFv, global
/* 813FCB24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FCB28 | 7C 08 02 A6 */	mflr r0
/* 813FCB2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FCB30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FCB34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FCB38 | 7C 9F 23 78 */	mr r31, r4
/* 813FCB3C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FCB40 | 7C 7E 1B 78 */	mr r30, r3
/* 813FCB44 | 41 82 00 34 */	beq .L_813FCB78
/* 813FCB48 | 3C A0 81 65 */	lis r5, __vt__Q33ipl5scene10AOSSThread@ha
/* 813FCB4C | 38 80 00 01 */	li r4, 0x1
/* 813FCB50 | 38 A5 7B 60 */	addi r5, r5, __vt__Q33ipl5scene10AOSSThread@l
/* 813FCB54 | 90 A3 00 00 */	stw r5, 0x0(r3)
/* 813FCB58 | 4B FF FF 49 */	bl destroy__Q33ipl5scene10AOSSThreadFi
/* 813FCB5C | 7F C3 F3 78 */	mr r3, r30
/* 813FCB60 | 38 80 00 00 */	li r4, 0x0
/* 813FCB64 | 4B F6 80 91 */	bl __dt__Q33ipl7utility9ut_threadFv
/* 813FCB68 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813FCB6C | 40 81 00 0C */	ble .L_813FCB78
/* 813FCB70 | 7F C3 F3 78 */	mr r3, r30
/* 813FCB74 | 48 1F B5 71 */	bl __dl__FPv
.L_813FCB78:
/* 813FCB78 | 7F C3 F3 78 */	mr r3, r30
/* 813FCB7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FCB80 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FCB84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FCB88 | 7C 08 03 A6 */	mtlr r0
/* 813FCB8C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FCB90 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene10AOSSThreadFv

# .text:0x188 | 0x813FCB94 | size: 0xF8
# ipl::scene::AOSSThread::start()
.fn start__Q33ipl5scene10AOSSThreadFv, global
/* 813FCB94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FCB98 | 7C 08 02 A6 */	mflr r0
/* 813FCB9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FCBA0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 813FCBA4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 813FCBA8 | 7C 7E 1B 78 */	mr r30, r3
/* 813FCBAC | 80 0D AB F0 */	lwz r0, lbl_81698C30@sda21(r0)
/* 813FCBB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FCBB4 | 41 82 00 0C */	beq .L_813FCBC0
/* 813FCBB8 | 38 60 00 00 */	li r3, 0x0
/* 813FCBBC | 48 00 00 B8 */	b .L_813FCC74
.L_813FCBC0:
/* 813FCBC0 | 3C 80 81 40 */	lis r4, AOSSThread_813FCC8C__Q33ipl5scene10AOSSThreadFv@ha
/* 813FCBC4 | 3C 60 81 40 */	lis r3, AOSSThread_813FCCE4__Q33ipl5scene10AOSSThreadFv@ha
/* 813FCBC8 | 38 84 CC 8C */	addi r4, r4, AOSSThread_813FCC8C__Q33ipl5scene10AOSSThreadFv@l
/* 813FCBCC | 38 63 CC E4 */	addi r3, r3, AOSSThread_813FCCE4__Q33ipl5scene10AOSSThreadFv@l
/* 813FCBD0 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 813FCBD4 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 813FCBD8 | 48 13 3C AD */	bl OSDisableInterrupts
/* 813FCBDC | 7C 7F 1B 78 */	mr r31, r3
/* 813FCBE0 | 48 13 90 A1 */	bl OSGetTime
/* 813FCBE4 | 90 8D AB EC */	stw r4, lbl_81698C2C@sda21(r0)
/* 813FCBE8 | 3C 80 00 04 */	lis r4, 0x4
/* 813FCBEC | 38 A0 00 02 */	li r5, 0x2
/* 813FCBF0 | 90 6D AB E8 */	stw r3, lbl_81698C28@sda21(r0)
/* 813FCBF4 | 80 7E 03 38 */	lwz r3, 0x338(r30)
/* 813FCBF8 | 48 15 DA 7D */	bl fn_8155A674
/* 813FCBFC | 7C 64 1B 78 */	mr r4, r3
/* 813FCC00 | 90 7E 03 3C */	stw r3, 0x33c(r30)
/* 813FCC04 | 3C 60 81 0C */	lis r3, m_allocator__Q23ipl5scene@ha
/* 813FCC08 | 38 A0 00 20 */	li r5, 0x20
/* 813FCC0C | 38 63 D4 98 */	addi r3, r3, m_allocator__Q23ipl5scene@l
/* 813FCC10 | 48 15 EA 79 */	bl fn_8155B688
/* 813FCC14 | 48 13 73 4D */	bl OSGetCurrentThread
/* 813FCC18 | 48 13 87 31 */	bl OSGetThreadPriority
/* 813FCC1C | 38 63 FF FE */	subi r3, r3, 0x2
/* 813FCC20 | 38 00 00 01 */	li r0, 0x1
/* 813FCC24 | 90 7E 03 30 */	stw r3, 0x330(r30)
/* 813FCC28 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FCC2C | 90 0D AB F0 */	stw r0, lbl_81698C30@sda21(r0)
/* 813FCC30 | 48 0B 53 09 */	bl SOInit
/* 813FCC34 | 80 7E 03 34 */	lwz r3, 0x334(r30)
/* 813FCC38 | 38 80 00 00 */	li r4, 0x0
/* 813FCC3C | 38 A0 00 04 */	li r5, 0x4
/* 813FCC40 | 4B F3 36 F5 */	bl memset
/* 813FCC44 | 81 9E 00 00 */	lwz r12, 0x0(r30)
/* 813FCC48 | 7F C3 F3 78 */	mr r3, r30
/* 813FCC4C | 80 9E 03 34 */	lwz r4, 0x334(r30)
/* 813FCC50 | 38 A0 10 00 */	li r5, 0x1000
/* 813FCC54 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813FCC58 | 38 E0 00 01 */	li r7, 0x1
/* 813FCC5C | 80 DE 03 30 */	lwz r6, 0x330(r30)
/* 813FCC60 | 7D 89 03 A6 */	mtctr r12
/* 813FCC64 | 4E 80 04 21 */	bctrl
/* 813FCC68 | 7F E3 FB 78 */	mr r3, r31
/* 813FCC6C | 48 13 3C 41 */	bl OSRestoreInterrupts
/* 813FCC70 | 38 60 00 01 */	li r3, 0x1
.L_813FCC74:
/* 813FCC74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813FCC78 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 813FCC7C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 813FCC80 | 7C 08 03 A6 */	mtlr r0
/* 813FCC84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813FCC88 | 4E 80 00 20 */	blr
.endfn start__Q33ipl5scene10AOSSThreadFv

# .text:0x280 | 0x813FCC8C | size: 0x58
# ipl::scene::AOSSThread::AOSSThread_813FCC8C()
.fn AOSSThread_813FCC8C__Q33ipl5scene10AOSSThreadFv, global
/* 813FCC8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FCC90 | 7C 08 02 A6 */	mflr r0
/* 813FCC94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FCC98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FCC9C | 7C 9F 23 78 */	mr r31, r4
/* 813FCCA0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FCCA4 | 48 13 3B E1 */	bl OSDisableInterrupts
/* 813FCCA8 | 3C A0 81 0C */	lis r5, m_allocator__Q23ipl5scene@ha
/* 813FCCAC | 7C 7E 1B 78 */	mr r30, r3
/* 813FCCB0 | 7F E4 FB 78 */	mr r4, r31
/* 813FCCB4 | 38 65 D4 98 */	addi r3, r5, m_allocator__Q23ipl5scene@l
/* 813FCCB8 | 48 15 E9 B1 */	bl fn_8155B668
/* 813FCCBC | 7C 7F 1B 78 */	mr r31, r3
/* 813FCCC0 | 7F C3 F3 78 */	mr r3, r30
/* 813FCCC4 | 48 13 3B E9 */	bl OSRestoreInterrupts
/* 813FCCC8 | 7F E3 FB 78 */	mr r3, r31
/* 813FCCCC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FCCD0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FCCD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FCCD8 | 7C 08 03 A6 */	mtlr r0
/* 813FCCDC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FCCE0 | 4E 80 00 20 */	blr
.endfn AOSSThread_813FCC8C__Q33ipl5scene10AOSSThreadFv

# .text:0x2D8 | 0x813FCCE4 | size: 0x50
# ipl::scene::AOSSThread::AOSSThread_813FCCE4()
.fn AOSSThread_813FCCE4__Q33ipl5scene10AOSSThreadFv, global
/* 813FCCE4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FCCE8 | 7C 08 02 A6 */	mflr r0
/* 813FCCEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FCCF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FCCF4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FCCF8 | 7C 9E 23 78 */	mr r30, r4
/* 813FCCFC | 48 13 3B 89 */	bl OSDisableInterrupts
/* 813FCD00 | 3C A0 81 0C */	lis r5, m_allocator__Q23ipl5scene@ha
/* 813FCD04 | 7C 7F 1B 78 */	mr r31, r3
/* 813FCD08 | 7F C4 F3 78 */	mr r4, r30
/* 813FCD0C | 38 65 D4 98 */	addi r3, r5, m_allocator__Q23ipl5scene@l
/* 813FCD10 | 48 15 E9 69 */	bl fn_8155B678
/* 813FCD14 | 7F E3 FB 78 */	mr r3, r31
/* 813FCD18 | 48 13 3B 95 */	bl OSRestoreInterrupts
/* 813FCD1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FCD20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FCD24 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FCD28 | 7C 08 03 A6 */	mtlr r0
/* 813FCD2C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FCD30 | 4E 80 00 20 */	blr
.endfn AOSSThread_813FCCE4__Q33ipl5scene10AOSSThreadFv

# .text:0x328 | 0x813FCD34 | size: 0xEC
# ipl::scene::AOSSThread::Run()
.fn Run__Q33ipl5scene10AOSSThreadFv, global
/* 813FCD34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FCD38 | 7C 08 02 A6 */	mflr r0
/* 813FCD3C | 3C 80 81 40 */	lis r4, USBAPThread_813FCA08__Q33ipl5scene11USBAPThreadFv_813FCA08@ha
/* 813FCD40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FCD44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FCD48 | 3B E0 00 0F */	li r31, 0xf
/* 813FCD4C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FCD50 | 7C 7E 1B 78 */	mr r30, r3
/* 813FCD54 | 93 E3 03 2C */	stw r31, 0x32c(r3)
/* 813FCD58 | 38 64 CA 08 */	addi r3, r4, USBAPThread_813FCA08__Q33ipl5scene11USBAPThreadFv_813FCA08@l
/* 813FCD5C | 48 00 0C 75 */	bl AOSS_SetCallback
/* 813FCD60 | 3C 60 81 40 */	lis r3, AOSSThread_813FCC8C__Q33ipl5scene10AOSSThreadFv@ha
/* 813FCD64 | 3C 80 81 40 */	lis r4, AOSSThread_813FCCE4__Q33ipl5scene10AOSSThreadFv@ha
/* 813FCD68 | 38 63 CC 8C */	addi r3, r3, AOSSThread_813FCC8C__Q33ipl5scene10AOSSThreadFv@l
/* 813FCD6C | 38 84 CC E4 */	addi r4, r4, AOSSThread_813FCCE4__Q33ipl5scene10AOSSThreadFv@l
/* 813FCD70 | 48 00 05 95 */	bl AOSSi_InitLocal
/* 813FCD74 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 813FCD78 | 40 82 00 0C */	bne .L_813FCD84
/* 813FCD7C | 7F C3 F3 78 */	mr r3, r30
/* 813FCD80 | 48 00 00 88 */	b .L_813FCE08
.L_813FCD84:
/* 813FCD84 | 38 7E 03 40 */	addi r3, r30, 0x340
/* 813FCD88 | 38 80 00 00 */	li r4, 0x0
/* 813FCD8C | 38 A0 02 6C */	li r5, 0x26c
/* 813FCD90 | 4B F3 35 A5 */	bl memset
/* 813FCD94 | 39 00 00 32 */	li r8, 0x32
/* 813FCD98 | 38 E0 00 64 */	li r7, 0x64
/* 813FCD9C | 38 C0 4E 20 */	li r6, 0x4e20
/* 813FCDA0 | 38 00 00 50 */	li r0, 0x50
/* 813FCDA4 | B3 FE 03 40 */	sth r31, 0x340(r30)
/* 813FCDA8 | 38 7E 03 46 */	addi r3, r30, 0x346
/* 813FCDAC | 38 8D 91 B0 */	li r4, lbl_816971F0@sda21
/* 813FCDB0 | 38 A0 00 03 */	li r5, 0x3
/* 813FCDB4 | B1 1E 04 46 */	sth r8, 0x446(r30)
/* 813FCDB8 | B1 1E 04 4A */	sth r8, 0x44a(r30)
/* 813FCDBC | B0 FE 04 48 */	sth r7, 0x448(r30)
/* 813FCDC0 | B0 FE 04 4C */	sth r7, 0x44c(r30)
/* 813FCDC4 | B0 DE 04 4E */	sth r6, 0x44e(r30)
/* 813FCDC8 | 98 1E 03 42 */	stb r0, 0x342(r30)
/* 813FCDCC | 4B F3 34 65 */	bl memcpy
/* 813FCDD0 | 38 00 00 04 */	li r0, 0x4
/* 813FCDD4 | 38 7E 04 50 */	addi r3, r30, 0x450
/* 813FCDD8 | B0 1E 03 44 */	sth r0, 0x344(r30)
/* 813FCDDC | 48 09 8A 69 */	bl NETGetWirelessMacAddress
/* 813FCDE0 | 3C 60 97 65 */	lis r3, 0x9765
/* 813FCDE4 | 80 9E 03 34 */	lwz r4, 0x334(r30)
/* 813FCDE8 | 38 03 43 21 */	addi r0, r3, 0x4321
/* 813FCDEC | 90 04 3F C0 */	stw r0, 0x3fc0(r4)
/* 813FCDF0 | 38 7E 03 40 */	addi r3, r30, 0x340
/* 813FCDF4 | 48 00 14 89 */	bl AOSSi_Init
/* 813FCDF8 | 90 7E 03 2C */	stw r3, 0x32c(r30)
/* 813FCDFC | 48 00 05 71 */	bl AOSSi_EndLocal
/* 813FCE00 | 48 13 85 E9 */	bl OSCheckActiveThreads
/* 813FCE04 | 7F C3 F3 78 */	mr r3, r30
.L_813FCE08:
/* 813FCE08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FCE0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FCE10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FCE14 | 7C 08 03 A6 */	mtlr r0
/* 813FCE18 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FCE1C | 4E 80 00 20 */	blr
.endfn Run__Q33ipl5scene10AOSSThreadFv

# .text:0x414 | 0x813FCE20 | size: 0x50
# ipl::scene::AOSSThread::cancel()
.fn cancel__Q33ipl5scene10AOSSThreadFv, global
/* 813FCE20 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FCE24 | 7C 08 02 A6 */	mflr r0
/* 813FCE28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FCE2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FCE30 | 80 0D AB F0 */	lwz r0, lbl_81698C30@sda21(r0)
/* 813FCE34 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FCE38 | 40 82 00 0C */	bne .L_813FCE44
/* 813FCE3C | 38 60 00 00 */	li r3, 0x0
/* 813FCE40 | 48 00 00 1C */	b .L_813FCE5C
.L_813FCE44:
/* 813FCE44 | 48 13 3A 41 */	bl OSDisableInterrupts
/* 813FCE48 | 7C 7F 1B 78 */	mr r31, r3
/* 813FCE4C | 48 00 03 25 */	bl AOSSi_Cancel
/* 813FCE50 | 7F E3 FB 78 */	mr r3, r31
/* 813FCE54 | 48 13 3A 59 */	bl OSRestoreInterrupts
/* 813FCE58 | 38 60 00 01 */	li r3, 0x1
.L_813FCE5C:
/* 813FCE5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FCE60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FCE64 | 7C 08 03 A6 */	mtlr r0
/* 813FCE68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FCE6C | 4E 80 00 20 */	blr
.endfn cancel__Q33ipl5scene10AOSSThreadFv

# .text:0x464 | 0x813FCE70 | size: 0x2FC
# ipl::scene::AOSSThread::finish(NCDAossConfig*, int*)
.fn finish__Q33ipl5scene10AOSSThreadFP13NCDAossConfigPi, global
/* 813FCE70 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FCE74 | 7C 08 02 A6 */	mflr r0
/* 813FCE78 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FCE7C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FCE80 | 48 1F C6 41 */	bl _savegpr_27
/* 813FCE84 | 80 0D AB F0 */	lwz r0, lbl_81698C30@sda21(r0)
/* 813FCE88 | 7C 7B 1B 78 */	mr r27, r3
/* 813FCE8C | 7C 9C 23 78 */	mr r28, r4
/* 813FCE90 | 7C BD 2B 78 */	mr r29, r5
/* 813FCE94 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FCE98 | 40 82 00 14 */	bne .L_813FCEAC
/* 813FCE9C | 38 00 FF 9D */	li r0, -0x63
/* 813FCEA0 | 38 60 00 01 */	li r3, 0x1
/* 813FCEA4 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 813FCEA8 | 48 00 02 AC */	b .L_813FD154
.L_813FCEAC:
/* 813FCEAC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813FCEB0 | 81 8C 00 20 */	lwz r12, 0x20(r12)
/* 813FCEB4 | 7D 89 03 A6 */	mtctr r12
/* 813FCEB8 | 4E 80 04 21 */	bctrl
/* 813FCEBC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FCEC0 | 41 82 00 14 */	beq .L_813FCED4
/* 813FCEC4 | 7F 63 DB 78 */	mr r3, r27
/* 813FCEC8 | 38 80 00 00 */	li r4, 0x0
/* 813FCECC | 4B FF FB D5 */	bl destroy__Q33ipl5scene10AOSSThreadFi
/* 813FCED0 | 48 00 00 54 */	b .L_813FCF24
.L_813FCED4:
/* 813FCED4 | 48 13 8D AD */	bl OSGetTime
/* 813FCED8 | 3C 60 80 00 */	lis r3, 0x8000
/* 813FCEDC | 80 CD AB EC */	lwz r6, lbl_81698C2C@sda21(r0)
/* 813FCEE0 | 80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 813FCEE4 | 3C 60 00 01 */	lis r3, 0x1
/* 813FCEE8 | 7C C6 20 50 */	subf r6, r6, r4
/* 813FCEEC | 38 A0 03 E8 */	li r5, 0x3e8
/* 813FCEF0 | 54 04 F0 BE */	srwi r4, r0, 2
/* 813FCEF4 | 38 03 5F 90 */	addi r0, r3, 0x5f90
/* 813FCEF8 | 7C 64 2B 96 */	divwu r3, r4, r5
/* 813FCEFC | 7C 66 1B 96 */	divwu r3, r6, r3
/* 813FCF00 | 7C 03 00 40 */	cmplw r3, r0
/* 813FCF04 | 41 80 00 18 */	blt .L_813FCF1C
/* 813FCF08 | 48 13 39 7D */	bl OSDisableInterrupts
/* 813FCF0C | 7C 7B 1B 78 */	mr r27, r3
/* 813FCF10 | 48 00 02 61 */	bl AOSSi_Cancel
/* 813FCF14 | 7F 63 DB 78 */	mr r3, r27
/* 813FCF18 | 48 13 39 95 */	bl OSRestoreInterrupts
.L_813FCF1C:
/* 813FCF1C | 38 60 00 00 */	li r3, 0x0
/* 813FCF20 | 48 00 02 34 */	b .L_813FD154
.L_813FCF24:
/* 813FCF24 | 80 1B 03 2C */	lwz r0, 0x32c(r27)
/* 813FCF28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FCF2C | 40 82 02 0C */	bne .L_813FD138
/* 813FCF30 | 48 13 39 55 */	bl OSDisableInterrupts
/* 813FCF34 | A0 1B 03 40 */	lhz r0, 0x340(r27)
/* 813FCF38 | 7C 7F 1B 78 */	mr r31, r3
/* 813FCF3C | 3B DB 04 57 */	addi r30, r27, 0x457
/* 813FCF40 | 54 00 07 FE */	clrlwi r0, r0, 31
/* 813FCF44 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FCF48 | 40 82 00 6C */	bne .L_813FCFB4
/* 813FCF4C | 7F 83 E3 78 */	mr r3, r28
/* 813FCF50 | 38 9E 00 18 */	addi r4, r30, 0x18
/* 813FCF54 | 38 A0 00 20 */	li r5, 0x20
/* 813FCF58 | 4B F3 32 D9 */	bl memcpy
/* 813FCF5C | 7F C4 F3 78 */	mr r4, r30
/* 813FCF60 | 38 7C 00 24 */	addi r3, r28, 0x24
/* 813FCF64 | 38 A0 00 05 */	li r5, 0x5
/* 813FCF68 | 4B F3 32 C9 */	bl memcpy
/* 813FCF6C | 38 7C 00 29 */	addi r3, r28, 0x29
/* 813FCF70 | 38 9E 00 06 */	addi r4, r30, 0x6
/* 813FCF74 | 38 A0 00 05 */	li r5, 0x5
/* 813FCF78 | 4B F3 32 B9 */	bl memcpy
/* 813FCF7C | 38 7C 00 2E */	addi r3, r28, 0x2e
/* 813FCF80 | 38 9E 00 0C */	addi r4, r30, 0xc
/* 813FCF84 | 38 A0 00 05 */	li r5, 0x5
/* 813FCF88 | 4B F3 32 A9 */	bl memcpy
/* 813FCF8C | 38 7C 00 33 */	addi r3, r28, 0x33
/* 813FCF90 | 38 9E 00 12 */	addi r4, r30, 0x12
/* 813FCF94 | 38 A0 00 05 */	li r5, 0x5
/* 813FCF98 | 4B F3 32 99 */	bl memcpy
/* 813FCF9C | 38 00 00 01 */	li r0, 0x1
/* 813FCFA0 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 813FCFA4 | B0 1C 00 22 */	sth r0, 0x22(r28)
/* 813FCFA8 | 48 1F BF 55 */	bl strlen
/* 813FCFAC | B0 7C 00 20 */	sth r3, 0x20(r28)
/* 813FCFB0 | 48 00 00 1C */	b .L_813FCFCC
.L_813FCFB4:
/* 813FCFB4 | 7F 83 E3 78 */	mr r3, r28
/* 813FCFB8 | 38 80 00 00 */	li r4, 0x0
/* 813FCFBC | 38 A0 00 20 */	li r5, 0x20
/* 813FCFC0 | 4B F3 33 75 */	bl memset
/* 813FCFC4 | 38 00 00 00 */	li r0, 0x0
/* 813FCFC8 | B0 1C 00 20 */	sth r0, 0x20(r28)
.L_813FCFCC:
/* 813FCFCC | A0 1B 03 40 */	lhz r0, 0x340(r27)
/* 813FCFD0 | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 813FCFD4 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813FCFD8 | 40 82 00 6C */	bne .L_813FD044
/* 813FCFDC | 38 7C 00 38 */	addi r3, r28, 0x38
/* 813FCFE0 | 38 9E 00 71 */	addi r4, r30, 0x71
/* 813FCFE4 | 38 A0 00 20 */	li r5, 0x20
/* 813FCFE8 | 4B F3 32 49 */	bl memcpy
/* 813FCFEC | 38 7C 00 5C */	addi r3, r28, 0x5c
/* 813FCFF0 | 38 9E 00 39 */	addi r4, r30, 0x39
/* 813FCFF4 | 38 A0 00 0D */	li r5, 0xd
/* 813FCFF8 | 4B F3 32 39 */	bl memcpy
/* 813FCFFC | 38 7C 00 69 */	addi r3, r28, 0x69
/* 813FD000 | 38 9E 00 47 */	addi r4, r30, 0x47
/* 813FD004 | 38 A0 00 0D */	li r5, 0xd
/* 813FD008 | 4B F3 32 29 */	bl memcpy
/* 813FD00C | 38 7C 00 76 */	addi r3, r28, 0x76
/* 813FD010 | 38 9E 00 55 */	addi r4, r30, 0x55
/* 813FD014 | 38 A0 00 0D */	li r5, 0xd
/* 813FD018 | 4B F3 32 19 */	bl memcpy
/* 813FD01C | 38 7C 00 83 */	addi r3, r28, 0x83
/* 813FD020 | 38 9E 00 63 */	addi r4, r30, 0x63
/* 813FD024 | 38 A0 00 0D */	li r5, 0xd
/* 813FD028 | 4B F3 32 09 */	bl memcpy
/* 813FD02C | 38 00 00 01 */	li r0, 0x1
/* 813FD030 | 38 7E 00 71 */	addi r3, r30, 0x71
/* 813FD034 | B0 1C 00 5A */	sth r0, 0x5a(r28)
/* 813FD038 | 48 1F BE C5 */	bl strlen
/* 813FD03C | B0 7C 00 58 */	sth r3, 0x58(r28)
/* 813FD040 | 48 00 00 1C */	b .L_813FD05C
.L_813FD044:
/* 813FD044 | 38 7C 00 38 */	addi r3, r28, 0x38
/* 813FD048 | 38 80 00 00 */	li r4, 0x0
/* 813FD04C | 38 A0 00 20 */	li r5, 0x20
/* 813FD050 | 4B F3 32 E5 */	bl memset
/* 813FD054 | 38 00 00 00 */	li r0, 0x0
/* 813FD058 | B0 1C 00 58 */	sth r0, 0x58(r28)
.L_813FD05C:
/* 813FD05C | A0 1B 03 40 */	lhz r0, 0x340(r27)
/* 813FD060 | 54 00 07 7A */	rlwinm r0, r0, 0, 29, 29
/* 813FD064 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813FD068 | 40 82 00 40 */	bne .L_813FD0A8
/* 813FD06C | 38 7C 00 90 */	addi r3, r28, 0x90
/* 813FD070 | 38 9E 00 D2 */	addi r4, r30, 0xd2
/* 813FD074 | 38 A0 00 20 */	li r5, 0x20
/* 813FD078 | 4B F3 31 B9 */	bl memcpy
/* 813FD07C | 38 7C 00 B4 */	addi r3, r28, 0xb4
/* 813FD080 | 38 9E 00 92 */	addi r4, r30, 0x92
/* 813FD084 | 38 A0 00 40 */	li r5, 0x40
/* 813FD088 | 4B F3 31 A9 */	bl memcpy
/* 813FD08C | 38 7E 00 D2 */	addi r3, r30, 0xd2
/* 813FD090 | 48 1F BE 6D */	bl strlen
/* 813FD094 | B0 7C 00 B0 */	sth r3, 0xb0(r28)
/* 813FD098 | 38 7E 00 92 */	addi r3, r30, 0x92
/* 813FD09C | 48 1F BE 61 */	bl strlen
/* 813FD0A0 | B0 7C 00 B2 */	sth r3, 0xb2(r28)
/* 813FD0A4 | 48 00 00 1C */	b .L_813FD0C0
.L_813FD0A8:
/* 813FD0A8 | 38 7C 00 90 */	addi r3, r28, 0x90
/* 813FD0AC | 38 80 00 00 */	li r4, 0x0
/* 813FD0B0 | 38 A0 00 20 */	li r5, 0x20
/* 813FD0B4 | 4B F3 32 81 */	bl memset
/* 813FD0B8 | 38 00 00 00 */	li r0, 0x0
/* 813FD0BC | B0 1C 00 B0 */	sth r0, 0xb0(r28)
.L_813FD0C0:
/* 813FD0C0 | A0 1B 03 40 */	lhz r0, 0x340(r27)
/* 813FD0C4 | 54 00 07 38 */	rlwinm r0, r0, 0, 28, 28
/* 813FD0C8 | 2C 00 00 08 */	cmpwi r0, 0x8
/* 813FD0CC | 40 82 00 40 */	bne .L_813FD10C
/* 813FD0D0 | 38 7C 00 F4 */	addi r3, r28, 0xf4
/* 813FD0D4 | 38 9E 01 33 */	addi r4, r30, 0x133
/* 813FD0D8 | 38 A0 00 20 */	li r5, 0x20
/* 813FD0DC | 4B F3 31 55 */	bl memcpy
/* 813FD0E0 | 38 7C 01 18 */	addi r3, r28, 0x118
/* 813FD0E4 | 38 9E 00 F3 */	addi r4, r30, 0xf3
/* 813FD0E8 | 38 A0 00 40 */	li r5, 0x40
/* 813FD0EC | 4B F3 31 45 */	bl memcpy
/* 813FD0F0 | 38 7E 01 33 */	addi r3, r30, 0x133
/* 813FD0F4 | 48 1F BE 09 */	bl strlen
/* 813FD0F8 | B0 7C 01 14 */	sth r3, 0x114(r28)
/* 813FD0FC | 38 7E 00 F3 */	addi r3, r30, 0xf3
/* 813FD100 | 48 1F BD FD */	bl strlen
/* 813FD104 | B0 7C 01 16 */	sth r3, 0x116(r28)
/* 813FD108 | 48 00 00 1C */	b .L_813FD124
.L_813FD10C:
/* 813FD10C | 38 7C 00 F4 */	addi r3, r28, 0xf4
/* 813FD110 | 38 80 00 00 */	li r4, 0x0
/* 813FD114 | 38 A0 00 20 */	li r5, 0x20
/* 813FD118 | 4B F3 32 1D */	bl memset
/* 813FD11C | 38 00 00 00 */	li r0, 0x0
/* 813FD120 | B0 1C 01 14 */	sth r0, 0x114(r28)
.L_813FD124:
/* 813FD124 | 7F 63 DB 78 */	mr r3, r27
/* 813FD128 | 48 00 00 45 */	bl printInfo__Q33ipl5scene10AOSSThreadFv
/* 813FD12C | 7F E3 FB 78 */	mr r3, r31
/* 813FD130 | 48 13 37 7D */	bl OSRestoreInterrupts
/* 813FD134 | 48 00 00 14 */	b .L_813FD148
.L_813FD138:
/* 813FD138 | 2C 00 FF FE */	cmpwi r0, -0x2
/* 813FD13C | 40 82 00 0C */	bne .L_813FD148
/* 813FD140 | 38 00 FF 9E */	li r0, -0x62
/* 813FD144 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813FD148:
/* 813FD148 | 88 1B 04 56 */	lbz r0, 0x456(r27)
/* 813FD14C | 38 60 00 01 */	li r3, 0x1
/* 813FD150 | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_813FD154:
/* 813FD154 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FD158 | 48 1F C3 B5 */	bl _restgpr_27
/* 813FD15C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813FD160 | 7C 08 03 A6 */	mtlr r0
/* 813FD164 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813FD168 | 4E 80 00 20 */	blr
.endfn finish__Q33ipl5scene10AOSSThreadFP13NCDAossConfigPi

# .text:0x760 | 0x813FD16C | size: 0x4
# ipl::scene::AOSSThread::printInfo()
.fn printInfo__Q33ipl5scene10AOSSThreadFv, global
/* 813FD16C | 4E 80 00 20 */	blr
.endfn printInfo__Q33ipl5scene10AOSSThreadFv

# 0x81657B60..0x81657B90 | size: 0x30
.data
.balign 8

# .data:0x0 | 0x81657B60 | size: 0x30
# ipl::scene::AOSSThread::__vtable
.obj __vt__Q33ipl5scene10AOSSThread, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene10AOSSThreadFv
	.4byte Run__Q33ipl5scene10AOSSThreadFv
	.4byte Create__Q33ipl7utility9ut_threadFPvUlib
	.4byte Resume__Q33ipl7utility9ut_threadFv
	.4byte Suspend__Q33ipl7utility9ut_threadFv
	.4byte WaitForThreadExit__Q33ipl7utility9ut_threadFv
	.4byte IsThreadTerminated__Q33ipl7utility9ut_threadFv
	.4byte IsThreadSuspended__Q33ipl7utility9ut_threadFv
	.4byte SetThreadPriority__Q33ipl7utility9ut_threadFi
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene10AOSSThread

# 0x816971F0..0x816971F8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816971F0 | size: 0x4
.obj lbl_816971F0, global
	.string "Wii"
.endobj lbl_816971F0

# .sdata:0x4 | 0x816971F4 | size: 0x4
.obj gap_11_816971F4_sdata, global
.hidden gap_11_816971F4_sdata
	.4byte 0x00000000
.endobj gap_11_816971F4_sdata

# 0x81698C28..0x81698C38 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698C28 | size: 0x4
.obj lbl_81698C28, global
	.skip 0x4
.endobj lbl_81698C28

# .sbss:0x4 | 0x81698C2C | size: 0x4
.obj lbl_81698C2C, global
	.skip 0x4
.endobj lbl_81698C2C

# .sbss:0x8 | 0x81698C30 | size: 0x4
.obj lbl_81698C30, global
	.skip 0x4
.endobj lbl_81698C30

# .sbss:0xC | 0x81698C34 | size: 0x4
.obj gap_12_81698C34_sbss, global
.hidden gap_12_81698C34_sbss
	.skip 0x4
.endobj gap_12_81698C34_sbss
