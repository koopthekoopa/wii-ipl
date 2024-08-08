.include "macros.inc"
.file "HBMFrameController.cpp"

# 0x81377C10..0x81377D98 | size: 0x188
.text
.balign 4

# .text:0x0 | 0x81377C10 | size: 0x20
# homebutton::FrameController::init(int, float, float, float)
.fn init__Q210homebutton15FrameControllerFifff, global
/* 81377C10 00046010  38 00 00 00 */	li r0, 0x0
/* 81377C14 00046014  90 83 00 18 */	stw r4, 0x18(r3)
/* 81377C18 00046018  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 81377C1C 0004601C  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 81377C20 00046020  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 81377C24 00046024  90 03 00 14 */	stw r0, 0x14(r3)
/* 81377C28 00046028  98 03 00 1C */	stb r0, 0x1c(r3)
/* 81377C2C 0004602C  48 00 00 04 */	b initFrame__Q210homebutton15FrameControllerFv
.endfn init__Q210homebutton15FrameControllerFifff

# .text:0x20 | 0x81377C30 | size: 0x20
# homebutton::FrameController::initFrame()
.fn initFrame__Q210homebutton15FrameControllerFv, global
/* 81377C30 00046030  80 03 00 18 */	lwz r0, 0x18(r3)
/* 81377C34 00046034  2C 00 00 01 */	cmpwi r0, 0x1
/* 81377C38 00046038  40 82 00 0C */	bne .L_81377C44
/* 81377C3C 0004603C  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81377C40 00046040  48 00 00 08 */	b .L_81377C48
.L_81377C44:
/* 81377C44 00046044  C0 03 00 08 */	lfs f0, 0x8(r3)
.L_81377C48:
/* 81377C48 00046048  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377C4C 0004604C  4E 80 00 20 */	blr
.endfn initFrame__Q210homebutton15FrameControllerFv

# .text:0x40 | 0x81377C50 | size: 0x148
# homebutton::FrameController::calc()
.fn calc__Q210homebutton15FrameControllerFv, global
/* 81377C50 00046050  80 03 00 14 */	lwz r0, 0x14(r3)
/* 81377C54 00046054  2C 00 00 01 */	cmpwi r0, 0x1
/* 81377C58 00046058  4C 82 00 20 */	bnelr
/* 81377C5C 0004605C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 81377C60 00046060  2C 00 00 02 */	cmpwi r0, 0x2
/* 81377C64 00046064  41 82 00 8C */	beq .L_81377CF0
/* 81377C68 00046068  40 80 00 14 */	bge .L_81377C7C
/* 81377C6C 0004606C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81377C70 00046070  41 82 00 18 */	beq .L_81377C88
/* 81377C74 00046074  40 80 00 4C */	bge .L_81377CC0
/* 81377C78 00046078  4E 80 00 20 */	blr
.L_81377C7C:
/* 81377C7C 0004607C  2C 00 00 04 */	cmpwi r0, 0x4
/* 81377C80 00046080  4C 80 00 20 */	bgelr
/* 81377C84 00046084  48 00 00 A0 */	b .L_81377D24
.L_81377C88:
/* 81377C88 00046088  C0 63 00 04 */	lfs f3, 0x4(r3)
/* 81377C8C 0004608C  C0 42 83 68 */	lfs f2, lbl_81694768@sda21(r0)
/* 81377C90 00046090  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81377C94 00046094  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 81377C98 00046098  EC 43 10 28 */	fsubs f2, f3, f2
/* 81377C9C 0004609C  EC 01 00 2A */	fadds f0, f1, f0
/* 81377CA0 000460A0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81377CA4 000460A4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377CA8 000460A8  4C 41 13 82 */	cror eq, gt, eq
/* 81377CAC 000460AC  4C 82 00 20 */	bnelr
/* 81377CB0 000460B0  38 00 00 00 */	li r0, 0x0
/* 81377CB4 000460B4  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 81377CB8 000460B8  90 03 00 14 */	stw r0, 0x14(r3)
/* 81377CBC 000460BC  4E 80 00 20 */	blr
.L_81377CC0:
/* 81377CC0 000460C0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 81377CC4 000460C4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 81377CC8 000460C8  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81377CCC 000460CC  EC 22 08 28 */	fsubs f1, f2, f1
/* 81377CD0 000460D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81377CD4 000460D4  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81377CD8 000460D8  4C 40 13 82 */	cror eq, lt, eq
/* 81377CDC 000460DC  4C 82 00 20 */	bnelr
/* 81377CE0 000460E0  38 00 00 00 */	li r0, 0x0
/* 81377CE4 000460E4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377CE8 000460E8  90 03 00 14 */	stw r0, 0x14(r3)
/* 81377CEC 000460EC  4E 80 00 20 */	blr
.L_81377CF0:
/* 81377CF0 000460F0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 81377CF4 000460F4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 81377CF8 000460F8  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 81377CFC 000460FC  EC 42 00 2A */	fadds f2, f2, f0
/* 81377D00 00046100  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 81377D04 00046104  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 81377D08 00046108  4C 41 13 82 */	cror eq, gt, eq
/* 81377D0C 0004610C  4C 82 00 20 */	bnelr
/* 81377D10 00046110  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81377D14 00046114  EC 01 00 28 */	fsubs f0, f1, f0
/* 81377D18 00046118  EC 02 00 28 */	fsubs f0, f2, f0
/* 81377D1C 0004611C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377D20 00046120  4E 80 00 20 */	blr
.L_81377D24:
/* 81377D24 00046124  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81377D28 00046128  2C 00 00 00 */	cmpwi r0, 0x0
/* 81377D2C 0004612C  40 82 00 3C */	bne .L_81377D68
/* 81377D30 00046130  C0 63 00 04 */	lfs f3, 0x4(r3)
/* 81377D34 00046134  C0 42 83 68 */	lfs f2, lbl_81694768@sda21(r0)
/* 81377D38 00046138  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81377D3C 0004613C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 81377D40 00046140  EC 43 10 28 */	fsubs f2, f3, f2
/* 81377D44 00046144  EC 01 00 2A */	fadds f0, f1, f0
/* 81377D48 00046148  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81377D4C 0004614C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377D50 00046150  4C 41 13 82 */	cror eq, gt, eq
/* 81377D54 00046154  4C 82 00 20 */	bnelr
/* 81377D58 00046158  38 00 00 01 */	li r0, 0x1
/* 81377D5C 0004615C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 81377D60 00046160  98 03 00 1C */	stb r0, 0x1c(r3)
/* 81377D64 00046164  4E 80 00 20 */	blr
.L_81377D68:
/* 81377D68 00046168  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 81377D6C 0004616C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 81377D70 00046170  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81377D74 00046174  EC 22 08 28 */	fsubs f1, f2, f1
/* 81377D78 00046178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81377D7C 0004617C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81377D80 00046180  4C 40 13 82 */	cror eq, lt, eq
/* 81377D84 00046184  4C 82 00 20 */	bnelr
/* 81377D88 00046188  38 00 00 00 */	li r0, 0x0
/* 81377D8C 0004618C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377D90 00046190  98 03 00 1C */	stb r0, 0x1c(r3)
/* 81377D94 00046194  4E 80 00 20 */	blr
.endfn calc__Q210homebutton15FrameControllerFv

# 0x81694768..0x81694770 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694768 | size: 0x8
.obj lbl_81694768, global
	.float 1
	.float 0
.endobj lbl_81694768
