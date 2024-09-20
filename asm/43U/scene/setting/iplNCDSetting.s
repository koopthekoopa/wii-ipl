.include "macros.inc"
.file "iplNCDSetting.cpp"

# 0x810B83F0..0x810BBC90 | size: 0x38A0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810B83F0 | size: 0x158
# ipl::scene::m_AOSSConfig
.obj m_AOSSConfig__Q23ipl5scene, global
	.skip 0x158
.endobj m_AOSSConfig__Q23ipl5scene

# .bss:0x158 | 0x810B8548 | size: 0x70
# ipl::scene::m_RakuConfig
.obj m_RakuConfig__Q23ipl5scene, global
	.skip 0x70
.endobj m_RakuConfig__Q23ipl5scene

# .bss:0x1C8 | 0x810B85B8 | size: 0x1B5C
# ipl::ncd::NCDSetting::mConfig
.obj mConfig__Q33ipl3ncd10NCDSetting, global
	.skip 0x1B5C
.endobj mConfig__Q33ipl3ncd10NCDSetting

# .bss:0x1D24 | 0x810BA114 | size: 0x1B5C
# ipl::ncd::NCDSetting::mSaveConfig
.obj mSaveConfig__Q33ipl3ncd10NCDSetting, global
	.skip 0x1B5C
.endobj mSaveConfig__Q33ipl3ncd10NCDSetting

# .bss:0x3880 | 0x810BBC70 | size: 0x20
# ipl::ncd::NCDSetting::mMac
.obj mMac__Q33ipl3ncd10NCDSetting, global
	.skip 0x20
.endobj mMac__Q33ipl3ncd10NCDSetting

# 0x813F9FC8..0x813FBA54 | size: 0x1A8C
.text
.balign 4

# .text:0x0 | 0x813F9FC8 | size: 0x58
# ipl::ncd::NCDSetting::init()
.fn init__Q33ipl3ncd10NCDSettingFv, global
/* 813F9FC8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813F9FCC | 7C 08 02 A6 */	mflr r0
/* 813F9FD0 | 38 80 00 00 */	li r4, 0x0
/* 813F9FD4 | 38 A0 1B 5C */	li r5, 0x1b5c
/* 813F9FD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813F9FDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813F9FE0 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813F9FE4 | 38 7F 85 B8 */	addi r3, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813F9FE8 | 4B F3 63 4D */	bl memset
/* 813F9FEC | 38 7F 85 B8 */	addi r3, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813F9FF0 | 48 09 83 B1 */	bl NCDReadConfig
/* 813F9FF4 | 3C A0 81 65 */	lis r5, lbl_81657898@ha
/* 813F9FF8 | 7C 64 1B 78 */	mr r4, r3
/* 813F9FFC | 38 65 78 98 */	addi r3, r5, lbl_81657898@l
/* 813FA000 | 4C C6 31 82 */	crclr cr1eq
/* 813FA004 | 48 13 46 9D */	bl OSReport
/* 813FA008 | 48 00 17 6D */	bl makeMacAddr__Q33ipl3ncd10NCDSettingFv
/* 813FA00C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FA010 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FA014 | 7C 08 03 A6 */	mtlr r0
/* 813FA018 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FA01C | 4E 80 00 20 */	blr
.endfn init__Q33ipl3ncd10NCDSettingFv

# .text:0x58 | 0x813FA020 | size: 0x8
# ipl::ncd::NCDSetting::initSetID(unsigned short)
.fn initSetID__Q33ipl3ncd10NCDSettingFUs, global
/* 813FA020 | B0 6D AB B0 */	sth r3, lbl_81698BF0@sda21(r0)
/* 813FA024 | 4E 80 00 20 */	blr
.endfn initSetID__Q33ipl3ncd10NCDSettingFUs

# .text:0x60 | 0x813FA028 | size: 0xAC
# ipl::ncd::NCDSetting::checkFlag(int)
.fn checkFlag__Q33ipl3ncd10NCDSettingFi, global
/* 813FA028 | 1C A3 09 1C */	mulli r5, r3, 0x91c
/* 813FA02C | 3C 80 81 0C */	lis r4, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA030 | 38 60 00 00 */	li r3, 0x0
/* 813FA034 | 38 84 85 B8 */	addi r4, r4, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA038 | 7C 84 2A 14 */	add r4, r4, r5
/* 813FA03C | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 813FA040 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 813FA044 | 41 82 00 0C */	beq .L_813FA050
/* 813FA048 | 38 60 00 01 */	li r3, 0x1
/* 813FA04C | 4E 80 00 20 */	blr
.L_813FA050:
/* 813FA050 | A0 04 07 EC */	lhz r0, 0x7ec(r4)
/* 813FA054 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FA058 | 40 82 00 24 */	bne .L_813FA07C
/* 813FA05C | 88 04 07 CA */	lbz r0, 0x7ca(r4)
/* 813FA060 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FA064 | 40 82 00 18 */	bne .L_813FA07C
/* 813FA068 | A0 04 07 F0 */	lhz r0, 0x7f0(r4)
/* 813FA06C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FA070 | 40 82 00 0C */	bne .L_813FA07C
/* 813FA074 | 38 60 00 00 */	li r3, 0x0
/* 813FA078 | 4E 80 00 20 */	blr
.L_813FA07C:
/* 813FA07C | 3C 80 81 0C */	lis r4, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA080 | 38 84 85 B8 */	addi r4, r4, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA084 | 7C 84 2A 14 */	add r4, r4, r5
/* 813FA088 | 88 04 07 CA */	lbz r0, 0x7ca(r4)
/* 813FA08C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 813FA090 | 41 82 00 34 */	beq .L_813FA0C4
/* 813FA094 | 40 80 00 14 */	bge .L_813FA0A8
/* 813FA098 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FA09C | 41 82 00 18 */	beq .L_813FA0B4
/* 813FA0A0 | 40 80 00 1C */	bge .L_813FA0BC
/* 813FA0A4 | 4E 80 00 20 */	blr
.L_813FA0A8:
/* 813FA0A8 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813FA0AC | 4C 80 00 20 */	bgelr
/* 813FA0B0 | 48 00 00 1C */	b .L_813FA0CC
.L_813FA0B4:
/* 813FA0B4 | 38 60 00 02 */	li r3, 0x2
/* 813FA0B8 | 4E 80 00 20 */	blr
.L_813FA0BC:
/* 813FA0BC | 38 60 00 03 */	li r3, 0x3
/* 813FA0C0 | 4E 80 00 20 */	blr
.L_813FA0C4:
/* 813FA0C4 | 38 60 00 04 */	li r3, 0x4
/* 813FA0C8 | 4E 80 00 20 */	blr
.L_813FA0CC:
/* 813FA0CC | 38 60 00 05 */	li r3, 0x5
/* 813FA0D0 | 4E 80 00 20 */	blr
.endfn checkFlag__Q33ipl3ncd10NCDSettingFi

# .text:0x10C | 0x813FA0D4 | size: 0x8
# ipl::ncd::NCDSetting::checkThisFlag()
.fn checkThisFlag__Q33ipl3ncd10NCDSettingFv, global
/* 813FA0D4 | A0 6D AB B0 */	lhz r3, lbl_81698BF0@sda21(r0)
/* 813FA0D8 | 4B FF FF 50 */	b checkFlag__Q33ipl3ncd10NCDSettingFi
.endfn checkThisFlag__Q33ipl3ncd10NCDSettingFv

# .text:0x114 | 0x813FA0DC | size: 0x50
# ipl::ncd::NCDSetting::checkAllFlag()
.fn checkAllFlag__Q33ipl3ncd10NCDSettingFv, global
/* 813FA0DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FA0E0 | 7C 08 02 A6 */	mflr r0
/* 813FA0E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FA0E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FA0EC | 3B E0 00 00 */	li r31, 0x0
.L_813FA0F0:
/* 813FA0F0 | 7F E3 FB 78 */	mr r3, r31
/* 813FA0F4 | 4B FF FF 35 */	bl checkFlag__Q33ipl3ncd10NCDSettingFi
/* 813FA0F8 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813FA0FC | 41 82 00 0C */	beq .L_813FA108
/* 813FA100 | 38 60 00 01 */	li r3, 0x1
/* 813FA104 | 48 00 00 14 */	b .L_813FA118
.L_813FA108:
/* 813FA108 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813FA10C | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 813FA110 | 41 80 FF E0 */	blt .L_813FA0F0
/* 813FA114 | 38 60 00 00 */	li r3, 0x0
.L_813FA118:
/* 813FA118 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FA11C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FA120 | 7C 08 03 A6 */	mtlr r0
/* 813FA124 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FA128 | 4E 80 00 20 */	blr
.endfn checkAllFlag__Q33ipl3ncd10NCDSettingFv

# .text:0x164 | 0x813FA12C | size: 0x20
# ipl::ncd::NCDSetting::checkConnectTestFlag()
.fn checkConnectTestFlag__Q33ipl3ncd10NCDSettingFv, global
/* 813FA12C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA130 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA134 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA138 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA13C | 7C 63 02 14 */	add r3, r3, r0
/* 813FA140 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FA144 | 54 03 DF FE */	extrwi r3, r0, 1, 26
/* 813FA148 | 4E 80 00 20 */	blr
.endfn checkConnectTestFlag__Q33ipl3ncd10NCDSettingFv

# .text:0x184 | 0x813FA14C | size: 0x20
# ipl::ncd::NCDSetting::checkDHCPFlag()
.fn checkDHCPFlag__Q33ipl3ncd10NCDSettingFv, global
/* 813FA14C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA150 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA154 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA158 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA15C | 7C 63 02 14 */	add r3, r3, r0
/* 813FA160 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FA164 | 54 03 FF FE */	extrwi r3, r0, 1, 30
/* 813FA168 | 4E 80 00 20 */	blr
.endfn checkDHCPFlag__Q33ipl3ncd10NCDSettingFv

# .text:0x1A4 | 0x813FA16C | size: 0x50
# ipl::ncd::NCDSetting::checkDNSFlag()
.fn checkDNSFlag__Q33ipl3ncd10NCDSettingFv, global
/* 813FA16C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FA170 | 7C 08 02 A6 */	mflr r0
/* 813FA174 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA178 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FA17C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA180 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA184 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA188 | 7C 63 02 14 */	add r3, r3, r0
/* 813FA18C | 88 63 00 08 */	lbz r3, 0x8(r3)
/* 813FA190 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 813FA194 | 41 82 00 0C */	beq .L_813FA1A0
/* 813FA198 | 54 63 F7 FE */	extrwi r3, r3, 1, 29
/* 813FA19C | 48 00 00 10 */	b .L_813FA1AC
.L_813FA1A0:
/* 813FA1A0 | 38 60 00 00 */	li r3, 0x0
/* 813FA1A4 | 48 00 08 79 */	bl setDNSFlag__Q33ipl3ncd10NCDSettingFUc
/* 813FA1A8 | 38 60 00 00 */	li r3, 0x0
.L_813FA1AC:
/* 813FA1AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FA1B0 | 7C 08 03 A6 */	mtlr r0
/* 813FA1B4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FA1B8 | 4E 80 00 20 */	blr
.endfn checkDNSFlag__Q33ipl3ncd10NCDSettingFv

# .text:0x1F4 | 0x813FA1BC | size: 0x160
# ipl::ncd::NCDSetting::checkDHCP_()
.fn checkDHCP___Q33ipl3ncd10NCDSettingFv, global
/* 813FA1BC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FA1C0 | 7C 08 02 A6 */	mflr r0
/* 813FA1C4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FA1C8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FA1CC | 4B FF FF A1 */	bl checkDNSFlag__Q33ipl3ncd10NCDSettingFv
/* 813FA1D0 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813FA1D4 | 41 82 00 48 */	beq .L_813FA21C
/* 813FA1D8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA1DC | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA1E0 | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA1E4 | 38 80 00 00 */	li r4, 0x0
/* 813FA1E8 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA1EC | 38 A0 00 04 */	li r5, 0x4
/* 813FA1F0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FA1F4 | 38 63 00 18 */	addi r3, r3, 0x18
/* 813FA1F8 | 4B F3 61 3D */	bl memset
/* 813FA1FC | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA200 | 38 80 00 00 */	li r4, 0x0
/* 813FA204 | 38 A0 00 04 */	li r5, 0x4
/* 813FA208 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA20C | 7C 7F 02 14 */	add r3, r31, r0
/* 813FA210 | 38 63 00 1C */	addi r3, r3, 0x1c
/* 813FA214 | 4B F3 61 21 */	bl memset
/* 813FA218 | 48 00 00 88 */	b .L_813FA2A0
.L_813FA21C:
/* 813FA21C | A0 8D AB B0 */	lhz r4, lbl_81698BF0@sda21(r0)
/* 813FA220 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA224 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA228 | 38 00 00 04 */	li r0, 0x4
/* 813FA22C | 1C 84 09 1C */	mulli r4, r4, 0x91c
/* 813FA230 | 38 C0 00 00 */	li r6, 0x0
/* 813FA234 | 7C A3 22 14 */	add r5, r3, r4
/* 813FA238 | 7C 09 03 A6 */	mtctr r0
.L_813FA23C:
/* 813FA23C | 7C 65 32 14 */	add r3, r5, r6
/* 813FA240 | 88 03 00 18 */	lbz r0, 0x18(r3)
/* 813FA244 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FA248 | 40 82 00 0C */	bne .L_813FA254
/* 813FA24C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 813FA250 | 42 00 FF EC */	bdnz .L_813FA23C
.L_813FA254:
/* 813FA254 | 2C 06 00 04 */	cmpwi r6, 0x4
/* 813FA258 | 40 82 00 48 */	bne .L_813FA2A0
/* 813FA25C | 38 00 00 04 */	li r0, 0x4
/* 813FA260 | 38 C0 00 00 */	li r6, 0x0
/* 813FA264 | 7C 09 03 A6 */	mtctr r0
.L_813FA268:
/* 813FA268 | 7C 65 32 14 */	add r3, r5, r6
/* 813FA26C | 88 03 00 1C */	lbz r0, 0x1c(r3)
/* 813FA270 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FA274 | 40 82 00 0C */	bne .L_813FA280
/* 813FA278 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 813FA27C | 42 00 FF EC */	bdnz .L_813FA268
.L_813FA280:
/* 813FA280 | 2C 06 00 04 */	cmpwi r6, 0x4
/* 813FA284 | 40 82 00 1C */	bne .L_813FA2A0
/* 813FA288 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA28C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA290 | 7C 63 22 14 */	add r3, r3, r4
/* 813FA294 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FA298 | 60 00 00 04 */	ori r0, r0, 0x4
/* 813FA29C | 98 03 00 08 */	stb r0, 0x8(r3)
.L_813FA2A0:
/* 813FA2A0 | 4B FF FE AD */	bl checkDHCPFlag__Q33ipl3ncd10NCDSettingFv
/* 813FA2A4 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813FA2A8 | 41 82 00 60 */	beq .L_813FA308
/* 813FA2AC | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA2B0 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA2B4 | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA2B8 | 38 80 00 00 */	li r4, 0x0
/* 813FA2BC | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA2C0 | 38 A0 00 04 */	li r5, 0x4
/* 813FA2C4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FA2C8 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813FA2CC | 4B F3 60 69 */	bl memset
/* 813FA2D0 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA2D4 | 38 80 00 00 */	li r4, 0x0
/* 813FA2D8 | 38 A0 00 04 */	li r5, 0x4
/* 813FA2DC | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA2E0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FA2E4 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813FA2E8 | 4B F3 60 4D */	bl memset
/* 813FA2EC | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA2F0 | 38 80 00 00 */	li r4, 0x0
/* 813FA2F4 | 38 A0 00 04 */	li r5, 0x4
/* 813FA2F8 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA2FC | 7C 7F 02 14 */	add r3, r31, r0
/* 813FA300 | 38 63 00 14 */	addi r3, r3, 0x14
/* 813FA304 | 4B F3 60 31 */	bl memset
.L_813FA308:
/* 813FA308 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FA30C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FA310 | 7C 08 03 A6 */	mtlr r0
/* 813FA314 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FA318 | 4E 80 00 20 */	blr
.endfn checkDHCP___Q33ipl3ncd10NCDSettingFv

# .text:0x354 | 0x813FA31C | size: 0x1C
# ipl::ncd::NCDSetting::checkProxyFlag()
.fn checkProxyFlag__Q33ipl3ncd10NCDSettingFv, global
/* 813FA31C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA320 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA324 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA328 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA32C | 7C 63 02 14 */	add r3, r3, r0
/* 813FA330 | 88 63 00 2C */	lbz r3, 0x2c(r3)
/* 813FA334 | 4E 80 00 20 */	blr
.endfn checkProxyFlag__Q33ipl3ncd10NCDSettingFv

# .text:0x370 | 0x813FA338 | size: 0x1C
# ipl::ncd::NCDSetting::checkBasic()
.fn checkBasic__Q33ipl3ncd10NCDSettingFv, global
/* 813FA338 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA33C | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA340 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA344 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA348 | 7C 63 02 14 */	add r3, r3, r0
/* 813FA34C | 88 63 00 2D */	lbz r3, 0x2d(r3)
/* 813FA350 | 4E 80 00 20 */	blr
.endfn checkBasic__Q33ipl3ncd10NCDSettingFv

# .text:0x38C | 0x813FA354 | size: 0x2C
# ipl::ncd::NCDSetting::checkChangeEnable()
.fn checkChangeEnable__Q33ipl3ncd10NCDSettingFv, global
/* 813FA354 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA358 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA35C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA360 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA364 | 7C 63 02 14 */	add r3, r3, r0
/* 813FA368 | 88 63 07 CA */	lbz r3, 0x7ca(r3)
/* 813FA36C | 38 03 00 FF */	addi r0, r3, 0xff
/* 813FA370 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 813FA374 | 20 00 00 01 */	subfic r0, r0, 0x1
/* 813FA378 | 54 03 0F FE */	srwi r3, r0, 31
/* 813FA37C | 4E 80 00 20 */	blr
.endfn checkChangeEnable__Q33ipl3ncd10NCDSettingFv

# .text:0x3B8 | 0x813FA380 | size: 0x104
# ipl::ncd::NCDSetting::convert16toASCII(char, char, unsigned char*)
.fn convert16toASCII__Q33ipl3ncd10NCDSettingFccPUc, global
/* 813FA380 | 7C 66 07 74 */	extsb r6, r3
/* 813FA384 | 38 E0 00 01 */	li r7, 0x1
/* 813FA388 | 2C 06 00 30 */	cmpwi r6, 0x30
/* 813FA38C | 41 80 00 1C */	blt .L_813FA3A8
/* 813FA390 | 2C 06 00 39 */	cmpwi r6, 0x39
/* 813FA394 | 41 81 00 14 */	bgt .L_813FA3A8
/* 813FA398 | 38 06 FF D0 */	subi r0, r6, 0x30
/* 813FA39C | 54 00 26 36 */	clrlslwi r0, r0, 28, 4
/* 813FA3A0 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 813FA3A4 | 48 00 00 50 */	b .L_813FA3F4
.L_813FA3A8:
/* 813FA3A8 | 7C 66 07 74 */	extsb r6, r3
/* 813FA3AC | 2C 06 00 41 */	cmpwi r6, 0x41
/* 813FA3B0 | 41 80 00 1C */	blt .L_813FA3CC
/* 813FA3B4 | 2C 06 00 46 */	cmpwi r6, 0x46
/* 813FA3B8 | 41 81 00 14 */	bgt .L_813FA3CC
/* 813FA3BC | 38 06 FF C9 */	subi r0, r6, 0x37
/* 813FA3C0 | 54 00 26 36 */	clrlslwi r0, r0, 28, 4
/* 813FA3C4 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 813FA3C8 | 48 00 00 2C */	b .L_813FA3F4
.L_813FA3CC:
/* 813FA3CC | 7C 63 07 74 */	extsb r3, r3
/* 813FA3D0 | 2C 03 00 61 */	cmpwi r3, 0x61
/* 813FA3D4 | 41 80 00 1C */	blt .L_813FA3F0
/* 813FA3D8 | 2C 03 00 66 */	cmpwi r3, 0x66
/* 813FA3DC | 41 81 00 14 */	bgt .L_813FA3F0
/* 813FA3E0 | 38 03 FF A9 */	subi r0, r3, 0x57
/* 813FA3E4 | 54 00 26 36 */	clrlslwi r0, r0, 28, 4
/* 813FA3E8 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 813FA3EC | 48 00 00 08 */	b .L_813FA3F4
.L_813FA3F0:
/* 813FA3F0 | 38 E0 00 00 */	li r7, 0x0
.L_813FA3F4:
/* 813FA3F4 | 7C 80 07 74 */	extsb r0, r4
/* 813FA3F8 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 813FA3FC | 41 80 00 24 */	blt .L_813FA420
/* 813FA400 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 813FA404 | 41 81 00 1C */	bgt .L_813FA420
/* 813FA408 | 38 04 FF D0 */	subi r0, r4, 0x30
/* 813FA40C | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 813FA410 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 813FA414 | 7C 03 02 14 */	add r0, r3, r0
/* 813FA418 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 813FA41C | 48 00 00 60 */	b .L_813FA47C
.L_813FA420:
/* 813FA420 | 7C 80 07 74 */	extsb r0, r4
/* 813FA424 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 813FA428 | 41 80 00 24 */	blt .L_813FA44C
/* 813FA42C | 2C 00 00 46 */	cmpwi r0, 0x46
/* 813FA430 | 41 81 00 1C */	bgt .L_813FA44C
/* 813FA434 | 38 04 FF C9 */	subi r0, r4, 0x37
/* 813FA438 | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 813FA43C | 54 00 06 3E */	clrlwi r0, r0, 24
/* 813FA440 | 7C 03 02 14 */	add r0, r3, r0
/* 813FA444 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 813FA448 | 48 00 00 34 */	b .L_813FA47C
.L_813FA44C:
/* 813FA44C | 7C 80 07 74 */	extsb r0, r4
/* 813FA450 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 813FA454 | 41 80 00 24 */	blt .L_813FA478
/* 813FA458 | 2C 00 00 66 */	cmpwi r0, 0x66
/* 813FA45C | 41 81 00 1C */	bgt .L_813FA478
/* 813FA460 | 38 04 FF A9 */	subi r0, r4, 0x57
/* 813FA464 | 88 65 00 00 */	lbz r3, 0x0(r5)
/* 813FA468 | 54 00 06 3E */	clrlwi r0, r0, 24
/* 813FA46C | 7C 03 02 14 */	add r0, r3, r0
/* 813FA470 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 813FA474 | 48 00 00 08 */	b .L_813FA47C
.L_813FA478:
/* 813FA478 | 38 E0 00 00 */	li r7, 0x0
.L_813FA47C:
/* 813FA47C | 7C E3 3B 78 */	mr r3, r7
/* 813FA480 | 4E 80 00 20 */	blr
.endfn convert16toASCII__Q33ipl3ncd10NCDSettingFccPUc

# .text:0x4BC | 0x813FA484 | size: 0x1CC
# ipl::ncd::NCDSetting::checkWEPKey(char*)
.fn checkWEPKey__Q33ipl3ncd10NCDSettingFPc, global
/* 813FA484 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813FA488 | 7C 08 02 A6 */	mflr r0
/* 813FA48C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813FA490 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FA494 | 48 1F F0 31 */	bl _savegpr_28
/* 813FA498 | 7C 7C 1B 78 */	mr r28, r3
/* 813FA49C | 48 1F EA 61 */	bl strlen
/* 813FA4A0 | 7C 7F 1B 78 */	mr r31, r3
/* 813FA4A4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FA4A8 | 3B C0 FF FF */	li r30, -0x1
/* 813FA4AC | 38 80 00 00 */	li r4, 0x0
/* 813FA4B0 | 38 A0 00 0E */	li r5, 0xe
/* 813FA4B4 | 4B F3 5E 81 */	bl memset
/* 813FA4B8 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813FA4BC | 40 82 00 0C */	bne .L_813FA4C8
/* 813FA4C0 | 3B C0 00 00 */	li r30, 0x0
/* 813FA4C4 | 48 00 01 70 */	b .L_813FA634
.L_813FA4C8:
/* 813FA4C8 | 48 00 10 A5 */	bl getPrivacyMode__Q33ipl3ncd10NCDSettingFv
/* 813FA4CC | 54 60 04 3E */	clrlwi r0, r3, 16
/* 813FA4D0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 813FA4D4 | 40 81 00 84 */	ble .L_813FA558
/* 813FA4D8 | 2C 1F 00 08 */	cmpwi r31, 0x8
/* 813FA4DC | 41 80 00 14 */	blt .L_813FA4F0
/* 813FA4E0 | 2C 1F 00 40 */	cmpwi r31, 0x40
/* 813FA4E4 | 40 80 00 0C */	bge .L_813FA4F0
/* 813FA4E8 | 7F FE FB 78 */	mr r30, r31
/* 813FA4EC | 48 00 01 48 */	b .L_813FA634
.L_813FA4F0:
/* 813FA4F0 | 2C 1F 00 40 */	cmpwi r31, 0x40
/* 813FA4F4 | 40 82 01 40 */	bne .L_813FA634
/* 813FA4F8 | 38 00 00 40 */	li r0, 0x40
/* 813FA4FC | 7C 09 03 A6 */	mtctr r0
.L_813FA500:
/* 813FA500 | 88 7C 00 00 */	lbz r3, 0x0(r28)
/* 813FA504 | 7C 60 07 74 */	extsb r0, r3
/* 813FA508 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 813FA50C | 41 80 00 0C */	blt .L_813FA518
/* 813FA510 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 813FA514 | 40 81 00 34 */	ble .L_813FA548
.L_813FA518:
/* 813FA518 | 7C 60 07 74 */	extsb r0, r3
/* 813FA51C | 2C 00 00 41 */	cmpwi r0, 0x41
/* 813FA520 | 41 80 00 0C */	blt .L_813FA52C
/* 813FA524 | 2C 00 00 46 */	cmpwi r0, 0x46
/* 813FA528 | 40 81 00 20 */	ble .L_813FA548
.L_813FA52C:
/* 813FA52C | 7C 60 07 74 */	extsb r0, r3
/* 813FA530 | 2C 00 00 61 */	cmpwi r0, 0x61
/* 813FA534 | 41 80 00 0C */	blt .L_813FA540
/* 813FA538 | 2C 00 00 66 */	cmpwi r0, 0x66
/* 813FA53C | 40 81 00 0C */	ble .L_813FA548
.L_813FA540:
/* 813FA540 | 38 60 FF FF */	li r3, -0x1
/* 813FA544 | 48 00 00 F4 */	b .L_813FA638
.L_813FA548:
/* 813FA548 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813FA54C | 42 00 FF B4 */	bdnz .L_813FA500
/* 813FA550 | 7F FE FB 78 */	mr r30, r31
/* 813FA554 | 48 00 00 E0 */	b .L_813FA634
.L_813FA558:
/* 813FA558 | 2C 1F 00 0A */	cmpwi r31, 0xa
/* 813FA55C | 41 82 00 0C */	beq .L_813FA568
/* 813FA560 | 2C 1F 00 1A */	cmpwi r31, 0x1a
/* 813FA564 | 40 82 00 A0 */	bne .L_813FA604
.L_813FA568:
/* 813FA568 | 3B C0 00 00 */	li r30, 0x0
/* 813FA56C | 3B A0 00 00 */	li r29, 0x0
/* 813FA570 | 48 00 00 3C */	b .L_813FA5AC
.L_813FA574:
/* 813FA574 | 7C 9C F2 14 */	add r4, r28, r30
/* 813FA578 | 7C 7C F0 AE */	lbzx r3, r28, r30
/* 813FA57C | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 813FA580 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813FA584 | 7C A5 EA 14 */	add r5, r5, r29
/* 813FA588 | 7C 63 07 74 */	extsb r3, r3
/* 813FA58C | 7C 04 07 74 */	extsb r4, r0
/* 813FA590 | 4B FF FD F1 */	bl convert16toASCII__Q33ipl3ncd10NCDSettingFccPUc
/* 813FA594 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FA598 | 40 82 00 0C */	bne .L_813FA5A4
/* 813FA59C | 38 60 FF FF */	li r3, -0x1
/* 813FA5A0 | 48 00 00 98 */	b .L_813FA638
.L_813FA5A4:
/* 813FA5A4 | 3B DE 00 02 */	addi r30, r30, 0x2
/* 813FA5A8 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_813FA5AC:
/* 813FA5AC | 7C 1E F8 00 */	cmpw r30, r31
/* 813FA5B0 | 41 80 FF C4 */	blt .L_813FA574
/* 813FA5B4 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 813FA5B8 | 41 82 00 0C */	beq .L_813FA5C4
/* 813FA5BC | 2C 1E 00 1A */	cmpwi r30, 0x1a
/* 813FA5C0 | 40 82 00 3C */	bne .L_813FA5FC
.L_813FA5C4:
/* 813FA5C4 | 7F 83 E3 78 */	mr r3, r28
/* 813FA5C8 | 7F C5 F3 78 */	mr r5, r30
/* 813FA5CC | 38 81 00 08 */	addi r4, r1, 0x8
/* 813FA5D0 | 4B F3 5C 61 */	bl memcpy
/* 813FA5D4 | A0 6D AB B0 */	lhz r3, lbl_81698BF0@sda21(r0)
/* 813FA5D8 | 3C A0 81 0C */	lis r5, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA5DC | 38 A5 85 B8 */	addi r5, r5, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA5E0 | 38 C0 00 01 */	li r6, 0x1
/* 813FA5E4 | 1C 83 09 1C */	mulli r4, r3, 0x91c
/* 813FA5E8 | 7F C0 0E 70 */	srawi r0, r30, 1
/* 813FA5EC | 7C 60 01 94 */	addze r3, r0
/* 813FA5F0 | 7C 85 22 14 */	add r4, r5, r4
/* 813FA5F4 | 98 C4 07 F6 */	stb r6, 0x7f6(r4)
/* 813FA5F8 | 48 00 00 40 */	b .L_813FA638
.L_813FA5FC:
/* 813FA5FC | 38 60 FF FF */	li r3, -0x1
/* 813FA600 | 48 00 00 38 */	b .L_813FA638
.L_813FA604:
/* 813FA604 | 2C 1F 00 05 */	cmpwi r31, 0x5
/* 813FA608 | 41 82 00 0C */	beq .L_813FA614
/* 813FA60C | 2C 1F 00 0D */	cmpwi r31, 0xd
/* 813FA610 | 40 82 00 24 */	bne .L_813FA634
.L_813FA614:
/* 813FA614 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA618 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA61C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA620 | 38 80 00 00 */	li r4, 0x0
/* 813FA624 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA628 | 7F FE FB 78 */	mr r30, r31
/* 813FA62C | 7C 63 02 14 */	add r3, r3, r0
/* 813FA630 | 98 83 07 F6 */	stb r4, 0x7f6(r3)
.L_813FA634:
/* 813FA634 | 7F C3 F3 78 */	mr r3, r30
.L_813FA638:
/* 813FA638 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FA63C | 48 1F EE D5 */	bl _restgpr_28
/* 813FA640 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813FA644 | 7C 08 03 A6 */	mtlr r0
/* 813FA648 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813FA64C | 4E 80 00 20 */	blr
.endfn checkWEPKey__Q33ipl3ncd10NCDSettingFPc

# .text:0x688 | 0x813FA650 | size: 0xF4
# ipl::ncd::NCDSetting::checkProxy(char*)
.fn checkProxy__Q33ipl3ncd10NCDSettingFPc, global
/* 813FA650 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FA654 | 7C 08 02 A6 */	mflr r0
/* 813FA658 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FA65C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FA660 | 7C 7F 1B 78 */	mr r31, r3
/* 813FA664 | 48 1F E8 99 */	bl strlen
/* 813FA668 | 2C 03 01 00 */	cmpwi r3, 0x100
/* 813FA66C | 41 80 00 0C */	blt .L_813FA678
/* 813FA670 | 38 60 00 00 */	li r3, 0x0
/* 813FA674 | 48 00 00 BC */	b .L_813FA730
.L_813FA678:
/* 813FA678 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 813FA67C | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 813FA680 | 40 82 00 0C */	bne .L_813FA68C
/* 813FA684 | 38 60 00 00 */	li r3, 0x0
/* 813FA688 | 48 00 00 A8 */	b .L_813FA730
.L_813FA68C:
/* 813FA68C | 38 A0 00 00 */	li r5, 0x0
/* 813FA690 | 7C 69 03 A6 */	mtctr r3
/* 813FA694 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FA698 | 40 81 00 94 */	ble .L_813FA72C
.L_813FA69C:
/* 813FA69C | 7C 9F 28 AE */	lbzx r4, r31, r5
/* 813FA6A0 | 7C 7F 2A 14 */	add r3, r31, r5
/* 813FA6A4 | 7C 80 07 74 */	extsb r0, r4
/* 813FA6A8 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 813FA6AC | 41 80 00 0C */	blt .L_813FA6B8
/* 813FA6B0 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 813FA6B4 | 40 81 00 50 */	ble .L_813FA704
.L_813FA6B8:
/* 813FA6B8 | 7C 80 07 74 */	extsb r0, r4
/* 813FA6BC | 2C 00 00 61 */	cmpwi r0, 0x61
/* 813FA6C0 | 41 80 00 0C */	blt .L_813FA6CC
/* 813FA6C4 | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 813FA6C8 | 40 81 00 3C */	ble .L_813FA704
.L_813FA6CC:
/* 813FA6CC | 7C 80 07 74 */	extsb r0, r4
/* 813FA6D0 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 813FA6D4 | 41 80 00 0C */	blt .L_813FA6E0
/* 813FA6D8 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 813FA6DC | 40 81 00 28 */	ble .L_813FA704
.L_813FA6E0:
/* 813FA6E0 | 7C 80 07 74 */	extsb r0, r4
/* 813FA6E4 | 2C 00 00 2D */	cmpwi r0, 0x2d
/* 813FA6E8 | 41 82 00 1C */	beq .L_813FA704
/* 813FA6EC | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 813FA6F0 | 41 82 00 14 */	beq .L_813FA704
/* 813FA6F4 | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 813FA6F8 | 41 82 00 0C */	beq .L_813FA704
/* 813FA6FC | 38 60 00 00 */	li r3, 0x0
/* 813FA700 | 48 00 00 30 */	b .L_813FA730
.L_813FA704:
/* 813FA704 | 7C 80 07 74 */	extsb r0, r4
/* 813FA708 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 813FA70C | 40 82 00 18 */	bne .L_813FA724
/* 813FA710 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 813FA714 | 2C 00 00 2E */	cmpwi r0, 0x2e
/* 813FA718 | 40 82 00 0C */	bne .L_813FA724
/* 813FA71C | 38 60 00 00 */	li r3, 0x0
/* 813FA720 | 48 00 00 10 */	b .L_813FA730
.L_813FA724:
/* 813FA724 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 813FA728 | 42 00 FF 74 */	bdnz .L_813FA69C
.L_813FA72C:
/* 813FA72C | 38 60 00 01 */	li r3, 0x1
.L_813FA730:
/* 813FA730 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FA734 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FA738 | 7C 08 03 A6 */	mtlr r0
/* 813FA73C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FA740 | 4E 80 00 20 */	blr
.endfn checkProxy__Q33ipl3ncd10NCDSettingFPc

# .text:0x77C | 0x813FA744 | size: 0x74
# ipl::ncd::NCDSetting::checkProxyBasic(char*)
.fn checkProxyBasic__Q33ipl3ncd10NCDSettingFPc, global
/* 813FA744 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FA748 | 7C 08 02 A6 */	mflr r0
/* 813FA74C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FA750 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FA754 | 7C 7F 1B 78 */	mr r31, r3
/* 813FA758 | 48 1F E7 A5 */	bl strlen
/* 813FA75C | 2C 03 00 21 */	cmpwi r3, 0x21
/* 813FA760 | 41 80 00 0C */	blt .L_813FA76C
/* 813FA764 | 38 60 00 00 */	li r3, 0x0
/* 813FA768 | 48 00 00 3C */	b .L_813FA7A4
.L_813FA76C:
/* 813FA76C | 7C 69 03 A6 */	mtctr r3
/* 813FA770 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FA774 | 40 81 00 2C */	ble .L_813FA7A0
.L_813FA778:
/* 813FA778 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 813FA77C | 7C 00 07 74 */	extsb r0, r0
/* 813FA780 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 813FA784 | 41 80 00 0C */	blt .L_813FA790
/* 813FA788 | 2C 00 00 7E */	cmpwi r0, 0x7e
/* 813FA78C | 40 81 00 0C */	ble .L_813FA798
.L_813FA790:
/* 813FA790 | 38 60 00 00 */	li r3, 0x0
/* 813FA794 | 48 00 00 10 */	b .L_813FA7A4
.L_813FA798:
/* 813FA798 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813FA79C | 42 00 FF DC */	bdnz .L_813FA778
.L_813FA7A0:
/* 813FA7A0 | 38 60 00 01 */	li r3, 0x1
.L_813FA7A4:
/* 813FA7A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FA7A8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FA7AC | 7C 08 03 A6 */	mtlr r0
/* 813FA7B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FA7B4 | 4E 80 00 20 */	blr
.endfn checkProxyBasic__Q33ipl3ncd10NCDSettingFPc

# .text:0x7F0 | 0x813FA7B8 | size: 0xD8
# ipl::ncd::NCDSetting::adjustNCDData_()
.fn adjustNCDData___Q33ipl3ncd10NCDSettingFv, global
/* 813FA7B8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FA7BC | 7C 08 02 A6 */	mflr r0
/* 813FA7C0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FA7C4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FA7C8 | 48 1F EC FD */	bl _savegpr_28
/* 813FA7CC | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA7D0 | 3B 80 FF FF */	li r28, -0x1
/* 813FA7D4 | 3B A0 00 00 */	li r29, 0x0
/* 813FA7D8 | 3B E0 00 00 */	li r31, 0x0
/* 813FA7DC | 3B C3 85 B8 */	addi r30, r3, mConfig__Q33ipl3ncd10NCDSetting@l
.L_813FA7E0:
/* 813FA7E0 | 7C 7E FA 14 */	add r3, r30, r31
/* 813FA7E4 | 88 63 00 08 */	lbz r3, 0x8(r3)
/* 813FA7E8 | 54 60 06 31 */	rlwinm. r0, r3, 0, 24, 24
/* 813FA7EC | 41 82 00 1C */	beq .L_813FA808
/* 813FA7F0 | 7F A3 EB 78 */	mr r3, r29
/* 813FA7F4 | 48 00 00 9D */	bl adjustSelectMedia___Q33ipl3ncd10NCDSettingFi
/* 813FA7F8 | 7F A3 EB 78 */	mr r3, r29
/* 813FA7FC | 48 00 00 F5 */	bl adjustEnableFlag___Q33ipl3ncd10NCDSettingFi
/* 813FA800 | 7F BC EB 78 */	mr r28, r29
/* 813FA804 | 48 00 00 5C */	b .L_813FA860
.L_813FA808:
/* 813FA808 | 2C 1C FF FF */	cmpwi r28, -0x1
/* 813FA80C | 40 82 00 10 */	bne .L_813FA81C
/* 813FA810 | 54 60 06 B5 */	rlwinm. r0, r3, 0, 26, 26
/* 813FA814 | 41 82 00 08 */	beq .L_813FA81C
/* 813FA818 | 7F BC EB 78 */	mr r28, r29
.L_813FA81C:
/* 813FA81C | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 813FA820 | 40 82 00 30 */	bne .L_813FA850
/* 813FA824 | 2C 1C FF FF */	cmpwi r28, -0x1
/* 813FA828 | 41 82 00 28 */	beq .L_813FA850
/* 813FA82C | 1C 1C 09 1C */	mulli r0, r28, 0x91c
/* 813FA830 | 7F 83 E3 78 */	mr r3, r28
/* 813FA834 | 7C 9E 02 14 */	add r4, r30, r0
/* 813FA838 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 813FA83C | 60 00 00 80 */	ori r0, r0, 0x80
/* 813FA840 | 98 04 00 08 */	stb r0, 0x8(r4)
/* 813FA844 | 48 00 00 4D */	bl adjustSelectMedia___Q33ipl3ncd10NCDSettingFi
/* 813FA848 | 7F 83 E3 78 */	mr r3, r28
/* 813FA84C | 48 00 00 A5 */	bl adjustEnableFlag___Q33ipl3ncd10NCDSettingFi
.L_813FA850:
/* 813FA850 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 813FA854 | 3B FF 09 1C */	addi r31, r31, 0x91c
/* 813FA858 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 813FA85C | 41 80 FF 84 */	blt .L_813FA7E0
.L_813FA860:
/* 813FA860 | 2C 1C FF FF */	cmpwi r28, -0x1
/* 813FA864 | 40 82 00 14 */	bne .L_813FA878
/* 813FA868 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA86C | 38 00 00 00 */	li r0, 0x0
/* 813FA870 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA874 | 98 03 00 04 */	stb r0, 0x4(r3)
.L_813FA878:
/* 813FA878 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FA87C | 48 1F EC 95 */	bl _restgpr_28
/* 813FA880 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813FA884 | 7C 08 03 A6 */	mtlr r0
/* 813FA888 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813FA88C | 4E 80 00 20 */	blr
.endfn adjustNCDData___Q33ipl3ncd10NCDSettingFv

# .text:0x8C8 | 0x813FA890 | size: 0x60
# ipl::ncd::NCDSetting::adjustSelectMedia_(int)
.fn adjustSelectMedia___Q33ipl3ncd10NCDSettingFi, global
/* 813FA890 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FA894 | 7C 08 02 A6 */	mflr r0
/* 813FA898 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FA89C | 4B FF F7 8D */	bl checkFlag__Q33ipl3ncd10NCDSettingFi
/* 813FA8A0 | 54 60 06 3E */	clrlwi r0, r3, 24
/* 813FA8A4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FA8A8 | 41 82 00 14 */	beq .L_813FA8BC
/* 813FA8AC | 41 80 00 34 */	blt .L_813FA8E0
/* 813FA8B0 | 2C 00 00 06 */	cmpwi r0, 0x6
/* 813FA8B4 | 40 80 00 2C */	bge .L_813FA8E0
/* 813FA8B8 | 48 00 00 18 */	b .L_813FA8D0
.L_813FA8BC:
/* 813FA8BC | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA8C0 | 38 00 00 02 */	li r0, 0x2
/* 813FA8C4 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA8C8 | 98 03 00 04 */	stb r0, 0x4(r3)
/* 813FA8CC | 48 00 00 14 */	b .L_813FA8E0
.L_813FA8D0:
/* 813FA8D0 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA8D4 | 38 00 00 01 */	li r0, 0x1
/* 813FA8D8 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA8DC | 98 03 00 04 */	stb r0, 0x4(r3)
.L_813FA8E0:
/* 813FA8E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FA8E4 | 7C 08 03 A6 */	mtlr r0
/* 813FA8E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FA8EC | 4E 80 00 20 */	blr
.endfn adjustSelectMedia___Q33ipl3ncd10NCDSettingFi

# .text:0x928 | 0x813FA8F0 | size: 0x40
# ipl::ncd::NCDSetting::adjustEnableFlag_(int)
.fn adjustEnableFlag___Q33ipl3ncd10NCDSettingFi, global
/* 813FA8F0 | 3C C0 81 0C */	lis r6, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA8F4 | 38 00 00 03 */	li r0, 0x3
/* 813FA8F8 | 38 C6 85 B8 */	addi r6, r6, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA8FC | 38 E0 00 00 */	li r7, 0x0
/* 813FA900 | 38 80 00 00 */	li r4, 0x0
/* 813FA904 | 7C 09 03 A6 */	mtctr r0
.L_813FA908:
/* 813FA908 | 7C 03 38 00 */	cmpw r3, r7
/* 813FA90C | 41 82 00 14 */	beq .L_813FA920
/* 813FA910 | 7C A6 22 14 */	add r5, r6, r4
/* 813FA914 | 88 05 00 08 */	lbz r0, 0x8(r5)
/* 813FA918 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 813FA91C | 98 05 00 08 */	stb r0, 0x8(r5)
.L_813FA920:
/* 813FA920 | 38 E7 00 01 */	addi r7, r7, 0x1
/* 813FA924 | 38 84 09 1C */	addi r4, r4, 0x91c
/* 813FA928 | 42 00 FF E0 */	bdnz .L_813FA908
/* 813FA92C | 4E 80 00 20 */	blr
.endfn adjustEnableFlag___Q33ipl3ncd10NCDSettingFi

# .text:0x968 | 0x813FA930 | size: 0x9C
# ipl::ncd::NCDSetting::setConnectTestFlag(bool)
.fn setConnectTestFlag__Q33ipl3ncd10NCDSettingFb, global
/* 813FA930 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FA934 | 7C 08 02 A6 */	mflr r0
/* 813FA938 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FA93C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FA940 | 41 82 00 68 */	beq .L_813FA9A8
/* 813FA944 | A0 ED AB B0 */	lhz r7, lbl_81698BF0@sda21(r0)
/* 813FA948 | 3C C0 81 0C */	lis r6, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA94C | 38 C6 85 B8 */	addi r6, r6, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA950 | 38 00 00 03 */	li r0, 0x3
/* 813FA954 | 1C 87 09 1C */	mulli r4, r7, 0x91c
/* 813FA958 | 39 00 00 00 */	li r8, 0x0
/* 813FA95C | 38 60 00 00 */	li r3, 0x0
/* 813FA960 | 7C A6 22 14 */	add r5, r6, r4
/* 813FA964 | 88 85 00 08 */	lbz r4, 0x8(r5)
/* 813FA968 | 60 84 00 20 */	ori r4, r4, 0x20
/* 813FA96C | 98 85 00 08 */	stb r4, 0x8(r5)
/* 813FA970 | 7C 09 03 A6 */	mtctr r0
.L_813FA974:
/* 813FA974 | 7C 07 40 00 */	cmpw r7, r8
/* 813FA978 | 40 82 00 14 */	bne .L_813FA98C
/* 813FA97C | 88 05 00 08 */	lbz r0, 0x8(r5)
/* 813FA980 | 60 00 00 80 */	ori r0, r0, 0x80
/* 813FA984 | 98 05 00 08 */	stb r0, 0x8(r5)
/* 813FA988 | 48 00 00 14 */	b .L_813FA99C
.L_813FA98C:
/* 813FA98C | 7C 86 1A 14 */	add r4, r6, r3
/* 813FA990 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 813FA994 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 813FA998 | 98 04 00 08 */	stb r0, 0x8(r4)
.L_813FA99C:
/* 813FA99C | 39 08 00 01 */	addi r8, r8, 0x1
/* 813FA9A0 | 38 63 09 1C */	addi r3, r3, 0x91c
/* 813FA9A4 | 42 00 FF D0 */	bdnz .L_813FA974
.L_813FA9A8:
/* 813FA9A8 | 4B FF FE 11 */	bl adjustNCDData___Q33ipl3ncd10NCDSettingFv
/* 813FA9AC | 48 00 10 09 */	bl adjustNWC24FlagEx___Q33ipl3ncd10NCDSettingFv
/* 813FA9B0 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA9B4 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA9B8 | 48 09 7A 11 */	bl fn_814923C8
/* 813FA9BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FA9C0 | 7C 08 03 A6 */	mtlr r0
/* 813FA9C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FA9C8 | 4E 80 00 20 */	blr
.endfn setConnectTestFlag__Q33ipl3ncd10NCDSettingFb

# .text:0xA04 | 0x813FA9CC | size: 0x50
# ipl::ncd::NCDSetting::setDHCPFlag(unsigned char)
.fn setDHCPFlag__Q33ipl3ncd10NCDSettingFUc, global
/* 813FA9CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FA9D0 | 41 82 00 28 */	beq .L_813FA9F8
/* 813FA9D4 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA9D8 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FA9DC | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FA9E0 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FA9E4 | 7C 63 02 14 */	add r3, r3, r0
/* 813FA9E8 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FA9EC | 60 00 00 02 */	ori r0, r0, 0x2
/* 813FA9F0 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 813FA9F4 | 4E 80 00 20 */	blr
.L_813FA9F8:
/* 813FA9F8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FA9FC | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAA00 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAA04 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAA08 | 7C 63 02 14 */	add r3, r3, r0
/* 813FAA0C | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FAA10 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 813FAA14 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 813FAA18 | 4E 80 00 20 */	blr
.endfn setDHCPFlag__Q33ipl3ncd10NCDSettingFUc

# .text:0xA54 | 0x813FAA1C | size: 0x50
# ipl::ncd::NCDSetting::setDNSFlag(unsigned char)
.fn setDNSFlag__Q33ipl3ncd10NCDSettingFUc, global
/* 813FAA1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FAA20 | 41 82 00 28 */	beq .L_813FAA48
/* 813FAA24 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAA28 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAA2C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAA30 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAA34 | 7C 63 02 14 */	add r3, r3, r0
/* 813FAA38 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FAA3C | 60 00 00 04 */	ori r0, r0, 0x4
/* 813FAA40 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 813FAA44 | 4E 80 00 20 */	blr
.L_813FAA48:
/* 813FAA48 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAA4C | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAA50 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAA54 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAA58 | 7C 63 02 14 */	add r3, r3, r0
/* 813FAA5C | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FAA60 | 54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 813FAA64 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 813FAA68 | 4E 80 00 20 */	blr
.endfn setDNSFlag__Q33ipl3ncd10NCDSettingFUc

# .text:0xAA4 | 0x813FAA6C | size: 0x44
# ipl::ncd::NCDSetting::setProxyFlag(unsigned char)
.fn setProxyFlag__Q33ipl3ncd10NCDSettingFUc, global
/* 813FAA6C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAA70 | 3C 80 81 0C */	lis r4, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAA74 | 38 84 85 B8 */	addi r4, r4, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAA78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FAA7C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAA80 | 7C 84 02 14 */	add r4, r4, r0
/* 813FAA84 | 98 64 00 2C */	stb r3, 0x2c(r4)
/* 813FAA88 | 98 64 01 74 */	stb r3, 0x174(r4)
/* 813FAA8C | 41 82 00 14 */	beq .L_813FAAA0
/* 813FAA90 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 813FAA94 | 60 00 00 10 */	ori r0, r0, 0x10
/* 813FAA98 | 98 04 00 08 */	stb r0, 0x8(r4)
/* 813FAA9C | 4E 80 00 20 */	blr
.L_813FAAA0:
/* 813FAAA0 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 813FAAA4 | 54 00 07 34 */	rlwinm r0, r0, 0, 28, 26
/* 813FAAA8 | 98 04 00 08 */	stb r0, 0x8(r4)
/* 813FAAAC | 4E 80 00 20 */	blr
.endfn setProxyFlag__Q33ipl3ncd10NCDSettingFUc

# .text:0xAE8 | 0x813FAAB0 | size: 0x20
# ipl::ncd::NCDSetting::setBasicFlag(unsigned char)
.fn setBasicFlag__Q33ipl3ncd10NCDSettingFUc, global
/* 813FAAB0 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAAB4 | 3C 80 81 0C */	lis r4, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAAB8 | 38 84 85 B8 */	addi r4, r4, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAABC | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAAC0 | 7C 84 02 14 */	add r4, r4, r0
/* 813FAAC4 | 98 64 00 2D */	stb r3, 0x2d(r4)
/* 813FAAC8 | 98 64 01 75 */	stb r3, 0x175(r4)
/* 813FAACC | 4E 80 00 20 */	blr
.endfn setBasicFlag__Q33ipl3ncd10NCDSettingFUc

# .text:0xB08 | 0x813FAAD0 | size: 0x70
# ipl::ncd::NCDSetting::setWired()
.fn setWired__Q33ipl3ncd10NCDSettingFv, global
/* 813FAAD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FAAD4 | 7C 08 02 A6 */	mflr r0
/* 813FAAD8 | 38 80 00 00 */	li r4, 0x0
/* 813FAADC | 38 A0 09 1C */	li r5, 0x91c
/* 813FAAE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FAAE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FAAE8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FAAEC | 3F C0 81 0C */	lis r30, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAAF0 | 3B FE 85 B8 */	addi r31, r30, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAAF4 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAAF8 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAAFC | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAB00 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813FAB04 | 4B F3 58 31 */	bl memset
/* 813FAB08 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAB0C | 38 60 00 00 */	li r3, 0x0
/* 813FAB10 | 90 7E 85 B8 */	stw r3, mConfig__Q33ipl3ncd10NCDSetting@l(r30)
/* 813FAB14 | 38 80 00 07 */	li r4, 0x7
/* 813FAB18 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAB1C | 98 7F 00 06 */	stb r3, 0x6(r31)
/* 813FAB20 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAB24 | 98 83 00 08 */	stb r4, 0x8(r3)
/* 813FAB28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FAB2C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FAB30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FAB34 | 7C 08 03 A6 */	mtlr r0
/* 813FAB38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FAB3C | 4E 80 00 20 */	blr
.endfn setWired__Q33ipl3ncd10NCDSettingFv

# .text:0xB78 | 0x813FAB40 | size: 0x94
# ipl::ncd::NCDSetting::setWireless(unsigned char)
.fn setWireless__Q33ipl3ncd10NCDSettingFUc, global
/* 813FAB40 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813FAB44 | 7C 08 02 A6 */	mflr r0
/* 813FAB48 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813FAB4C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FAB50 | 48 1F E9 79 */	bl _savegpr_29
/* 813FAB54 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAB58 | 3F C0 81 0C */	lis r30, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAB5C | 3B FE 85 B8 */	addi r31, r30, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAB60 | 7C 7D 1B 78 */	mr r29, r3
/* 813FAB64 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAB68 | 38 80 00 00 */	li r4, 0x0
/* 813FAB6C | 38 A0 09 1C */	li r5, 0x91c
/* 813FAB70 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAB74 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813FAB78 | 4B F3 57 BD */	bl memset
/* 813FAB7C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAB80 | 38 60 00 00 */	li r3, 0x0
/* 813FAB84 | 90 7E 85 B8 */	stw r3, mConfig__Q33ipl3ncd10NCDSetting@l(r30)
/* 813FAB88 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 813FAB8C | 1C 80 09 1C */	mulli r4, r0, 0x91c
/* 813FAB90 | 38 00 00 06 */	li r0, 0x6
/* 813FAB94 | 98 7F 00 06 */	stb r3, 0x6(r31)
/* 813FAB98 | 7C 7F 22 14 */	add r3, r31, r4
/* 813FAB9C | 9B A3 07 CA */	stb r29, 0x7ca(r3)
/* 813FABA0 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 813FABA4 | 40 82 00 18 */	bne .L_813FABBC
/* 813FABA8 | 3C 60 81 0C */	lis r3, mSaveConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FABAC | 7F E4 FB 78 */	mr r4, r31
/* 813FABB0 | 38 63 A1 14 */	addi r3, r3, mSaveConfig__Q33ipl3ncd10NCDSetting@l
/* 813FABB4 | 38 A0 1B 5C */	li r5, 0x1b5c
/* 813FABB8 | 4B F3 56 79 */	bl memcpy
.L_813FABBC:
/* 813FABBC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813FABC0 | 48 1F E9 55 */	bl _restgpr_29
/* 813FABC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813FABC8 | 7C 08 03 A6 */	mtlr r0
/* 813FABCC | 38 21 00 20 */	addi r1, r1, 0x20
/* 813FABD0 | 4E 80 00 20 */	blr
.endfn setWireless__Q33ipl3ncd10NCDSettingFUc

# .text:0xC0C | 0x813FABD4 | size: 0x50
# ipl::ncd::NCDSetting::changeConnectType(unsigned char)
.fn changeConnectType__Q33ipl3ncd10NCDSettingFUc, global
/* 813FABD4 | 28 03 00 01 */	cmplwi r3, 0x1
/* 813FABD8 | 40 82 00 28 */	bne .L_813FAC00
/* 813FABDC | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FABE0 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FABE4 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FABE8 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FABEC | 7C 63 02 14 */	add r3, r3, r0
/* 813FABF0 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FABF4 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813FABF8 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 813FABFC | 4E 80 00 20 */	blr
.L_813FAC00:
/* 813FAC00 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAC04 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAC08 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAC0C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAC10 | 7C 63 02 14 */	add r3, r3, r0
/* 813FAC14 | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FAC18 | 54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 813FAC1C | 98 03 00 08 */	stb r0, 0x8(r3)
/* 813FAC20 | 4E 80 00 20 */	blr
.endfn changeConnectType__Q33ipl3ncd10NCDSettingFUc

# .text:0xC5C | 0x813FAC24 | size: 0x6C
# ipl::ncd::NCDSetting::setSSID(unsigned char*)
.fn setSSID__Q33ipl3ncd10NCDSettingFPUc, global
/* 813FAC24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FAC28 | 7C 08 02 A6 */	mflr r0
/* 813FAC2C | 38 A0 00 20 */	li r5, 0x20
/* 813FAC30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FAC34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FAC38 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAC3C | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAC40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FAC44 | 7C 7E 1B 78 */	mr r30, r3
/* 813FAC48 | 7F C4 F3 78 */	mr r4, r30
/* 813FAC4C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAC50 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAC54 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAC58 | 38 63 07 CC */	addi r3, r3, 0x7cc
/* 813FAC5C | 4B F3 55 D5 */	bl memcpy
/* 813FAC60 | 7F C3 F3 78 */	mr r3, r30
/* 813FAC64 | 48 1F E2 99 */	bl strlen
/* 813FAC68 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAC6C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAC70 | 7C 9F 02 14 */	add r4, r31, r0
/* 813FAC74 | B0 64 07 EC */	sth r3, 0x7ec(r4)
/* 813FAC78 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FAC7C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FAC80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FAC84 | 7C 08 03 A6 */	mtlr r0
/* 813FAC88 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FAC8C | 4E 80 00 20 */	blr
.endfn setSSID__Q33ipl3ncd10NCDSettingFPUc

# .text:0xCC8 | 0x813FAC90 | size: 0xD0
# ipl::ncd::NCDSetting::setPrivacyMode(unsigned short)
.fn setPrivacyMode__Q33ipl3ncd10NCDSettingFUs, global
/* 813FAC90 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FAC94 | 7C 08 02 A6 */	mflr r0
/* 813FAC98 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813FAC9C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FACA0 | 41 82 00 70 */	beq .L_813FAD10
/* 813FACA4 | 40 80 00 14 */	bge .L_813FACB8
/* 813FACA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FACAC | 41 82 00 1C */	beq .L_813FACC8
/* 813FACB0 | 40 80 00 20 */	bge .L_813FACD0
/* 813FACB4 | 48 00 00 74 */	b .L_813FAD28
.L_813FACB8:
/* 813FACB8 | 2C 03 00 04 */	cmpwi r3, 0x4
/* 813FACBC | 41 82 00 64 */	beq .L_813FAD20
/* 813FACC0 | 40 80 00 68 */	bge .L_813FAD28
/* 813FACC4 | 48 00 00 54 */	b .L_813FAD18
.L_813FACC8:
/* 813FACC8 | 38 80 00 00 */	li r4, 0x0
/* 813FACCC | 48 00 00 60 */	b .L_813FAD2C
.L_813FACD0:
/* 813FACD0 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FACD4 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FACD8 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FACDC | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FACE0 | 7C 63 02 14 */	add r3, r3, r0
/* 813FACE4 | A0 03 07 F0 */	lhz r0, 0x7f0(r3)
/* 813FACE8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 813FACEC | 41 82 00 14 */	beq .L_813FAD00
/* 813FACF0 | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FACF4 | 48 1F E2 09 */	bl strlen
/* 813FACF8 | 28 03 00 14 */	cmplwi r3, 0x14
/* 813FACFC | 40 81 00 0C */	ble .L_813FAD08
.L_813FAD00:
/* 813FAD00 | 38 80 00 02 */	li r4, 0x2
/* 813FAD04 | 48 00 00 28 */	b .L_813FAD2C
.L_813FAD08:
/* 813FAD08 | 38 80 00 01 */	li r4, 0x1
/* 813FAD0C | 48 00 00 20 */	b .L_813FAD2C
.L_813FAD10:
/* 813FAD10 | 38 80 00 04 */	li r4, 0x4
/* 813FAD14 | 48 00 00 18 */	b .L_813FAD2C
.L_813FAD18:
/* 813FAD18 | 38 80 00 06 */	li r4, 0x6
/* 813FAD1C | 48 00 00 10 */	b .L_813FAD2C
.L_813FAD20:
/* 813FAD20 | 38 80 00 05 */	li r4, 0x5
/* 813FAD24 | 48 00 00 08 */	b .L_813FAD2C
.L_813FAD28:
/* 813FAD28 | 38 80 00 00 */	li r4, 0x0
.L_813FAD2C:
/* 813FAD2C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAD30 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAD34 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAD38 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAD3C | 7C 63 02 14 */	add r3, r3, r0
/* 813FAD40 | A0 03 07 F0 */	lhz r0, 0x7f0(r3)
/* 813FAD44 | 7C 04 00 40 */	cmplw r4, r0
/* 813FAD48 | 41 82 00 08 */	beq .L_813FAD50
/* 813FAD4C | B0 83 07 F0 */	sth r4, 0x7f0(r3)
.L_813FAD50:
/* 813FAD50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FAD54 | 7C 08 03 A6 */	mtlr r0
/* 813FAD58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FAD5C | 4E 80 00 20 */	blr
.endfn setPrivacyMode__Q33ipl3ncd10NCDSettingFUs

# .text:0xD98 | 0x813FAD60 | size: 0xC4
# ipl::ncd::NCDSetting::setWDPrivacyMode(unsigned short)
.fn setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, global
/* 813FAD60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FAD64 | 7C 08 02 A6 */	mflr r0
/* 813FAD68 | 28 03 00 08 */	cmplwi r3, 0x8
/* 813FAD6C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FAD70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FAD74 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FAD78 | 41 81 00 5C */	bgt .L_813FADD4
/* 813FAD7C | 3C 80 81 65 */	lis r4, jumptable_816578AC@ha
/* 813FAD80 | 54 60 10 3A */	slwi r0, r3, 2
/* 813FAD84 | 38 84 78 AC */	addi r4, r4, jumptable_816578AC@l
/* 813FAD88 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813FAD8C | 7C 89 03 A6 */	mtctr r4
/* 813FAD90 | 4E 80 04 20 */	bctr
.L_813FAD94:
/* 813FAD94 | 3B C0 00 00 */	li r30, 0x0
/* 813FAD98 | 48 00 00 40 */	b .L_813FADD8
.L_813FAD9C:
/* 813FAD9C | 3B C0 00 01 */	li r30, 0x1
/* 813FADA0 | 48 00 00 38 */	b .L_813FADD8
.L_813FADA4:
/* 813FADA4 | 3B C0 00 02 */	li r30, 0x2
/* 813FADA8 | 48 00 00 30 */	b .L_813FADD8
.L_813FADAC:
/* 813FADAC | 3B C0 00 04 */	li r30, 0x4
/* 813FADB0 | 48 00 00 28 */	b .L_813FADD8
.L_813FADB4:
/* 813FADB4 | 3B C0 00 05 */	li r30, 0x5
/* 813FADB8 | 48 00 00 20 */	b .L_813FADD8
.L_813FADBC:
/* 813FADBC | 3B C0 00 06 */	li r30, 0x6
/* 813FADC0 | 48 00 00 18 */	b .L_813FADD8
.L_813FADC4:
/* 813FADC4 | 3B C0 00 04 */	li r30, 0x4
/* 813FADC8 | 48 00 00 10 */	b .L_813FADD8
.L_813FADCC:
/* 813FADCC | 3B C0 00 01 */	li r30, 0x1
/* 813FADD0 | 48 00 00 08 */	b .L_813FADD8
.L_813FADD4:
/* 813FADD4 | 3B C0 00 00 */	li r30, 0x0
.L_813FADD8:
/* 813FADD8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FADDC | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FADE0 | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FADE4 | 38 80 00 00 */	li r4, 0x0
/* 813FADE8 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FADEC | 38 A0 00 44 */	li r5, 0x44
/* 813FADF0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FADF4 | 38 63 07 F4 */	addi r3, r3, 0x7f4
/* 813FADF8 | 4B F3 55 3D */	bl memset
/* 813FADFC | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAE00 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAE04 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAE08 | B3 C3 07 F0 */	sth r30, 0x7f0(r3)
/* 813FAE0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FAE10 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FAE14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FAE18 | 7C 08 03 A6 */	mtlr r0
/* 813FAE1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FAE20 | 4E 80 00 20 */	blr
.endfn setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs

# .text:0xE5C | 0x813FAE24 | size: 0x17C
# ipl::ncd::NCDSetting::setPrivacy(unsigned char*, int)
.fn setPrivacy__Q33ipl3ncd10NCDSettingFPUci, global
/* 813FAE24 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 813FAE28 | 7C 08 02 A6 */	mflr r0
/* 813FAE2C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 813FAE30 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FAE34 | 48 1F E6 81 */	bl _savegpr_24
/* 813FAE38 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAE3C | 3C A0 81 0C */	lis r5, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAE40 | 3B E5 85 B8 */	addi r31, r5, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAE44 | 7C 9E 23 78 */	mr r30, r4
/* 813FAE48 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAE4C | 7C 7D 1B 78 */	mr r29, r3
/* 813FAE50 | 38 80 00 00 */	li r4, 0x0
/* 813FAE54 | 38 A0 00 44 */	li r5, 0x44
/* 813FAE58 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAE5C | 8B 03 07 F6 */	lbz r24, 0x7f6(r3)
/* 813FAE60 | 38 63 07 F4 */	addi r3, r3, 0x7f4
/* 813FAE64 | 4B F3 54 D1 */	bl memset
/* 813FAE68 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAE6C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813FAE70 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAE74 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAE78 | 9B 03 07 F6 */	stb r24, 0x7f6(r3)
/* 813FAE7C | 40 82 00 10 */	bne .L_813FAE8C
/* 813FAE80 | 38 00 00 00 */	li r0, 0x0
/* 813FAE84 | B0 03 07 F0 */	sth r0, 0x7f0(r3)
/* 813FAE88 | 48 00 01 00 */	b .L_813FAF88
.L_813FAE8C:
/* 813FAE8C | A0 03 07 F0 */	lhz r0, 0x7f0(r3)
/* 813FAE90 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 813FAE94 | 41 82 00 B0 */	beq .L_813FAF44
/* 813FAE98 | 40 80 00 18 */	bge .L_813FAEB0
/* 813FAE9C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813FAEA0 | 40 80 00 E8 */	bge .L_813FAF88
/* 813FAEA4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FAEA8 | 40 80 00 14 */	bge .L_813FAEBC
/* 813FAEAC | 48 00 00 DC */	b .L_813FAF88
.L_813FAEB0:
/* 813FAEB0 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813FAEB4 | 40 80 00 D4 */	bge .L_813FAF88
/* 813FAEB8 | 48 00 00 B0 */	b .L_813FAF68
.L_813FAEBC:
/* 813FAEBC | 3B 00 00 00 */	li r24, 0x0
/* 813FAEC0 | 3B 80 00 00 */	li r28, 0x0
/* 813FAEC4 | 3B 60 00 00 */	li r27, 0x0
/* 813FAEC8 | 3B 20 00 01 */	li r25, 0x1
/* 813FAECC | 3B 40 00 02 */	li r26, 0x2
.L_813FAED0:
/* 813FAED0 | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 813FAED4 | 40 82 00 2C */	bne .L_813FAF00
/* 813FAED8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAEDC | 7F A4 EB 78 */	mr r4, r29
/* 813FAEE0 | 38 A0 00 05 */	li r5, 0x5
/* 813FAEE4 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAEE8 | 7C DF 02 14 */	add r6, r31, r0
/* 813FAEEC | 7C 66 DA 14 */	add r3, r6, r27
/* 813FAEF0 | B3 26 07 F0 */	sth r25, 0x7f0(r6)
/* 813FAEF4 | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FAEF8 | 4B F3 53 39 */	bl memcpy
/* 813FAEFC | 48 00 00 30 */	b .L_813FAF2C
.L_813FAF00:
/* 813FAF00 | 2C 1E 00 0D */	cmpwi r30, 0xd
/* 813FAF04 | 40 82 00 28 */	bne .L_813FAF2C
/* 813FAF08 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAF0C | 7F A4 EB 78 */	mr r4, r29
/* 813FAF10 | 38 A0 00 0D */	li r5, 0xd
/* 813FAF14 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAF18 | 7C DF 02 14 */	add r6, r31, r0
/* 813FAF1C | 7C 66 E2 14 */	add r3, r6, r28
/* 813FAF20 | B3 46 07 F0 */	sth r26, 0x7f0(r6)
/* 813FAF24 | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FAF28 | 4B F3 53 09 */	bl memcpy
.L_813FAF2C:
/* 813FAF2C | 3B 18 00 01 */	addi r24, r24, 0x1
/* 813FAF30 | 3B 7B 00 05 */	addi r27, r27, 0x5
/* 813FAF34 | 2C 18 00 04 */	cmpwi r24, 0x4
/* 813FAF38 | 3B 9C 00 0D */	addi r28, r28, 0xd
/* 813FAF3C | 41 80 FF 94 */	blt .L_813FAED0
/* 813FAF40 | 48 00 00 48 */	b .L_813FAF88
.L_813FAF44:
/* 813FAF44 | 7F A4 EB 78 */	mr r4, r29
/* 813FAF48 | 7F C5 F3 78 */	mr r5, r30
/* 813FAF4C | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FAF50 | 4B F3 52 E1 */	bl memcpy
/* 813FAF54 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAF58 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAF5C | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAF60 | B3 C3 07 F4 */	sth r30, 0x7f4(r3)
/* 813FAF64 | 48 00 00 24 */	b .L_813FAF88
.L_813FAF68:
/* 813FAF68 | 7F A4 EB 78 */	mr r4, r29
/* 813FAF6C | 7F C5 F3 78 */	mr r5, r30
/* 813FAF70 | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FAF74 | 4B F3 52 BD */	bl memcpy
/* 813FAF78 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAF7C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAF80 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAF84 | B3 C3 07 F4 */	sth r30, 0x7f4(r3)
.L_813FAF88:
/* 813FAF88 | 39 61 00 30 */	addi r11, r1, 0x30
/* 813FAF8C | 48 1F E5 75 */	bl _restgpr_24
/* 813FAF90 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 813FAF94 | 7C 08 03 A6 */	mtlr r0
/* 813FAF98 | 38 21 00 30 */	addi r1, r1, 0x30
/* 813FAF9C | 4E 80 00 20 */	blr
.endfn setPrivacy__Q33ipl3ncd10NCDSettingFPUci

# .text:0xFD8 | 0x813FAFA0 | size: 0x8C
# ipl::ncd::NCDSetting::setIP(NCDIpProfile*)
.fn setIP__Q33ipl3ncd10NCDSettingFP12NCDIpProfile, global
/* 813FAFA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FAFA4 | 7C 08 02 A6 */	mflr r0
/* 813FAFA8 | 38 A0 00 04 */	li r5, 0x4
/* 813FAFAC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FAFB0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FAFB4 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FAFB8 | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FAFBC | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FAFC0 | 7C 7E 1B 78 */	mr r30, r3
/* 813FAFC4 | 7F C4 F3 78 */	mr r4, r30
/* 813FAFC8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAFCC | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAFD0 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAFD4 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813FAFD8 | 4B F3 52 59 */	bl memcpy
/* 813FAFDC | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAFE0 | 38 9E 00 04 */	addi r4, r30, 0x4
/* 813FAFE4 | 38 A0 00 04 */	li r5, 0x4
/* 813FAFE8 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FAFEC | 7C 7F 02 14 */	add r3, r31, r0
/* 813FAFF0 | 38 63 00 10 */	addi r3, r3, 0x10
/* 813FAFF4 | 4B F3 52 3D */	bl memcpy
/* 813FAFF8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FAFFC | 38 9E 00 08 */	addi r4, r30, 0x8
/* 813FB000 | 38 A0 00 04 */	li r5, 0x4
/* 813FB004 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB008 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB00C | 38 63 00 14 */	addi r3, r3, 0x14
/* 813FB010 | 4B F3 52 21 */	bl memcpy
/* 813FB014 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB018 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FB01C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FB020 | 7C 08 03 A6 */	mtlr r0
/* 813FB024 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB028 | 4E 80 00 20 */	blr
.endfn setIP__Q33ipl3ncd10NCDSettingFP12NCDIpProfile

# .text:0x1064 | 0x813FB02C | size: 0x70
# ipl::ncd::NCDSetting::setDNS(NCDIpProfile*)
.fn setDNS__Q33ipl3ncd10NCDSettingFP12NCDIpProfile, global
/* 813FB02C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB030 | 7C 08 02 A6 */	mflr r0
/* 813FB034 | 38 A0 00 04 */	li r5, 0x4
/* 813FB038 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB03C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FB040 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB044 | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB048 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FB04C | 7C 7E 1B 78 */	mr r30, r3
/* 813FB050 | 38 9E 00 0C */	addi r4, r30, 0xc
/* 813FB054 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB058 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB05C | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB060 | 38 63 00 18 */	addi r3, r3, 0x18
/* 813FB064 | 4B F3 51 CD */	bl memcpy
/* 813FB068 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB06C | 38 9E 00 10 */	addi r4, r30, 0x10
/* 813FB070 | 38 A0 00 04 */	li r5, 0x4
/* 813FB074 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB078 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB07C | 38 63 00 1C */	addi r3, r3, 0x1c
/* 813FB080 | 4B F3 51 B1 */	bl memcpy
/* 813FB084 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB088 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FB08C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FB090 | 7C 08 03 A6 */	mtlr r0
/* 813FB094 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB098 | 4E 80 00 20 */	blr
.endfn setDNS__Q33ipl3ncd10NCDSettingFP12NCDIpProfile

# .text:0x10D4 | 0x813FB09C | size: 0x28
# ipl::ncd::NCDSetting::setMTU(long)
.fn setMTU__Q33ipl3ncd10NCDSettingFl, global
/* 813FB09C | A0 AD AB B0 */	lhz r5, lbl_81698BF0@sda21(r0)
/* 813FB0A0 | 3C 80 81 0C */	lis r4, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB0A4 | 38 84 85 B8 */	addi r4, r4, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB0A8 | 38 00 00 00 */	li r0, 0x0
/* 813FB0AC | 1C A5 09 1C */	mulli r5, r5, 0x91c
/* 813FB0B0 | 7C 84 2A 14 */	add r4, r4, r5
/* 813FB0B4 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 813FB0B8 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 813FB0BC | 90 04 00 28 */	stw r0, 0x28(r4)
/* 813FB0C0 | 4E 80 00 20 */	blr
.endfn setMTU__Q33ipl3ncd10NCDSettingFl

# .text:0x10FC | 0x813FB0C4 | size: 0x8C
# ipl::ncd::NCDSetting::setProxy(NCDProxyServerProfile*)
.fn setProxy__Q33ipl3ncd10NCDSettingFP21NCDProxyServerProfile, global
/* 813FB0C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB0C8 | 7C 08 02 A6 */	mflr r0
/* 813FB0CC | 38 A0 01 00 */	li r5, 0x100
/* 813FB0D0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB0D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FB0D8 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB0DC | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB0E0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FB0E4 | 7C 7E 1B 78 */	mr r30, r3
/* 813FB0E8 | 38 9E 00 04 */	addi r4, r30, 0x4
/* 813FB0EC | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB0F0 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB0F4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB0F8 | 38 63 00 30 */	addi r3, r3, 0x30
/* 813FB0FC | 4B F3 51 35 */	bl memcpy
/* 813FB100 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB104 | 38 9E 00 04 */	addi r4, r30, 0x4
/* 813FB108 | 38 A0 01 00 */	li r5, 0x100
/* 813FB10C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB110 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB114 | 38 63 01 78 */	addi r3, r3, 0x178
/* 813FB118 | 4B F3 51 19 */	bl memcpy
/* 813FB11C | A0 6D AB B0 */	lhz r3, lbl_81698BF0@sda21(r0)
/* 813FB120 | A0 1E 01 04 */	lhz r0, 0x104(r30)
/* 813FB124 | 1C 63 09 1C */	mulli r3, r3, 0x91c
/* 813FB128 | 7C 7F 1A 14 */	add r3, r31, r3
/* 813FB12C | B0 03 01 30 */	sth r0, 0x130(r3)
/* 813FB130 | A0 1E 01 04 */	lhz r0, 0x104(r30)
/* 813FB134 | B0 03 02 78 */	sth r0, 0x278(r3)
/* 813FB138 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FB13C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FB140 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB144 | 7C 08 03 A6 */	mtlr r0
/* 813FB148 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB14C | 4E 80 00 20 */	blr
.endfn setProxy__Q33ipl3ncd10NCDSettingFP21NCDProxyServerProfile

# .text:0x1188 | 0x813FB150 | size: 0xA8
# ipl::ncd::NCDSetting::setBasic(NCDProxyServerProfile*)
.fn setBasic__Q33ipl3ncd10NCDSettingFP21NCDProxyServerProfile, global
/* 813FB150 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB154 | 7C 08 02 A6 */	mflr r0
/* 813FB158 | 38 A0 00 21 */	li r5, 0x21
/* 813FB15C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB160 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FB164 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB168 | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB16C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FB170 | 7C 7E 1B 78 */	mr r30, r3
/* 813FB174 | 38 9E 01 06 */	addi r4, r30, 0x106
/* 813FB178 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB17C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB180 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB184 | 38 63 01 32 */	addi r3, r3, 0x132
/* 813FB188 | 4B F3 50 A9 */	bl memcpy
/* 813FB18C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB190 | 38 9E 01 06 */	addi r4, r30, 0x106
/* 813FB194 | 38 A0 00 21 */	li r5, 0x21
/* 813FB198 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB19C | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB1A0 | 38 63 02 7A */	addi r3, r3, 0x27a
/* 813FB1A4 | 4B F3 50 8D */	bl memcpy
/* 813FB1A8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB1AC | 38 9E 01 27 */	addi r4, r30, 0x127
/* 813FB1B0 | 38 A0 00 21 */	li r5, 0x21
/* 813FB1B4 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB1B8 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB1BC | 38 63 01 53 */	addi r3, r3, 0x153
/* 813FB1C0 | 4B F3 50 71 */	bl memcpy
/* 813FB1C4 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB1C8 | 38 9E 01 27 */	addi r4, r30, 0x127
/* 813FB1CC | 38 A0 00 21 */	li r5, 0x21
/* 813FB1D0 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB1D4 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB1D8 | 38 63 02 9B */	addi r3, r3, 0x29b
/* 813FB1DC | 4B F3 50 55 */	bl memcpy
/* 813FB1E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB1E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FB1E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FB1EC | 7C 08 03 A6 */	mtlr r0
/* 813FB1F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB1F4 | 4E 80 00 20 */	blr
.endfn setBasic__Q33ipl3ncd10NCDSettingFP21NCDProxyServerProfile

# .text:0x1230 | 0x813FB1F8 | size: 0x58
# ipl::ncd::NCDSetting::clearData()
.fn clearData__Q33ipl3ncd10NCDSettingFv, global
/* 813FB1F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB1FC | 7C 08 02 A6 */	mflr r0
/* 813FB200 | 38 80 00 00 */	li r4, 0x0
/* 813FB204 | 38 A0 09 1C */	li r5, 0x91c
/* 813FB208 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB20C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FB210 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB214 | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB218 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB21C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB220 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB224 | 38 63 00 08 */	addi r3, r3, 0x8
/* 813FB228 | 4B F3 51 0D */	bl memset
/* 813FB22C | 4B FF F5 8D */	bl adjustNCDData___Q33ipl3ncd10NCDSettingFv
/* 813FB230 | 48 00 07 85 */	bl adjustNWC24FlagEx___Q33ipl3ncd10NCDSettingFv
/* 813FB234 | 7F E3 FB 78 */	mr r3, r31
/* 813FB238 | 48 09 71 91 */	bl fn_814923C8
/* 813FB23C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB240 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FB244 | 7C 08 03 A6 */	mtlr r0
/* 813FB248 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB24C | 4E 80 00 20 */	blr
.endfn clearData__Q33ipl3ncd10NCDSettingFv

# .text:0x1288 | 0x813FB250 | size: 0x24
# ipl::ncd::NCDSetting::clearLocal()
.fn clearLocal__Q33ipl3ncd10NCDSettingFv, global
/* 813FB250 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB254 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB258 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB25C | 38 80 00 00 */	li r4, 0x0
/* 813FB260 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB264 | 38 A0 09 1C */	li r5, 0x91c
/* 813FB268 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB26C | 38 63 00 08 */	addi r3, r3, 0x8
/* 813FB270 | 4B F3 50 C4 */	b memset
.endfn clearLocal__Q33ipl3ncd10NCDSettingFv

# .text:0x12AC | 0x813FB274 | size: 0x8C
# ipl::ncd::NCDSetting::write()
.fn write__Q33ipl3ncd10NCDSettingFv, global
/* 813FB274 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB278 | 7C 08 02 A6 */	mflr r0
/* 813FB27C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB280 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FB284 | 4B FF EF 39 */	bl checkDHCP___Q33ipl3ncd10NCDSettingFv
/* 813FB288 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB28C | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB290 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB294 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB298 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB29C | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FB2A0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 813FB2A4 | 41 82 00 14 */	beq .L_813FB2B8
/* 813FB2A8 | 38 63 07 C8 */	addi r3, r3, 0x7c8
/* 813FB2AC | 38 80 00 00 */	li r4, 0x0
/* 813FB2B0 | 38 A0 01 5C */	li r5, 0x15c
/* 813FB2B4 | 4B F3 50 81 */	bl memset
.L_813FB2B8:
/* 813FB2B8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB2BC | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB2C0 | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB2C4 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB2C8 | 7C 7F 02 14 */	add r3, r31, r0
/* 813FB2CC | 88 03 00 08 */	lbz r0, 0x8(r3)
/* 813FB2D0 | 54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 813FB2D4 | 54 00 06 7E */	clrlwi r0, r0, 25
/* 813FB2D8 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 813FB2DC | 4B FF F4 DD */	bl adjustNCDData___Q33ipl3ncd10NCDSettingFv
/* 813FB2E0 | 48 00 06 D5 */	bl adjustNWC24FlagEx___Q33ipl3ncd10NCDSettingFv
/* 813FB2E4 | 7F E3 FB 78 */	mr r3, r31
/* 813FB2E8 | 48 09 70 E1 */	bl fn_814923C8
/* 813FB2EC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB2F0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FB2F4 | 7C 08 03 A6 */	mtlr r0
/* 813FB2F8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB2FC | 4E 80 00 20 */	blr
.endfn write__Q33ipl3ncd10NCDSettingFv

# .text:0x1338 | 0x813FB300 | size: 0x18
# ipl::ncd::NCDSetting::backupData()
.fn backupData__Q33ipl3ncd10NCDSettingFv, global
/* 813FB300 | 3C 60 81 0C */	lis r3, mSaveConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB304 | 3C 80 81 0C */	lis r4, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB308 | 38 63 A1 14 */	addi r3, r3, mSaveConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB30C | 38 A0 1B 5C */	li r5, 0x1b5c
/* 813FB310 | 38 84 85 B8 */	addi r4, r4, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB314 | 4B F3 4F 1C */	b memcpy
.endfn backupData__Q33ipl3ncd10NCDSettingFv

# .text:0x1350 | 0x813FB318 | size: 0x18
# ipl::ncd::NCDSetting::resetData()
.fn resetData__Q33ipl3ncd10NCDSettingFv, global
/* 813FB318 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB31C | 3C 80 81 0C */	lis r4, mSaveConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB320 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB324 | 38 A0 1B 5C */	li r5, 0x1b5c
/* 813FB328 | 38 84 A1 14 */	addi r4, r4, mSaveConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB32C | 4B F3 4F 04 */	b memcpy
.endfn resetData__Q33ipl3ncd10NCDSettingFv

# .text:0x1368 | 0x813FB330 | size: 0x7C
# ipl::ncd::NCDSetting::setUseProfileID()
.fn setUseProfileID__Q33ipl3ncd10NCDSettingFv, global
/* 813FB330 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB334 | 38 00 00 03 */	li r0, 0x3
/* 813FB338 | 38 E3 85 B8 */	addi r7, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB33C | A1 0D AB B0 */	lhz r8, lbl_81698BF0@sda21(r0)
/* 813FB340 | 39 40 00 00 */	li r10, 0x0
/* 813FB344 | 38 60 00 00 */	li r3, 0x0
/* 813FB348 | 38 A0 00 01 */	li r5, 0x1
/* 813FB34C | 38 C0 00 02 */	li r6, 0x2
/* 813FB350 | 7C 09 03 A6 */	mtctr r0
.L_813FB354:
/* 813FB354 | 7C 08 50 00 */	cmpw r8, r10
/* 813FB358 | 40 82 00 2C */	bne .L_813FB384
/* 813FB35C | 7D 27 1A 14 */	add r9, r7, r3
/* 813FB360 | 88 09 00 08 */	lbz r0, 0x8(r9)
/* 813FB364 | 60 04 00 80 */	ori r4, r0, 0x80
/* 813FB368 | 54 80 07 FF */	clrlwi. r0, r4, 31
/* 813FB36C | 98 89 00 08 */	stb r4, 0x8(r9)
/* 813FB370 | 41 82 00 0C */	beq .L_813FB37C
/* 813FB374 | 98 C7 00 04 */	stb r6, 0x4(r7)
/* 813FB378 | 48 00 00 1C */	b .L_813FB394
.L_813FB37C:
/* 813FB37C | 98 A7 00 04 */	stb r5, 0x4(r7)
/* 813FB380 | 48 00 00 14 */	b .L_813FB394
.L_813FB384:
/* 813FB384 | 7C 87 1A 14 */	add r4, r7, r3
/* 813FB388 | 88 04 00 08 */	lbz r0, 0x8(r4)
/* 813FB38C | 54 00 06 7E */	clrlwi r0, r0, 25
/* 813FB390 | 98 04 00 08 */	stb r0, 0x8(r4)
.L_813FB394:
/* 813FB394 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 813FB398 | 38 63 09 1C */	addi r3, r3, 0x91c
/* 813FB39C | 42 00 FF B8 */	bdnz .L_813FB354
/* 813FB3A0 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB3A4 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB3A8 | 48 09 70 20 */	b fn_814923C8
.endfn setUseProfileID__Q33ipl3ncd10NCDSettingFv

# .text:0x13E4 | 0x813FB3AC | size: 0xA8
# ipl::ncd::NCDSetting::setAOSSParams(const NCDAossConfig&)
.fn setAOSSParams__Q33ipl3ncd10NCDSettingFRC13NCDAossConfig, global
/* 813FB3AC | A0 8D AB B0 */	lhz r4, lbl_81698BF0@sda21(r0)
/* 813FB3B0 | 3C C0 81 0C */	lis r6, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB3B4 | 38 C6 85 B8 */	addi r6, r6, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB3B8 | 38 00 00 0E */	li r0, 0xe
/* 813FB3BC | 1C 84 09 1C */	mulli r4, r4, 0x91c
/* 813FB3C0 | 38 A3 FF FE */	subi r5, r3, 0x2
/* 813FB3C4 | 7C E6 22 14 */	add r7, r6, r4
/* 813FB3C8 | 38 C7 07 CA */	addi r6, r7, 0x7ca
/* 813FB3CC | 7C 09 03 A6 */	mtctr r0
.L_813FB3D0:
/* 813FB3D0 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813FB3D4 | A4 05 00 04 */	lhzu r0, 0x4(r5)
/* 813FB3D8 | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813FB3DC | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813FB3E0 | 42 00 FF F0 */	bdnz .L_813FB3D0
/* 813FB3E4 | 38 00 00 16 */	li r0, 0x16
/* 813FB3E8 | 38 C7 08 02 */	addi r6, r7, 0x802
/* 813FB3EC | 38 A3 00 36 */	addi r5, r3, 0x36
/* 813FB3F0 | 7C 09 03 A6 */	mtctr r0
.L_813FB3F4:
/* 813FB3F4 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813FB3F8 | A4 05 00 04 */	lhzu r0, 0x4(r5)
/* 813FB3FC | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813FB400 | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813FB404 | 42 00 FF F0 */	bdnz .L_813FB3F4
/* 813FB408 | 38 00 00 19 */	li r0, 0x19
/* 813FB40C | 38 C7 08 5A */	addi r6, r7, 0x85a
/* 813FB410 | 38 A3 00 8E */	addi r5, r3, 0x8e
/* 813FB414 | 7C 09 03 A6 */	mtctr r0
.L_813FB418:
/* 813FB418 | A0 85 00 02 */	lhz r4, 0x2(r5)
/* 813FB41C | A4 05 00 04 */	lhzu r0, 0x4(r5)
/* 813FB420 | B0 86 00 02 */	sth r4, 0x2(r6)
/* 813FB424 | B4 06 00 04 */	sthu r0, 0x4(r6)
/* 813FB428 | 42 00 FF F0 */	bdnz .L_813FB418
/* 813FB42C | 38 00 00 19 */	li r0, 0x19
/* 813FB430 | 38 A7 08 BE */	addi r5, r7, 0x8be
/* 813FB434 | 38 83 00 F2 */	addi r4, r3, 0xf2
/* 813FB438 | 7C 09 03 A6 */	mtctr r0
.L_813FB43C:
/* 813FB43C | A0 64 00 02 */	lhz r3, 0x2(r4)
/* 813FB440 | A4 04 00 04 */	lhzu r0, 0x4(r4)
/* 813FB444 | B0 65 00 02 */	sth r3, 0x2(r5)
/* 813FB448 | B4 05 00 04 */	sthu r0, 0x4(r5)
/* 813FB44C | 42 00 FF F0 */	bdnz .L_813FB43C
/* 813FB450 | 4E 80 00 20 */	blr
.endfn setAOSSParams__Q33ipl3ncd10NCDSettingFRC13NCDAossConfig

# .text:0x148C | 0x813FB454 | size: 0x78
# ipl::ncd::NCDSetting::setRakuParams(const NCDApConfig&)
.fn setRakuParams__Q33ipl3ncd10NCDSettingFRC11NCDApConfig, global
/* 813FB454 | A0 8D AB B0 */	lhz r4, lbl_81698BF0@sda21(r0)
/* 813FB458 | 3C C0 81 0C */	lis r6, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB45C | 38 C6 85 B8 */	addi r6, r6, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB460 | 38 00 00 10 */	li r0, 0x10
/* 813FB464 | 1C 84 09 1C */	mulli r4, r4, 0x91c
/* 813FB468 | 38 A3 FF FF */	subi r5, r3, 0x1
/* 813FB46C | 7C E6 22 14 */	add r7, r6, r4
/* 813FB470 | 38 C7 07 CB */	addi r6, r7, 0x7cb
/* 813FB474 | 7C 09 03 A6 */	mtctr r0
.L_813FB478:
/* 813FB478 | 88 85 00 01 */	lbz r4, 0x1(r5)
/* 813FB47C | 8C 05 00 02 */	lbzu r0, 0x2(r5)
/* 813FB480 | 98 86 00 01 */	stb r4, 0x1(r6)
/* 813FB484 | 9C 06 00 02 */	stbu r0, 0x2(r6)
/* 813FB488 | 42 00 FF F0 */	bdnz .L_813FB478
/* 813FB48C | A0 C3 00 20 */	lhz r6, 0x20(r3)
/* 813FB490 | 38 83 00 23 */	addi r4, r3, 0x23
/* 813FB494 | 38 00 00 24 */	li r0, 0x24
/* 813FB498 | 38 A7 07 EF */	addi r5, r7, 0x7ef
/* 813FB49C | B0 C7 07 EC */	sth r6, 0x7ec(r7)
/* 813FB4A0 | 88 C3 00 22 */	lbz r6, 0x22(r3)
/* 813FB4A4 | 98 C7 07 EE */	stb r6, 0x7ee(r7)
/* 813FB4A8 | 88 63 00 23 */	lbz r3, 0x23(r3)
/* 813FB4AC | 98 67 07 EF */	stb r3, 0x7ef(r7)
/* 813FB4B0 | 7C 09 03 A6 */	mtctr r0
.L_813FB4B4:
/* 813FB4B4 | 88 64 00 01 */	lbz r3, 0x1(r4)
/* 813FB4B8 | 8C 04 00 02 */	lbzu r0, 0x2(r4)
/* 813FB4BC | 98 65 00 01 */	stb r3, 0x1(r5)
/* 813FB4C0 | 9C 05 00 02 */	stbu r0, 0x2(r5)
/* 813FB4C4 | 42 00 FF F0 */	bdnz .L_813FB4B4
/* 813FB4C8 | 4E 80 00 20 */	blr
.endfn setRakuParams__Q33ipl3ncd10NCDSettingFRC11NCDApConfig

# .text:0x1504 | 0x813FB4CC | size: 0xC
# ipl::ncd::NCDSetting::getID()
.fn getID__Q33ipl3ncd10NCDSettingFv, global
/* 813FB4CC | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB4D0 | 54 03 06 3E */	clrlwi r3, r0, 24
/* 813FB4D4 | 4E 80 00 20 */	blr
.endfn getID__Q33ipl3ncd10NCDSettingFv

# .text:0x1510 | 0x813FB4D8 | size: 0x1C
# ipl::ncd::NCDSetting::getSSID()
.fn getSSID__Q33ipl3ncd10NCDSettingFv, global
/* 813FB4D8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB4DC | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB4E0 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB4E4 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB4E8 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB4EC | 38 63 07 CC */	addi r3, r3, 0x7cc
/* 813FB4F0 | 4E 80 00 20 */	blr
.endfn getSSID__Q33ipl3ncd10NCDSettingFv

# .text:0x152C | 0x813FB4F4 | size: 0x78
# ipl::ncd::NCDSetting::getUseProfileID()
.fn getUseProfileID__Q33ipl3ncd10NCDSettingFv, global
/* 813FB4F4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB4F8 | 7C 08 02 A6 */	mflr r0
/* 813FB4FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB500 | 4B FF EB DD */	bl checkAllFlag__Q33ipl3ncd10NCDSettingFv
/* 813FB504 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813FB508 | 40 82 00 0C */	bne .L_813FB514
/* 813FB50C | 38 60 00 03 */	li r3, 0x3
/* 813FB510 | 48 00 00 4C */	b .L_813FB55C
.L_813FB514:
/* 813FB514 | 3C A0 81 0C */	lis r5, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB518 | 38 00 00 03 */	li r0, 0x3
/* 813FB51C | 38 A5 85 B8 */	addi r5, r5, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB520 | 38 C0 00 00 */	li r6, 0x0
/* 813FB524 | 38 60 00 00 */	li r3, 0x0
/* 813FB528 | 7C 09 03 A6 */	mtctr r0
.L_813FB52C:
/* 813FB52C | 7C 85 1A 14 */	add r4, r5, r3
/* 813FB530 | 88 84 00 08 */	lbz r4, 0x8(r4)
/* 813FB534 | 54 80 06 31 */	rlwinm. r0, r4, 0, 24, 24
/* 813FB538 | 41 82 00 14 */	beq .L_813FB54C
/* 813FB53C | 54 80 06 B5 */	rlwinm. r0, r4, 0, 26, 26
/* 813FB540 | 41 82 00 0C */	beq .L_813FB54C
/* 813FB544 | 54 C3 06 3E */	clrlwi r3, r6, 24
/* 813FB548 | 48 00 00 14 */	b .L_813FB55C
.L_813FB54C:
/* 813FB54C | 38 C6 00 01 */	addi r6, r6, 0x1
/* 813FB550 | 38 63 09 1C */	addi r3, r3, 0x91c
/* 813FB554 | 42 00 FF D8 */	bdnz .L_813FB52C
/* 813FB558 | 38 60 00 03 */	li r3, 0x3
.L_813FB55C:
/* 813FB55C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB560 | 7C 08 03 A6 */	mtlr r0
/* 813FB564 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB568 | 4E 80 00 20 */	blr
.endfn getUseProfileID__Q33ipl3ncd10NCDSettingFv

# .text:0x15A4 | 0x813FB56C | size: 0x94
# ipl::ncd::NCDSetting::getPrivacyMode()
.fn getPrivacyMode__Q33ipl3ncd10NCDSettingFv, global
/* 813FB56C | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB570 | 3C 80 81 0C */	lis r4, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB574 | 38 84 85 B8 */	addi r4, r4, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB578 | 38 60 00 00 */	li r3, 0x0
/* 813FB57C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB580 | 7C 84 02 14 */	add r4, r4, r0
/* 813FB584 | 88 84 07 CA */	lbz r4, 0x7ca(r4)
/* 813FB588 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 813FB58C | 41 82 00 0C */	beq .L_813FB598
/* 813FB590 | 28 04 00 03 */	cmplwi r4, 0x3
/* 813FB594 | 4C 82 00 20 */	bnelr
.L_813FB598:
/* 813FB598 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB59C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB5A0 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB5A4 | A0 03 07 F0 */	lhz r0, 0x7f0(r3)
/* 813FB5A8 | 28 00 00 06 */	cmplwi r0, 0x6
/* 813FB5AC | 41 81 00 4C */	bgt .L_813FB5F8
/* 813FB5B0 | 3C 60 81 65 */	lis r3, jumptable_816578D0@ha
/* 813FB5B4 | 54 00 10 3A */	slwi r0, r0, 2
/* 813FB5B8 | 38 63 78 D0 */	addi r3, r3, jumptable_816578D0@l
/* 813FB5BC | 7C 63 00 2E */	lwzx r3, r3, r0
/* 813FB5C0 | 7C 69 03 A6 */	mtctr r3
/* 813FB5C4 | 4E 80 04 20 */	bctr
.L_813FB5C8:
/* 813FB5C8 | 38 60 00 00 */	li r3, 0x0
/* 813FB5CC | 4E 80 00 20 */	blr
.L_813FB5D0:
/* 813FB5D0 | 38 60 00 01 */	li r3, 0x1
/* 813FB5D4 | 4E 80 00 20 */	blr
.L_813FB5D8:
/* 813FB5D8 | 38 60 00 01 */	li r3, 0x1
/* 813FB5DC | 4E 80 00 20 */	blr
.L_813FB5E0:
/* 813FB5E0 | 38 60 00 02 */	li r3, 0x2
/* 813FB5E4 | 4E 80 00 20 */	blr
.L_813FB5E8:
/* 813FB5E8 | 38 60 00 04 */	li r3, 0x4
/* 813FB5EC | 4E 80 00 20 */	blr
.L_813FB5F0:
/* 813FB5F0 | 38 60 00 03 */	li r3, 0x3
/* 813FB5F4 | 4E 80 00 20 */	blr
.L_813FB5F8:
/* 813FB5F8 | 38 60 00 00 */	li r3, 0x0
/* 813FB5FC | 4E 80 00 20 */	blr
.endfn getPrivacyMode__Q33ipl3ncd10NCDSettingFv

# .text:0x1638 | 0x813FB600 | size: 0x44
# ipl::ncd::NCDSetting::getNCDPrivacyMode()
.fn getNCDPrivacyMode__Q33ipl3ncd10NCDSettingFv, global
/* 813FB600 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB604 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB608 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB60C | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB610 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB614 | 88 63 07 CA */	lbz r3, 0x7ca(r3)
/* 813FB618 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FB61C | 41 82 00 0C */	beq .L_813FB628
/* 813FB620 | 28 03 00 03 */	cmplwi r3, 0x3
/* 813FB624 | 40 82 00 18 */	bne .L_813FB63C
.L_813FB628:
/* 813FB628 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB62C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB630 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB634 | A0 63 07 F0 */	lhz r3, 0x7f0(r3)
/* 813FB638 | 4E 80 00 20 */	blr
.L_813FB63C:
/* 813FB63C | 38 60 00 00 */	li r3, 0x0
/* 813FB640 | 4E 80 00 20 */	blr
.endfn getNCDPrivacyMode__Q33ipl3ncd10NCDSettingFv

# .text:0x167C | 0x813FB644 | size: 0x70
# ipl::ncd::NCDSetting::getPrivacy()
.fn getPrivacy__Q33ipl3ncd10NCDSettingFv, global
/* 813FB644 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB648 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB64C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB650 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB654 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB658 | A0 03 07 F0 */	lhz r0, 0x7f0(r3)
/* 813FB65C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813FB660 | 41 82 00 4C */	beq .L_813FB6AC
/* 813FB664 | 40 80 00 14 */	bge .L_813FB678
/* 813FB668 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FB66C | 41 82 00 20 */	beq .L_813FB68C
/* 813FB670 | 40 80 00 24 */	bge .L_813FB694
/* 813FB674 | 48 00 00 38 */	b .L_813FB6AC
.L_813FB678:
/* 813FB678 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813FB67C | 40 80 00 30 */	bge .L_813FB6AC
/* 813FB680 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813FB684 | 40 80 00 20 */	bge .L_813FB6A4
/* 813FB688 | 48 00 00 14 */	b .L_813FB69C
.L_813FB68C:
/* 813FB68C | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FB690 | 4E 80 00 20 */	blr
.L_813FB694:
/* 813FB694 | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FB698 | 4E 80 00 20 */	blr
.L_813FB69C:
/* 813FB69C | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FB6A0 | 4E 80 00 20 */	blr
.L_813FB6A4:
/* 813FB6A4 | 38 63 07 F8 */	addi r3, r3, 0x7f8
/* 813FB6A8 | 4E 80 00 20 */	blr
.L_813FB6AC:
/* 813FB6AC | 38 60 00 00 */	li r3, 0x0
/* 813FB6B0 | 4E 80 00 20 */	blr
.endfn getPrivacy__Q33ipl3ncd10NCDSettingFv

# .text:0x16EC | 0x813FB6B4 | size: 0x90
# ipl::ncd::NCDSetting::getPrivacyLen()
.fn getPrivacyLen__Q33ipl3ncd10NCDSettingFv, global
/* 813FB6B4 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB6B8 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB6BC | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB6C0 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB6C4 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB6C8 | A0 03 07 F0 */	lhz r0, 0x7f0(r3)
/* 813FB6CC | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813FB6D0 | 41 82 00 6C */	beq .L_813FB73C
/* 813FB6D4 | 40 80 00 14 */	bge .L_813FB6E8
/* 813FB6D8 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813FB6DC | 41 82 00 20 */	beq .L_813FB6FC
/* 813FB6E0 | 40 80 00 34 */	bge .L_813FB714
/* 813FB6E4 | 48 00 00 58 */	b .L_813FB73C
.L_813FB6E8:
/* 813FB6E8 | 2C 00 00 07 */	cmpwi r0, 0x7
/* 813FB6EC | 40 80 00 50 */	bge .L_813FB73C
/* 813FB6F0 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 813FB6F4 | 40 80 00 40 */	bge .L_813FB734
/* 813FB6F8 | 48 00 00 34 */	b .L_813FB72C
.L_813FB6FC:
/* 813FB6FC | 88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 813FB700 | 38 60 00 0A */	li r3, 0xa
/* 813FB704 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FB708 | 4C 82 00 20 */	bnelr
/* 813FB70C | 38 60 00 05 */	li r3, 0x5
/* 813FB710 | 4E 80 00 20 */	blr
.L_813FB714:
/* 813FB714 | 88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 813FB718 | 38 60 00 1A */	li r3, 0x1a
/* 813FB71C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813FB720 | 4C 82 00 20 */	bnelr
/* 813FB724 | 38 60 00 0D */	li r3, 0xd
/* 813FB728 | 4E 80 00 20 */	blr
.L_813FB72C:
/* 813FB72C | A0 63 07 F4 */	lhz r3, 0x7f4(r3)
/* 813FB730 | 4E 80 00 20 */	blr
.L_813FB734:
/* 813FB734 | A0 63 07 F4 */	lhz r3, 0x7f4(r3)
/* 813FB738 | 4E 80 00 20 */	blr
.L_813FB73C:
/* 813FB73C | 38 60 00 00 */	li r3, 0x0
/* 813FB740 | 4E 80 00 20 */	blr
.endfn getPrivacyLen__Q33ipl3ncd10NCDSettingFv

# .text:0x177C | 0x813FB744 | size: 0x1C
# ipl::ncd::NCDSetting::getIP()
.fn getIP__Q33ipl3ncd10NCDSettingFv, global
/* 813FB744 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB748 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB74C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB750 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB754 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB758 | 38 63 00 0C */	addi r3, r3, 0xc
/* 813FB75C | 4E 80 00 20 */	blr
.endfn getIP__Q33ipl3ncd10NCDSettingFv

# .text:0x1798 | 0x813FB760 | size: 0x8
# ipl::ncd::NCDSetting::getMacNum()
.fn getMacNum__Q33ipl3ncd10NCDSettingFv, global
/* 813FB760 | 80 6D AB B4 */	lwz r3, lbl_81698BF4@sda21(r0)
/* 813FB764 | 4E 80 00 20 */	blr
.endfn getMacNum__Q33ipl3ncd10NCDSettingFv

# .text:0x17A0 | 0x813FB768 | size: 0xC
# ipl::ncd::NCDSetting::getMacAddr()
.fn getMacAddr__Q33ipl3ncd10NCDSettingFv, global
/* 813FB768 | 3C 60 81 0C */	lis r3, mMac__Q33ipl3ncd10NCDSetting@ha
/* 813FB76C | 38 63 BC 70 */	addi r3, r3, mMac__Q33ipl3ncd10NCDSetting@l
/* 813FB770 | 4E 80 00 20 */	blr
.endfn getMacAddr__Q33ipl3ncd10NCDSettingFv

# .text:0x17AC | 0x813FB774 | size: 0x134
# ipl::ncd::NCDSetting::makeMacAddr()
.fn makeMacAddr__Q33ipl3ncd10NCDSettingFv, global
/* 813FB774 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 813FB778 | 7C 08 02 A6 */	mflr r0
/* 813FB77C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 813FB780 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813FB784 | 48 1F DD 45 */	bl _savegpr_29
/* 813FB788 | 3F E0 81 65 */	lis r31, lbl_81657898@ha
/* 813FB78C | 38 61 00 08 */	addi r3, r1, 0x8
/* 813FB790 | 3B FF 78 98 */	addi r31, r31, lbl_81657898@l
/* 813FB794 | 48 09 A0 B1 */	bl fn_81495844
/* 813FB798 | 2C 03 FF FC */	cmpwi r3, -0x4
/* 813FB79C | 41 82 00 C8 */	beq .L_813FB864
/* 813FB7A0 | 40 80 00 10 */	bge .L_813FB7B0
/* 813FB7A4 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 813FB7A8 | 41 82 00 BC */	beq .L_813FB864
/* 813FB7AC | 48 00 00 D0 */	b .L_813FB87C
.L_813FB7B0:
/* 813FB7B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FB7B4 | 41 82 00 08 */	beq .L_813FB7BC
/* 813FB7B8 | 48 00 00 C4 */	b .L_813FB87C
.L_813FB7BC:
/* 813FB7BC | 88 A1 00 08 */	lbz r5, 0x8(r1)
/* 813FB7C0 | 38 61 00 0F */	addi r3, r1, 0xf
/* 813FB7C4 | 88 C1 00 09 */	lbz r6, 0x9(r1)
/* 813FB7C8 | 38 9F 00 54 */	addi r4, r31, 0x54
/* 813FB7CC | 88 E1 00 0A */	lbz r7, 0xa(r1)
/* 813FB7D0 | 89 01 00 0B */	lbz r8, 0xb(r1)
/* 813FB7D4 | 89 21 00 0C */	lbz r9, 0xc(r1)
/* 813FB7D8 | 89 41 00 0D */	lbz r10, 0xd(r1)
/* 813FB7DC | 4C C6 31 82 */	crclr cr1eq
/* 813FB7E0 | 48 20 52 A1 */	bl sprintf
/* 813FB7E4 | 38 7F 00 72 */	addi r3, r31, 0x72
/* 813FB7E8 | 38 81 00 0F */	addi r4, r1, 0xf
/* 813FB7EC | 4C C6 31 82 */	crclr cr1eq
/* 813FB7F0 | 48 13 2E B1 */	bl OSReport
/* 813FB7F4 | 3C 60 81 0C */	lis r3, mMac__Q33ipl3ncd10NCDSetting@ha
/* 813FB7F8 | 38 81 00 0F */	addi r4, r1, 0xf
/* 813FB7FC | 38 63 BC 70 */	addi r3, r3, mMac__Q33ipl3ncd10NCDSetting@l
/* 813FB800 | 4B F6 89 31 */	bl ANSIToUTF8__Q33ipl7utility13CharacterCodeFPcPCUc
/* 813FB804 | 38 61 00 0F */	addi r3, r1, 0xf
/* 813FB808 | 38 80 00 00 */	li r4, 0x0
/* 813FB80C | 38 A0 00 12 */	li r5, 0x12
/* 813FB810 | 4B F3 4B 25 */	bl memset
/* 813FB814 | 38 61 00 11 */	addi r3, r1, 0x11
/* 813FB818 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813FB81C | 38 A0 00 06 */	li r5, 0x6
/* 813FB820 | 4B F3 4A 11 */	bl memcpy
/* 813FB824 | 83 A1 00 13 */	lwz r29, 0x13(r1)
/* 813FB828 | 3C 60 05 F6 */	lis r3, 0x5f6
/* 813FB82C | 83 C1 00 0F */	lwz r30, 0xf(r1)
/* 813FB830 | 38 C3 E1 00 */	subi r6, r3, 0x1f00
/* 813FB834 | 38 A0 00 00 */	li r5, 0x0
/* 813FB838 | 7F A4 EB 78 */	mr r4, r29
/* 813FB83C | 7F C3 F3 78 */	mr r3, r30
/* 813FB840 | 48 1F DF 09 */	bl __mod2u
/* 813FB844 | 90 8D AB B4 */	stw r4, lbl_81698BF4@sda21(r0)
/* 813FB848 | 7C 87 23 78 */	mr r7, r4
/* 813FB84C | 7F A6 EB 78 */	mr r6, r29
/* 813FB850 | 7F C5 F3 78 */	mr r5, r30
/* 813FB854 | 38 7F 00 7B */	addi r3, r31, 0x7b
/* 813FB858 | 4C C6 31 82 */	crclr cr1eq
/* 813FB85C | 48 13 2E 45 */	bl OSReport
/* 813FB860 | 48 00 00 30 */	b .L_813FB890
.L_813FB864:
/* 813FB864 | 38 7F 00 84 */	addi r3, r31, 0x84
/* 813FB868 | 38 BF 00 96 */	addi r5, r31, 0x96
/* 813FB86C | 38 80 04 36 */	li r4, 0x436
/* 813FB870 | 4C C6 31 82 */	crclr cr1eq
/* 813FB874 | 48 13 2E BD */	bl OSPanic
/* 813FB878 | 48 00 00 18 */	b .L_813FB890
.L_813FB87C:
/* 813FB87C | 38 7F 00 84 */	addi r3, r31, 0x84
/* 813FB880 | 38 BF 00 A2 */	addi r5, r31, 0xa2
/* 813FB884 | 38 80 04 3B */	li r4, 0x43b
/* 813FB888 | 4C C6 31 82 */	crclr cr1eq
/* 813FB88C | 48 13 2E A5 */	bl OSPanic
.L_813FB890:
/* 813FB890 | 39 61 00 40 */	addi r11, r1, 0x40
/* 813FB894 | 48 1F DC 81 */	bl _restgpr_29
/* 813FB898 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 813FB89C | 7C 08 03 A6 */	mtlr r0
/* 813FB8A0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 813FB8A4 | 4E 80 00 20 */	blr
.endfn makeMacAddr__Q33ipl3ncd10NCDSettingFv

# .text:0x18E0 | 0x813FB8A8 | size: 0x1C
# ipl::ncd::NCDSetting::getProxy()
.fn getProxy__Q33ipl3ncd10NCDSettingFv, global
/* 813FB8A8 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB8AC | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB8B0 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB8B4 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB8B8 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB8BC | 38 63 00 2C */	addi r3, r3, 0x2c
/* 813FB8C0 | 4E 80 00 20 */	blr
.endfn getProxy__Q33ipl3ncd10NCDSettingFv

# .text:0x18FC | 0x813FB8C4 | size: 0x1C
# ipl::ncd::NCDSetting::getMTU()
.fn getMTU__Q33ipl3ncd10NCDSettingFv, global
/* 813FB8C4 | A0 0D AB B0 */	lhz r0, lbl_81698BF0@sda21(r0)
/* 813FB8C8 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB8CC | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB8D0 | 1C 00 09 1C */	mulli r0, r0, 0x91c
/* 813FB8D4 | 7C 63 02 14 */	add r3, r3, r0
/* 813FB8D8 | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 813FB8DC | 4E 80 00 20 */	blr
.endfn getMTU__Q33ipl3ncd10NCDSettingFv

# .text:0x1918 | 0x813FB8E0 | size: 0xC
# ipl::ncd::NCDSetting::getData()
.fn getData__Q33ipl3ncd10NCDSettingFv, global
/* 813FB8E0 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB8E4 | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB8E8 | 4E 80 00 20 */	blr
.endfn getData__Q33ipl3ncd10NCDSettingFv

# .text:0x1924 | 0x813FB8EC | size: 0x58
# ipl::ncd::NCDSetting::getConnectEnableFlag()
.fn getConnectEnableFlag__Q33ipl3ncd10NCDSettingFv, global
/* 813FB8EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB8F0 | 7C 08 02 A6 */	mflr r0
/* 813FB8F4 | 38 80 00 00 */	li r4, 0x0
/* 813FB8F8 | 38 A0 1B 5C */	li r5, 0x1b5c
/* 813FB8FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB900 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FB904 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB908 | 38 7F 85 B8 */	addi r3, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB90C | 4B F3 4A 29 */	bl memset
/* 813FB910 | 38 7F 85 B8 */	addi r3, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB914 | 48 09 6A 8D */	bl NCDReadConfig
/* 813FB918 | 3C A0 81 65 */	lis r5, lbl_81657898@ha
/* 813FB91C | 7C 64 1B 78 */	mr r4, r3
/* 813FB920 | 38 65 78 98 */	addi r3, r5, lbl_81657898@l
/* 813FB924 | 4C C6 31 82 */	crclr cr1eq
/* 813FB928 | 48 13 2D 79 */	bl OSReport
/* 813FB92C | 48 00 00 19 */	bl getEnableFlag__Q33ipl3ncd10NCDSettingFv
/* 813FB930 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB934 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FB938 | 7C 08 03 A6 */	mtlr r0
/* 813FB93C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB940 | 4E 80 00 20 */	blr
.endfn getConnectEnableFlag__Q33ipl3ncd10NCDSettingFv

# .text:0x197C | 0x813FB944 | size: 0x44
# ipl::ncd::NCDSetting::getEnableFlag()
.fn getEnableFlag__Q33ipl3ncd10NCDSettingFv, global
/* 813FB944 | 3C A0 81 0C */	lis r5, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB948 | 38 00 00 03 */	li r0, 0x3
/* 813FB94C | 38 A5 85 B8 */	addi r5, r5, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB950 | 38 60 00 00 */	li r3, 0x0
/* 813FB954 | 7C 09 03 A6 */	mtctr r0
.L_813FB958:
/* 813FB958 | 7C 85 1A 14 */	add r4, r5, r3
/* 813FB95C | 88 84 00 08 */	lbz r4, 0x8(r4)
/* 813FB960 | 54 80 06 31 */	rlwinm. r0, r4, 0, 24, 24
/* 813FB964 | 41 82 00 14 */	beq .L_813FB978
/* 813FB968 | 54 80 06 B5 */	rlwinm. r0, r4, 0, 26, 26
/* 813FB96C | 41 82 00 0C */	beq .L_813FB978
/* 813FB970 | 38 60 00 01 */	li r3, 0x1
/* 813FB974 | 4E 80 00 20 */	blr
.L_813FB978:
/* 813FB978 | 38 63 09 1C */	addi r3, r3, 0x91c
/* 813FB97C | 42 00 FF DC */	bdnz .L_813FB958
/* 813FB980 | 38 60 00 00 */	li r3, 0x0
/* 813FB984 | 4E 80 00 20 */	blr
.endfn getEnableFlag__Q33ipl3ncd10NCDSettingFv

# .text:0x19C0 | 0x813FB988 | size: 0x2C
# ipl::ncd::NCDSetting::adjustNWC24Flag()
.fn adjustNWC24Flag__Q33ipl3ncd10NCDSettingFv, global
/* 813FB988 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB98C | 7C 08 02 A6 */	mflr r0
/* 813FB990 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB994 | 48 00 00 21 */	bl adjustNWC24FlagEx___Q33ipl3ncd10NCDSettingFv
/* 813FB998 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB99C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB9A0 | 48 09 6A 29 */	bl fn_814923C8
/* 813FB9A4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FB9A8 | 7C 08 03 A6 */	mtlr r0
/* 813FB9AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FB9B0 | 4E 80 00 20 */	blr
.endfn adjustNWC24Flag__Q33ipl3ncd10NCDSettingFv

# .text:0x19EC | 0x813FB9B4 | size: 0xA0
# ipl::ncd::NCDSetting::adjustNWC24FlagEx_()
.fn adjustNWC24FlagEx___Q33ipl3ncd10NCDSettingFv, global
/* 813FB9B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813FB9B8 | 7C 08 02 A6 */	mflr r0
/* 813FB9BC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813FB9C0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813FB9C4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813FB9C8 | 48 16 EE 59 */	bl SCGetWCFlags
/* 813FB9CC | 54 7E 07 FE */	clrlwi r30, r3, 31
/* 813FB9D0 | 48 16 EC DD */	bl SCGetNetContentRestrictions
/* 813FB9D4 | 3F E0 81 0C */	lis r31, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FB9D8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813FB9DC | 3B FF 85 B8 */	addi r31, r31, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FB9E0 | 38 00 00 00 */	li r0, 0x0
/* 813FB9E4 | 98 1F 00 05 */	stb r0, 0x5(r31)
/* 813FB9E8 | 54 7E 07 BC */	rlwinm r30, r3, 0, 30, 30
/* 813FB9EC | 41 82 00 50 */	beq .L_813FBA3C
/* 813FB9F0 | 48 16 ED ED */	bl fn_8156A7DC
/* 813FB9F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813FB9F8 | 41 82 00 44 */	beq .L_813FBA3C
/* 813FB9FC | 88 1F 00 05 */	lbz r0, 0x5(r31)
/* 813FBA00 | 60 00 00 04 */	ori r0, r0, 0x4
/* 813FBA04 | 98 1F 00 05 */	stb r0, 0x5(r31)
/* 813FBA08 | 48 00 01 95 */	bl checkFlags__Q33ipl8parental8ParentalFv
/* 813FBA0C | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813FBA10 | 41 82 00 18 */	beq .L_813FBA28
/* 813FBA14 | 48 00 01 89 */	bl checkFlags__Q33ipl8parental8ParentalFv
/* 813FBA18 | 54 60 06 3F */	clrlwi. r0, r3, 24
/* 813FBA1C | 41 82 00 20 */	beq .L_813FBA3C
/* 813FBA20 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 813FBA24 | 40 82 00 18 */	bne .L_813FBA3C
.L_813FBA28:
/* 813FBA28 | 3C 60 81 0C */	lis r3, mConfig__Q33ipl3ncd10NCDSetting@ha
/* 813FBA2C | 38 63 85 B8 */	addi r3, r3, mConfig__Q33ipl3ncd10NCDSetting@l
/* 813FBA30 | 88 03 00 05 */	lbz r0, 0x5(r3)
/* 813FBA34 | 60 00 00 03 */	ori r0, r0, 0x3
/* 813FBA38 | 98 03 00 05 */	stb r0, 0x5(r3)
.L_813FBA3C:
/* 813FBA3C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813FBA40 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813FBA44 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813FBA48 | 7C 08 03 A6 */	mtlr r0
/* 813FBA4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813FBA50 | 4E 80 00 20 */	blr
.endfn adjustNWC24FlagEx___Q33ipl3ncd10NCDSettingFv

# 0x81657898..0x81657950 | size: 0xB8
.data
.balign 8

# .data:0x0 | 0x81657898 | size: 0x14
.obj lbl_81657898, global
	.4byte 0x4E434452
	.4byte 0x65616443
	.4byte 0x6F6E6669
	.4byte 0x673A2025
	.4byte 0x640A0000
.endobj lbl_81657898

# .data:0x14 | 0x816578AC | size: 0x24
.obj jumptable_816578AC, local
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FAD94
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FAD9C
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FADA4
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FADD4
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FADAC
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FADB4
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FADBC
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FADC4
	.rel setWDPrivacyMode__Q33ipl3ncd10NCDSettingFUs, .L_813FADCC
.endobj jumptable_816578AC

# .data:0x38 | 0x816578D0 | size: 0x1C
.obj jumptable_816578D0, local
	.rel getPrivacyMode__Q33ipl3ncd10NCDSettingFv, .L_813FB5C8
	.rel getPrivacyMode__Q33ipl3ncd10NCDSettingFv, .L_813FB5D0
	.rel getPrivacyMode__Q33ipl3ncd10NCDSettingFv, .L_813FB5D8
	.rel getPrivacyMode__Q33ipl3ncd10NCDSettingFv, .L_813FB5F8
	.rel getPrivacyMode__Q33ipl3ncd10NCDSettingFv, .L_813FB5E0
	.rel getPrivacyMode__Q33ipl3ncd10NCDSettingFv, .L_813FB5E8
	.rel getPrivacyMode__Q33ipl3ncd10NCDSettingFv, .L_813FB5F0
.endobj jumptable_816578D0

# .data:0x54 | 0x816578EC | size: 0x64
.obj gap_08_816578EC_data, global
.hidden gap_08_816578EC_data
	.4byte 0x25303278
	.4byte 0x2D253032
	.4byte 0x782D2530
	.4byte 0x32782D25
	.4byte 0x3032782D
	.4byte 0x25303278
	.4byte 0x2D253032
	.4byte 0x78004D41
	.4byte 0x433A2025
	.4byte 0x730A0025
	.4byte 0x6C6C6420
	.4byte 0x25640A00
	.4byte 0x69706C4E
	.4byte 0x43445365
	.4byte 0x7474696E
	.4byte 0x672E6370
	.4byte 0x70007472
	.4byte 0x79206167
	.4byte 0x61696E21
	.4byte 0x2100556E
	.4byte 0x7265636F
	.4byte 0x76657261
	.4byte 0x626C6520
	.4byte 0x4572726F
	.4byte 0x72212100
.endobj gap_08_816578EC_data

# 0x81698BF0..0x81698BF8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698BF0 | size: 0x2
.obj lbl_81698BF0, global
	.skip 0x2
.endobj lbl_81698BF0

# .sbss:0x2 | 0x81698BF2 | size: 0x2
.obj gap_12_81698BF2_sbss, global
.hidden gap_12_81698BF2_sbss
	.skip 0x2
.endobj gap_12_81698BF2_sbss

# .sbss:0x4 | 0x81698BF4 | size: 0x4
.obj lbl_81698BF4, global
	.skip 0x4
.endobj lbl_81698BF4
