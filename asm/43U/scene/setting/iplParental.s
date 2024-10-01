.include "macros.inc"
.file "iplParental.cpp"

# 0x810BBC90..0x810BC148 | size: 0x4B8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810BBC90 | size: 0x54
# ipl::parental::Parental::m_sc
.obj m_sc__Q33ipl8parental8Parental, global
	.skip 0x54
.endobj m_sc__Q33ipl8parental8Parental

# .bss:0x54 | 0x810BBCE4 | size: 0x54
# ipl::parental::Parental::m_scSave
.obj m_scSave__Q33ipl8parental8Parental, global
	.skip 0x54
.endobj m_scSave__Q33ipl8parental8Parental

# .bss:0xA8 | 0x810BBD38 | size: 0xC
# ipl::parental::Parental::mRequestNum
.obj mRequestNum__Q33ipl8parental8Parental, global
	.skip 0xC
.endobj mRequestNum__Q33ipl8parental8Parental

# .bss:0xB4 | 0x810BBD44 | size: 0x404
# ipl::parental::Parental::mCrc32Table
.obj mCrc32Table__Q33ipl8parental8Parental, global
	.skip 0x404
.endobj mCrc32Table__Q33ipl8parental8Parental

# 0x813FBA54..0x813FC39C | size: 0x948
.text
.balign 4

# .text:0x0 | 0x813FBA54 | size: 0xB0
# ipl::parental::Parental::init()
.fn init__Q33ipl8parental8ParentalFv, global
/* 813FBA54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBA58 | 7C 08 02 A6 */	mflr r0
/* 813FBA5C | 38 80 00 00 */	li r4, 0x0
/* 813FBA60 | 38 A0 00 54 */	li r5, 0x54
/* 813FBA64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBA68 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FBA6C | 3F E0 81 0C */	lis r31, m_sc__Q33ipl8parental8Parental@ha
/* 813FBA70 | 38 7F BC 90 */	addi r3, r31, m_sc__Q33ipl8parental8Parental@l
/* 813FBA74 | 4B F3 48 C1 */	bl memset
/* 813FBA78 | 38 7F BC 90 */	addi r3, r31, m_sc__Q33ipl8parental8Parental@l
/* 813FBA7C | 48 16 E6 FD */	bl SCGetParentalControl
/* 813FBA80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FBA84 | 7C 64 1B 78 */	mr r4, r3
/* 813FBA88 | 40 82 00 14 */	bne .L_813FBA9C
/* 813FBA8C | 3C 60 81 65 */	lis r3, lbl_81657950@ha
/* 813FBA90 | 38 63 79 50 */	addi r3, r3, lbl_81657950@l
/* 813FBA94 | 4C C6 31 82 */	crclr cr1eq
/* 813FBA98 | 48 13 2C 09 */	bl OSReport
.L_813FBA9C:
/* 813FBA9C | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBAA0 | 88 03 BC 90 */	lbz r0, m_sc__Q33ipl8parental8Parental@l(r3)
/* 813FBAA4 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813FBAA8 | 40 82 00 08 */	bne .L_813FBAB0
/* 813FBAAC | 48 00 00 59 */	bl _initRating__Q33ipl8parental8ParentalFv
.L_813FBAB0:
/* 813FBAB0 | 48 16 EB FD */	bl SCGetNetContentRestrictions
/* 813FBAB4 | 3F E0 81 0C */	lis r31, m_sc__Q33ipl8parental8Parental@ha
/* 813FBAB8 | 3B FF BC 90 */	addi r31, r31, m_sc__Q33ipl8parental8Parental@l
/* 813FBABC | 90 7F 00 4C */	stw r3, 0x4c(r31)
/* 813FBAC0 | 48 16 E8 DD */	bl SCGetWwwRestriction
/* 813FBAC4 | 90 7F 00 50 */	stw r3, 0x50(r31)
/* 813FBAC8 | 3C 60 81 0C */	lis r3, m_scSave__Q33ipl8parental8Parental@ha
/* 813FBACC | 7F E4 FB 78 */	mr r4, r31
/* 813FBAD0 | 38 A0 00 54 */	li r5, 0x54
/* 813FBAD4 | 38 63 BC E4 */	addi r3, r3, m_scSave__Q33ipl8parental8Parental@l
/* 813FBAD8 | 4B F3 47 59 */	bl memcpy
/* 813FBADC | 38 6D AB BC */	li r3, mMistake__Q33ipl8parental8Parental@sda21
/* 813FBAE0 | 38 80 00 00 */	li r4, 0x0
/* 813FBAE4 | 38 A0 00 03 */	li r5, 0x3
/* 813FBAE8 | 4B F3 48 4D */	bl memset
/* 813FBAEC | 48 00 07 5D */	bl makeMasterkey__Q33ipl8parental8ParentalFv
/* 813FBAF0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBAF4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FBAF8 | 7C 08 03 A6 */	mtlr r0
/* 813FBAFC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBB00 | 4E 80 00 20 */	blr
.endfn init__Q33ipl8parental8ParentalFv

# .text:0xB0 | 0x813FBB04 | size: 0x98
# ipl::parental::Parental::_initRating()
.fn _initRating__Q33ipl8parental8ParentalFv, global
/* 813FBB04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBB08 | 7C 08 02 A6 */	mflr r0
/* 813FBB0C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBB10 | 4B F3 9F 7D */	bl getRegion__Q23ipl6SystemFv
/* 813FBB14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FBB18 | 40 82 00 20 */	bne .L_813FBB38
/* 813FBB1C | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBB20 | 38 80 00 00 */	li r4, 0x0
/* 813FBB24 | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBB28 | 38 00 00 12 */	li r0, 0x12
/* 813FBB2C | 98 83 00 01 */	stb r4, 0x1(r3)
/* 813FBB30 | 98 03 00 02 */	stb r0, 0x2(r3)
/* 813FBB34 | 48 00 00 58 */	b .L_813FBB8C
.L_813FBB38:
/* 813FBB38 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813FBB3C | 40 82 00 14 */	bne .L_813FBB50
/* 813FBB40 | 48 16 E9 CD */	bl fn_8156A50C
/* 813FBB44 | 54 63 46 3E */	srwi r3, r3, 24
/* 813FBB48 | 48 00 04 A5 */	bl adjustOgn__Q33ipl8parental8ParentalFUc
/* 813FBB4C | 48 00 00 40 */	b .L_813FBB8C
.L_813FBB50:
/* 813FBB50 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813FBB54 | 40 82 00 20 */	bne .L_813FBB74
/* 813FBB58 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBB5C | 38 80 00 09 */	li r4, 0x9
/* 813FBB60 | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBB64 | 38 00 00 12 */	li r0, 0x12
/* 813FBB68 | 98 83 00 01 */	stb r4, 0x1(r3)
/* 813FBB6C | 98 03 00 02 */	stb r0, 0x2(r3)
/* 813FBB70 | 48 00 00 1C */	b .L_813FBB8C
.L_813FBB74:
/* 813FBB74 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBB78 | 38 80 00 01 */	li r4, 0x1
/* 813FBB7C | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBB80 | 38 00 00 14 */	li r0, 0x14
/* 813FBB84 | 98 83 00 01 */	stb r4, 0x1(r3)
/* 813FBB88 | 98 03 00 02 */	stb r0, 0x2(r3)
.L_813FBB8C:
/* 813FBB8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBB90 | 7C 08 03 A6 */	mtlr r0
/* 813FBB94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBB98 | 4E 80 00 20 */	blr
.endfn _initRating__Q33ipl8parental8ParentalFv

# .text:0x148 | 0x813FBB9C | size: 0x1C
# ipl::parental::Parental::checkFlags()
.fn checkFlags__Q33ipl8parental8ParentalFv, global
/* 813FBB9C | 3C 80 81 0C */	lis r4, m_sc__Q33ipl8parental8Parental@ha
/* 813FBBA0 | 38 60 00 00 */	li r3, 0x0
/* 813FBBA4 | 88 04 BC 90 */	lbz r0, m_sc__Q33ipl8parental8Parental@l(r4)
/* 813FBBA8 | 54 00 06 31 */	rlwinm. r0, r0, 0, 24, 24
/* 813FBBAC | 4D 82 00 20 */	beqlr
/* 813FBBB0 | 38 60 00 01 */	li r3, 0x1
/* 813FBBB4 | 4E 80 00 20 */	blr
.endfn checkFlags__Q33ipl8parental8ParentalFv

# .text:0x164 | 0x813FBBB8 | size: 0x10
# ipl::parental::Parental::checkRating()
.fn checkRating__Q33ipl8parental8ParentalFv, global
/* 813FBBB8 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBBBC | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBBC0 | 88 63 00 02 */	lbz r3, 0x2(r3)
/* 813FBBC4 | 4E 80 00 20 */	blr
.endfn checkRating__Q33ipl8parental8ParentalFv

# .text:0x174 | 0x813FBBC8 | size: 0x44
# ipl::parental::Parental::checkRestrictions()
.fn checkRestrictions__Q33ipl8parental8ParentalFv, global
/* 813FBBC8 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBBCC | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBBD0 | 80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 813FBBD4 | 80 03 00 50 */	lwz r0, 0x50(r3)
/* 813FBBD8 | 54 C3 FF FE */	extrwi r3, r6, 1, 30
/* 813FBBDC | 54 C5 07 FE */	clrlwi r5, r6, 31
/* 813FBBE0 | 7C 83 00 D0 */	neg r4, r3
/* 813FBBE4 | 20 00 00 00 */	subfic r0, r0, 0x0
/* 813FBBE8 | 7C A5 00 D0 */	neg r5, r5
/* 813FBBEC | 54 C3 F7 FE */	extrwi r3, r6, 1, 29
/* 813FBBF0 | 54 84 07 BC */	rlwinm r4, r4, 0, 30, 30
/* 813FBBF4 | 7C 00 01 10 */	subfe r0, r0, r0
/* 813FBBF8 | 50 A4 07 38 */	rlwimi r4, r5, 0, 28, 28
/* 813FBBFC | 7C 84 1B 78 */	or r4, r4, r3
/* 813FBC00 | 7C 83 1B 78 */	or r3, r4, r3
/* 813FBC04 | 50 03 07 7A */	rlwimi r3, r0, 0, 29, 29
/* 813FBC08 | 4E 80 00 20 */	blr
.endfn checkRestrictions__Q33ipl8parental8ParentalFv

# .text:0x1B8 | 0x813FBC0C | size: 0x64
# ipl::parental::Parental::checkPass(const char*)
.fn checkPass__Q33ipl8parental8ParentalFPCc, global
/* 813FBC0C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBC10 | 7C 08 02 A6 */	mflr r0
/* 813FBC14 | 38 A0 00 04 */	li r5, 0x4
/* 813FBC18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBC1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FBC20 | 7C 7F 1B 78 */	mr r31, r3
/* 813FBC24 | 38 6D AB B8 */	li r3, mStackPass__Q33ipl8parental8Parental@sda21
/* 813FBC28 | 7F E4 FB 78 */	mr r4, r31
/* 813FBC2C | 48 20 69 71 */	bl strncmp
/* 813FBC30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FBC34 | 40 82 00 24 */	bne .L_813FBC58
/* 813FBC38 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBC3C | 7F E4 FB 78 */	mr r4, r31
/* 813FBC40 | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBC44 | 38 A0 00 04 */	li r5, 0x4
/* 813FBC48 | 38 63 00 03 */	addi r3, r3, 0x3
/* 813FBC4C | 4B F3 45 E5 */	bl memcpy
/* 813FBC50 | 38 60 00 01 */	li r3, 0x1
/* 813FBC54 | 48 00 00 08 */	b .L_813FBC5C
.L_813FBC58:
/* 813FBC58 | 38 60 00 00 */	li r3, 0x0
.L_813FBC5C:
/* 813FBC5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBC60 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FBC64 | 7C 08 03 A6 */	mtlr r0
/* 813FBC68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBC6C | 4E 80 00 20 */	blr
.endfn checkPass__Q33ipl8parental8ParentalFPCc

# .text:0x21C | 0x813FBC70 | size: 0x3C
# ipl::parental::Parental::_checkPass(const char*)
.fn _checkPass__Q33ipl8parental8ParentalFPCc, global
/* 813FBC70 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBC74 | 7C 08 02 A6 */	mflr r0
/* 813FBC78 | 3C C0 81 0C */	lis r6, m_sc__Q33ipl8parental8Parental@ha
/* 813FBC7C | 7C 64 1B 78 */	mr r4, r3
/* 813FBC80 | 38 C6 BC 90 */	addi r6, r6, m_sc__Q33ipl8parental8Parental@l
/* 813FBC84 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBC88 | 38 A0 00 04 */	li r5, 0x4
/* 813FBC8C | 38 66 00 03 */	addi r3, r6, 0x3
/* 813FBC90 | 48 20 69 0D */	bl strncmp
/* 813FBC94 | 7C 60 00 34 */	cntlzw r0, r3
/* 813FBC98 | 54 03 D9 7E */	srwi r3, r0, 5
/* 813FBC9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBCA0 | 7C 08 03 A6 */	mtlr r0
/* 813FBCA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBCA8 | 4E 80 00 20 */	blr
.endfn _checkPass__Q33ipl8parental8ParentalFPCc

# .text:0x258 | 0x813FBCAC | size: 0x5C
# ipl::parental::Parental::judgePass(const char*)
.fn judgePass__Q33ipl8parental8ParentalFPCc, global
/* 813FBCAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBCB0 | 7C 08 02 A6 */	mflr r0
/* 813FBCB4 | 38 8D AB BC */	li r4, mMistake__Q33ipl8parental8Parental@sda21
/* 813FBCB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBCBC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FBCC0 | 3B E0 00 00 */	li r31, 0x0
/* 813FBCC4 | 9B E4 00 01 */	stb r31, 0x1(r4)
/* 813FBCC8 | 9B E4 00 02 */	stb r31, 0x2(r4)
/* 813FBCCC | 4B FF FF A5 */	bl _checkPass__Q33ipl8parental8ParentalFPCc
/* 813FBCD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FBCD4 | 41 82 00 10 */	beq .L_813FBCE4
/* 813FBCD8 | 9B ED AB BC */	stb r31, mMistake__Q33ipl8parental8Parental@sda21(r0)
/* 813FBCDC | 38 60 00 01 */	li r3, 0x1
/* 813FBCE0 | 48 00 00 14 */	b .L_813FBCF4
.L_813FBCE4:
/* 813FBCE4 | 88 8D AB BC */	lbz r4, mMistake__Q33ipl8parental8Parental@sda21(r0)
/* 813FBCE8 | 38 60 00 00 */	li r3, 0x0
/* 813FBCEC | 38 04 00 01 */	addi r0, r4, 0x1
/* 813FBCF0 | 98 0D AB BC */	stb r0, mMistake__Q33ipl8parental8Parental@sda21(r0)
.L_813FBCF4:
/* 813FBCF4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBCF8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FBCFC | 7C 08 03 A6 */	mtlr r0
/* 813FBD00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBD04 | 4E 80 00 20 */	blr
.endfn judgePass__Q33ipl8parental8ParentalFPCc

# .text:0x2B4 | 0x813FBD08 | size: 0x78
# ipl::parental::Parental::judgeSecA(const wchar_t*)
.fn judgeSecA__Q33ipl8parental8ParentalFPCw, global
/* 813FBD08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBD0C | 7C 08 02 A6 */	mflr r0
/* 813FBD10 | 3C A0 81 0C */	lis r5, m_sc__Q33ipl8parental8Parental@ha
/* 813FBD14 | 7C 64 1B 78 */	mr r4, r3
/* 813FBD18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBD1C | 38 A5 BC 90 */	addi r5, r5, m_sc__Q33ipl8parental8Parental@l
/* 813FBD20 | 38 65 00 08 */	addi r3, r5, 0x8
/* 813FBD24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FBD28 | 3B ED AB BC */	li r31, mMistake__Q33ipl8parental8Parental@sda21
/* 813FBD2C | 38 A0 00 40 */	li r5, 0x40
/* 813FBD30 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FBD34 | 3B C0 00 00 */	li r30, 0x0
/* 813FBD38 | 9B CD AB BC */	stb r30, mMistake__Q33ipl8parental8Parental@sda21(r0)
/* 813FBD3C | 9B DF 00 02 */	stb r30, 0x2(r31)
/* 813FBD40 | 48 20 24 95 */	bl memcmp
/* 813FBD44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FBD48 | 40 82 00 10 */	bne .L_813FBD58
/* 813FBD4C | 9B DF 00 01 */	stb r30, 0x1(r31)
/* 813FBD50 | 38 60 00 01 */	li r3, 0x1
/* 813FBD54 | 48 00 00 14 */	b .L_813FBD68
.L_813FBD58:
/* 813FBD58 | 88 9F 00 01 */	lbz r4, 0x1(r31)
/* 813FBD5C | 38 60 00 00 */	li r3, 0x0
/* 813FBD60 | 38 04 00 01 */	addi r0, r4, 0x1
/* 813FBD64 | 98 1F 00 01 */	stb r0, 0x1(r31)
.L_813FBD68:
/* 813FBD68 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBD6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FBD70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FBD74 | 7C 08 03 A6 */	mtlr r0
/* 813FBD78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBD7C | 4E 80 00 20 */	blr
.endfn judgeSecA__Q33ipl8parental8ParentalFPCw

# .text:0x32C | 0x813FBD80 | size: 0x6C
# ipl::parental::Parental::judgeMaster(const char*)
.fn judgeMaster__Q33ipl8parental8ParentalFPCc, global
/* 813FBD80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBD84 | 7C 08 02 A6 */	mflr r0
/* 813FBD88 | 38 8D AB BF */	li r4, mMasterKey__Q33ipl8parental8Parental@sda21
/* 813FBD8C | 38 A0 00 05 */	li r5, 0x5
/* 813FBD90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBD94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FBD98 | 3B ED AB BC */	li r31, mMistake__Q33ipl8parental8Parental@sda21
/* 813FBD9C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FBDA0 | 3B C0 00 00 */	li r30, 0x0
/* 813FBDA4 | 9B CD AB BC */	stb r30, mMistake__Q33ipl8parental8Parental@sda21(r0)
/* 813FBDA8 | 9B DF 00 01 */	stb r30, 0x1(r31)
/* 813FBDAC | 48 20 67 F1 */	bl strncmp
/* 813FBDB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FBDB4 | 40 82 00 10 */	bne .L_813FBDC4
/* 813FBDB8 | 9B DF 00 02 */	stb r30, 0x2(r31)
/* 813FBDBC | 38 60 00 01 */	li r3, 0x1
/* 813FBDC0 | 48 00 00 14 */	b .L_813FBDD4
.L_813FBDC4:
/* 813FBDC4 | 88 9F 00 02 */	lbz r4, 0x2(r31)
/* 813FBDC8 | 38 60 00 00 */	li r3, 0x0
/* 813FBDCC | 38 04 00 01 */	addi r0, r4, 0x1
/* 813FBDD0 | 98 1F 00 02 */	stb r0, 0x2(r31)
.L_813FBDD4:
/* 813FBDD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBDD8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FBDDC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FBDE0 | 7C 08 03 A6 */	mtlr r0
/* 813FBDE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBDE8 | 4E 80 00 20 */	blr
.endfn judgeMaster__Q33ipl8parental8ParentalFPCc

# .text:0x398 | 0x813FBDEC | size: 0x20
# ipl::parental::Parental::checkMistake(unsigned char)
.fn checkMistake__Q33ipl8parental8ParentalFUc, global
/* 813FBDEC | 38 AD AB BC */	li r5, mMistake__Q33ipl8parental8Parental@sda21
/* 813FBDF0 | 38 80 00 03 */	li r4, 0x3
/* 813FBDF4 | 7C 05 18 AE */	lbzx r0, r5, r3
/* 813FBDF8 | 7C 04 00 10 */	subfc r0, r4, r0
/* 813FBDFC | 7C 04 01 94 */	addze r0, r4
/* 813FBE00 | 20 60 00 03 */	subfic r3, r0, 0x3
/* 813FBE04 | 38 63 00 02 */	addi r3, r3, 0x2
/* 813FBE08 | 4E 80 00 20 */	blr
.endfn checkMistake__Q33ipl8parental8ParentalFUc

# .text:0x3B8 | 0x813FBE0C | size: 0x10
# ipl::parental::Parental::checkSecQ()
.fn checkSecQ__Q33ipl8parental8ParentalFv, global
/* 813FBE0C | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBE10 | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBE14 | 88 63 00 07 */	lbz r3, 0x7(r3)
/* 813FBE18 | 4E 80 00 20 */	blr
.endfn checkSecQ__Q33ipl8parental8ParentalFv

# .text:0x3C8 | 0x813FBE1C | size: 0x10
# ipl::parental::Parental::getSecA()
.fn getSecA__Q33ipl8parental8ParentalFv, global
/* 813FBE1C | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBE20 | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBE24 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813FBE28 | 4E 80 00 20 */	blr
.endfn getSecA__Q33ipl8parental8ParentalFv

# .text:0x3D8 | 0x813FBE2C | size: 0x40
# ipl::parental::Parental::getOgn()
.fn getOgn__Q33ipl8parental8ParentalFv, global
/* 813FBE2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBE30 | 7C 08 02 A6 */	mflr r0
/* 813FBE34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBE38 | 48 16 E6 D5 */	bl fn_8156A50C
/* 813FBE3C | 54 60 46 3E */	srwi r0, r3, 24
/* 813FBE40 | 28 00 00 5F */	cmplwi r0, 0x5f
/* 813FBE44 | 41 82 00 14 */	beq .L_813FBE58
/* 813FBE48 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBE4C | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBE50 | 88 63 00 01 */	lbz r3, 0x1(r3)
/* 813FBE54 | 48 00 00 08 */	b .L_813FBE5C
.L_813FBE58:
/* 813FBE58 | 38 60 00 09 */	li r3, 0x9
.L_813FBE5C:
/* 813FBE5C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBE60 | 7C 08 03 A6 */	mtlr r0
/* 813FBE64 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBE68 | 4E 80 00 20 */	blr
.endfn getOgn__Q33ipl8parental8ParentalFv

# .text:0x418 | 0x813FBE6C | size: 0x24
# ipl::parental::Parental::getCountry()
.fn getCountry__Q33ipl8parental8ParentalFv, global
/* 813FBE6C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBE70 | 7C 08 02 A6 */	mflr r0
/* 813FBE74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBE78 | 48 16 E6 95 */	bl fn_8156A50C
/* 813FBE7C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBE80 | 54 63 46 3E */	srwi r3, r3, 24
/* 813FBE84 | 7C 08 03 A6 */	mtlr r0
/* 813FBE88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBE8C | 4E 80 00 20 */	blr
.endfn getCountry__Q33ipl8parental8ParentalFv

# .text:0x43C | 0x813FBE90 | size: 0x5C
# ipl::parental::Parental::setFlags(unsigned char)
.fn setFlags__Q33ipl8parental8ParentalFUc, global
/* 813FBE90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBE94 | 7C 08 02 A6 */	mflr r0
/* 813FBE98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FBE9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBEA0 | 40 82 00 30 */	bne .L_813FBED0
/* 813FBEA4 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBEA8 | 3C 80 81 0C */	lis r4, m_scSave__Q33ipl8parental8Parental@ha
/* 813FBEAC | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FBEB0 | 38 A0 00 54 */	li r5, 0x54
/* 813FBEB4 | 38 84 BC E4 */	addi r4, r4, m_scSave__Q33ipl8parental8Parental@l
/* 813FBEB8 | 4B F3 43 79 */	bl memcpy
/* 813FBEBC | 38 6D AB BC */	li r3, mMistake__Q33ipl8parental8Parental@sda21
/* 813FBEC0 | 38 80 00 00 */	li r4, 0x0
/* 813FBEC4 | 38 A0 00 03 */	li r5, 0x3
/* 813FBEC8 | 4B F3 44 6D */	bl memset
/* 813FBECC | 48 00 00 10 */	b .L_813FBEDC
.L_813FBED0:
/* 813FBED0 | 38 00 00 80 */	li r0, 0x80
/* 813FBED4 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FBED8 | 98 03 BC 90 */	stb r0, m_sc__Q33ipl8parental8Parental@l(r3)
.L_813FBEDC:
/* 813FBEDC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBEE0 | 7C 08 03 A6 */	mtlr r0
/* 813FBEE4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBEE8 | 4E 80 00 20 */	blr
.endfn setFlags__Q33ipl8parental8ParentalFUc

# .text:0x498 | 0x813FBEEC | size: 0x10
# ipl::parental::Parental::setRating(unsigned char)
.fn setRating__Q33ipl8parental8ParentalFUc, global
/* 813FBEEC | 3C 80 81 0C */	lis r4, m_sc__Q33ipl8parental8Parental@ha
/* 813FBEF0 | 38 84 BC 90 */	addi r4, r4, m_sc__Q33ipl8parental8Parental@l
/* 813FBEF4 | 98 64 00 02 */	stb r3, 0x2(r4)
/* 813FBEF8 | 4E 80 00 20 */	blr
.endfn setRating__Q33ipl8parental8ParentalFUc

# .text:0x4A8 | 0x813FBEFC | size: 0x10
# ipl::parental::Parental::setPass(const char*)
.fn setPass__Q33ipl8parental8ParentalFPCc, global
/* 813FBEFC | 7C 64 1B 78 */	mr r4, r3
/* 813FBF00 | 38 6D AB B8 */	li r3, mStackPass__Q33ipl8parental8Parental@sda21
/* 813FBF04 | 38 A0 00 04 */	li r5, 0x4
/* 813FBF08 | 4B F3 43 28 */	b memcpy
.endfn setPass__Q33ipl8parental8ParentalFPCc

# .text:0x4B8 | 0x813FBF0C | size: 0x10
# ipl::parental::Parental::setSecQ(unsigned char)
.fn setSecQ__Q33ipl8parental8ParentalFUc, global
/* 813FBF0C | 3C 80 81 0C */	lis r4, m_sc__Q33ipl8parental8Parental@ha
/* 813FBF10 | 38 84 BC 90 */	addi r4, r4, m_sc__Q33ipl8parental8Parental@l
/* 813FBF14 | 98 64 00 07 */	stb r3, 0x7(r4)
/* 813FBF18 | 4E 80 00 20 */	blr
.endfn setSecQ__Q33ipl8parental8ParentalFUc

# .text:0x4C8 | 0x813FBF1C | size: 0x54
# ipl::parental::Parental::setSecA(const wchar_t*)
.fn setSecA__Q33ipl8parental8ParentalFPCw, global
/* 813FBF1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FBF20 | 7C 08 02 A6 */	mflr r0
/* 813FBF24 | 38 A0 00 40 */	li r5, 0x40
/* 813FBF28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FBF2C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FBF30 | 3F E0 81 0C */	lis r31, m_sc__Q33ipl8parental8Parental@ha
/* 813FBF34 | 3B FF BC 90 */	addi r31, r31, m_sc__Q33ipl8parental8Parental@l
/* 813FBF38 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FBF3C | 7C 7E 1B 78 */	mr r30, r3
/* 813FBF40 | 7F C4 F3 78 */	mr r4, r30
/* 813FBF44 | 38 7F 00 08 */	addi r3, r31, 0x8
/* 813FBF48 | 4B F3 42 E9 */	bl memcpy
/* 813FBF4C | 7F C3 F3 78 */	mr r3, r30
/* 813FBF50 | 48 20 C7 5D */	bl fn_816086AC
/* 813FBF54 | B0 7F 00 48 */	sth r3, 0x48(r31)
/* 813FBF58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FBF5C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FBF60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBF64 | 7C 08 03 A6 */	mtlr r0
/* 813FBF68 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBF6C | 4E 80 00 20 */	blr
.endfn setSecA__Q33ipl8parental8ParentalFPCw

# .text:0x51C | 0x813FBF70 | size: 0x48
# ipl::parental::Parental::setCountry(unsigned char)
.fn setCountry__Q33ipl8parental8ParentalFUc, global
/* 813FBF70 | 94 21 EF E0 */	stwu r1, -0x1020(r1)
/* 813FBF74 | 7C 08 02 A6 */	mflr r0
/* 813FBF78 | 38 80 00 00 */	li r4, 0x0
/* 813FBF7C | 38 A0 10 08 */	li r5, 0x1008
/* 813FBF80 | 90 01 10 24 */	stw r0, 0x1024(r1)
/* 813FBF84 | 93 E1 10 1C */	stw r31, 0x101c(r1)
/* 813FBF88 | 7C 7F 1B 78 */	mr r31, r3
/* 813FBF8C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FBF90 | 4B F3 43 A5 */	bl memset
/* 813FBF94 | 57 E0 C0 0E */	slwi r0, r31, 24
/* 813FBF98 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FBF9C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 813FBFA0 | 48 16 E7 01 */	bl fn_8156A6A0
/* 813FBFA4 | 80 01 10 24 */	lwz r0, 0x1024(r1)
/* 813FBFA8 | 83 E1 10 1C */	lwz r31, 0x101c(r1)
/* 813FBFAC | 7C 08 03 A6 */	mtlr r0
/* 813FBFB0 | 38 21 10 20 */	addi r1, r1, 0x1020
/* 813FBFB4 | 4E 80 00 20 */	blr
.endfn setCountry__Q33ipl8parental8ParentalFUc

# .text:0x564 | 0x813FBFB8 | size: 0x34
# ipl::parental::Parental::setRestrictions(unsigned long)
.fn setRestrictions__Q33ipl8parental8ParentalFUl, global
/* 813FBFB8 | 54 64 FF FE */	extrwi r4, r3, 1, 30
/* 813FBFBC | 3C C0 81 0C */	lis r6, m_sc__Q33ipl8parental8Parental@ha
/* 813FBFC0 | 7C 84 00 D0 */	neg r4, r4
/* 813FBFC4 | 54 60 07 FE */	clrlwi r0, r3, 31
/* 813FBFC8 | 54 85 07 BC */	rlwinm r5, r4, 0, 30, 30
/* 813FBFCC | 38 C6 BC 90 */	addi r6, r6, m_sc__Q33ipl8parental8Parental@l
/* 813FBFD0 | 7C 80 00 D0 */	neg r4, r0
/* 813FBFD4 | 54 60 F7 FE */	extrwi r0, r3, 1, 29
/* 813FBFD8 | 50 65 EF FE */	rlwimi r5, r3, 29, 31, 31
/* 813FBFDC | 90 06 00 50 */	stw r0, 0x50(r6)
/* 813FBFE0 | 50 85 07 7A */	rlwimi r5, r4, 0, 29, 29
/* 813FBFE4 | 90 A6 00 4C */	stw r5, 0x4c(r6)
/* 813FBFE8 | 4E 80 00 20 */	blr
.endfn setRestrictions__Q33ipl8parental8ParentalFUl

# .text:0x598 | 0x813FBFEC | size: 0x98
# ipl::parental::Parental::adjustOgn(unsigned char)
.fn adjustOgn__Q33ipl8parental8ParentalFUc, global
/* 813FBFEC | 3C 80 81 0C */	lis r4, m_sc__Q33ipl8parental8Parental@ha
/* 813FBFF0 | 2C 03 00 5F */	cmpwi r3, 0x5f
/* 813FBFF4 | 38 84 BC 90 */	addi r4, r4, m_sc__Q33ipl8parental8Parental@l
/* 813FBFF8 | 38 00 00 14 */	li r0, 0x14
/* 813FBFFC | 98 04 00 02 */	stb r0, 0x2(r4)
/* 813FC000 | 41 82 00 5C */	beq .L_813FC05C
/* 813FC004 | 40 80 00 1C */	bge .L_813FC020
/* 813FC008 | 2C 03 00 4E */	cmpwi r3, 0x4e
/* 813FC00C | 41 82 00 2C */	beq .L_813FC038
/* 813FC010 | 40 80 00 60 */	bge .L_813FC070
/* 813FC014 | 2C 03 00 41 */	cmpwi r3, 0x41
/* 813FC018 | 41 82 00 44 */	beq .L_813FC05C
/* 813FC01C | 48 00 00 54 */	b .L_813FC070
.L_813FC020:
/* 813FC020 | 2C 03 00 6E */	cmpwi r3, 0x6e
/* 813FC024 | 41 82 00 20 */	beq .L_813FC044
/* 813FC028 | 40 80 00 48 */	bge .L_813FC070
/* 813FC02C | 2C 03 00 62 */	cmpwi r3, 0x62
/* 813FC030 | 41 82 00 20 */	beq .L_813FC050
/* 813FC034 | 48 00 00 3C */	b .L_813FC070
.L_813FC038:
/* 813FC038 | 38 00 00 03 */	li r0, 0x3
/* 813FC03C | 98 04 00 01 */	stb r0, 0x1(r4)
/* 813FC040 | 4E 80 00 20 */	blr
.L_813FC044:
/* 813FC044 | 38 00 00 07 */	li r0, 0x7
/* 813FC048 | 98 04 00 01 */	stb r0, 0x1(r4)
/* 813FC04C | 4E 80 00 20 */	blr
.L_813FC050:
/* 813FC050 | 38 00 00 06 */	li r0, 0x6
/* 813FC054 | 98 04 00 01 */	stb r0, 0x1(r4)
/* 813FC058 | 4E 80 00 20 */	blr
.L_813FC05C:
/* 813FC05C | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FC060 | 38 00 00 08 */	li r0, 0x8
/* 813FC064 | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FC068 | 98 03 00 01 */	stb r0, 0x1(r3)
/* 813FC06C | 4E 80 00 20 */	blr
.L_813FC070:
/* 813FC070 | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FC074 | 38 00 00 04 */	li r0, 0x4
/* 813FC078 | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FC07C | 98 03 00 01 */	stb r0, 0x1(r3)
/* 813FC080 | 4E 80 00 20 */	blr
.endfn adjustOgn__Q33ipl8parental8ParentalFUc

# .text:0x630 | 0x813FC084 | size: 0x98
# ipl::parental::Parental::write()
.fn write__Q33ipl8parental8ParentalFv, global
/* 813FC084 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC088 | 7C 08 02 A6 */	mflr r0
/* 813FC08C | 3C 60 81 0C */	lis r3, m_sc__Q33ipl8parental8Parental@ha
/* 813FC090 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC094 | 38 63 BC 90 */	addi r3, r3, m_sc__Q33ipl8parental8Parental@l
/* 813FC098 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FC09C | 48 16 E0 E9 */	bl fn_8156A184
/* 813FC0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FC0A4 | 40 82 00 14 */	bne .L_813FC0B8
/* 813FC0A8 | 3C 60 81 65 */	lis r3, lbl_81657971@ha
/* 813FC0AC | 38 63 79 71 */	addi r3, r3, lbl_81657971@l
/* 813FC0B0 | 4C C6 31 82 */	crclr cr1eq
/* 813FC0B4 | 48 13 25 ED */	bl OSReport
.L_813FC0B8:
/* 813FC0B8 | 3F E0 81 0C */	lis r31, m_sc__Q33ipl8parental8Parental@ha
/* 813FC0BC | 3B FF BC 90 */	addi r31, r31, m_sc__Q33ipl8parental8Parental@l
/* 813FC0C0 | 80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 813FC0C4 | 48 16 E6 25 */	bl fn_8156A6E8
/* 813FC0C8 | 80 7F 00 50 */	lwz r3, 0x50(r31)
/* 813FC0CC | 48 16 E3 0D */	bl fn_8156A3D8
/* 813FC0D0 | 3C 60 81 0C */	lis r3, m_scSave__Q33ipl8parental8Parental@ha
/* 813FC0D4 | 7F E4 FB 78 */	mr r4, r31
/* 813FC0D8 | 38 63 BC E4 */	addi r3, r3, m_scSave__Q33ipl8parental8Parental@l
/* 813FC0DC | 38 A0 00 54 */	li r5, 0x54
/* 813FC0E0 | 4B F3 41 51 */	bl memcpy
/* 813FC0E4 | 38 6D AB BC */	li r3, mMistake__Q33ipl8parental8Parental@sda21
/* 813FC0E8 | 38 80 00 00 */	li r4, 0x0
/* 813FC0EC | 38 A0 00 03 */	li r5, 0x3
/* 813FC0F0 | 4B F3 42 45 */	bl memset
/* 813FC0F4 | 48 16 D8 59 */	bl fn_8156994C
/* 813FC0F8 | 3C 60 81 65 */	lis r3, lbl_8165798F@ha
/* 813FC0FC | 38 63 79 8F */	addi r3, r3, lbl_8165798F@l
/* 813FC100 | 4C C6 31 82 */	crclr cr1eq
/* 813FC104 | 48 13 25 9D */	bl OSReport
/* 813FC108 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC10C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FC110 | 7C 08 03 A6 */	mtlr r0
/* 813FC114 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FC118 | 4E 80 00 20 */	blr
.endfn write__Q33ipl8parental8ParentalFv

# .text:0x6C8 | 0x813FC11C | size: 0x60
# ipl::parental::Parental::clear()
.fn clear__Q33ipl8parental8ParentalFv, global
/* 813FC11C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC120 | 7C 08 02 A6 */	mflr r0
/* 813FC124 | 38 80 00 00 */	li r4, 0x0
/* 813FC128 | 38 A0 00 54 */	li r5, 0x54
/* 813FC12C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC130 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FC134 | 3F E0 81 0C */	lis r31, m_sc__Q33ipl8parental8Parental@ha
/* 813FC138 | 38 7F BC 90 */	addi r3, r31, m_sc__Q33ipl8parental8Parental@l
/* 813FC13C | 4B F3 41 F9 */	bl memset
/* 813FC140 | 38 6D AB BC */	li r3, mMistake__Q33ipl8parental8Parental@sda21
/* 813FC144 | 38 80 00 00 */	li r4, 0x0
/* 813FC148 | 38 A0 00 03 */	li r5, 0x3
/* 813FC14C | 4B F3 41 E9 */	bl memset
/* 813FC150 | 4B FF F9 B5 */	bl _initRating__Q33ipl8parental8ParentalFv
/* 813FC154 | 38 7F BC 90 */	addi r3, r31, m_sc__Q33ipl8parental8Parental@l
/* 813FC158 | 38 00 00 00 */	li r0, 0x0
/* 813FC15C | 90 03 00 4C */	stw r0, 0x4c(r3)
/* 813FC160 | 90 03 00 50 */	stw r0, 0x50(r3)
/* 813FC164 | 4B FF FF 21 */	bl write__Q33ipl8parental8ParentalFv
/* 813FC168 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC16C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FC170 | 7C 08 03 A6 */	mtlr r0
/* 813FC174 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FC178 | 4E 80 00 20 */	blr
.endfn clear__Q33ipl8parental8ParentalFv

# .text:0x728 | 0x813FC17C | size: 0x10
# ipl::parental::Parental::clearMiss()
.fn clearMiss__Q33ipl8parental8ParentalFv, global
/* 813FC17C | 38 6D AB BC */	li r3, mMistake__Q33ipl8parental8Parental@sda21
/* 813FC180 | 38 80 00 00 */	li r4, 0x0
/* 813FC184 | 38 A0 00 03 */	li r5, 0x3
/* 813FC188 | 4B F3 41 AC */	b memset
.endfn clearMiss__Q33ipl8parental8ParentalFv

# .text:0x738 | 0x813FC18C | size: 0x7C
# ipl::parental::Parental::Crc32Init()
.fn Crc32Init__Q33ipl8parental8ParentalFv, global
/* 813FC18C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC190 | 7C 08 02 A6 */	mflr r0
/* 813FC194 | 38 80 00 00 */	li r4, 0x0
/* 813FC198 | 38 A0 01 00 */	li r5, 0x100
/* 813FC19C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC1A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FC1A4 | 3F E0 81 0C */	lis r31, mCrc32Table__Q33ipl8parental8Parental@ha
/* 813FC1A8 | 38 7F BD 44 */	addi r3, r31, mCrc32Table__Q33ipl8parental8Parental@l
/* 813FC1AC | 4B F3 41 89 */	bl memset
/* 813FC1B0 | 38 9F BD 44 */	addi r4, r31, mCrc32Table__Q33ipl8parental8Parental@l
/* 813FC1B4 | 38 A0 00 00 */	li r5, 0x0
/* 813FC1B8 | 38 60 00 00 */	li r3, 0x0
/* 813FC1BC | 38 C0 00 08 */	li r6, 0x8
.L_813FC1C0:
/* 813FC1C0 | 7C A7 2B 78 */	mr r7, r5
/* 813FC1C4 | 7C C9 03 A6 */	mtctr r6
.L_813FC1C8:
/* 813FC1C8 | 54 E0 07 FF */	clrlwi. r0, r7, 31
/* 813FC1CC | 54 E7 F8 7E */	srwi r7, r7, 1
/* 813FC1D0 | 41 82 00 0C */	beq .L_813FC1DC
/* 813FC1D4 | 6C E7 ED B8 */	xoris r7, r7, 0xedb8
/* 813FC1D8 | 68 E7 83 20 */	xori r7, r7, 0x8320
.L_813FC1DC:
/* 813FC1DC | 42 00 FF EC */	bdnz .L_813FC1C8
/* 813FC1E0 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813FC1E4 | 7C E4 19 2E */	stwx r7, r4, r3
/* 813FC1E8 | 28 05 01 00 */	cmplwi r5, 0x100
/* 813FC1EC | 38 63 00 04 */	addi r3, r3, 0x4
/* 813FC1F0 | 41 80 FF D0 */	blt .L_813FC1C0
/* 813FC1F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC1F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FC1FC | 7C 08 03 A6 */	mtlr r0
/* 813FC200 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FC204 | 4E 80 00 20 */	blr
.endfn Crc32Init__Q33ipl8parental8ParentalFv

# .text:0x7B4 | 0x813FC208 | size: 0x40
# ipl::parental::Parental::CalcCrc32(const unsigned char*, unsigned long)
.fn CalcCrc32__Q33ipl8parental8ParentalFPCUcUl, global
/* 813FC208 | 3C A0 81 0C */	lis r5, mCrc32Table__Q33ipl8parental8Parental@ha
/* 813FC20C | 38 C0 FF FF */	li r6, -0x1
/* 813FC210 | 38 A5 BD 44 */	addi r5, r5, mCrc32Table__Q33ipl8parental8Parental@l
/* 813FC214 | 7C 89 03 A6 */	mtctr r4
/* 813FC218 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813FC21C | 41 82 00 24 */	beq .L_813FC240
.L_813FC220:
/* 813FC220 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 813FC224 | 54 C4 C2 3E */	srwi r4, r6, 8
/* 813FC228 | 38 63 00 01 */	addi r3, r3, 0x1
/* 813FC22C | 7C C0 02 78 */	xor r0, r6, r0
/* 813FC230 | 54 00 15 BA */	clrlslwi r0, r0, 24, 2
/* 813FC234 | 7C 05 00 2E */	lwzx r0, r5, r0
/* 813FC238 | 7C 86 02 78 */	xor r6, r4, r0
/* 813FC23C | 42 00 FF E4 */	bdnz .L_813FC220
.L_813FC240:
/* 813FC240 | 7C C3 33 78 */	mr r3, r6
/* 813FC244 | 4E 80 00 20 */	blr
.endfn CalcCrc32__Q33ipl8parental8ParentalFPCUcUl

# .text:0x7F4 | 0x813FC248 | size: 0x12C
# ipl::parental::Parental::makeMasterkey()
.fn makeMasterkey__Q33ipl8parental8ParentalFv, global
/* 813FC248 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 813FC24C | 7C 08 02 A6 */	mflr r0
/* 813FC250 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 813FC254 | 39 61 00 50 */	addi r11, r1, 0x50
/* 813FC258 | 48 1F D2 71 */	bl _savegpr_29
/* 813FC25C | 3F C0 81 65 */	lis r30, lbl_81657950@ha
/* 813FC260 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FC264 | 3B DE 79 50 */	addi r30, r30, lbl_81657950@l
/* 813FC268 | 38 80 00 00 */	li r4, 0x0
/* 813FC26C | 38 A0 00 09 */	li r5, 0x9
/* 813FC270 | 4B F3 40 C5 */	bl memset
/* 813FC274 | 3F E0 81 0C */	lis r31, mRequestNum__Q33ipl8parental8Parental@ha
/* 813FC278 | 38 80 00 00 */	li r4, 0x0
/* 813FC27C | 38 7F BD 38 */	addi r3, r31, mRequestNum__Q33ipl8parental8Parental@l
/* 813FC280 | 38 A0 00 09 */	li r5, 0x9
/* 813FC284 | 4B F3 40 B1 */	bl memset
/* 813FC288 | 38 6D AB BF */	li r3, mMasterKey__Q33ipl8parental8Parental@sda21
/* 813FC28C | 38 80 00 00 */	li r4, 0x0
/* 813FC290 | 38 A0 00 05 */	li r5, 0x5
/* 813FC294 | 4B F3 40 A1 */	bl memset
/* 813FC298 | 4B FF F4 C9 */	bl getMacNum__Q33ipl3ncd10NCDSettingFv
/* 813FC29C | 7C 7D 1B 78 */	mr r29, r3
/* 813FC2A0 | 38 7F BD 38 */	addi r3, r31, mRequestNum__Q33ipl8parental8Parental@l
/* 813FC2A4 | 7F A6 EB 78 */	mr r6, r29
/* 813FC2A8 | 38 80 00 09 */	li r4, 0x9
/* 813FC2AC | 38 AD 91 A0 */	li r5, lbl_816971E0@sda21
/* 813FC2B0 | 4C C6 31 82 */	crclr cr1eq
/* 813FC2B4 | 48 20 46 F5 */	bl snprintf
/* 813FC2B8 | 7F A4 EB 78 */	mr r4, r29
/* 813FC2BC | 38 7E 00 61 */	addi r3, r30, 0x61
/* 813FC2C0 | 38 BF BD 38 */	addi r5, r31, mRequestNum__Q33ipl8parental8Parental@l
/* 813FC2C4 | 4C C6 31 82 */	crclr cr1eq
/* 813FC2C8 | 48 13 23 D9 */	bl OSReport
/* 813FC2CC | 48 13 99 B5 */	bl OSGetTime
/* 813FC2D0 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 813FC2D4 | 48 13 9C 91 */	bl OSTicksToCalendarTime
/* 813FC2D8 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 813FC2DC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FC2E0 | 80 E1 00 20 */	lwz r7, 0x20(r1)
/* 813FC2E4 | 38 BE 00 71 */	addi r5, r30, 0x71
/* 813FC2E8 | 38 C4 00 01 */	addi r6, r4, 0x1
/* 813FC2EC | 38 80 00 05 */	li r4, 0x5
/* 813FC2F0 | 4C C6 31 82 */	crclr cr1eq
/* 813FC2F4 | 48 20 46 B5 */	bl snprintf
/* 813FC2F8 | 38 9F BD 38 */	addi r4, r31, mRequestNum__Q33ipl8parental8Parental@l
/* 813FC2FC | 38 61 00 0C */	addi r3, r1, 0xc
/* 813FC300 | 38 84 00 04 */	addi r4, r4, 0x4
/* 813FC304 | 38 A0 00 04 */	li r5, 0x4
/* 813FC308 | 4B F3 3F 29 */	bl memcpy
/* 813FC30C | 4B FF FE 81 */	bl Crc32Init__Q33ipl8parental8ParentalFv
/* 813FC310 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FC314 | 38 80 00 08 */	li r4, 0x8
/* 813FC318 | 4B FF FE F1 */	bl CalcCrc32__Q33ipl8parental8ParentalFPCUcUl
/* 813FC31C | 68 63 AA AA */	xori r3, r3, 0xaaaa
/* 813FC320 | 3C 80 00 02 */	lis r4, 0x2
/* 813FC324 | 38 E3 14 C1 */	addi r7, r3, 0x14c1
/* 813FC328 | 38 AD 91 A5 */	li r5, lbl_816971E5@sda21
/* 813FC32C | 38 C4 86 A0 */	subi r6, r4, 0x7960
/* 813FC330 | 38 6D AB BF */	li r3, mMasterKey__Q33ipl8parental8Parental@sda21
/* 813FC334 | 7C 07 33 96 */	divwu r0, r7, r6
/* 813FC338 | 38 80 00 06 */	li r4, 0x6
/* 813FC33C | 7C 00 31 D6 */	mullw r0, r0, r6
/* 813FC340 | 7C C0 38 50 */	subf r6, r0, r7
/* 813FC344 | 4C C6 31 82 */	crclr cr1eq
/* 813FC348 | 48 20 46 61 */	bl snprintf
/* 813FC34C | 38 7E 00 7A */	addi r3, r30, 0x7a
/* 813FC350 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813FC354 | 4C C6 31 82 */	crclr cr1eq
/* 813FC358 | 48 13 23 49 */	bl OSReport
/* 813FC35C | 39 61 00 50 */	addi r11, r1, 0x50
/* 813FC360 | 48 1F D1 B5 */	bl _restgpr_29
/* 813FC364 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 813FC368 | 7C 08 03 A6 */	mtlr r0
/* 813FC36C | 38 21 00 50 */	addi r1, r1, 0x50
/* 813FC370 | 4E 80 00 20 */	blr
.endfn makeMasterkey__Q33ipl8parental8ParentalFv

# .text:0x920 | 0x813FC374 | size: 0x28
# ipl::parental::Parental::getRequestNum()
.fn getRequestNum__Q33ipl8parental8ParentalFv, global
/* 813FC374 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FC378 | 7C 08 02 A6 */	mflr r0
/* 813FC37C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FC380 | 4B FF FE C9 */	bl makeMasterkey__Q33ipl8parental8ParentalFv
/* 813FC384 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FC388 | 3C 60 81 0C */	lis r3, mRequestNum__Q33ipl8parental8Parental@ha
/* 813FC38C | 38 63 BD 38 */	addi r3, r3, mRequestNum__Q33ipl8parental8Parental@l
/* 813FC390 | 7C 08 03 A6 */	mtlr r0
/* 813FC394 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FC398 | 4E 80 00 20 */	blr
.endfn getRequestNum__Q33ipl8parental8ParentalFv

# 0x81657950..0x81657AA0 | size: 0x150
.data
.balign 8

# .data:0x0 | 0x81657950 | size: 0x21
.obj lbl_81657950, global
	.string "SCGetParentalControl Failed! %d\n"
.endobj lbl_81657950

# .data:0x21 | 0x81657971 | size: 0x1E
.obj lbl_81657971, global
	.string "SCSetParentalControl Failed!\n"
.endobj lbl_81657971

# .data:0x3F | 0x8165798F | size: 0x111
.obj lbl_8165798F, global
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x53432046
	.4byte 0x4C555348
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x21212121
	.4byte 0x0A006D61
	.4byte 0x636E756D
	.4byte 0x3A257520
	.4byte 0x203A2573
	.4byte 0x0A002530
	.4byte 0x32752530
	.4byte 0x32750064
	.4byte 0x6174612B
	.4byte 0x7265713A
	.4byte 0x25730A00
	.4byte 0x666C6167
	.4byte 0x733A2564
	.4byte 0x0A007261
	.4byte 0x74696E67
	.4byte 0x3A25640A
	.4byte 0x00706173
	.4byte 0x73776F72
	.4byte 0x643A2573
	.4byte 0x0A007365
	.4byte 0x63726574
	.4byte 0x51756573
	.4byte 0x74696F6E
	.4byte 0x3A25640A
	.4byte 0x00736563
	.4byte 0x72657441
	.4byte 0x6E737765
	.4byte 0x723A2573
	.4byte 0x0A007365
	.4byte 0x63726574
	.4byte 0x416E7377
	.4byte 0x65724C65
	.4byte 0x6E677468
	.4byte 0x3A25640A
	.4byte 0x006E6574
	.4byte 0x20636F6E
	.4byte 0x74656E74
	.4byte 0x73207265
	.4byte 0x73747269
	.4byte 0x6374696F
	.4byte 0x6E733A25
	.4byte 0x3032780A
	.4byte 0x00777777
	.4byte 0x20636861
	.4byte 0x6E6E656C
	.4byte 0x20726573
	.4byte 0x74726963
	.4byte 0x74696F6E
	.4byte 0x20203A25
	.4byte 0x640A0072
	.4byte 0x65717565
	.4byte 0x73744E75
	.4byte 0x6D3A2573
	.4byte 0x0A006D61
	.4byte 0x73746572
	.4byte 0x6B65793A
	.4byte 0x25730A00
	.4byte 0x636F756E
	.4byte 0x7472793A
	.4byte 0x2025640A
	.4byte 0x00000000
	.byte 0x00
.endobj lbl_8165798F

# 0x816971E0..0x816971F0 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816971E0 | size: 0x5
.obj lbl_816971E0, global
	.string "%08u"
.endobj lbl_816971E0

# .sdata:0x5 | 0x816971E5 | size: 0xB
.obj lbl_816971E5, global
	.4byte 0x25303575
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj lbl_816971E5

# 0x81698BF8..0x81698C08 | size: 0x10
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698BF8 | size: 0x4
# ipl::parental::Parental::mStackPass
.obj mStackPass__Q33ipl8parental8Parental, global
	.skip 0x4
.endobj mStackPass__Q33ipl8parental8Parental

# .sbss:0x4 | 0x81698BFC | size: 0x1
# ipl::parental::Parental::mMistake
.obj mMistake__Q33ipl8parental8Parental, global
	.skip 0x1
.endobj mMistake__Q33ipl8parental8Parental

# .sbss:0x5 | 0x81698BFD | size: 0x2
.obj gap_12_81698BFD_sbss, global
.hidden gap_12_81698BFD_sbss
	.skip 0x2
.endobj gap_12_81698BFD_sbss

# .sbss:0x7 | 0x81698BFF | size: 0x9
# ipl::parental::Parental::mMasterKey
.obj mMasterKey__Q33ipl8parental8Parental, global
	.skip 0x9
.endobj mMasterKey__Q33ipl8parental8Parental
