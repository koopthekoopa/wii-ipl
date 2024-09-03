.include "macros.inc"
.file "HBMFrameController.cpp"

# 0x81377C10..0x81377D98 | size: 0x188
.text
.balign 4

# .text:0x0 | 0x81377C10 | size: 0x20
# homebutton::FrameController::init(int, float, float, float)
.fn init__Q210homebutton15FrameControllerFifff, global
/* 81377C10 | 38 00 00 00 */	li r0, 0x0
/* 81377C14 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 81377C18 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 81377C1C | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 81377C20 | D0 63 00 10 */	stfs f3, 0x10(r3)
/* 81377C24 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81377C28 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 81377C2C | 48 00 00 04 */	b initFrame__Q210homebutton15FrameControllerFv
.endfn init__Q210homebutton15FrameControllerFifff

# .text:0x20 | 0x81377C30 | size: 0x20
# homebutton::FrameController::initFrame()
.fn initFrame__Q210homebutton15FrameControllerFv, global
/* 81377C30 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81377C34 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81377C38 | 40 82 00 0C */	bne .L_81377C44
/* 81377C3C | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81377C40 | 48 00 00 08 */	b .L_81377C48
.L_81377C44:
/* 81377C44 | C0 03 00 08 */	lfs f0, 0x8(r3)
.L_81377C48:
/* 81377C48 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377C4C | 4E 80 00 20 */	blr
.endfn initFrame__Q210homebutton15FrameControllerFv

# .text:0x40 | 0x81377C50 | size: 0x148
# homebutton::FrameController::calc()
.fn calc__Q210homebutton15FrameControllerFv, global
/* 81377C50 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81377C54 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81377C58 | 4C 82 00 20 */	bnelr
/* 81377C5C | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81377C60 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81377C64 | 41 82 00 8C */	beq .L_81377CF0
/* 81377C68 | 40 80 00 14 */	bge .L_81377C7C
/* 81377C6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81377C70 | 41 82 00 18 */	beq .L_81377C88
/* 81377C74 | 40 80 00 4C */	bge .L_81377CC0
/* 81377C78 | 4E 80 00 20 */	blr
.L_81377C7C:
/* 81377C7C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81377C80 | 4C 80 00 20 */	bgelr
/* 81377C84 | 48 00 00 A0 */	b .L_81377D24
.L_81377C88:
/* 81377C88 | C0 63 00 04 */	lfs f3, 0x4(r3)
/* 81377C8C | C0 42 83 68 */	lfs f2, lbl_81694768@sda21(r0)
/* 81377C90 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81377C94 | C0 03 00 10 */	lfs f0, 0x10(r3)
/* 81377C98 | EC 43 10 28 */	fsubs f2, f3, f2
/* 81377C9C | EC 01 00 2A */	fadds f0, f1, f0
/* 81377CA0 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81377CA4 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377CA8 | 4C 41 13 82 */	cror eq, gt, eq
/* 81377CAC | 4C 82 00 20 */	bnelr
/* 81377CB0 | 38 00 00 00 */	li r0, 0x0
/* 81377CB4 | D0 43 00 0C */	stfs f2, 0xc(r3)
/* 81377CB8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81377CBC | 4E 80 00 20 */	blr
.L_81377CC0:
/* 81377CC0 | C0 43 00 0C */	lfs f2, 0xc(r3)
/* 81377CC4 | C0 23 00 10 */	lfs f1, 0x10(r3)
/* 81377CC8 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81377CCC | EC 22 08 28 */	fsubs f1, f2, f1
/* 81377CD0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81377CD4 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81377CD8 | 4C 40 13 82 */	cror eq, lt, eq
/* 81377CDC | 4C 82 00 20 */	bnelr
/* 81377CE0 | 38 00 00 00 */	li r0, 0x0
/* 81377CE4 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377CE8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81377CEC | 4E 80 00 20 */	blr
.L_81377CF0:
/* 81377CF0 | C0 43 00 0C */	lfs f2, 0xc(r3)
/* 81377CF4 | C0 03 00 10 */	lfs f0, 0x10(r3)
/* 81377CF8 | C0 23 00 04 */	lfs f1, 0x4(r3)
/* 81377CFC | EC 42 00 2A */	fadds f2, f2, f0
/* 81377D00 | FC 02 08 40 */	fcmpo cr0, f2, f1
/* 81377D04 | D0 43 00 0C */	stfs f2, 0xc(r3)
/* 81377D08 | 4C 41 13 82 */	cror eq, gt, eq
/* 81377D0C | 4C 82 00 20 */	bnelr
/* 81377D10 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81377D14 | EC 01 00 28 */	fsubs f0, f1, f0
/* 81377D18 | EC 02 00 28 */	fsubs f0, f2, f0
/* 81377D1C | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377D20 | 4E 80 00 20 */	blr
.L_81377D24:
/* 81377D24 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 81377D28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81377D2C | 40 82 00 3C */	bne .L_81377D68
/* 81377D30 | C0 63 00 04 */	lfs f3, 0x4(r3)
/* 81377D34 | C0 42 83 68 */	lfs f2, lbl_81694768@sda21(r0)
/* 81377D38 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81377D3C | C0 03 00 10 */	lfs f0, 0x10(r3)
/* 81377D40 | EC 43 10 28 */	fsubs f2, f3, f2
/* 81377D44 | EC 01 00 2A */	fadds f0, f1, f0
/* 81377D48 | FC 00 10 40 */	fcmpo cr0, f0, f2
/* 81377D4C | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377D50 | 4C 41 13 82 */	cror eq, gt, eq
/* 81377D54 | 4C 82 00 20 */	bnelr
/* 81377D58 | 38 00 00 01 */	li r0, 0x1
/* 81377D5C | D0 43 00 0C */	stfs f2, 0xc(r3)
/* 81377D60 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 81377D64 | 4E 80 00 20 */	blr
.L_81377D68:
/* 81377D68 | C0 43 00 0C */	lfs f2, 0xc(r3)
/* 81377D6C | C0 23 00 10 */	lfs f1, 0x10(r3)
/* 81377D70 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81377D74 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81377D78 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81377D7C | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81377D80 | 4C 40 13 82 */	cror eq, lt, eq
/* 81377D84 | 4C 82 00 20 */	bnelr
/* 81377D88 | 38 00 00 00 */	li r0, 0x0
/* 81377D8C | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81377D90 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 81377D94 | 4E 80 00 20 */	blr
.endfn calc__Q210homebutton15FrameControllerFv

# 0x81694768..0x81694770 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694768 | size: 0x8
.obj lbl_81694768, global
	.float 1
	.float 0
.endobj lbl_81694768
