.include "macros.inc"
.file "iplHomeButtonMenu.cpp"

# 0x81347B6C - 0x813483EC
.text
.balign 4

# ipl::HomeButtonMenu::HomeButtonMenu(EGG::Heap*)
.fn __ct__Q23ipl14HomeButtonMenuFPQ23EGG4Heap, global
/* 81347B6C 00015F6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81347B70 00015F70  7C 08 02 A6 */	mflr r0
/* 81347B74 00015F74  90 01 00 24 */	stw r0, 0x24(r1)
/* 81347B78 00015F78  39 61 00 20 */	addi r11, r1, 0x20
/* 81347B7C 00015F7C  48 2B 19 49 */	bl _savegpr_28
/* 81347B80 00015F80  3B C0 00 00 */	li r30, 0x0
/* 81347B84 00015F84  38 00 00 01 */	li r0, 0x1
/* 81347B88 00015F88  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 81347B8C 00015F8C  9B C3 00 00 */	stb r30, 0x0(r3)
/* 81347B90 00015F90  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 81347B94 00015F94  7C 7C 1B 78 */	mr r28, r3
/* 81347B98 00015F98  98 03 00 01 */	stb r0, 0x1(r3)
/* 81347B9C 00015F9C  7C 9D 23 78 */	mr r29, r4
/* 81347BA0 00015FA0  38 A0 00 04 */	li r5, 0x4
/* 81347BA4 00015FA4  98 03 00 02 */	stb r0, 0x2(r3)
/* 81347BA8 00015FA8  9B C3 00 03 */	stb r30, 0x3(r3)
/* 81347BAC 00015FAC  9B C3 00 04 */	stb r30, 0x4(r3)
/* 81347BB0 00015FB0  9B C3 00 05 */	stb r30, 0x5(r3)
/* 81347BB4 00015FB4  9B C3 00 68 */	stb r30, 0x68(r3)
/* 81347BB8 00015FB8  80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 81347BBC 00015FBC  90 03 00 14 */	stw r0, 0x14(r3)
/* 81347BC0 00015FC0  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 81347BC4 00015FC4  90 03 00 18 */	stw r0, 0x18(r3)
/* 81347BC8 00015FC8  80 1F 01 64 */	lwz r0, 0x164(r31)
/* 81347BCC 00015FCC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 81347BD0 00015FD0  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 81347BD4 00015FD4  90 03 00 20 */	stw r0, 0x20(r3)
/* 81347BD8 00015FD8  38 60 00 44 */	li r3, 0x44
/* 81347BDC 00015FDC  48 2B 04 D5 */	bl fn_815F80B0
/* 81347BE0 00015FE0  90 7C 00 64 */	stw r3, 0x64(r28)
/* 81347BE4 00015FE4  93 C3 00 20 */	stw r30, 0x20(r3)
/* 81347BE8 00015FE8  48 22 25 1D */	bl fn_8156A104
/* 81347BEC 00015FEC  80 BC 00 64 */	lwz r5, 0x64(r28)
/* 81347BF0 00015FF0  54 60 06 3E */	clrlwi r0, r3, 24
/* 81347BF4 00015FF4  3C 80 81 34 */	lis r4, iplPaneMgr_81347AD0@ha
/* 81347BF8 00015FF8  C0 22 81 40 */	lfs f1, lbl_81694540@sda21(r0)
/* 81347BFC 00015FFC  90 05 00 24 */	stw r0, 0x24(r5)
/* 81347C00 00016000  38 84 7A D0 */	addi r4, r4, iplPaneMgr_81347AD0@l
/* 81347C04 00016004  C0 02 81 44 */	lfs f0, lbl_81694544@sda21(r0)
/* 81347C08 00016008  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C0C 0001600C  90 83 00 1C */	stw r4, 0x1c(r3)
/* 81347C10 00016010  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C14 00016014  93 C3 00 28 */	stw r30, 0x28(r3)
/* 81347C18 00016018  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C1C 0001601C  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 81347C20 00016020  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C24 00016024  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 81347C28 00016028  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C2C 0001602C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 81347C30 00016030  80 9F 01 04 */	lwz r4, 0x104(r31)
/* 81347C34 00016034  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347C38 00016038  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 81347C3C 0001603C  90 03 00 00 */	stw r0, 0x0(r3)
/* 81347C40 00016040  48 22 24 C5 */	bl fn_8156A104
/* 81347C44 00016044  54 63 06 3E */	clrlwi r3, r3, 24
/* 81347C48 00016048  80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347C4C 0001604C  38 03 00 07 */	addi r0, r3, 0x7
/* 81347C50 00016050  3C 80 00 08 */	lis r4, 0x8
/* 81347C54 00016054  54 00 10 3A */	slwi r0, r0, 2
/* 81347C58 00016058  7F A3 EB 78 */	mr r3, r29
/* 81347C5C 0001605C  7C FF 02 14 */	add r7, r31, r0
/* 81347C60 00016060  38 A0 00 20 */	li r5, 0x20
/* 81347C64 00016064  80 E7 00 EC */	lwz r7, 0xec(r7)
/* 81347C68 00016068  80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 81347C6C 0001606C  90 06 00 04 */	stw r0, 0x4(r6)
/* 81347C70 00016070  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 81347C74 00016074  80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347C78 00016078  90 06 00 08 */	stw r0, 0x8(r6)
/* 81347C7C 0001607C  80 FC 00 14 */	lwz r7, 0x14(r28)
/* 81347C80 00016080  80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347C84 00016084  80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 81347C88 00016088  90 06 00 10 */	stw r0, 0x10(r6)
/* 81347C8C 0001608C  80 FC 00 18 */	lwz r7, 0x18(r28)
/* 81347C90 00016090  80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347C94 00016094  80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 81347C98 00016098  90 06 00 14 */	stw r0, 0x14(r6)
/* 81347C9C 0001609C  80 FC 00 1C */	lwz r7, 0x1c(r28)
/* 81347CA0 000160A0  80 DC 00 64 */	lwz r6, 0x64(r28)
/* 81347CA4 000160A4  80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 81347CA8 000160A8  90 06 00 0C */	stw r0, 0xc(r6)
/* 81347CAC 000160AC  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81347CB0 000160B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81347CB4 000160B4  7D 89 03 A6 */	mtctr r12
/* 81347CB8 000160B8  4E 80 04 21 */	bctrl
/* 81347CBC 000160BC  80 9C 00 64 */	lwz r4, 0x64(r28)
/* 81347CC0 000160C0  3C 00 00 08 */	lis r0, 0x8
/* 81347CC4 000160C4  90 64 00 18 */	stw r3, 0x18(r4)
/* 81347CC8 000160C8  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347CCC 000160CC  90 03 00 30 */	stw r0, 0x30(r3)
/* 81347CD0 000160D0  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347CD4 000160D4  93 C3 00 40 */	stw r30, 0x40(r3)
/* 81347CD8 000160D8  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 81347CDC 000160DC  48 02 99 11 */	bl fn_813715EC
/* 81347CE0 000160E0  48 22 22 D5 */	bl fn_81569FB4
/* 81347CE4 000160E4  54 63 06 3E */	clrlwi r3, r3, 24
/* 81347CE8 000160E8  38 03 FF FF */	subi r0, r3, 0x1
/* 81347CEC 000160EC  7C 00 00 34 */	cntlzw r0, r0
/* 81347CF0 000160F0  54 03 D9 7E */	srwi r3, r0, 5
/* 81347CF4 000160F4  48 02 9A 5D */	bl fn_81371750
/* 81347CF8 000160F8  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 81347CFC 000160FC  80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81347D00 00016100  48 27 44 A9 */	bl fn_815BC1A8
/* 81347D04 00016104  39 61 00 20 */	addi r11, r1, 0x20
/* 81347D08 00016108  7F 83 E3 78 */	mr r3, r28
/* 81347D0C 0001610C  48 2B 18 05 */	bl _restgpr_28
/* 81347D10 00016110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81347D14 00016114  7C 08 03 A6 */	mtlr r0
/* 81347D18 00016118  38 21 00 20 */	addi r1, r1, 0x20
/* 81347D1C 0001611C  4E 80 00 20 */	blr
.endfn __ct__Q23ipl14HomeButtonMenuFPQ23EGG4Heap

# ipl::HomeButtonMenu::DrawBanIcon(unsigned char)
.fn DrawBanIcon__Q23ipl14HomeButtonMenuFUc, global
/* 81347D20 00016120  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81347D24 00016124  7C 08 02 A6 */	mflr r0
/* 81347D28 00016128  90 01 00 54 */	stw r0, 0x54(r1)
/* 81347D2C 0001612C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 81347D30 00016130  7C 9F 23 78 */	mr r31, r4
/* 81347D34 00016134  93 C1 00 48 */	stw r30, 0x48(r1)
/* 81347D38 00016138  7C 7E 1B 78 */	mr r30, r3
/* 81347D3C 0001613C  38 60 00 00 */	li r3, 0x0
/* 81347D40 00016140  48 01 AD 8D */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 81347D44 00016144  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 81347D48 00016148  38 81 00 20 */	addi r4, r1, 0x20
/* 81347D4C 0001614C  38 A0 00 00 */	li r5, 0x0
/* 81347D50 00016150  80 63 00 A0 */	lwz r3, 0xa0(r3)
/* 81347D54 00016154  48 27 45 89 */	bl fn_815BC2DC
/* 81347D58 00016158  89 22 81 48 */	lbz r9, lbl_81694548@sda21(r0)
/* 81347D5C 0001615C  38 61 00 10 */	addi r3, r1, 0x10
/* 81347D60 00016160  89 02 81 49 */	lbz r8, lbl_81694549@sda21(r0)
/* 81347D64 00016164  38 81 00 20 */	addi r4, r1, 0x20
/* 81347D68 00016168  88 02 81 4A */	lbz r0, lbl_8169454A@sda21(r0)
/* 81347D6C 0001616C  38 A1 00 08 */	addi r5, r1, 0x8
/* 81347D70 00016170  C0 62 81 4C */	lfs f3, lbl_8169454C@sda21(r0)
/* 81347D74 00016174  38 C0 00 01 */	li r6, 0x1
/* 81347D78 00016178  C0 42 81 50 */	lfs f2, lbl_81694550@sda21(r0)
/* 81347D7C 0001617C  38 E0 00 00 */	li r7, 0x0
/* 81347D80 00016180  C0 22 81 54 */	lfs f1, lbl_81694554@sda21(r0)
/* 81347D84 00016184  C0 02 81 58 */	lfs f0, lbl_81694558@sda21(r0)
/* 81347D88 00016188  99 21 00 0C */	stb r9, 0xc(r1)
/* 81347D8C 0001618C  99 01 00 0D */	stb r8, 0xd(r1)
/* 81347D90 00016190  98 01 00 0E */	stb r0, 0xe(r1)
/* 81347D94 00016194  9B E1 00 0F */	stb r31, 0xf(r1)
/* 81347D98 00016198  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 81347D9C 0001619C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 81347DA0 000161A0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 81347DA4 000161A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 81347DA8 000161A8  99 21 00 08 */	stb r9, 0x8(r1)
/* 81347DAC 000161AC  99 01 00 09 */	stb r8, 0x9(r1)
/* 81347DB0 000161B0  98 01 00 0A */	stb r0, 0xa(r1)
/* 81347DB4 000161B4  9B E1 00 0B */	stb r31, 0xb(r1)
/* 81347DB8 000161B8  48 01 B2 05 */	bl drawTexture__Q33ipl7utility8GraphicsFRCQ34nw4r2ut4RectRC9_GXTexObj8_GXColorUcQ43ipl7utility8Graphics11Orientation
/* 81347DBC 000161BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 81347DC0 000161C0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 81347DC4 000161C4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 81347DC8 000161C8  7C 08 03 A6 */	mtlr r0
/* 81347DCC 000161CC  38 21 00 50 */	addi r1, r1, 0x50
/* 81347DD0 000161D0  4E 80 00 20 */	blr
.endfn DrawBanIcon__Q23ipl14HomeButtonMenuFUc

# ipl::HomeButtonMenu::callHBM()
.fn callHBM__Q23ipl14HomeButtonMenuFv, global
/* 81347DD4 000161D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81347DD8 000161D8  7C 08 02 A6 */	mflr r0
/* 81347DDC 000161DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81347DE0 000161E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81347DE4 000161E4  7C 7F 1B 78 */	mr r31, r3
/* 81347DE8 000161E8  88 03 00 01 */	lbz r0, 0x1(r3)
/* 81347DEC 000161EC  2C 00 00 00 */	cmpwi r0, 0x0
/* 81347DF0 000161F0  41 82 00 80 */	beq .L_81347E70
/* 81347DF4 000161F4  88 03 00 02 */	lbz r0, 0x2(r3)
/* 81347DF8 000161F8  2C 00 00 00 */	cmpwi r0, 0x0
/* 81347DFC 000161FC  41 82 00 74 */	beq .L_81347E70
/* 81347E00 00016200  48 02 98 B5 */	bl fn_813716B4
/* 81347E04 00016204  48 22 23 01 */	bl fn_8156A104
/* 81347E08 00016208  54 63 06 3E */	clrlwi r3, r3, 24
/* 81347E0C 0001620C  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 81347E10 00016210  38 03 00 07 */	addi r0, r3, 0x7
/* 81347E14 00016214  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81347E18 00016218  38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 81347E1C 0001621C  54 00 10 3A */	slwi r0, r0, 2
/* 81347E20 00016220  7C 84 02 14 */	add r4, r4, r0
/* 81347E24 00016224  80 84 00 EC */	lwz r4, 0xec(r4)
/* 81347E28 00016228  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 81347E2C 0001622C  90 03 00 04 */	stw r0, 0x4(r3)
/* 81347E30 00016230  48 22 22 D5 */	bl fn_8156A104
/* 81347E34 00016234  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 81347E38 00016238  54 60 06 3E */	clrlwi r0, r3, 24
/* 81347E3C 0001623C  90 04 00 24 */	stw r0, 0x24(r4)
/* 81347E40 00016240  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 81347E44 00016244  48 02 97 A9 */	bl fn_813715EC
/* 81347E48 00016248  48 22 21 6D */	bl fn_81569FB4
/* 81347E4C 0001624C  54 63 06 3E */	clrlwi r3, r3, 24
/* 81347E50 00016250  38 03 FF FF */	subi r0, r3, 0x1
/* 81347E54 00016254  7C 00 00 34 */	cntlzw r0, r0
/* 81347E58 00016258  54 03 D9 7E */	srwi r3, r0, 5
/* 81347E5C 0001625C  48 02 98 F5 */	bl fn_81371750
/* 81347E60 00016260  48 02 98 A9 */	bl fn_81371708
/* 81347E64 00016264  38 00 00 01 */	li r0, 0x1
/* 81347E68 00016268  98 1F 00 00 */	stb r0, 0x0(r31)
/* 81347E6C 0001626C  48 00 00 2C */	b .L_81347E98
.L_81347E70:
/* 81347E70 00016270  88 03 00 68 */	lbz r0, 0x68(r3)
/* 81347E74 00016274  2C 00 00 00 */	cmpwi r0, 0x0
/* 81347E78 00016278  40 82 00 20 */	bne .L_81347E98
/* 81347E7C 0001627C  38 00 00 01 */	li r0, 0x1
/* 81347E80 00016280  98 03 00 68 */	stb r0, 0x68(r3)
/* 81347E84 00016284  48 1E DE 15 */	bl fn_81535C98
/* 81347E88 00016288  38 00 00 00 */	li r0, 0x0
/* 81347E8C 0001628C  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 81347E90 00016290  98 1F 00 70 */	stb r0, 0x70(r31)
/* 81347E94 00016294  98 1F 00 71 */	stb r0, 0x71(r31)
.L_81347E98:
/* 81347E98 00016298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81347E9C 0001629C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81347EA0 000162A0  7C 08 03 A6 */	mtlr r0
/* 81347EA4 000162A4  38 21 00 10 */	addi r1, r1, 0x10
/* 81347EA8 000162A8  4E 80 00 20 */	blr
.endfn callHBM__Q23ipl14HomeButtonMenuFv

# ipl::HomeButtonMenu::checkStart()
.fn checkStart__Q23ipl14HomeButtonMenuFv, global
/* 81347EAC 000162AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81347EB0 000162B0  7C 08 02 A6 */	mflr r0
/* 81347EB4 000162B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 81347EB8 000162B8  39 61 00 20 */	addi r11, r1, 0x20
/* 81347EBC 000162BC  48 2B 16 09 */	bl _savegpr_28
/* 81347EC0 000162C0  38 00 00 04 */	li r0, 0x4
/* 81347EC4 000162C4  7C 7C 1B 78 */	mr r28, r3
/* 81347EC8 000162C8  38 C0 00 00 */	li r6, 0x0
/* 81347ECC 000162CC  38 80 00 00 */	li r4, 0x0
/* 81347ED0 000162D0  7C 09 03 A6 */	mtctr r0
.L_81347ED4:
/* 81347ED4 000162D4  7C A3 22 14 */	add r5, r3, r4
/* 81347ED8 000162D8  38 84 00 10 */	addi r4, r4, 0x10
/* 81347EDC 000162DC  90 C5 00 30 */	stw r6, 0x30(r5)
/* 81347EE0 000162E0  42 00 FF F4 */	bdnz .L_81347ED4
/* 81347EE4 000162E4  3B C0 00 00 */	li r30, 0x0
/* 81347EE8 000162E8  3F E0 00 01 */	lis r31, 0x1
.L_81347EEC:
/* 81347EEC 000162EC  7F C3 F3 78 */	mr r3, r30
/* 81347EF0 000162F0  4B FE DA D9 */	bl getController__Q23ipl6SystemFi
/* 81347EF4 000162F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 81347EF8 000162F8  7C 7D 1B 78 */	mr r29, r3
/* 81347EFC 000162FC  41 82 00 78 */	beq .L_81347F74
/* 81347F00 00016300  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81347F04 00016304  38 9F 80 00 */	addi r4, r31, -0x8000
/* 81347F08 00016308  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81347F0C 0001630C  7D 89 03 A6 */	mtctr r12
/* 81347F10 00016310  4E 80 04 21 */	bctrl
/* 81347F14 00016314  2C 03 00 00 */	cmpwi r3, 0x0
/* 81347F18 00016318  41 82 00 20 */	beq .L_81347F38
/* 81347F1C 0001631C  57 C0 20 36 */	slwi r0, r30, 4
/* 81347F20 00016320  38 A0 00 00 */	li r5, 0x0
/* 81347F24 00016324  7C 9C 02 14 */	add r4, r28, r0
/* 81347F28 00016328  7F 83 E3 78 */	mr r3, r28
/* 81347F2C 0001632C  90 A4 00 30 */	stw r5, 0x30(r4)
/* 81347F30 00016330  4B FF FE A5 */	bl callHBM__Q23ipl14HomeButtonMenuFv
/* 81347F34 00016334  48 00 00 4C */	b .L_81347F80
.L_81347F38:
/* 81347F38 00016338  81 9D 00 00 */	lwz r12, 0x0(r29)
/* 81347F3C 0001633C  7F A3 EB 78 */	mr r3, r29
/* 81347F40 00016340  3C 80 08 00 */	lis r4, 0x800
/* 81347F44 00016344  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81347F48 00016348  7D 89 03 A6 */	mtctr r12
/* 81347F4C 0001634C  4E 80 04 21 */	bctrl
/* 81347F50 00016350  2C 03 00 00 */	cmpwi r3, 0x0
/* 81347F54 00016354  41 82 00 20 */	beq .L_81347F74
/* 81347F58 00016358  57 C0 20 36 */	slwi r0, r30, 4
/* 81347F5C 0001635C  38 A0 00 02 */	li r5, 0x2
/* 81347F60 00016360  7C 9C 02 14 */	add r4, r28, r0
/* 81347F64 00016364  7F 83 E3 78 */	mr r3, r28
/* 81347F68 00016368  90 A4 00 30 */	stw r5, 0x30(r4)
/* 81347F6C 0001636C  4B FF FE 69 */	bl callHBM__Q23ipl14HomeButtonMenuFv
/* 81347F70 00016370  48 00 00 10 */	b .L_81347F80
.L_81347F74:
/* 81347F74 00016374  3B DE 00 01 */	addi r30, r30, 0x1
/* 81347F78 00016378  2C 1E 00 04 */	cmpwi r30, 0x4
/* 81347F7C 0001637C  41 80 FF 70 */	blt .L_81347EEC
.L_81347F80:
/* 81347F80 00016380  39 61 00 20 */	addi r11, r1, 0x20
/* 81347F84 00016384  48 2B 15 8D */	bl _restgpr_28
/* 81347F88 00016388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81347F8C 0001638C  7C 08 03 A6 */	mtlr r0
/* 81347F90 00016390  38 21 00 20 */	addi r1, r1, 0x20
/* 81347F94 00016394  4E 80 00 20 */	blr
.endfn checkStart__Q23ipl14HomeButtonMenuFv

# ipl::HomeButtonMenu::calc()
.fn calc__Q23ipl14HomeButtonMenuFv, global
/* 81347F98 00016398  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 81347F9C 0001639C  7C 08 02 A6 */	mflr r0
/* 81347FA0 000163A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 81347FA4 000163A4  39 61 00 40 */	addi r11, r1, 0x40
/* 81347FA8 000163A8  48 2B 15 0D */	bl _savegpr_24
/* 81347FAC 000163AC  88 03 00 05 */	lbz r0, 0x5(r3)
/* 81347FB0 000163B0  7C 7F 1B 78 */	mr r31, r3
/* 81347FB4 000163B4  2C 00 00 00 */	cmpwi r0, 0x0
/* 81347FB8 000163B8  41 82 02 E8 */	beq .L_813482A0
/* 81347FBC 000163BC  3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 81347FC0 000163C0  38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 81347FC4 000163C4  80 85 00 9C */	lwz r4, 0x9c(r5)
/* 81347FC8 000163C8  80 84 00 04 */	lwz r4, 0x4(r4)
/* 81347FCC 000163CC  30 04 FF FF */	subic r0, r4, 0x1
/* 81347FD0 000163D0  7C 00 21 11 */	subfe. r0, r0, r4
/* 81347FD4 000163D4  40 82 01 6C */	bne .L_81348140
/* 81347FD8 000163D8  88 03 00 00 */	lbz r0, 0x0(r3)
/* 81347FDC 000163DC  2C 00 00 00 */	cmpwi r0, 0x0
/* 81347FE0 000163E0  40 82 00 34 */	bne .L_81348014
/* 81347FE4 000163E4  88 03 00 68 */	lbz r0, 0x68(r3)
/* 81347FE8 000163E8  2C 00 00 00 */	cmpwi r0, 0x0
/* 81347FEC 000163EC  40 82 00 28 */	bne .L_81348014
/* 81347FF0 000163F0  80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 81347FF4 000163F4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81347FF8 000163F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 81347FFC 000163FC  7D 89 03 A6 */	mtctr r12
/* 81348000 00016400  4E 80 04 21 */	bctrl
/* 81348004 00016404  2C 03 00 01 */	cmpwi r3, 0x1
/* 81348008 00016408  40 82 00 0C */	bne .L_81348014
/* 8134800C 0001640C  7F E3 FB 78 */	mr r3, r31
/* 81348010 00016410  4B FF FE 9D */	bl checkStart__Q23ipl14HomeButtonMenuFv
.L_81348014:
/* 81348014 00016414  88 1F 00 00 */	lbz r0, 0x0(r31)
/* 81348018 00016418  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134801C 0001641C  41 82 01 68 */	beq .L_81348184
/* 81348020 00016420  3B 20 00 00 */	li r25, 0x0
/* 81348024 00016424  3B C0 00 00 */	li r30, 0x0
/* 81348028 00016428  7F 3B CB 78 */	mr r27, r25
/* 8134802C 0001642C  3B 80 00 02 */	li r28, 0x2
/* 81348030 00016430  7F 3D CB 78 */	mr r29, r25
.L_81348034:
/* 81348034 00016434  7F 23 CB 78 */	mr r3, r25
/* 81348038 00016438  4B FE D9 91 */	bl getController__Q23ipl6SystemFi
/* 8134803C 0001643C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348040 00016440  7C 78 1B 78 */	mr r24, r3
/* 81348044 00016444  41 82 00 A8 */	beq .L_813480EC
/* 81348048 00016448  7F 5F F2 14 */	add r26, r31, r30
/* 8134804C 0001644C  93 7A 00 30 */	stw r27, 0x30(r26)
/* 81348050 00016450  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81348054 00016454  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 81348058 00016458  7D 89 03 A6 */	mtctr r12
/* 8134805C 0001645C  4E 80 04 21 */	bctrl
/* 81348060 00016460  90 7A 00 24 */	stw r3, 0x24(r26)
/* 81348064 00016464  7F 03 C3 78 */	mr r3, r24
/* 81348068 00016468  81 98 00 00 */	lwz r12, 0x0(r24)
/* 8134806C 0001646C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81348070 00016470  7D 89 03 A6 */	mtctr r12
/* 81348074 00016474  4E 80 04 21 */	bctrl
/* 81348078 00016478  90 61 00 10 */	stw r3, 0x10(r1)
/* 8134807C 0001647C  7F 03 C3 78 */	mr r3, r24
/* 81348080 00016480  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 81348084 00016484  90 81 00 14 */	stw r4, 0x14(r1)
/* 81348088 00016488  D0 1A 00 28 */	stfs f0, 0x28(r26)
/* 8134808C 0001648C  81 98 00 00 */	lwz r12, 0x0(r24)
/* 81348090 00016490  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 81348094 00016494  7D 89 03 A6 */	mtctr r12
/* 81348098 00016498  4E 80 04 21 */	bctrl
/* 8134809C 0001649C  90 81 00 0C */	stw r4, 0xc(r1)
/* 813480A0 000164A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 813480A4 000164A4  90 61 00 08 */	stw r3, 0x8(r1)
/* 813480A8 000164A8  7F 03 C3 78 */	mr r3, r24
/* 813480AC 000164AC  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 813480B0 000164B0  81 98 00 00 */	lwz r12, 0x0(r24)
/* 813480B4 000164B4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 813480B8 000164B8  7D 89 03 A6 */	mtctr r12
/* 813480BC 000164BC  4E 80 04 21 */	bctrl
/* 813480C0 000164C0  2C 03 00 02 */	cmpwi r3, 0x2
/* 813480C4 000164C4  40 82 00 30 */	bne .L_813480F4
/* 813480C8 000164C8  81 98 00 00 */	lwz r12, 0x0(r24)
/* 813480CC 000164CC  7F 03 C3 78 */	mr r3, r24
/* 813480D0 000164D0  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 813480D4 000164D4  7D 89 03 A6 */	mtctr r12
/* 813480D8 000164D8  4E 80 04 21 */	bctrl
/* 813480DC 000164DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813480E0 000164E0  41 82 00 14 */	beq .L_813480F4
/* 813480E4 000164E4  93 9A 00 30 */	stw r28, 0x30(r26)
/* 813480E8 000164E8  48 00 00 0C */	b .L_813480F4
.L_813480EC:
/* 813480EC 000164EC  7C 7F F2 14 */	add r3, r31, r30
/* 813480F0 000164F0  93 A3 00 24 */	stw r29, 0x24(r3)
.L_813480F4:
/* 813480F4 000164F4  3B 39 00 01 */	addi r25, r25, 0x1
/* 813480F8 000164F8  3B DE 00 10 */	addi r30, r30, 0x10
/* 813480FC 000164FC  2C 19 00 04 */	cmpwi r25, 0x4
/* 81348100 00016500  41 80 FF 34 */	blt .L_81348034
/* 81348104 00016504  38 7F 00 24 */	addi r3, r31, 0x24
/* 81348108 00016508  48 02 96 09 */	bl fn_81371710
/* 8134810C 0001650C  7F E3 FB 78 */	mr r3, r31
/* 81348110 00016510  48 00 02 89 */	bl getSelectBtnNum__Q23ipl14HomeButtonMenuFv
/* 81348114 00016514  2C 03 00 00 */	cmpwi r3, 0x0
/* 81348118 00016518  40 81 00 6C */	ble .L_81348184
/* 8134811C 0001651C  3C 60 81 63 */	lis r3, lbl_81635A70@ha
/* 81348120 00016520  38 63 5A 70 */	addi r3, r3, lbl_81635A70@l
/* 81348124 00016524  4C C6 31 82 */	crclr cr1eq
/* 81348128 00016528  48 1E 65 79 */	bl OSReport
/* 8134812C 0001652C  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81348130 00016530  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81348134 00016534  80 63 00 9C */	lwz r3, 0x9c(r3)
/* 81348138 00016538  48 00 E7 A1 */	bl reset__Q23ipl12ResetHandlerFv
/* 8134813C 0001653C  48 00 00 48 */	b .L_81348184
.L_81348140:
/* 81348140 00016540  88 03 00 00 */	lbz r0, 0x0(r3)
/* 81348144 00016544  38 80 00 00 */	li r4, 0x0
/* 81348148 00016548  98 83 00 01 */	stb r4, 0x1(r3)
/* 8134814C 0001654C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81348150 00016550  40 82 00 34 */	bne .L_81348184
/* 81348154 00016554  88 03 00 68 */	lbz r0, 0x68(r3)
/* 81348158 00016558  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134815C 0001655C  40 82 00 28 */	bne .L_81348184
/* 81348160 00016560  80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 81348164 00016564  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81348168 00016568  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8134816C 0001656C  7D 89 03 A6 */	mtctr r12
/* 81348170 00016570  4E 80 04 21 */	bctrl
/* 81348174 00016574  2C 03 00 01 */	cmpwi r3, 0x1
/* 81348178 00016578  40 82 00 0C */	bne .L_81348184
/* 8134817C 0001657C  7F E3 FB 78 */	mr r3, r31
/* 81348180 00016580  4B FF FD 2D */	bl checkStart__Q23ipl14HomeButtonMenuFv
.L_81348184:
/* 81348184 00016584  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 81348188 00016588  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134818C 0001658C  41 82 01 14 */	beq .L_813482A0
/* 81348190 00016590  48 1E DB 09 */	bl fn_81535C98
/* 81348194 00016594  3C 80 80 00 */	lis r4, 0x8000
/* 81348198 00016598  80 FF 00 6C */	lwz r7, 0x6c(r31)
/* 8134819C 0001659C  80 C4 00 F8 */	lwz r6, 0xf8(r4)
/* 813481A0 000165A0  3C 80 43 30 */	lis r4, 0x4330
/* 813481A4 000165A4  88 1F 00 70 */	lbz r0, 0x70(r31)
/* 813481A8 000165A8  38 A0 03 E8 */	li r5, 0x3e8
/* 813481AC 000165AC  54 C6 F0 BE */	srwi r6, r6, 2
/* 813481B0 000165B0  7C E7 18 50 */	subf r7, r7, r3
/* 813481B4 000165B4  7C 66 2B 96 */	divwu r3, r6, r5
/* 813481B8 000165B8  7C 00 07 74 */	extsb r0, r0
/* 813481BC 000165BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 813481C0 000165C0  C8 22 81 68 */	lfd f1, lbl_81694568@sda21(r0)
/* 813481C4 000165C4  2C 00 00 01 */	cmpwi r0, 0x1
/* 813481C8 000165C8  7C 67 1B 96 */	divwu r3, r7, r3
/* 813481CC 000165CC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 813481D0 000165D0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 813481D4 000165D4  EC 60 08 28 */	fsubs f3, f0, f1
/* 813481D8 000165D8  41 82 00 68 */	beq .L_81348240
/* 813481DC 000165DC  40 80 00 10 */	bge .L_813481EC
/* 813481E0 000165E0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813481E4 000165E4  40 80 00 14 */	bge .L_813481F8
/* 813481E8 000165E8  48 00 00 B8 */	b .L_813482A0
.L_813481EC:
/* 813481EC 000165EC  2C 00 00 03 */	cmpwi r0, 0x3
/* 813481F0 000165F0  40 80 00 B0 */	bge .L_813482A0
/* 813481F4 000165F4  48 00 00 70 */	b .L_81348264
.L_813481F8:
/* 813481F8 000165F8  C0 42 81 60 */	lfs f2, lbl_81694560@sda21(r0)
/* 813481FC 000165FC  C0 02 81 5C */	lfs f0, lbl_8169455C@sda21(r0)
/* 81348200 00016600  EC 23 10 24 */	fdivs f1, f3, f2
/* 81348204 00016604  EC 00 00 72 */	fmuls f0, f0, f1
/* 81348208 00016608  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8134820C 0001660C  FC 00 00 1E */	fctiwz f0, f0
/* 81348210 00016610  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 81348214 00016614  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81348218 00016618  98 1F 00 71 */	stb r0, 0x71(r31)
/* 8134821C 0001661C  4C 41 13 82 */	cror eq, gt, eq
/* 81348220 00016620  40 82 00 80 */	bne .L_813482A0
/* 81348224 00016624  48 1E DA 75 */	bl fn_81535C98
/* 81348228 00016628  38 80 00 01 */	li r4, 0x1
/* 8134822C 0001662C  38 00 00 FF */	li r0, 0xff
/* 81348230 00016630  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 81348234 00016634  98 9F 00 70 */	stb r4, 0x70(r31)
/* 81348238 00016638  98 1F 00 71 */	stb r0, 0x71(r31)
/* 8134823C 0001663C  48 00 00 64 */	b .L_813482A0
.L_81348240:
/* 81348240 00016640  C0 02 81 64 */	lfs f0, lbl_81694564@sda21(r0)
/* 81348244 00016644  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 81348248 00016648  4C 41 13 82 */	cror eq, gt, eq
/* 8134824C 0001664C  40 82 00 54 */	bne .L_813482A0
/* 81348250 00016650  48 1E DA 49 */	bl fn_81535C98
/* 81348254 00016654  38 00 00 02 */	li r0, 0x2
/* 81348258 00016658  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 8134825C 0001665C  98 1F 00 70 */	stb r0, 0x70(r31)
/* 81348260 00016660  48 00 00 40 */	b .L_813482A0
.L_81348264:
/* 81348264 00016664  C0 42 81 60 */	lfs f2, lbl_81694560@sda21(r0)
/* 81348268 00016668  C0 02 81 5C */	lfs f0, lbl_8169455C@sda21(r0)
/* 8134826C 0001666C  EC 22 18 28 */	fsubs f1, f2, f3
/* 81348270 00016670  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 81348274 00016674  EC 21 10 24 */	fdivs f1, f1, f2
/* 81348278 00016678  EC 00 00 72 */	fmuls f0, f0, f1
/* 8134827C 0001667C  FC 00 00 1E */	fctiwz f0, f0
/* 81348280 00016680  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 81348284 00016684  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81348288 00016688  98 1F 00 71 */	stb r0, 0x71(r31)
/* 8134828C 0001668C  4C 41 13 82 */	cror eq, gt, eq
/* 81348290 00016690  40 82 00 10 */	bne .L_813482A0
/* 81348294 00016694  38 00 00 00 */	li r0, 0x0
/* 81348298 00016698  98 1F 00 71 */	stb r0, 0x71(r31)
/* 8134829C 0001669C  98 1F 00 68 */	stb r0, 0x68(r31)
.L_813482A0:
/* 813482A0 000166A0  39 61 00 40 */	addi r11, r1, 0x40
/* 813482A4 000166A4  48 2B 12 5D */	bl _restgpr_24
/* 813482A8 000166A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 813482AC 000166AC  7C 08 03 A6 */	mtlr r0
/* 813482B0 000166B0  38 21 00 40 */	addi r1, r1, 0x40
/* 813482B4 000166B4  4E 80 00 20 */	blr
.endfn calc__Q23ipl14HomeButtonMenuFv

# ipl::HomeButtonMenu::draw()
.fn draw__Q23ipl14HomeButtonMenuFv, global
/* 813482B8 000166B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813482BC 000166BC  7C 08 02 A6 */	mflr r0
/* 813482C0 000166C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813482C4 000166C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813482C8 000166C8  7C 7F 1B 78 */	mr r31, r3
/* 813482CC 000166CC  88 03 00 00 */	lbz r0, 0x0(r3)
/* 813482D0 000166D0  2C 00 00 00 */	cmpwi r0, 0x0
/* 813482D4 000166D4  41 82 00 10 */	beq .L_813482E4
/* 813482D8 000166D8  38 60 00 00 */	li r3, 0x0
/* 813482DC 000166DC  48 01 A7 F1 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813482E0 000166E0  48 02 94 61 */	bl fn_81371740
.L_813482E4:
/* 813482E4 000166E4  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 813482E8 000166E8  2C 00 00 00 */	cmpwi r0, 0x0
/* 813482EC 000166EC  41 82 00 18 */	beq .L_81348304
/* 813482F0 000166F0  38 60 00 00 */	li r3, 0x0
/* 813482F4 000166F4  48 01 A7 D9 */	bl setDefaultOrtho__Q33ipl7utility8GraphicsFUl
/* 813482F8 000166F8  88 9F 00 71 */	lbz r4, 0x71(r31)
/* 813482FC 000166FC  7F E3 FB 78 */	mr r3, r31
/* 81348300 00016700  4B FF FA 21 */	bl DrawBanIcon__Q23ipl14HomeButtonMenuFUc
.L_81348304:
/* 81348304 00016704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81348308 00016708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134830C 0001670C  7C 08 03 A6 */	mtlr r0
/* 81348310 00016710  38 21 00 10 */	addi r1, r1, 0x10
/* 81348314 00016714  4E 80 00 20 */	blr
.endfn draw__Q23ipl14HomeButtonMenuFv

# ipl::HomeButtonMenu::disable()
.fn disable__Q23ipl14HomeButtonMenuFv, global
/* 81348318 00016718  88 03 00 00 */	lbz r0, 0x0(r3)
/* 8134831C 0001671C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81348320 00016720  41 82 00 14 */	beq .L_81348334
/* 81348324 00016724  38 00 00 01 */	li r0, 0x1
/* 81348328 00016728  98 03 00 04 */	stb r0, 0x4(r3)
/* 8134832C 0001672C  38 60 00 00 */	li r3, 0x0
/* 81348330 00016730  4E 80 00 20 */	blr
.L_81348334:
/* 81348334 00016734  38 00 00 00 */	li r0, 0x0
/* 81348338 00016738  98 03 00 01 */	stb r0, 0x1(r3)
/* 8134833C 0001673C  38 60 00 01 */	li r3, 0x1
/* 81348340 00016740  4E 80 00 20 */	blr
.endfn disable__Q23ipl14HomeButtonMenuFv

# ipl::HomeButtonMenu::enable()
.fn enable__Q23ipl14HomeButtonMenuFv, global
/* 81348344 00016744  38 80 00 00 */	li r4, 0x0
/* 81348348 00016748  38 00 00 01 */	li r0, 0x1
/* 8134834C 0001674C  98 83 00 04 */	stb r4, 0x4(r3)
/* 81348350 00016750  98 03 00 01 */	stb r0, 0x1(r3)
/* 81348354 00016754  4E 80 00 20 */	blr
.endfn enable__Q23ipl14HomeButtonMenuFv

# ipl::HomeButtonMenu::disable_byTVRC()
.fn disable_byTVRC__Q23ipl14HomeButtonMenuFv, global
/* 81348358 00016758  88 03 00 00 */	lbz r0, 0x0(r3)
/* 8134835C 0001675C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81348360 00016760  41 82 00 14 */	beq .L_81348374
/* 81348364 00016764  38 00 00 01 */	li r0, 0x1
/* 81348368 00016768  98 03 00 03 */	stb r0, 0x3(r3)
/* 8134836C 0001676C  38 60 00 00 */	li r3, 0x0
/* 81348370 00016770  4E 80 00 20 */	blr
.L_81348374:
/* 81348374 00016774  38 00 00 00 */	li r0, 0x0
/* 81348378 00016778  98 03 00 02 */	stb r0, 0x2(r3)
/* 8134837C 0001677C  38 60 00 01 */	li r3, 0x1
/* 81348380 00016780  4E 80 00 20 */	blr
.endfn disable_byTVRC__Q23ipl14HomeButtonMenuFv

# ipl::HomeButtonMenu::enable_byTVRC()
.fn enable_byTVRC__Q23ipl14HomeButtonMenuFv, global
/* 81348384 00016784  38 80 00 00 */	li r4, 0x0
/* 81348388 00016788  38 00 00 01 */	li r0, 0x1
/* 8134838C 0001678C  98 83 00 03 */	stb r4, 0x3(r3)
/* 81348390 00016790  98 03 00 02 */	stb r0, 0x2(r3)
/* 81348394 00016794  4E 80 00 20 */	blr
.endfn enable_byTVRC__Q23ipl14HomeButtonMenuFv

# ipl::HomeButtonMenu::getSelectBtnNum()
.fn getSelectBtnNum__Q23ipl14HomeButtonMenuFv, global
/* 81348398 00016798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134839C 0001679C  7C 08 02 A6 */	mflr r0
/* 813483A0 000167A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813483A4 000167A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813483A8 000167A8  7C 7F 1B 78 */	mr r31, r3
/* 813483AC 000167AC  48 02 93 9D */	bl fn_81371748
/* 813483B0 000167B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813483B4 000167B4  41 80 00 24 */	blt .L_813483D8
/* 813483B8 000167B8  88 1F 00 04 */	lbz r0, 0x4(r31)
/* 813483BC 000167BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 813483C0 000167C0  41 82 00 10 */	beq .L_813483D0
/* 813483C4 000167C4  38 00 00 00 */	li r0, 0x0
/* 813483C8 000167C8  98 1F 00 04 */	stb r0, 0x4(r31)
/* 813483CC 000167CC  98 1F 00 01 */	stb r0, 0x1(r31)
.L_813483D0:
/* 813483D0 000167D0  38 00 00 00 */	li r0, 0x0
/* 813483D4 000167D4  98 1F 00 00 */	stb r0, 0x0(r31)
.L_813483D8:
/* 813483D8 000167D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813483DC 000167DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813483E0 000167E0  7C 08 03 A6 */	mtlr r0
/* 813483E4 000167E4  38 21 00 10 */	addi r1, r1, 0x10
/* 813483E8 000167E8  4E 80 00 20 */	blr
.endfn getSelectBtnNum__Q23ipl14HomeButtonMenuFv

# 0x81635A70 - 0x81635A88
.data
.balign 8

.obj lbl_81635A70, global
	.4byte 0x48424D3A
	.4byte 0x20537461
	.4byte 0x72742052
	.4byte 0x65736574
	.4byte 0x0A000000
	.4byte 0x00000000
.endobj lbl_81635A70

# 0x81694540 - 0x81694570
.section .sdata2, "a"
.balign 8

.obj lbl_81694540, global
	.float 1.3684211
.endobj lbl_81694540

.obj lbl_81694544, global
	.float 1
.endobj lbl_81694544

.obj lbl_81694548, global
	.byte 0xFF
.endobj lbl_81694548

.obj lbl_81694549, global
	.byte 0xFF
.endobj lbl_81694549

.obj lbl_8169454A, global
	.byte 0xFF
.endobj lbl_8169454A

.obj gap_09_8169454B_sdata2, global
.hidden gap_09_8169454B_sdata2
	.byte 0x00
.endobj gap_09_8169454B_sdata2

.obj lbl_8169454C, global
	.float -256
.endobj lbl_8169454C

.obj lbl_81694550, global
	.float 188
.endobj lbl_81694550

.obj lbl_81694554, global
	.float -200
.endobj lbl_81694554

.obj lbl_81694558, global
	.float 132
.endobj lbl_81694558

.obj lbl_8169455C, global
	.float 255.9
.endobj lbl_8169455C

.obj lbl_81694560, global
	.float 250
.endobj lbl_81694560

.obj lbl_81694564, global
	.float 1000
.endobj lbl_81694564

.obj lbl_81694568, global
	.double 4503599627370496
.endobj lbl_81694568
