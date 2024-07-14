.include "macros.inc"
.file "iplFrameController.cpp"

# 0x81362850 - 0x81362A00
.text
.balign 4

# ipl::utility::FrameController::init(int, float, float, float)
.fn init__Q33ipl7utility15FrameControllerFifff, global
/* 81362850 00030C50  38 00 00 00 */	li r0, 0x0
/* 81362854 00030C54  90 83 00 18 */	stw r4, 0x18(r3)
/* 81362858 00030C58  D0 23 00 04 */	stfs f1, 0x4(r3)
/* 8136285C 00030C5C  D0 43 00 08 */	stfs f2, 0x8(r3)
/* 81362860 00030C60  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 81362864 00030C64  90 03 00 14 */	stw r0, 0x14(r3)
/* 81362868 00030C68  98 03 00 1C */	stb r0, 0x1c(r3)
/* 8136286C 00030C6C  48 00 00 04 */	b initFrame__Q33ipl7utility15FrameControllerFv
.endfn init__Q33ipl7utility15FrameControllerFifff

# ipl::utility::FrameController::initFrame()
.fn initFrame__Q33ipl7utility15FrameControllerFv, global
/* 81362870 00030C70  80 03 00 18 */	lwz r0, 0x18(r3)
/* 81362874 00030C74  2C 00 00 01 */	cmpwi r0, 0x1
/* 81362878 00030C78  40 82 00 0C */	bne .L_81362884
/* 8136287C 00030C7C  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81362880 00030C80  48 00 00 08 */	b .L_81362888
.L_81362884:
/* 81362884 00030C84  C0 03 00 08 */	lfs f0, 0x8(r3)
.L_81362888:
/* 81362888 00030C88  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8136288C 00030C8C  4E 80 00 20 */	blr
.endfn initFrame__Q33ipl7utility15FrameControllerFv

# ipl::utility::FrameController::calc()
.fn calc__Q33ipl7utility15FrameControllerFv, global
/* 81362890 00030C90  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81362894 00030C94  80 03 00 14 */	lwz r0, 0x14(r3)
/* 81362898 00030C98  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8136289C 00030C9C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 813628A0 00030CA0  80 84 00 74 */	lwz r4, 0x74(r4)
/* 813628A4 00030CA4  2C 00 00 01 */	cmpwi r0, 0x1
/* 813628A8 00030CA8  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 813628AC 00030CAC  EC 40 00 72 */	fmuls f2, f0, f1
/* 813628B0 00030CB0  40 82 01 3C */	bne .L_813629EC
/* 813628B4 00030CB4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 813628B8 00030CB8  2C 00 00 02 */	cmpwi r0, 0x2
/* 813628BC 00030CBC  41 82 00 7C */	beq .L_81362938
/* 813628C0 00030CC0  40 80 00 14 */	bge .L_813628D4
/* 813628C4 00030CC4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813628C8 00030CC8  41 82 00 18 */	beq .L_813628E0
/* 813628CC 00030CCC  40 80 00 40 */	bge .L_8136290C
/* 813628D0 00030CD0  4E 80 00 20 */	blr
.L_813628D4:
/* 813628D4 00030CD4  2C 00 00 04 */	cmpwi r0, 0x4
/* 813628D8 00030CD8  4C 80 00 20 */	bgelr
/* 813628DC 00030CDC  48 00 00 AC */	b .L_81362988
.L_813628E0:
/* 813628E0 00030CE0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813628E4 00030CE4  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 813628E8 00030CE8  EC 21 10 2A */	fadds f1, f1, f2
/* 813628EC 00030CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813628F0 00030CF0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 813628F4 00030CF4  4C 41 13 82 */	cror eq, gt, eq
/* 813628F8 00030CF8  4C 82 00 20 */	bnelr
/* 813628FC 00030CFC  38 00 00 00 */	li r0, 0x0
/* 81362900 00030D00  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81362904 00030D04  90 03 00 14 */	stw r0, 0x14(r3)
/* 81362908 00030D08  4E 80 00 20 */	blr
.L_8136290C:
/* 8136290C 00030D0C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81362910 00030D10  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 81362914 00030D14  EC 21 10 28 */	fsubs f1, f1, f2
/* 81362918 00030D18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8136291C 00030D1C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 81362920 00030D20  4C 40 13 82 */	cror eq, lt, eq
/* 81362924 00030D24  4C 82 00 20 */	bnelr
/* 81362928 00030D28  38 00 00 00 */	li r0, 0x0
/* 8136292C 00030D2C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 81362930 00030D30  90 03 00 14 */	stw r0, 0x14(r3)
/* 81362934 00030D34  4E 80 00 20 */	blr
.L_81362938:
/* 81362938 00030D38  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8136293C 00030D3C  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81362940 00030D40  EC 21 10 2A */	fadds f1, f1, f2
/* 81362944 00030D44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 81362948 00030D48  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8136294C 00030D4C  4C 41 13 82 */	cror eq, gt, eq
/* 81362950 00030D50  4C 82 00 20 */	bnelr
/* 81362954 00030D54  48 00 00 1C */	b .L_81362970
.L_81362958:
/* 81362958 00030D58  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 8136295C 00030D5C  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 81362960 00030D60  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 81362964 00030D64  EC 22 08 28 */	fsubs f1, f2, f1
/* 81362968 00030D68  EC 00 08 28 */	fsubs f0, f0, f1
/* 8136296C 00030D6C  D0 03 00 0C */	stfs f0, 0xc(r3)
.L_81362970:
/* 81362970 00030D70  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81362974 00030D74  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 81362978 00030D78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8136297C 00030D7C  4C 41 13 82 */	cror eq, gt, eq
/* 81362980 00030D80  41 82 FF D8 */	beq .L_81362958
/* 81362984 00030D84  4E 80 00 20 */	blr
.L_81362988:
/* 81362988 00030D88  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8136298C 00030D8C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81362990 00030D90  40 82 00 30 */	bne .L_813629C0
/* 81362994 00030D94  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 81362998 00030D98  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8136299C 00030D9C  EC 21 10 2A */	fadds f1, f1, f2
/* 813629A0 00030DA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813629A4 00030DA4  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 813629A8 00030DA8  4C 41 13 82 */	cror eq, gt, eq
/* 813629AC 00030DAC  4C 82 00 20 */	bnelr
/* 813629B0 00030DB0  38 00 00 01 */	li r0, 0x1
/* 813629B4 00030DB4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 813629B8 00030DB8  98 03 00 1C */	stb r0, 0x1c(r3)
/* 813629BC 00030DBC  4E 80 00 20 */	blr
.L_813629C0:
/* 813629C0 00030DC0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 813629C4 00030DC4  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 813629C8 00030DC8  EC 21 10 28 */	fsubs f1, f1, f2
/* 813629CC 00030DCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 813629D0 00030DD0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 813629D4 00030DD4  4C 40 13 82 */	cror eq, lt, eq
/* 813629D8 00030DD8  4C 82 00 20 */	bnelr
/* 813629DC 00030DDC  38 00 00 00 */	li r0, 0x0
/* 813629E0 00030DE0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 813629E4 00030DE4  98 03 00 1C */	stb r0, 0x1c(r3)
/* 813629E8 00030DE8  4E 80 00 20 */	blr
.L_813629EC:
/* 813629EC 00030DEC  2C 00 00 02 */	cmpwi r0, 0x2
/* 813629F0 00030DF0  4C 82 00 20 */	bnelr
/* 813629F4 00030DF4  38 00 00 00 */	li r0, 0x0
/* 813629F8 00030DF8  90 03 00 14 */	stw r0, 0x14(r3)
/* 813629FC 00030DFC  4E 80 00 20 */	blr
.endfn calc__Q33ipl7utility15FrameControllerFv
