.include "macros.inc"
.file "iplReboot.cpp"

# 0x813DA778..0x813DA8E8 | size: 0x170
.text
.balign 4

# .text:0x0 | 0x813DA778 | size: 0x10C
# ipl::scene::Reboot::calc()
.fn calc__Q33ipl5scene6RebootFv, global
/* 813DA778 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DA77C | 7C 08 02 A6 */	mflr r0
/* 813DA780 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DA784 | 38 A0 00 00 */	li r5, 0x0
/* 813DA788 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DA78C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813DA790 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DA794 | 7C 7F 1B 78 */	mr r31, r3
/* 813DA798 | 88 04 02 B2 */	lbz r0, 0x2b2(r4)
/* 813DA79C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA7A0 | 41 82 00 14 */	beq .L_813DA7B4
/* 813DA7A4 | 88 04 02 B4 */	lbz r0, 0x2b4(r4)
/* 813DA7A8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA7AC | 41 82 00 08 */	beq .L_813DA7B4
/* 813DA7B0 | 38 A0 00 01 */	li r5, 0x1
.L_813DA7B4:
/* 813DA7B4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 813DA7B8 | 40 82 00 24 */	bne .L_813DA7DC
/* 813DA7BC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DA7C0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813DA7C4 | 88 04 02 B2 */	lbz r0, 0x2b2(r4)
/* 813DA7C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA7CC | 41 82 00 A4 */	beq .L_813DA870
/* 813DA7D0 | 88 04 02 BB */	lbz r0, 0x2bb(r4)
/* 813DA7D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA7D8 | 41 82 00 98 */	beq .L_813DA870
.L_813DA7DC:
/* 813DA7DC | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DA7E0 | 38 00 00 01 */	li r0, 0x1
/* 813DA7E4 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813DA7E8 | 80 84 00 B4 */	lwz r4, 0xb4(r4)
/* 813DA7EC | 98 04 00 05 */	stb r0, 0x5(r4)
/* 813DA7F0 | 80 03 00 54 */	lwz r0, 0x54(r3)
/* 813DA7F4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813DA7F8 | 41 82 00 28 */	beq .L_813DA820
/* 813DA7FC | 40 80 00 34 */	bge .L_813DA830
/* 813DA800 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813DA804 | 40 80 00 08 */	bge .L_813DA80C
/* 813DA808 | 48 00 00 28 */	b .L_813DA830
.L_813DA80C:
/* 813DA80C | 7F E3 FB 78 */	mr r3, r31
/* 813DA810 | 38 80 00 15 */	li r4, 0x15
/* 813DA814 | 38 A0 00 02 */	li r5, 0x2
/* 813DA818 | 48 02 F6 E1 */	bl reserveSceneChange__Q33ipl5scene4BaseFiPv
/* 813DA81C | 48 00 00 14 */	b .L_813DA830
.L_813DA820:
/* 813DA820 | 7F E3 FB 78 */	mr r3, r31
/* 813DA824 | 38 80 00 12 */	li r4, 0x12
/* 813DA828 | 38 A0 00 06 */	li r5, 0x6
/* 813DA82C | 48 02 F6 CD */	bl reserveSceneChange__Q33ipl5scene4BaseFiPv
.L_813DA830:
/* 813DA830 | 3C 60 81 09 */	lis r3, sSystem__Q23ipl3snd@ha
/* 813DA834 | 3C 80 81 65 */	lis r4, lbl_81653FD8@ha
/* 813DA838 | 38 63 99 2C */	addi r3, r3, sSystem__Q23ipl3snd@l
/* 813DA83C | 38 84 3F D8 */	addi r4, r4, lbl_81653FD8@l
/* 813DA840 | 4B F9 0B 7D */	bl startBGM__Q33ipl3snd6SystemFPCc
/* 813DA844 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 813DA848 | 90 6D AB 18 */	stw r3, msInitFlag__Q33ipl5scene13ChannelSelect@sda21(r0)
/* 813DA84C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 813DA850 | 80 64 00 C4 */	lwz r3, 0xc4(r4)
/* 813DA854 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 813DA858 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 813DA85C | 7D 89 03 A6 */	mtctr r12
/* 813DA860 | 4E 80 04 21 */	bctrl
/* 813DA864 | 80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 813DA868 | 60 00 00 02 */	ori r0, r0, 0x2
/* 813DA86C | 90 1F 00 2C */	stw r0, 0x2c(r31)
.L_813DA870:
/* 813DA870 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DA874 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DA878 | 7C 08 03 A6 */	mtlr r0
/* 813DA87C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DA880 | 4E 80 00 20 */	blr
.endfn calc__Q33ipl5scene6RebootFv

# .text:0x10C | 0x813DA884 | size: 0x4
# ipl::scene::Base::draw()
.fn draw__Q33ipl5scene4BaseFv, global
/* 813DA884 | 4E 80 00 20 */	blr
.endfn draw__Q33ipl5scene4BaseFv

# .text:0x110 | 0x813DA888 | size: 0x58
# ipl::scene::Reboot::~Reboot()
.fn __dt__Q33ipl5scene6RebootFv, global
/* 813DA888 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813DA88C | 7C 08 02 A6 */	mflr r0
/* 813DA890 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813DA894 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813DA898 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813DA89C | 7C 9F 23 78 */	mr r31, r4
/* 813DA8A0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813DA8A4 | 7C 7E 1B 78 */	mr r30, r3
/* 813DA8A8 | 41 82 00 1C */	beq .L_813DA8C4
/* 813DA8AC | 38 80 00 00 */	li r4, 0x0
/* 813DA8B0 | 48 02 F3 B5 */	bl __dt__Q33ipl5scene4BaseFv
/* 813DA8B4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813DA8B8 | 40 81 00 0C */	ble .L_813DA8C4
/* 813DA8BC | 7F C3 F3 78 */	mr r3, r30
/* 813DA8C0 | 48 21 D8 25 */	bl __dl__FPv
.L_813DA8C4:
/* 813DA8C4 | 7F C3 F3 78 */	mr r3, r30
/* 813DA8C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813DA8CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813DA8D0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813DA8D4 | 7C 08 03 A6 */	mtlr r0
/* 813DA8D8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813DA8DC | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl5scene6RebootFv

# .text:0x168 | 0x813DA8E0 | size: 0x8
.fn "@20@__dt__Q33ipl5scene6RebootFv", global
/* 813DA8E0 | 38 63 FF EC */	subi r3, r3, 0x14
/* 813DA8E4 | 4B FF FF A4 */	b __dt__Q33ipl5scene6RebootFv
.endfn "@20@__dt__Q33ipl5scene6RebootFv"

# 0x81653FD8..0x81654038 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x81653FD8 | size: 0x10
.obj lbl_81653FD8, global
	.4byte 0x5749504C
	.4byte 0x5F42474D
	.4byte 0x5F4D454E
	.4byte 0x55000000
.endobj lbl_81653FD8

# .data:0x10 | 0x81653FE8 | size: 0x50
# ipl::scene::Reboot::__vtable
.obj __vt__Q33ipl5scene6Reboot, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q33ipl5scene6RebootFv
	.4byte getParent__Q33ipl5scene4BaseFv
	.4byte getChild__Q33ipl5scene4BaseFv
	.4byte getNext__Q33ipl5scene4BaseFv
	.4byte getPrev__Q33ipl5scene4BaseFv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte "@20@__dt__Q33ipl5scene6RebootFv"
	.4byte isReady__Q33ipl5scene4BaseCFv
	.4byte isResetAcceptable__Q33ipl5scene4BaseCFv
	.4byte startResetting__Q33ipl5scene4BaseFv
	.4byte isResetProcessDone__Q33ipl5scene4BaseFv
	.4byte prepare__Q33ipl5scene4BaseFv
	.4byte create__Q33ipl5scene4BaseFv
	.4byte calc__Q33ipl5scene6RebootFv
	.4byte draw__Q33ipl5scene4BaseFv
	.4byte destroy__Q33ipl5scene4BaseFv
	.4byte 0x00000000
.endobj __vt__Q33ipl5scene6Reboot
