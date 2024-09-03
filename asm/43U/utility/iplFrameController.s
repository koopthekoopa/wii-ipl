.include "macros.inc"
.file "iplFrameController.cpp"

# 0x81362850..0x81362A00 | size: 0x1B0
.text
.balign 4

# .text:0x0 | 0x81362850 | size: 0x20
# ipl::utility::FrameController::init(int, float, float, float)
.fn init__Q33ipl7utility15FrameControllerFifff, global
/* 81362850 | 38 00 00 00 */	li r0, 0x0
/* 81362854 | 90 83 00 18 */	stw r4, 0x18(r3)
/* 81362858 | D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8136285C | D0 43 00 08 */	stfs f2, 0x8(r3)
/* 81362860 | D0 63 00 10 */	stfs f3, 0x10(r3)
/* 81362864 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81362868 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 8136286C | 48 00 00 04 */	b initFrame__Q33ipl7utility15FrameControllerFv
.endfn init__Q33ipl7utility15FrameControllerFifff

# .text:0x20 | 0x81362870 | size: 0x20
# ipl::utility::FrameController::initFrame()
.fn initFrame__Q33ipl7utility15FrameControllerFv, global
/* 81362870 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 81362874 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81362878 | 40 82 00 0C */	bne .L_81362884
/* 8136287C | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81362880 | 48 00 00 08 */	b .L_81362888
.L_81362884:
/* 81362884 | C0 03 00 08 */	lfs f0, 0x8(r3)
.L_81362888:
/* 81362888 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8136288C | 4E 80 00 20 */	blr
.endfn initFrame__Q33ipl7utility15FrameControllerFv

# .text:0x40 | 0x81362890 | size: 0x170
# ipl::utility::FrameController::calc()
.fn calc__Q33ipl7utility15FrameControllerFv, global
/* 81362890 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81362894 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 81362898 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8136289C | C0 03 00 10 */	lfs f0, 0x10(r3)
/* 813628A0 | 80 84 00 74 */	lwz r4, 0x74(r4)
/* 813628A4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813628A8 | C0 24 00 14 */	lfs f1, 0x14(r4)
/* 813628AC | EC 40 00 72 */	fmuls f2, f0, f1
/* 813628B0 | 40 82 01 3C */	bne .L_813629EC
/* 813628B4 | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 813628B8 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813628BC | 41 82 00 7C */	beq .L_81362938
/* 813628C0 | 40 80 00 14 */	bge .L_813628D4
/* 813628C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813628C8 | 41 82 00 18 */	beq .L_813628E0
/* 813628CC | 40 80 00 40 */	bge .L_8136290C
/* 813628D0 | 4E 80 00 20 */	blr
.L_813628D4:
/* 813628D4 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813628D8 | 4C 80 00 20 */	bgelr
/* 813628DC | 48 00 00 AC */	b .L_81362988
.L_813628E0:
/* 813628E0 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813628E4 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813628E8 | EC 21 10 2A */	fadds f1, f1, f2
/* 813628EC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813628F0 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 813628F4 | 4C 41 13 82 */	cror eq, gt, eq
/* 813628F8 | 4C 82 00 20 */	bnelr
/* 813628FC | 38 00 00 00 */	li r0, 0x0
/* 81362900 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81362904 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81362908 | 4E 80 00 20 */	blr
.L_8136290C:
/* 8136290C | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81362910 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81362914 | EC 21 10 28 */	fsubs f1, f1, f2
/* 81362918 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8136291C | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81362920 | 4C 40 13 82 */	cror eq, lt, eq
/* 81362924 | 4C 82 00 20 */	bnelr
/* 81362928 | 38 00 00 00 */	li r0, 0x0
/* 8136292C | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81362930 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 81362934 | 4E 80 00 20 */	blr
.L_81362938:
/* 81362938 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8136293C | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81362940 | EC 21 10 2A */	fadds f1, f1, f2
/* 81362944 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81362948 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8136294C | 4C 41 13 82 */	cror eq, gt, eq
/* 81362950 | 4C 82 00 20 */	bnelr
/* 81362954 | 48 00 00 1C */	b .L_81362970
.L_81362958:
/* 81362958 | C0 43 00 04 */	lfs f2, 0x4(r3)
/* 8136295C | C0 23 00 08 */	lfs f1, 0x8(r3)
/* 81362960 | C0 03 00 0C */	lfs f0, 0xc(r3)
/* 81362964 | EC 22 08 28 */	fsubs f1, f2, f1
/* 81362968 | EC 00 08 28 */	fsubs f0, f0, f1
/* 8136296C | D0 03 00 0C */	stfs f0, 0xc(r3)
.L_81362970:
/* 81362970 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81362974 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81362978 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8136297C | 4C 41 13 82 */	cror eq, gt, eq
/* 81362980 | 41 82 FF D8 */	beq .L_81362958
/* 81362984 | 4E 80 00 20 */	blr
.L_81362988:
/* 81362988 | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8136298C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81362990 | 40 82 00 30 */	bne .L_813629C0
/* 81362994 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81362998 | C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8136299C | EC 21 10 2A */	fadds f1, f1, f2
/* 813629A0 | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813629A4 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 813629A8 | 4C 41 13 82 */	cror eq, gt, eq
/* 813629AC | 4C 82 00 20 */	bnelr
/* 813629B0 | 38 00 00 01 */	li r0, 0x1
/* 813629B4 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 813629B8 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 813629BC | 4E 80 00 20 */	blr
.L_813629C0:
/* 813629C0 | C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813629C4 | C0 03 00 08 */	lfs f0, 0x8(r3)
/* 813629C8 | EC 21 10 28 */	fsubs f1, f1, f2
/* 813629CC | FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813629D0 | D0 23 00 0C */	stfs f1, 0xc(r3)
/* 813629D4 | 4C 40 13 82 */	cror eq, lt, eq
/* 813629D8 | 4C 82 00 20 */	bnelr
/* 813629DC | 38 00 00 00 */	li r0, 0x0
/* 813629E0 | D0 03 00 0C */	stfs f0, 0xc(r3)
/* 813629E4 | 98 03 00 1C */	stb r0, 0x1c(r3)
/* 813629E8 | 4E 80 00 20 */	blr
.L_813629EC:
/* 813629EC | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813629F0 | 4C 82 00 20 */	bnelr
/* 813629F4 | 38 00 00 00 */	li r0, 0x0
/* 813629F8 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 813629FC | 4E 80 00 20 */	blr
.endfn calc__Q33ipl7utility15FrameControllerFv
