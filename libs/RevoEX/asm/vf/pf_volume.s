.include "macros.inc"
.file "pf_volume.c"

# 0x810CD7F0..0x810F5540 | size: 0x27D50
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810CD7F0 | size: 0x27D50
.obj VFipf_vol_set_810CD7F0, global
	.skip 0x27D50
.endobj VFipf_vol_set_810CD7F0

# 0x814CD058..0x814CF108 | size: 0x20B0
.text
.balign 4

# .text:0x0 | 0x814CD058 | size: 0x114
.fn VFiPFVOL_DoMountVolume, global
/* 814CD058 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CD05C | 7C 08 02 A6 */	mflr r0
/* 814CD060 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CD064 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CD068 | 7C 7F 1B 78 */	mr r31, r3
/* 814CD06C | 4B FE 96 D1 */	bl VFiPFDRV_mount
/* 814CD070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD074 | 41 82 00 08 */	beq .L_814CD07C
/* 814CD078 | 48 00 00 E0 */	b .L_814CD158
.L_814CD07C:
/* 814CD07C | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814CD080 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CD084 | 41 82 00 0C */	beq .L_814CD090
/* 814CD088 | 54 00 05 FF */	clrlwi. r0, r0, 23
/* 814CD08C | 41 82 00 0C */	beq .L_814CD098
.L_814CD090:
/* 814CD090 | 38 60 00 0F */	li r3, 0xf
/* 814CD094 | 48 00 00 C4 */	b .L_814CD158
.L_814CD098:
/* 814CD098 | 7F E3 FB 78 */	mr r3, r31
/* 814CD09C | 4B FE EC 8D */	bl VFiPFCACHE_InitCaches
/* 814CD0A0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD0A4 | 41 82 00 08 */	beq .L_814CD0AC
/* 814CD0A8 | 48 00 00 B0 */	b .L_814CD158
.L_814CD0AC:
/* 814CD0AC | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD0B0 | 60 03 00 02 */	ori r3, r0, 0x2
/* 814CD0B4 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 814CD0B8 | B0 7F 18 60 */	sth r3, 0x1860(r31)
/* 814CD0BC | 40 82 00 0C */	bne .L_814CD0C8
/* 814CD0C0 | 38 60 00 09 */	li r3, 0x9
/* 814CD0C4 | 48 00 00 34 */	b .L_814CD0F8
.L_814CD0C8:
/* 814CD0C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CD0CC | 48 00 2B F9 */	bl VFiPFSYS_GetCurrentContextID
/* 814CD0D0 | 80 1F 16 00 */	lwz r0, 0x1600(r31)
/* 814CD0D4 | 38 9F 16 08 */	addi r4, r31, 0x1608
/* 814CD0D8 | 7F E3 FB 78 */	mr r3, r31
/* 814CD0DC | 60 00 00 01 */	ori r0, r0, 0x1
/* 814CD0E0 | 90 1F 16 00 */	stw r0, 0x1600(r31)
/* 814CD0E4 | 4B FF 1E BD */	bl VFiPFENT_GetRootDir
/* 814CD0E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD0EC | 41 82 00 08 */	beq .L_814CD0F4
/* 814CD0F0 | 48 00 00 08 */	b .L_814CD0F8
.L_814CD0F4:
/* 814CD0F4 | 38 60 00 00 */	li r3, 0x0
.L_814CD0F8:
/* 814CD0F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD0FC | 40 82 00 48 */	bne .L_814CD144
/* 814CD100 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD104 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814CD108 | 41 82 00 3C */	beq .L_814CD144
/* 814CD10C | 80 9F 18 7C */	lwz r4, 0x187c(r31)
/* 814CD110 | 7F E3 FB 78 */	mr r3, r31
/* 814CD114 | 4B FE 98 E9 */	bl VFiPFDRV_format
/* 814CD118 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD11C | 40 82 00 28 */	bne .L_814CD144
/* 814CD120 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD124 | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 814CD128 | 40 82 00 1C */	bne .L_814CD144
/* 814CD12C | 7F E3 FB 78 */	mr r3, r31
/* 814CD130 | 4B FF 76 91 */	bl VFiPFFAT_InitFATRegion
/* 814CD134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD138 | 40 82 00 0C */	bne .L_814CD144
/* 814CD13C | 7F E3 FB 78 */	mr r3, r31
/* 814CD140 | 4B FF 1F 09 */	bl VFiPFENT_MakeRootDir
.L_814CD144:
/* 814CD144 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD148 | 41 82 00 10 */	beq .L_814CD158
/* 814CD14C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD150 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CD154 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CD158:
/* 814CD158 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CD15C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CD160 | 7C 08 03 A6 */	mtlr r0
/* 814CD164 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CD168 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_DoMountVolume

# .text:0x114 | 0x814CD16C | size: 0x104
.fn VFiPFVOL_p_unmount, global
/* 814CD16C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CD170 | 7C 08 02 A6 */	mflr r0
/* 814CD174 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CD178 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CD17C | 3B E0 00 00 */	li r31, 0x0
/* 814CD180 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CD184 | 7C 9E 23 78 */	mr r30, r4
/* 814CD188 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814CD18C | 7C 7D 1B 78 */	mr r29, r3
/* 814CD190 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CD194 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD198 | 40 82 00 0C */	bne .L_814CD1A4
/* 814CD19C | 38 60 00 09 */	li r3, 0x9
/* 814CD1A0 | 48 00 00 B4 */	b .L_814CD254
.L_814CD1A4:
/* 814CD1A4 | 4B FF BA 91 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CD1A8 | 7F A3 EB 78 */	mr r3, r29
/* 814CD1AC | 4B FF 0A 99 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CD1B0 | 7F A3 EB 78 */	mr r3, r29
/* 814CD1B4 | 4B FE F3 81 */	bl VFiPFCACHE_FlushAllCaches
/* 814CD1B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD1BC | 41 82 00 08 */	beq .L_814CD1C4
/* 814CD1C0 | 7C 7F 1B 78 */	mr r31, r3
.L_814CD1C4:
/* 814CD1C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD1C8 | 41 82 00 0C */	beq .L_814CD1D4
/* 814CD1CC | 57 C0 07 FF */	clrlwi. r0, r30, 31
/* 814CD1D0 | 41 82 00 5C */	beq .L_814CD22C
.L_814CD1D4:
/* 814CD1D4 | 7F A3 EB 78 */	mr r3, r29
/* 814CD1D8 | 4B FE F4 71 */	bl VFiPFCACHE_FreeAllCaches
/* 814CD1DC | 7F A3 EB 78 */	mr r3, r29
/* 814CD1E0 | 7F C4 F3 78 */	mr r4, r30
/* 814CD1E4 | 4B FE 97 91 */	bl VFiPFDRV_unmount
/* 814CD1E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD1EC | 41 82 00 08 */	beq .L_814CD1F4
/* 814CD1F0 | 48 00 00 28 */	b .L_814CD218
.L_814CD1F4:
/* 814CD1F4 | A0 1D 18 60 */	lhz r0, 0x1860(r29)
/* 814CD1F8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD1FC | 41 82 00 0C */	beq .L_814CD208
/* 814CD200 | 38 00 00 00 */	li r0, 0x0
/* 814CD204 | 90 1D 16 00 */	stw r0, 0x1600(r29)
.L_814CD208:
/* 814CD208 | A0 1D 18 60 */	lhz r0, 0x1860(r29)
/* 814CD20C | 38 60 00 00 */	li r3, 0x0
/* 814CD210 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CD214 | B0 1D 18 60 */	sth r0, 0x1860(r29)
.L_814CD218:
/* 814CD218 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD21C | 41 82 00 10 */	beq .L_814CD22C
/* 814CD220 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CD224 | 40 82 00 08 */	bne .L_814CD22C
/* 814CD228 | 7C 7F 1B 78 */	mr r31, r3
.L_814CD22C:
/* 814CD22C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CD230 | 41 82 00 0C */	beq .L_814CD23C
/* 814CD234 | 57 C0 07 FF */	clrlwi. r0, r30, 31
/* 814CD238 | 41 82 00 18 */	beq .L_814CD250
.L_814CD23C:
/* 814CD23C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD240 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD244 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CD248 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CD24C | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CD250:
/* 814CD250 | 7F E3 FB 78 */	mr r3, r31
.L_814CD254:
/* 814CD254 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CD258 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CD25C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CD260 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814CD264 | 7C 08 03 A6 */	mtlr r0
/* 814CD268 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CD26C | 4E 80 00 20 */	blr
.endfn VFiPFVOL_p_unmount

# .text:0x218 | 0x814CD270 | size: 0x1FC
.fn VFiPFVOL_p_format, global
/* 814CD270 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814CD274 | 7C 08 02 A6 */	mflr r0
/* 814CD278 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814CD27C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CD280 | 48 12 C2 41 */	bl _savegpr_27
/* 814CD284 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD288 | 7C 7F 1B 78 */	mr r31, r3
/* 814CD28C | 7C 9B 23 78 */	mr r27, r4
/* 814CD290 | 3B C0 00 00 */	li r30, 0x0
/* 814CD294 | 3B A0 00 00 */	li r29, 0x0
/* 814CD298 | 3B 80 00 00 */	li r28, 0x0
/* 814CD29C | 40 82 00 0C */	bne .L_814CD2A8
/* 814CD2A0 | 38 60 00 0A */	li r3, 0xa
/* 814CD2A4 | 48 00 01 B0 */	b .L_814CD454
.L_814CD2A8:
/* 814CD2A8 | 4B FE 93 D1 */	bl VFiPFDRV_IsWProtected
/* 814CD2AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD2B0 | 41 82 00 0C */	beq .L_814CD2BC
/* 814CD2B4 | 38 60 00 0B */	li r3, 0xb
/* 814CD2B8 | 48 00 01 9C */	b .L_814CD454
.L_814CD2BC:
/* 814CD2BC | 7F E3 FB 78 */	mr r3, r31
/* 814CD2C0 | 7F 64 DB 78 */	mr r4, r27
/* 814CD2C4 | 4B FE 97 39 */	bl VFiPFDRV_format
/* 814CD2C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD2CC | 41 82 00 08 */	beq .L_814CD2D4
/* 814CD2D0 | 48 00 01 84 */	b .L_814CD454
.L_814CD2D4:
/* 814CD2D4 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD2D8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD2DC | 41 82 00 30 */	beq .L_814CD30C
/* 814CD2E0 | 83 BF 15 D0 */	lwz r29, 0x15d0(r31)
/* 814CD2E4 | 7F E3 FB 78 */	mr r3, r31
/* 814CD2E8 | A3 9F 18 64 */	lhz r28, 0x1864(r31)
/* 814CD2EC | 3B C0 00 01 */	li r30, 0x1
/* 814CD2F0 | 4B FE F3 59 */	bl VFiPFCACHE_FreeAllCaches
/* 814CD2F4 | 7F E3 FB 78 */	mr r3, r31
/* 814CD2F8 | 38 80 00 00 */	li r4, 0x0
/* 814CD2FC | 4B FF FE 71 */	bl VFiPFVOL_p_unmount
/* 814CD300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD304 | 41 82 00 08 */	beq .L_814CD30C
/* 814CD308 | 48 00 01 4C */	b .L_814CD454
.L_814CD30C:
/* 814CD30C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD310 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD314 | 40 82 00 38 */	bne .L_814CD34C
/* 814CD318 | 7F E3 FB 78 */	mr r3, r31
/* 814CD31C | 4B FF FD 3D */	bl VFiPFVOL_DoMountVolume
/* 814CD320 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD324 | 41 82 00 08 */	beq .L_814CD32C
/* 814CD328 | 48 00 00 28 */	b .L_814CD350
.L_814CD32C:
/* 814CD32C | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814CD330 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD334 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD338 | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 814CD33C | B0 1F 18 64 */	sth r0, 0x1864(r31)
/* 814CD340 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CD344 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CD348 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CD34C:
/* 814CD34C | 38 60 00 00 */	li r3, 0x0
.L_814CD350:
/* 814CD350 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD354 | 41 82 00 08 */	beq .L_814CD35C
/* 814CD358 | 48 00 00 FC */	b .L_814CD454
.L_814CD35C:
/* 814CD35C | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814CD360 | 40 82 00 0C */	bne .L_814CD36C
/* 814CD364 | 93 BF 15 D0 */	stw r29, 0x15d0(r31)
/* 814CD368 | B3 9F 18 64 */	sth r28, 0x1864(r31)
.L_814CD36C:
/* 814CD36C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD370 | 54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 814CD374 | 41 82 00 70 */	beq .L_814CD3E4
/* 814CD378 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814CD37C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814CD380 | 40 82 00 24 */	bne .L_814CD3A4
/* 814CD384 | A0 7F 18 64 */	lhz r3, 0x1864(r31)
/* 814CD388 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 814CD38C | 41 82 00 18 */	beq .L_814CD3A4
/* 814CD390 | 60 60 00 04 */	ori r0, r3, 0x4
/* 814CD394 | 7F E3 FB 78 */	mr r3, r31
/* 814CD398 | B0 1F 18 64 */	sth r0, 0x1864(r31)
/* 814CD39C | 4B FF 77 BD */	bl VFiPFFAT_RefreshFSINFO
/* 814CD3A0 | 48 00 00 3C */	b .L_814CD3DC
.L_814CD3A4:
/* 814CD3A4 | A0 7F 18 64 */	lhz r3, 0x1864(r31)
/* 814CD3A8 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814CD3AC | 54 63 07 B8 */	rlwinm r3, r3, 0, 30, 28
/* 814CD3B0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814CD3B4 | B0 7F 18 64 */	sth r3, 0x1864(r31)
/* 814CD3B8 | 41 82 00 0C */	beq .L_814CD3C4
/* 814CD3BC | 54 60 04 3A */	rlwinm r0, r3, 0, 16, 29
/* 814CD3C0 | B0 1F 18 64 */	sth r0, 0x1864(r31)
.L_814CD3C4:
/* 814CD3C4 | 7F E3 FB 78 */	mr r3, r31
/* 814CD3C8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814CD3CC | 4B FF 6B 09 */	bl VFiPFFAT_CountFreeClusters
/* 814CD3D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD3D4 | 41 82 00 08 */	beq .L_814CD3DC
/* 814CD3D8 | 48 00 00 7C */	b .L_814CD454
.L_814CD3DC:
/* 814CD3DC | 38 60 00 00 */	li r3, 0x0
/* 814CD3E0 | 48 00 00 74 */	b .L_814CD454
.L_814CD3E4:
/* 814CD3E4 | 7F E3 FB 78 */	mr r3, r31
/* 814CD3E8 | 4B FF 73 D9 */	bl VFiPFFAT_InitFATRegion
/* 814CD3EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD3F0 | 41 82 00 08 */	beq .L_814CD3F8
/* 814CD3F4 | 48 00 00 60 */	b .L_814CD454
.L_814CD3F8:
/* 814CD3F8 | 7F E3 FB 78 */	mr r3, r31
/* 814CD3FC | 4B FF 1C 4D */	bl VFiPFENT_MakeRootDir
/* 814CD400 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD404 | 41 82 00 08 */	beq .L_814CD40C
/* 814CD408 | 48 00 00 4C */	b .L_814CD454
.L_814CD40C:
/* 814CD40C | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814CD410 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814CD414 | 41 82 00 10 */	beq .L_814CD424
/* 814CD418 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814CD41C | 54 00 04 3A */	rlwinm r0, r0, 0, 16, 29
/* 814CD420 | B0 1F 18 64 */	sth r0, 0x1864(r31)
.L_814CD424:
/* 814CD424 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814CD428 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814CD42C | 40 82 00 24 */	bne .L_814CD450
/* 814CD430 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814CD434 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD438 | 41 82 00 18 */	beq .L_814CD450
/* 814CD43C | 7F E3 FB 78 */	mr r3, r31
/* 814CD440 | 4B FF 77 19 */	bl VFiPFFAT_RefreshFSINFO
/* 814CD444 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD448 | 41 82 00 08 */	beq .L_814CD450
/* 814CD44C | 48 00 00 08 */	b .L_814CD454
.L_814CD450:
/* 814CD450 | 38 60 00 00 */	li r3, 0x0
.L_814CD454:
/* 814CD454 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814CD458 | 48 12 C0 B5 */	bl _restgpr_27
/* 814CD45C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814CD460 | 7C 08 03 A6 */	mtlr r0
/* 814CD464 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814CD468 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_p_format

# .text:0x414 | 0x814CD46C | size: 0x18C
.fn VFiPFVOL_InitModule, global
/* 814CD46C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CD470 | 7C 08 02 A6 */	mflr r0
/* 814CD474 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CD478 | 54 60 04 1B */	rlwinm. r0, r3, 0, 16, 13
/* 814CD47C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CD480 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814CD484 | 41 82 00 1C */	beq .L_814CD4A0
/* 814CD488 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD48C | 38 00 00 0A */	li r0, 0xa
/* 814CD490 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD494 | 38 60 00 0A */	li r3, 0xa
/* 814CD498 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CD49C | 48 00 01 44 */	b .L_814CD5E0
.L_814CD4A0:
/* 814CD4A0 | 54 65 03 9E */	rlwinm r5, r3, 0, 14, 15
/* 814CD4A4 | 3C 05 FF FD */	subis r0, r5, 0x3
/* 814CD4A8 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814CD4AC | 40 82 00 1C */	bne .L_814CD4C8
/* 814CD4B0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD4B4 | 38 00 00 0A */	li r0, 0xa
/* 814CD4B8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD4BC | 38 60 00 0A */	li r3, 0xa
/* 814CD4C0 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CD4C4 | 48 00 01 1C */	b .L_814CD5E0
.L_814CD4C8:
/* 814CD4C8 | 54 65 03 DF */	rlwinm. r5, r3, 0, 15, 15
/* 814CD4CC | 41 82 00 1C */	beq .L_814CD4E8
/* 814CD4D0 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CD4D4 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CD4D8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814CD4DC | 64 00 00 01 */	oris r0, r0, 0x1
/* 814CD4E0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814CD4E4 | 48 00 00 18 */	b .L_814CD4FC
.L_814CD4E8:
/* 814CD4E8 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CD4EC | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CD4F0 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814CD4F4 | 54 00 04 1C */	rlwinm r0, r0, 0, 16, 14
/* 814CD4F8 | 90 03 00 14 */	stw r0, 0x14(r3)
.L_814CD4FC:
/* 814CD4FC | 3C E0 81 0D */	lis r7, VFipf_vol_set_810CD7F0@ha
/* 814CD500 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814CD504 | 80 67 D7 F0 */	lwz r3, VFipf_vol_set_810CD7F0@l(r7)
/* 814CD508 | 38 C7 D7 F0 */	addi r6, r7, VFipf_vol_set_810CD7F0@l
/* 814CD50C | 38 00 00 00 */	li r0, 0x0
/* 814CD510 | 38 A6 00 48 */	addi r5, r6, 0x48
/* 814CD514 | 60 63 00 01 */	ori r3, r3, 0x1
/* 814CD518 | 90 A6 00 08 */	stw r5, 0x8(r6)
/* 814CD51C | 90 67 D7 F0 */	stw r3, VFipf_vol_set_810CD7F0@l(r7)
/* 814CD520 | 90 06 00 0C */	stw r0, 0xc(r6)
/* 814CD524 | 90 06 00 10 */	stw r0, 0x10(r6)
/* 814CD528 | 41 82 00 14 */	beq .L_814CD53C
/* 814CD52C | 80 06 00 14 */	lwz r0, 0x14(r6)
/* 814CD530 | 64 00 00 01 */	oris r0, r0, 0x1
/* 814CD534 | 90 06 00 14 */	stw r0, 0x14(r6)
/* 814CD538 | 48 00 00 10 */	b .L_814CD548
.L_814CD53C:
/* 814CD53C | 80 06 00 14 */	lwz r0, 0x14(r6)
/* 814CD540 | 54 00 04 1C */	rlwinm r0, r0, 0, 16, 14
/* 814CD544 | 90 06 00 14 */	stw r0, 0x14(r6)
.L_814CD548:
/* 814CD548 | 3D 60 81 0D */	lis r11, VFipf_vol_set_810CD7F0@ha
/* 814CD54C | 3D 20 81 4D */	lis r9, VFiPFCODE_CP932_OEM2Unicode@ha
/* 814CD550 | 39 6B D7 F0 */	addi r11, r11, VFipf_vol_set_810CD7F0@l
/* 814CD554 | 39 40 00 00 */	li r10, 0x0
/* 814CD558 | 3D 00 81 4D */	lis r8, VFiPFCODE_CP932_Unicode2OEM@ha
/* 814CD55C | 3C E0 81 4D */	lis r7, VFiPFCODE_CP932_OEMCharWidth@ha
/* 814CD560 | 3C C0 81 4D */	lis r6, VFiPFCODE_CP932_isOEMMBchar@ha
/* 814CD564 | 3C A0 81 4D */	lis r5, VFiPFCODE_CP932_UnicodeCharWidth@ha
/* 814CD568 | 3C 60 81 4D */	lis r3, VFiPFCODE_CP932_isUnicodeMBchar@ha
/* 814CD56C | 39 29 F1 08 */	addi r9, r9, VFiPFCODE_CP932_OEM2Unicode@l
/* 814CD570 | 39 08 F2 C4 */	addi r8, r8, VFiPFCODE_CP932_Unicode2OEM@l
/* 814CD574 | 38 E7 F5 2C */	addi r7, r7, VFiPFCODE_CP932_OEMCharWidth@l
/* 814CD578 | 38 C6 F5 60 */	addi r6, r6, VFiPFCODE_CP932_isOEMMBchar@l
/* 814CD57C | 38 A5 F5 DC */	addi r5, r5, VFiPFCODE_CP932_UnicodeCharWidth@l
/* 814CD580 | 38 63 F5 E4 */	addi r3, r3, VFiPFCODE_CP932_isUnicodeMBchar@l
/* 814CD584 | 38 00 00 01 */	li r0, 0x1
/* 814CD588 | 90 8B 00 18 */	stw r4, 0x18(r11)
/* 814CD58C | 3B EB 00 48 */	addi r31, r11, 0x48
/* 814CD590 | 3B C0 00 00 */	li r30, 0x0
/* 814CD594 | 91 4B 00 1C */	stw r10, 0x1c(r11)
/* 814CD598 | 91 4B 00 20 */	stw r10, 0x20(r11)
/* 814CD59C | 90 0B 00 3C */	stw r0, 0x3c(r11)
/* 814CD5A0 | 91 2B 00 24 */	stw r9, 0x24(r11)
/* 814CD5A4 | 91 0B 00 28 */	stw r8, 0x28(r11)
/* 814CD5A8 | 90 EB 00 2C */	stw r7, 0x2c(r11)
/* 814CD5AC | 90 CB 00 30 */	stw r6, 0x30(r11)
/* 814CD5B0 | 90 AB 00 34 */	stw r5, 0x34(r11)
/* 814CD5B4 | 90 6B 00 38 */	stw r3, 0x38(r11)
.L_814CD5B8:
/* 814CD5B8 | 7F E3 FB 78 */	mr r3, r31
/* 814CD5BC | 38 80 00 00 */	li r4, 0x0
/* 814CD5C0 | 38 A0 18 80 */	li r5, 0x1880
/* 814CD5C4 | 4B FE 83 45 */	bl VFipf_memset
/* 814CD5C8 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814CD5CC | 3B FF 18 80 */	addi r31, r31, 0x1880
/* 814CD5D0 | 2C 1E 00 1A */	cmpwi r30, 0x1a
/* 814CD5D4 | 41 80 FF E4 */	blt .L_814CD5B8
/* 814CD5D8 | 48 00 26 D5 */	bl VFiPF_InitLockFile
/* 814CD5DC | 38 60 00 00 */	li r3, 0x0
.L_814CD5E0:
/* 814CD5E0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CD5E4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CD5E8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814CD5EC | 7C 08 03 A6 */	mtlr r0
/* 814CD5F0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CD5F4 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_InitModule

# .text:0x5A0 | 0x814CD5F8 | size: 0x1BC
.fn VFiPFVOL_CheckForRead, global
/* 814CD5F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CD5FC | 7C 08 02 A6 */	mflr r0
/* 814CD600 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD604 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CD608 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CD60C | 7C 7F 1B 78 */	mr r31, r3
/* 814CD610 | 40 82 00 0C */	bne .L_814CD61C
/* 814CD614 | 38 60 00 0A */	li r3, 0xa
/* 814CD618 | 48 00 01 88 */	b .L_814CD7A0
.L_814CD61C:
/* 814CD61C | 4B FE 90 05 */	bl VFiPFDRV_IsInserted
/* 814CD620 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD624 | 41 82 00 D0 */	beq .L_814CD6F4
/* 814CD628 | 7F E3 FB 78 */	mr r3, r31
/* 814CD62C | 4B FE 90 21 */	bl VFiPFDRV_IsDetected
/* 814CD630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD634 | 41 82 01 48 */	beq .L_814CD77C
/* 814CD638 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD63C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD640 | 41 82 00 64 */	beq .L_814CD6A4
/* 814CD644 | 7F E3 FB 78 */	mr r3, r31
/* 814CD648 | 4B FF B5 ED */	bl VFiPFFILE_FinalizeAllFiles
/* 814CD64C | 7F E3 FB 78 */	mr r3, r31
/* 814CD650 | 4B FF 05 F5 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CD654 | 7F E3 FB 78 */	mr r3, r31
/* 814CD658 | 4B FE EF F1 */	bl VFiPFCACHE_FreeAllCaches
/* 814CD65C | 7F E3 FB 78 */	mr r3, r31
/* 814CD660 | 38 80 00 01 */	li r4, 0x1
/* 814CD664 | 4B FE 93 11 */	bl VFiPFDRV_unmount
/* 814CD668 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD66C | 40 82 00 24 */	bne .L_814CD690
/* 814CD670 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD674 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD678 | 41 82 00 0C */	beq .L_814CD684
/* 814CD67C | 38 00 00 00 */	li r0, 0x0
/* 814CD680 | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CD684:
/* 814CD684 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD688 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CD68C | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CD690:
/* 814CD690 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD694 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD698 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CD69C | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CD6A0 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CD6A4:
/* 814CD6A4 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD6A8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD6AC | 40 82 00 38 */	bne .L_814CD6E4
/* 814CD6B0 | 7F E3 FB 78 */	mr r3, r31
/* 814CD6B4 | 4B FF F9 A5 */	bl VFiPFVOL_DoMountVolume
/* 814CD6B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD6BC | 41 82 00 08 */	beq .L_814CD6C4
/* 814CD6C0 | 48 00 00 28 */	b .L_814CD6E8
.L_814CD6C4:
/* 814CD6C4 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814CD6C8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD6CC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD6D0 | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 814CD6D4 | B0 1F 18 64 */	sth r0, 0x1864(r31)
/* 814CD6D8 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CD6DC | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CD6E0 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CD6E4:
/* 814CD6E4 | 38 60 00 00 */	li r3, 0x0
.L_814CD6E8:
/* 814CD6E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD6EC | 41 82 00 90 */	beq .L_814CD77C
/* 814CD6F0 | 48 00 00 90 */	b .L_814CD780
.L_814CD6F4:
/* 814CD6F4 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD6F8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD6FC | 41 82 00 80 */	beq .L_814CD77C
/* 814CD700 | 7F E3 FB 78 */	mr r3, r31
/* 814CD704 | 4B FE 8F 49 */	bl VFiPFDRV_IsDetected
/* 814CD708 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD70C | 41 82 00 64 */	beq .L_814CD770
/* 814CD710 | 7F E3 FB 78 */	mr r3, r31
/* 814CD714 | 4B FF B5 21 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CD718 | 7F E3 FB 78 */	mr r3, r31
/* 814CD71C | 4B FF 05 29 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CD720 | 7F E3 FB 78 */	mr r3, r31
/* 814CD724 | 4B FE EF 25 */	bl VFiPFCACHE_FreeAllCaches
/* 814CD728 | 7F E3 FB 78 */	mr r3, r31
/* 814CD72C | 38 80 00 01 */	li r4, 0x1
/* 814CD730 | 4B FE 92 45 */	bl VFiPFDRV_unmount
/* 814CD734 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD738 | 40 82 00 24 */	bne .L_814CD75C
/* 814CD73C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD740 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD744 | 41 82 00 0C */	beq .L_814CD750
/* 814CD748 | 38 00 00 00 */	li r0, 0x0
/* 814CD74C | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CD750:
/* 814CD750 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD754 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CD758 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CD75C:
/* 814CD75C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD760 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD764 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CD768 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CD76C | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CD770:
/* 814CD770 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD774 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CD778 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CD77C:
/* 814CD77C | 38 60 00 00 */	li r3, 0x0
.L_814CD780:
/* 814CD780 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD784 | 41 82 00 08 */	beq .L_814CD78C
/* 814CD788 | 48 00 00 18 */	b .L_814CD7A0
.L_814CD78C:
/* 814CD78C | A0 7F 18 60 */	lhz r3, 0x1860(r31)
/* 814CD790 | 38 00 00 09 */	li r0, 0x9
/* 814CD794 | 54 63 FF FE */	extrwi r3, r3, 1, 30
/* 814CD798 | 7C 63 00 D0 */	neg r3, r3
/* 814CD79C | 7C 03 18 78 */	andc r3, r0, r3
.L_814CD7A0:
/* 814CD7A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CD7A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CD7A8 | 7C 08 03 A6 */	mtlr r0
/* 814CD7AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CD7B0 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_CheckForRead

# .text:0x75C | 0x814CD7B4 | size: 0x1D4
.fn VFiPFVOL_CheckForWrite, global
/* 814CD7B4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CD7B8 | 7C 08 02 A6 */	mflr r0
/* 814CD7BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD7C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CD7C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CD7C8 | 7C 7F 1B 78 */	mr r31, r3
/* 814CD7CC | 40 82 00 0C */	bne .L_814CD7D8
/* 814CD7D0 | 38 60 00 0A */	li r3, 0xa
/* 814CD7D4 | 48 00 01 A0 */	b .L_814CD974
.L_814CD7D8:
/* 814CD7D8 | 4B FE 8E 49 */	bl VFiPFDRV_IsInserted
/* 814CD7DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD7E0 | 41 82 00 D0 */	beq .L_814CD8B0
/* 814CD7E4 | 7F E3 FB 78 */	mr r3, r31
/* 814CD7E8 | 4B FE 8E 65 */	bl VFiPFDRV_IsDetected
/* 814CD7EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD7F0 | 41 82 01 48 */	beq .L_814CD938
/* 814CD7F4 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD7F8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD7FC | 41 82 00 64 */	beq .L_814CD860
/* 814CD800 | 7F E3 FB 78 */	mr r3, r31
/* 814CD804 | 4B FF B4 31 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CD808 | 7F E3 FB 78 */	mr r3, r31
/* 814CD80C | 4B FF 04 39 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CD810 | 7F E3 FB 78 */	mr r3, r31
/* 814CD814 | 4B FE EE 35 */	bl VFiPFCACHE_FreeAllCaches
/* 814CD818 | 7F E3 FB 78 */	mr r3, r31
/* 814CD81C | 38 80 00 01 */	li r4, 0x1
/* 814CD820 | 4B FE 91 55 */	bl VFiPFDRV_unmount
/* 814CD824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD828 | 40 82 00 24 */	bne .L_814CD84C
/* 814CD82C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD830 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD834 | 41 82 00 0C */	beq .L_814CD840
/* 814CD838 | 38 00 00 00 */	li r0, 0x0
/* 814CD83C | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CD840:
/* 814CD840 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD844 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CD848 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CD84C:
/* 814CD84C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD850 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD854 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CD858 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CD85C | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CD860:
/* 814CD860 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD864 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD868 | 40 82 00 38 */	bne .L_814CD8A0
/* 814CD86C | 7F E3 FB 78 */	mr r3, r31
/* 814CD870 | 4B FF F7 E9 */	bl VFiPFVOL_DoMountVolume
/* 814CD874 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD878 | 41 82 00 08 */	beq .L_814CD880
/* 814CD87C | 48 00 00 28 */	b .L_814CD8A4
.L_814CD880:
/* 814CD880 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814CD884 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD888 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD88C | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 814CD890 | B0 1F 18 64 */	sth r0, 0x1864(r31)
/* 814CD894 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CD898 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CD89C | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CD8A0:
/* 814CD8A0 | 38 60 00 00 */	li r3, 0x0
.L_814CD8A4:
/* 814CD8A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD8A8 | 41 82 00 90 */	beq .L_814CD938
/* 814CD8AC | 48 00 00 90 */	b .L_814CD93C
.L_814CD8B0:
/* 814CD8B0 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD8B4 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD8B8 | 41 82 00 80 */	beq .L_814CD938
/* 814CD8BC | 7F E3 FB 78 */	mr r3, r31
/* 814CD8C0 | 4B FE 8D 8D */	bl VFiPFDRV_IsDetected
/* 814CD8C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD8C8 | 41 82 00 64 */	beq .L_814CD92C
/* 814CD8CC | 7F E3 FB 78 */	mr r3, r31
/* 814CD8D0 | 4B FF B3 65 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CD8D4 | 7F E3 FB 78 */	mr r3, r31
/* 814CD8D8 | 4B FF 03 6D */	bl VFiPFDIR_FinalizeAllDirs
/* 814CD8DC | 7F E3 FB 78 */	mr r3, r31
/* 814CD8E0 | 4B FE ED 69 */	bl VFiPFCACHE_FreeAllCaches
/* 814CD8E4 | 7F E3 FB 78 */	mr r3, r31
/* 814CD8E8 | 38 80 00 01 */	li r4, 0x1
/* 814CD8EC | 4B FE 90 89 */	bl VFiPFDRV_unmount
/* 814CD8F0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD8F4 | 40 82 00 24 */	bne .L_814CD918
/* 814CD8F8 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD8FC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD900 | 41 82 00 0C */	beq .L_814CD90C
/* 814CD904 | 38 00 00 00 */	li r0, 0x0
/* 814CD908 | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CD90C:
/* 814CD90C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD910 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CD914 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CD918:
/* 814CD918 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CD91C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CD920 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CD924 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CD928 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CD92C:
/* 814CD92C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD930 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CD934 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CD938:
/* 814CD938 | 38 60 00 00 */	li r3, 0x0
.L_814CD93C:
/* 814CD93C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD940 | 41 82 00 08 */	beq .L_814CD948
/* 814CD944 | 48 00 00 30 */	b .L_814CD974
.L_814CD948:
/* 814CD948 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CD94C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD950 | 40 82 00 0C */	bne .L_814CD95C
/* 814CD954 | 38 60 00 09 */	li r3, 0x9
/* 814CD958 | 48 00 00 1C */	b .L_814CD974
.L_814CD95C:
/* 814CD95C | 7F E3 FB 78 */	mr r3, r31
/* 814CD960 | 4B FE 8D 19 */	bl VFiPFDRV_IsWProtected
/* 814CD964 | 7C 03 00 D0 */	neg r0, r3
/* 814CD968 | 7C 00 1B 78 */	or r0, r0, r3
/* 814CD96C | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814CD970 | 70 03 00 0B */	andi. r3, r0, 0xb
.L_814CD974:
/* 814CD974 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CD978 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CD97C | 7C 08 03 A6 */	mtlr r0
/* 814CD980 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CD984 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_CheckForWrite

# .text:0x930 | 0x814CD988 | size: 0x4C
.fn VFiPFVOL_CheckCurrentDir, global
/* 814CD988 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD98C | 38 A0 00 00 */	li r5, 0x0
/* 814CD990 | 40 82 00 0C */	bne .L_814CD99C
/* 814CD994 | 38 60 00 0A */	li r3, 0xa
/* 814CD998 | 4E 80 00 20 */	blr
.L_814CD99C:
/* 814CD99C | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CD9A0 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CD9A4 | 40 82 00 0C */	bne .L_814CD9B0
/* 814CD9A8 | 38 60 00 09 */	li r3, 0x9
/* 814CD9AC | 4E 80 00 20 */	blr
.L_814CD9B0:
/* 814CD9B0 | 80 03 16 00 */	lwz r0, 0x1600(r3)
/* 814CD9B4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CD9B8 | 41 82 00 14 */	beq .L_814CD9CC
/* 814CD9BC | 80 03 18 3C */	lwz r0, 0x183c(r3)
/* 814CD9C0 | 7C 04 00 40 */	cmplw r4, r0
/* 814CD9C4 | 40 82 00 08 */	bne .L_814CD9CC
/* 814CD9C8 | 38 A0 FF FF */	li r5, -0x1
.L_814CD9CC:
/* 814CD9CC | 7C A3 2B 78 */	mr r3, r5
/* 814CD9D0 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_CheckCurrentDir

# .text:0x97C | 0x814CD9D4 | size: 0x1B8
.fn VFiPFVOL_SetCurrentDir, global
/* 814CD9D4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CD9D8 | 7C 08 02 A6 */	mflr r0
/* 814CD9DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CD9E0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CD9E4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CD9E8 | 7C 9F 23 78 */	mr r31, r4
/* 814CD9EC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CD9F0 | 7C 7E 1B 78 */	mr r30, r3
/* 814CD9F4 | 40 82 00 0C */	bne .L_814CDA00
/* 814CD9F8 | 38 60 00 0A */	li r3, 0xa
/* 814CD9FC | 48 00 01 78 */	b .L_814CDB74
.L_814CDA00:
/* 814CDA00 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CDA04 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CDA08 | 40 82 00 0C */	bne .L_814CDA14
/* 814CDA0C | 38 60 00 09 */	li r3, 0x9
/* 814CDA10 | 48 00 01 64 */	b .L_814CDB74
.L_814CDA14:
/* 814CDA14 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CDA18 | 48 00 22 AD */	bl VFiPFSYS_GetCurrentContextID
/* 814CDA1C | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 814CDA20 | 38 7E 02 48 */	addi r3, r30, 0x248
/* 814CDA24 | 38 E0 00 01 */	li r7, 0x1
/* 814CDA28 | 48 00 00 54 */	b .L_814CDA7C
.L_814CDA2C:
/* 814CDA2C | 80 03 16 00 */	lwz r0, 0x1600(r3)
/* 814CDA30 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDA34 | 41 82 00 40 */	beq .L_814CDA74
/* 814CDA38 | 80 03 16 04 */	lwz r0, 0x1604(r3)
/* 814CDA3C | 7C 06 00 00 */	cmpw r6, r0
/* 814CDA40 | 40 82 00 34 */	bne .L_814CDA74
/* 814CDA44 | 1C 67 02 48 */	mulli r3, r7, 0x248
/* 814CDA48 | 38 00 00 48 */	li r0, 0x48
/* 814CDA4C | 38 9F FF FC */	subi r4, r31, 0x4
/* 814CDA50 | 7C 7E 1A 14 */	add r3, r30, r3
/* 814CDA54 | 38 A3 16 04 */	addi r5, r3, 0x1604
/* 814CDA58 | 7C 09 03 A6 */	mtctr r0
.L_814CDA5C:
/* 814CDA5C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814CDA60 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814CDA64 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814CDA68 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814CDA6C | 42 00 FF F0 */	bdnz .L_814CDA5C
/* 814CDA70 | 48 00 00 14 */	b .L_814CDA84
.L_814CDA74:
/* 814CDA74 | 38 63 02 48 */	addi r3, r3, 0x248
/* 814CDA78 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_814CDA7C:
/* 814CDA7C | 28 07 00 01 */	cmplwi r7, 0x1
/* 814CDA80 | 41 80 FF AC */	blt .L_814CDA2C
.L_814CDA84:
/* 814CDA84 | 28 07 00 01 */	cmplwi r7, 0x1
/* 814CDA88 | 40 82 00 C4 */	bne .L_814CDB4C
/* 814CDA8C | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDA90 | 38 80 00 01 */	li r4, 0x1
/* 814CDA94 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDA98 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CDA9C | 48 00 00 30 */	b .L_814CDACC
.L_814CDAA0:
/* 814CDAA0 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814CDAA4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDAA8 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 814CDAAC | 41 82 00 18 */	beq .L_814CDAC4
/* 814CDAB0 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 814CDAB4 | 7C 06 00 00 */	cmpw r6, r0
/* 814CDAB8 | 40 82 00 0C */	bne .L_814CDAC4
/* 814CDABC | 38 00 00 01 */	li r0, 0x1
/* 814CDAC0 | 48 00 00 18 */	b .L_814CDAD8
.L_814CDAC4:
/* 814CDAC4 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CDAC8 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDACC:
/* 814CDACC | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDAD0 | 41 80 FF D0 */	blt .L_814CDAA0
/* 814CDAD4 | 38 00 00 00 */	li r0, 0x0
.L_814CDAD8:
/* 814CDAD8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CDADC | 41 82 00 70 */	beq .L_814CDB4C
/* 814CDAE0 | 38 7E 02 48 */	addi r3, r30, 0x248
/* 814CDAE4 | 38 80 00 01 */	li r4, 0x1
/* 814CDAE8 | 48 00 00 5C */	b .L_814CDB44
.L_814CDAEC:
/* 814CDAEC | 80 03 16 00 */	lwz r0, 0x1600(r3)
/* 814CDAF0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDAF4 | 40 82 00 48 */	bne .L_814CDB3C
/* 814CDAF8 | 1C 64 02 48 */	mulli r3, r4, 0x248
/* 814CDAFC | 38 00 00 48 */	li r0, 0x48
/* 814CDB00 | 38 9F FF FC */	subi r4, r31, 0x4
/* 814CDB04 | 7C DE 1A 14 */	add r6, r30, r3
/* 814CDB08 | 80 66 16 00 */	lwz r3, 0x1600(r6)
/* 814CDB0C | 38 A6 16 04 */	addi r5, r6, 0x1604
/* 814CDB10 | 60 63 00 01 */	ori r3, r3, 0x1
/* 814CDB14 | 90 66 16 00 */	stw r3, 0x1600(r6)
/* 814CDB18 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CDB1C | 90 66 16 04 */	stw r3, 0x1604(r6)
/* 814CDB20 | 7C 09 03 A6 */	mtctr r0
.L_814CDB24:
/* 814CDB24 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814CDB28 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814CDB2C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814CDB30 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814CDB34 | 42 00 FF F0 */	bdnz .L_814CDB24
/* 814CDB38 | 48 00 00 14 */	b .L_814CDB4C
.L_814CDB3C:
/* 814CDB3C | 38 63 02 48 */	addi r3, r3, 0x248
/* 814CDB40 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDB44:
/* 814CDB44 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDB48 | 41 80 FF A4 */	blt .L_814CDAEC
.L_814CDB4C:
/* 814CDB4C | 38 00 00 48 */	li r0, 0x48
/* 814CDB50 | 38 BE 16 04 */	addi r5, r30, 0x1604
/* 814CDB54 | 38 9F FF FC */	subi r4, r31, 0x4
/* 814CDB58 | 7C 09 03 A6 */	mtctr r0
.L_814CDB5C:
/* 814CDB5C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814CDB60 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814CDB64 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814CDB68 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814CDB6C | 42 00 FF F0 */	bdnz .L_814CDB5C
/* 814CDB70 | 38 60 00 00 */	li r3, 0x0
.L_814CDB74:
/* 814CDB74 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CDB78 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CDB7C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CDB80 | 7C 08 03 A6 */	mtlr r0
/* 814CDB84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CDB88 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_SetCurrentDir

# .text:0xB34 | 0x814CDB8C | size: 0x1BC
.fn VFiPFVOL_GetCurrentDir, global
/* 814CDB8C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CDB90 | 7C 08 02 A6 */	mflr r0
/* 814CDB94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CDB98 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CDB9C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CDBA0 | 7C 9F 23 78 */	mr r31, r4
/* 814CDBA4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CDBA8 | 7C 7E 1B 78 */	mr r30, r3
/* 814CDBAC | 40 82 00 0C */	bne .L_814CDBB8
/* 814CDBB0 | 38 60 00 0A */	li r3, 0xa
/* 814CDBB4 | 48 00 01 7C */	b .L_814CDD30
.L_814CDBB8:
/* 814CDBB8 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CDBBC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CDBC0 | 40 82 00 0C */	bne .L_814CDBCC
/* 814CDBC4 | 38 60 00 09 */	li r3, 0x9
/* 814CDBC8 | 48 00 01 68 */	b .L_814CDD30
.L_814CDBCC:
/* 814CDBCC | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CDBD0 | 48 00 20 F5 */	bl VFiPFSYS_GetCurrentContextID
/* 814CDBD4 | 80 C1 00 08 */	lwz r6, 0x8(r1)
/* 814CDBD8 | 38 7E 02 48 */	addi r3, r30, 0x248
/* 814CDBDC | 38 E0 00 01 */	li r7, 0x1
/* 814CDBE0 | 48 00 00 54 */	b .L_814CDC34
.L_814CDBE4:
/* 814CDBE4 | 80 03 16 00 */	lwz r0, 0x1600(r3)
/* 814CDBE8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDBEC | 41 82 00 40 */	beq .L_814CDC2C
/* 814CDBF0 | 80 03 16 04 */	lwz r0, 0x1604(r3)
/* 814CDBF4 | 7C 06 00 00 */	cmpw r6, r0
/* 814CDBF8 | 40 82 00 34 */	bne .L_814CDC2C
/* 814CDBFC | 1C 67 02 48 */	mulli r3, r7, 0x248
/* 814CDC00 | 38 00 00 48 */	li r0, 0x48
/* 814CDC04 | 38 BF FF FC */	subi r5, r31, 0x4
/* 814CDC08 | 7C 7E 1A 14 */	add r3, r30, r3
/* 814CDC0C | 38 83 16 04 */	addi r4, r3, 0x1604
/* 814CDC10 | 7C 09 03 A6 */	mtctr r0
.L_814CDC14:
/* 814CDC14 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814CDC18 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814CDC1C | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814CDC20 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814CDC24 | 42 00 FF F0 */	bdnz .L_814CDC14
/* 814CDC28 | 48 00 00 14 */	b .L_814CDC3C
.L_814CDC2C:
/* 814CDC2C | 38 63 02 48 */	addi r3, r3, 0x248
/* 814CDC30 | 38 E7 00 01 */	addi r7, r7, 0x1
.L_814CDC34:
/* 814CDC34 | 28 07 00 01 */	cmplwi r7, 0x1
/* 814CDC38 | 41 80 FF AC */	blt .L_814CDBE4
.L_814CDC3C:
/* 814CDC3C | 28 07 00 01 */	cmplwi r7, 0x1
/* 814CDC40 | 40 82 00 EC */	bne .L_814CDD2C
/* 814CDC44 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDC48 | 38 80 00 01 */	li r4, 0x1
/* 814CDC4C | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDC50 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CDC54 | 48 00 00 30 */	b .L_814CDC84
.L_814CDC58:
/* 814CDC58 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814CDC5C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDC60 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 814CDC64 | 41 82 00 18 */	beq .L_814CDC7C
/* 814CDC68 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 814CDC6C | 7C 06 00 00 */	cmpw r6, r0
/* 814CDC70 | 40 82 00 0C */	bne .L_814CDC7C
/* 814CDC74 | 38 00 00 01 */	li r0, 0x1
/* 814CDC78 | 48 00 00 18 */	b .L_814CDC90
.L_814CDC7C:
/* 814CDC7C | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CDC80 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDC84:
/* 814CDC84 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDC88 | 41 80 FF D0 */	blt .L_814CDC58
/* 814CDC8C | 38 00 00 00 */	li r0, 0x0
.L_814CDC90:
/* 814CDC90 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CDC94 | 41 82 00 74 */	beq .L_814CDD08
/* 814CDC98 | 38 7E 02 48 */	addi r3, r30, 0x248
/* 814CDC9C | 38 80 00 01 */	li r4, 0x1
/* 814CDCA0 | 48 00 00 5C */	b .L_814CDCFC
.L_814CDCA4:
/* 814CDCA4 | 80 03 16 00 */	lwz r0, 0x1600(r3)
/* 814CDCA8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDCAC | 40 82 00 48 */	bne .L_814CDCF4
/* 814CDCB0 | 1C 64 02 48 */	mulli r3, r4, 0x248
/* 814CDCB4 | 38 00 00 48 */	li r0, 0x48
/* 814CDCB8 | 38 BF FF FC */	subi r5, r31, 0x4
/* 814CDCBC | 7C DE 1A 14 */	add r6, r30, r3
/* 814CDCC0 | 80 66 16 00 */	lwz r3, 0x1600(r6)
/* 814CDCC4 | 38 86 16 04 */	addi r4, r6, 0x1604
/* 814CDCC8 | 60 63 00 01 */	ori r3, r3, 0x1
/* 814CDCCC | 90 66 16 00 */	stw r3, 0x1600(r6)
/* 814CDCD0 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814CDCD4 | 90 66 16 04 */	stw r3, 0x1604(r6)
/* 814CDCD8 | 7C 09 03 A6 */	mtctr r0
.L_814CDCDC:
/* 814CDCDC | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814CDCE0 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814CDCE4 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814CDCE8 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814CDCEC | 42 00 FF F0 */	bdnz .L_814CDCDC
/* 814CDCF0 | 48 00 00 3C */	b .L_814CDD2C
.L_814CDCF4:
/* 814CDCF4 | 38 63 02 48 */	addi r3, r3, 0x248
/* 814CDCF8 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDCFC:
/* 814CDCFC | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDD00 | 41 80 FF A4 */	blt .L_814CDCA4
/* 814CDD04 | 48 00 00 28 */	b .L_814CDD2C
.L_814CDD08:
/* 814CDD08 | 38 00 00 48 */	li r0, 0x48
/* 814CDD0C | 38 BF FF FC */	subi r5, r31, 0x4
/* 814CDD10 | 38 9E 16 04 */	addi r4, r30, 0x1604
/* 814CDD14 | 7C 09 03 A6 */	mtctr r0
.L_814CDD18:
/* 814CDD18 | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814CDD1C | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814CDD20 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814CDD24 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814CDD28 | 42 00 FF F0 */	bdnz .L_814CDD18
.L_814CDD2C:
/* 814CDD2C | 38 60 00 00 */	li r3, 0x0
.L_814CDD30:
/* 814CDD30 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CDD34 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CDD38 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CDD3C | 7C 08 03 A6 */	mtlr r0
/* 814CDD40 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CDD44 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_GetCurrentDir

# .text:0xCF0 | 0x814CDD48 | size: 0x14C
.fn VFiPFVOL_SetCurrentVolume, global
/* 814CDD48 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CDD4C | 7C 08 02 A6 */	mflr r0
/* 814CDD50 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CDD54 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CDD58 | 7C 7F 1B 78 */	mr r31, r3
/* 814CDD5C | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CDD60 | 48 00 1F 65 */	bl VFiPFSYS_GetCurrentContextID
/* 814CDD64 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDD68 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814CDD6C | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDD70 | 38 80 00 01 */	li r4, 0x1
/* 814CDD74 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814CDD78 | 48 00 00 3C */	b .L_814CDDB4
.L_814CDD7C:
/* 814CDD7C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CDD80 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDD84 | 41 82 00 28 */	beq .L_814CDDAC
/* 814CDD88 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814CDD8C | 7C 05 00 00 */	cmpw r5, r0
/* 814CDD90 | 40 82 00 1C */	bne .L_814CDDAC
/* 814CDD94 | 1C 04 00 0C */	mulli r0, r4, 0xc
/* 814CDD98 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDD9C | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDDA0 | 7C 63 02 14 */	add r3, r3, r0
/* 814CDDA4 | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 814CDDA8 | 48 00 00 14 */	b .L_814CDDBC
.L_814CDDAC:
/* 814CDDAC | 38 63 00 0C */	addi r3, r3, 0xc
/* 814CDDB0 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDDB4:
/* 814CDDB4 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDDB8 | 41 80 FF C4 */	blt .L_814CDD7C
.L_814CDDBC:
/* 814CDDBC | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDDC0 | 40 82 00 B4 */	bne .L_814CDE74
/* 814CDDC4 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDDC8 | 38 80 00 01 */	li r4, 0x1
/* 814CDDCC | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDDD0 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CDDD4 | 48 00 00 30 */	b .L_814CDE04
.L_814CDDD8:
/* 814CDDD8 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814CDDDC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDDE0 | 90 03 00 40 */	stw r0, 0x40(r3)
/* 814CDDE4 | 41 82 00 18 */	beq .L_814CDDFC
/* 814CDDE8 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 814CDDEC | 7C 05 00 00 */	cmpw r5, r0
/* 814CDDF0 | 40 82 00 0C */	bne .L_814CDDFC
/* 814CDDF4 | 38 00 00 01 */	li r0, 0x1
/* 814CDDF8 | 48 00 00 18 */	b .L_814CDE10
.L_814CDDFC:
/* 814CDDFC | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CDE00 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDE04:
/* 814CDE04 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDE08 | 41 80 FF D0 */	blt .L_814CDDD8
/* 814CDE0C | 38 00 00 00 */	li r0, 0x0
.L_814CDE10:
/* 814CDE10 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CDE14 | 41 82 00 60 */	beq .L_814CDE74
/* 814CDE18 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDE1C | 38 80 00 01 */	li r4, 0x1
/* 814CDE20 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDE24 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814CDE28 | 48 00 00 44 */	b .L_814CDE6C
.L_814CDE2C:
/* 814CDE2C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CDE30 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDE34 | 40 82 00 30 */	bne .L_814CDE64
/* 814CDE38 | 1C C4 00 0C */	mulli r6, r4, 0xc
/* 814CDE3C | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814CDE40 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814CDE44 | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814CDE48 | 7C 85 30 2E */	lwzx r4, r5, r6
/* 814CDE4C | 7C 65 32 14 */	add r3, r5, r6
/* 814CDE50 | 60 84 00 01 */	ori r4, r4, 0x1
/* 814CDE54 | 7C 85 31 2E */	stwx r4, r5, r6
/* 814CDE58 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814CDE5C | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 814CDE60 | 48 00 00 14 */	b .L_814CDE74
.L_814CDE64:
/* 814CDE64 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814CDE68 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDE6C:
/* 814CDE6C | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDE70 | 41 80 FF BC */	blt .L_814CDE2C
.L_814CDE74:
/* 814CDE74 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDE78 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDE7C | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 814CDE80 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CDE84 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CDE88 | 7C 08 03 A6 */	mtlr r0
/* 814CDE8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CDE90 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_SetCurrentVolume

# .text:0xE3C | 0x814CDE94 | size: 0x154
.fn VFiPFVOL_GetCurrentVolume, global
/* 814CDE94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CDE98 | 7C 08 02 A6 */	mflr r0
/* 814CDE9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CDEA0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814CDEA4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CDEA8 | 3B E0 00 00 */	li r31, 0x0
/* 814CDEAC | 48 00 1E 19 */	bl VFiPFSYS_GetCurrentContextID
/* 814CDEB0 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDEB4 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814CDEB8 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDEBC | 38 80 00 01 */	li r4, 0x1
/* 814CDEC0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814CDEC4 | 48 00 00 3C */	b .L_814CDF00
.L_814CDEC8:
/* 814CDEC8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CDECC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDED0 | 41 82 00 28 */	beq .L_814CDEF8
/* 814CDED4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814CDED8 | 7C 05 00 00 */	cmpw r5, r0
/* 814CDEDC | 40 82 00 1C */	bne .L_814CDEF8
/* 814CDEE0 | 1C 04 00 0C */	mulli r0, r4, 0xc
/* 814CDEE4 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDEE8 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDEEC | 7C 63 02 14 */	add r3, r3, r0
/* 814CDEF0 | 83 E3 00 08 */	lwz r31, 0x8(r3)
/* 814CDEF4 | 48 00 00 14 */	b .L_814CDF08
.L_814CDEF8:
/* 814CDEF8 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814CDEFC | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDF00:
/* 814CDF00 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDF04 | 41 80 FF C4 */	blt .L_814CDEC8
.L_814CDF08:
/* 814CDF08 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDF0C | 40 82 00 C4 */	bne .L_814CDFD0
/* 814CDF10 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDF14 | 38 80 00 01 */	li r4, 0x1
/* 814CDF18 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDF1C | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CDF20 | 48 00 00 30 */	b .L_814CDF50
.L_814CDF24:
/* 814CDF24 | 80 03 00 40 */	lwz r0, 0x40(r3)
/* 814CDF28 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDF2C | 90 03 00 40 */	stw r0, 0x40(r3)
/* 814CDF30 | 41 82 00 18 */	beq .L_814CDF48
/* 814CDF34 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 814CDF38 | 7C 05 00 00 */	cmpw r5, r0
/* 814CDF3C | 40 82 00 0C */	bne .L_814CDF48
/* 814CDF40 | 38 00 00 01 */	li r0, 0x1
/* 814CDF44 | 48 00 00 18 */	b .L_814CDF5C
.L_814CDF48:
/* 814CDF48 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814CDF4C | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDF50:
/* 814CDF50 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDF54 | 41 80 FF D0 */	blt .L_814CDF24
/* 814CDF58 | 38 00 00 00 */	li r0, 0x0
.L_814CDF5C:
/* 814CDF5C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CDF60 | 41 82 00 64 */	beq .L_814CDFC4
/* 814CDF64 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDF68 | 38 80 00 01 */	li r4, 0x1
/* 814CDF6C | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDF70 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814CDF74 | 48 00 00 44 */	b .L_814CDFB8
.L_814CDF78:
/* 814CDF78 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CDF7C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CDF80 | 40 82 00 30 */	bne .L_814CDFB0
/* 814CDF84 | 1C C4 00 0C */	mulli r6, r4, 0xc
/* 814CDF88 | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814CDF8C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814CDF90 | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814CDF94 | 7C 85 30 2E */	lwzx r4, r5, r6
/* 814CDF98 | 7C 65 32 14 */	add r3, r5, r6
/* 814CDF9C | 60 84 00 01 */	ori r4, r4, 0x1
/* 814CDFA0 | 7C 85 31 2E */	stwx r4, r5, r6
/* 814CDFA4 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814CDFA8 | 83 E3 00 08 */	lwz r31, 0x8(r3)
/* 814CDFAC | 48 00 00 24 */	b .L_814CDFD0
.L_814CDFB0:
/* 814CDFB0 | 38 63 00 0C */	addi r3, r3, 0xc
/* 814CDFB4 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814CDFB8:
/* 814CDFB8 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814CDFBC | 41 80 FF BC */	blt .L_814CDF78
/* 814CDFC0 | 48 00 00 10 */	b .L_814CDFD0
.L_814CDFC4:
/* 814CDFC4 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CDFC8 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CDFCC | 83 E3 00 08 */	lwz r31, 0x8(r3)
.L_814CDFD0:
/* 814CDFD0 | 7F E3 FB 78 */	mr r3, r31
/* 814CDFD4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CDFD8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CDFDC | 7C 08 03 A6 */	mtlr r0
/* 814CDFE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CDFE4 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_GetCurrentVolume

# .text:0xF90 | 0x814CDFE8 | size: 0x54
.fn VFiPFVOL_GetVolumeFromDrvChar, global
/* 814CDFE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CDFEC | 7C 08 02 A6 */	mflr r0
/* 814CDFF0 | 7C 63 07 74 */	extsb r3, r3
/* 814CDFF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CDFF8 | 4B FE 77 D1 */	bl VFipf_toupper
/* 814CDFFC | 38 03 FF BF */	subi r0, r3, 0x41
/* 814CE000 | 7C 00 07 35 */	extsh. r0, r0
/* 814CE004 | 41 80 00 0C */	blt .L_814CE010
/* 814CE008 | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 814CE00C | 41 80 00 0C */	blt .L_814CE018
.L_814CE010:
/* 814CE010 | 38 60 00 00 */	li r3, 0x0
/* 814CE014 | 48 00 00 18 */	b .L_814CE02C
.L_814CE018:
/* 814CE018 | 1C 00 18 80 */	mulli r0, r0, 0x1880
/* 814CE01C | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CE020 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CE024 | 7C 63 02 14 */	add r3, r3, r0
/* 814CE028 | 38 63 00 48 */	addi r3, r3, 0x48
.L_814CE02C:
/* 814CE02C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CE030 | 7C 08 03 A6 */	mtlr r0
/* 814CE034 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CE038 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_GetVolumeFromDrvChar

# .text:0xFE4 | 0x814CE03C | size: 0x44
.fn VFiPFVOL_LoadVolumeLabelFromBuf, global
/* 814CE03C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CE040 | 7C 08 02 A6 */	mflr r0
/* 814CE044 | 38 A0 00 0B */	li r5, 0xb
/* 814CE048 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CE04C | 7C 60 1B 78 */	mr r0, r3
/* 814CE050 | 38 64 15 F4 */	addi r3, r4, 0x15f4
/* 814CE054 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CE058 | 7C 9F 23 78 */	mr r31, r4
/* 814CE05C | 7C 04 03 78 */	mr r4, r0
/* 814CE060 | 4B FE 77 81 */	bl VFipf_memcpy
/* 814CE064 | 38 00 00 00 */	li r0, 0x0
/* 814CE068 | 98 1F 15 FF */	stb r0, 0x15ff(r31)
/* 814CE06C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CE070 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CE074 | 7C 08 03 A6 */	mtlr r0
/* 814CE078 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CE07C | 4E 80 00 20 */	blr
.endfn VFiPFVOL_LoadVolumeLabelFromBuf

# .text:0x1028 | 0x814CE080 | size: 0x10
.fn VFiPFVOL_errnum, global
/* 814CE080 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CE084 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CE088 | 80 63 00 1C */	lwz r3, 0x1c(r3)
/* 814CE08C | 4E 80 00 20 */	blr
.endfn VFiPFVOL_errnum

# .text:0x1038 | 0x814CE090 | size: 0x2A0
.fn VFiPFVOL_getdev, global
/* 814CE090 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CE094 | 7C 08 02 A6 */	mflr r0
/* 814CE098 | 7C 63 07 74 */	extsb r3, r3
/* 814CE09C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CE0A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CE0A4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814CE0A8 | 7C 9E 23 78 */	mr r30, r4
/* 814CE0AC | 4B FE 77 1D */	bl VFipf_toupper
/* 814CE0B0 | 38 03 FF BF */	subi r0, r3, 0x41
/* 814CE0B4 | 7C 00 07 35 */	extsh. r0, r0
/* 814CE0B8 | 41 80 00 0C */	blt .L_814CE0C4
/* 814CE0BC | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 814CE0C0 | 41 80 00 0C */	blt .L_814CE0CC
.L_814CE0C4:
/* 814CE0C4 | 3B E0 00 00 */	li r31, 0x0
/* 814CE0C8 | 48 00 00 18 */	b .L_814CE0E0
.L_814CE0CC:
/* 814CE0CC | 1C 00 18 80 */	mulli r0, r0, 0x1880
/* 814CE0D0 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CE0D4 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CE0D8 | 7C 63 02 14 */	add r3, r3, r0
/* 814CE0DC | 3B E3 00 48 */	addi r31, r3, 0x48
.L_814CE0E0:
/* 814CE0E0 | 2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 814CE0E4 | 40 86 00 1C */	bne cr1, .L_814CE100
/* 814CE0E8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE0EC | 38 00 00 0A */	li r0, 0xa
/* 814CE0F0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE0F4 | 38 60 00 0A */	li r3, 0xa
/* 814CE0F8 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE0FC | 48 00 02 1C */	b .L_814CE318
.L_814CE100:
/* 814CE100 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814CE104 | 40 82 00 20 */	bne .L_814CE124
/* 814CE108 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE10C | 38 00 00 0A */	li r0, 0xa
/* 814CE110 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE114 | 38 60 00 0A */	li r3, 0xa
/* 814CE118 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE11C | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814CE120 | 48 00 01 F8 */	b .L_814CE318
.L_814CE124:
/* 814CE124 | 40 86 00 0C */	bne cr1, .L_814CE130
/* 814CE128 | 38 60 00 0A */	li r3, 0xa
/* 814CE12C | 48 00 01 8C */	b .L_814CE2B8
.L_814CE130:
/* 814CE130 | 7F E3 FB 78 */	mr r3, r31
/* 814CE134 | 4B FE 84 ED */	bl VFiPFDRV_IsInserted
/* 814CE138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE13C | 41 82 00 D0 */	beq .L_814CE20C
/* 814CE140 | 7F E3 FB 78 */	mr r3, r31
/* 814CE144 | 4B FE 85 09 */	bl VFiPFDRV_IsDetected
/* 814CE148 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE14C | 41 82 01 48 */	beq .L_814CE294
/* 814CE150 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CE154 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE158 | 41 82 00 64 */	beq .L_814CE1BC
/* 814CE15C | 7F E3 FB 78 */	mr r3, r31
/* 814CE160 | 4B FF AA D5 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CE164 | 7F E3 FB 78 */	mr r3, r31
/* 814CE168 | 4B FE FA DD */	bl VFiPFDIR_FinalizeAllDirs
/* 814CE16C | 7F E3 FB 78 */	mr r3, r31
/* 814CE170 | 4B FE E4 D9 */	bl VFiPFCACHE_FreeAllCaches
/* 814CE174 | 7F E3 FB 78 */	mr r3, r31
/* 814CE178 | 38 80 00 01 */	li r4, 0x1
/* 814CE17C | 4B FE 87 F9 */	bl VFiPFDRV_unmount
/* 814CE180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE184 | 40 82 00 24 */	bne .L_814CE1A8
/* 814CE188 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CE18C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE190 | 41 82 00 0C */	beq .L_814CE19C
/* 814CE194 | 38 00 00 00 */	li r0, 0x0
/* 814CE198 | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CE19C:
/* 814CE19C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CE1A0 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CE1A4 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CE1A8:
/* 814CE1A8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE1AC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE1B0 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CE1B4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CE1B8 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CE1BC:
/* 814CE1BC | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CE1C0 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE1C4 | 40 82 00 38 */	bne .L_814CE1FC
/* 814CE1C8 | 7F E3 FB 78 */	mr r3, r31
/* 814CE1CC | 4B FF EE 8D */	bl VFiPFVOL_DoMountVolume
/* 814CE1D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE1D4 | 41 82 00 08 */	beq .L_814CE1DC
/* 814CE1D8 | 48 00 00 28 */	b .L_814CE200
.L_814CE1DC:
/* 814CE1DC | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814CE1E0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE1E4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE1E8 | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 814CE1EC | B0 1F 18 64 */	sth r0, 0x1864(r31)
/* 814CE1F0 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CE1F4 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CE1F8 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CE1FC:
/* 814CE1FC | 38 60 00 00 */	li r3, 0x0
.L_814CE200:
/* 814CE200 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE204 | 41 82 00 90 */	beq .L_814CE294
/* 814CE208 | 48 00 00 90 */	b .L_814CE298
.L_814CE20C:
/* 814CE20C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CE210 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE214 | 41 82 00 80 */	beq .L_814CE294
/* 814CE218 | 7F E3 FB 78 */	mr r3, r31
/* 814CE21C | 4B FE 84 31 */	bl VFiPFDRV_IsDetected
/* 814CE220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE224 | 41 82 00 64 */	beq .L_814CE288
/* 814CE228 | 7F E3 FB 78 */	mr r3, r31
/* 814CE22C | 4B FF AA 09 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CE230 | 7F E3 FB 78 */	mr r3, r31
/* 814CE234 | 4B FE FA 11 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CE238 | 7F E3 FB 78 */	mr r3, r31
/* 814CE23C | 4B FE E4 0D */	bl VFiPFCACHE_FreeAllCaches
/* 814CE240 | 7F E3 FB 78 */	mr r3, r31
/* 814CE244 | 38 80 00 01 */	li r4, 0x1
/* 814CE248 | 4B FE 87 2D */	bl VFiPFDRV_unmount
/* 814CE24C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE250 | 40 82 00 24 */	bne .L_814CE274
/* 814CE254 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CE258 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE25C | 41 82 00 0C */	beq .L_814CE268
/* 814CE260 | 38 00 00 00 */	li r0, 0x0
/* 814CE264 | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CE268:
/* 814CE268 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CE26C | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CE270 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CE274:
/* 814CE274 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE278 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE27C | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CE280 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CE284 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CE288:
/* 814CE288 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CE28C | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CE290 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CE294:
/* 814CE294 | 38 60 00 00 */	li r3, 0x0
.L_814CE298:
/* 814CE298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE29C | 41 82 00 08 */	beq .L_814CE2A4
/* 814CE2A0 | 48 00 00 18 */	b .L_814CE2B8
.L_814CE2A4:
/* 814CE2A4 | A0 7F 18 60 */	lhz r3, 0x1860(r31)
/* 814CE2A8 | 38 00 00 09 */	li r0, 0x9
/* 814CE2AC | 54 63 FF FE */	extrwi r3, r3, 1, 30
/* 814CE2B0 | 7C 63 00 D0 */	neg r3, r3
/* 814CE2B4 | 7C 03 18 78 */	andc r3, r0, r3
.L_814CE2B8:
/* 814CE2B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE2BC | 41 82 00 18 */	beq .L_814CE2D4
/* 814CE2C0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE2C4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE2C8 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CE2CC | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CE2D0 | 48 00 00 48 */	b .L_814CE318
.L_814CE2D4:
/* 814CE2D4 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814CE2D8 | 7F E3 FB 78 */	mr r3, r31
/* 814CE2DC | 38 9E 00 04 */	addi r4, r30, 0x4
/* 814CE2E0 | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 814CE2E4 | 88 1F 00 06 */	lbz r0, 0x6(r31)
/* 814CE2E8 | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 814CE2EC | 80 1F 00 34 */	lwz r0, 0x34(r31)
/* 814CE2F0 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814CE2F4 | 4B FF 5B E1 */	bl VFiPFFAT_CountFreeClusters
/* 814CE2F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE2FC | 41 82 00 18 */	beq .L_814CE314
/* 814CE300 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE304 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE308 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CE30C | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CE310 | 48 00 00 08 */	b .L_814CE318
.L_814CE314:
/* 814CE314 | 38 60 00 00 */	li r3, 0x0
.L_814CE318:
/* 814CE318 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CE31C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CE320 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814CE324 | 7C 08 03 A6 */	mtlr r0
/* 814CE328 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CE32C | 4E 80 00 20 */	blr
.endfn VFiPFVOL_getdev

# .text:0x12D8 | 0x814CE330 | size: 0x5F4
.fn VFiPFVOL_attach, global
/* 814CE330 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CE334 | 7C 08 02 A6 */	mflr r0
/* 814CE338 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814CE33C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CE340 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CE344 | 3B E0 00 00 */	li r31, 0x0
/* 814CE348 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CE34C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814CE350 | 7C 7D 1B 78 */	mr r29, r3
/* 814CE354 | 40 86 00 1C */	bne cr1, .L_814CE370
/* 814CE358 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE35C | 38 00 00 0A */	li r0, 0xa
/* 814CE360 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE364 | 38 60 00 0A */	li r3, 0xa
/* 814CE368 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE36C | 48 00 05 9C */	b .L_814CE908
.L_814CE370:
/* 814CE370 | 8B C3 00 08 */	lbz r30, 0x8(r3)
/* 814CE374 | 38 00 00 00 */	li r0, 0x0
/* 814CE378 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE37C | 98 03 00 09 */	stb r0, 0x9(r3)
/* 814CE380 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE384 | 98 03 00 08 */	stb r0, 0x8(r3)
/* 814CE388 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 814CE38C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CE390 | 41 80 00 0C */	blt .L_814CE39C
/* 814CE394 | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 814CE398 | 41 80 00 1C */	blt .L_814CE3B4
.L_814CE39C:
/* 814CE39C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE3A0 | 38 00 00 04 */	li r0, 0x4
/* 814CE3A4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE3A8 | 38 60 00 04 */	li r3, 0x4
/* 814CE3AC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE3B0 | 48 00 05 58 */	b .L_814CE908
.L_814CE3B4:
/* 814CE3B4 | 41 86 00 74 */	beq cr1, .L_814CE428
/* 814CE3B8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CE3BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CE3C0 | 41 82 00 68 */	beq .L_814CE428
/* 814CE3C4 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814CE3C8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814CE3CC | 41 82 00 5C */	beq .L_814CE428
/* 814CE3D0 | 80 C4 00 0C */	lwz r6, 0xc(r4)
/* 814CE3D4 | 28 06 FF FF */	cmplwi r6, 0xffff
/* 814CE3D8 | 41 81 00 50 */	bgt .L_814CE428
/* 814CE3DC | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814CE3E0 | 28 00 7F FF */	cmplwi r0, 0x7fff
/* 814CE3E4 | 41 81 00 44 */	bgt .L_814CE428
/* 814CE3E8 | A0 04 00 08 */	lhz r0, 0x8(r4)
/* 814CE3EC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814CE3F0 | 41 80 00 38 */	blt .L_814CE428
/* 814CE3F4 | A0 04 00 0A */	lhz r0, 0xa(r4)
/* 814CE3F8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CE3FC | 41 80 00 2C */	blt .L_814CE428
/* 814CE400 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814CE404 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CE408 | 41 82 00 20 */	beq .L_814CE428
/* 814CE40C | 80 A4 00 04 */	lwz r5, 0x4(r4)
/* 814CE410 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814CE414 | 41 82 00 14 */	beq .L_814CE428
/* 814CE418 | 54 00 07 BF */	clrlwi. r0, r0, 30
/* 814CE41C | 40 82 00 0C */	bne .L_814CE428
/* 814CE420 | 54 A0 07 BF */	clrlwi. r0, r5, 30
/* 814CE424 | 41 82 00 1C */	beq .L_814CE440
.L_814CE428:
/* 814CE428 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE42C | 38 00 00 0A */	li r0, 0xa
/* 814CE430 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE434 | 38 60 00 0A */	li r3, 0xa
/* 814CE438 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE43C | 48 00 04 CC */	b .L_814CE908
.L_814CE440:
/* 814CE440 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814CE444 | 40 82 00 0C */	bne .L_814CE450
/* 814CE448 | 38 00 00 01 */	li r0, 0x1
/* 814CE44C | 90 04 00 0C */	stw r0, 0xc(r4)
.L_814CE450:
/* 814CE450 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814CE454 | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814CE458 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CE45C | 40 82 00 0C */	bne .L_814CE468
/* 814CE460 | 38 00 00 01 */	li r0, 0x1
/* 814CE464 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CE468:
/* 814CE468 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 814CE46C | A0 64 00 08 */	lhz r3, 0x8(r4)
/* 814CE470 | 80 04 00 0C */	lwz r0, 0xc(r4)
/* 814CE474 | 7C 03 03 96 */	divwu r0, r3, r0
/* 814CE478 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814CE47C | 40 80 00 1C */	bge .L_814CE498
/* 814CE480 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE484 | 38 00 00 0A */	li r0, 0xa
/* 814CE488 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE48C | 38 60 00 0A */	li r3, 0xa
/* 814CE490 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE494 | 48 00 04 74 */	b .L_814CE908
.L_814CE498:
/* 814CE498 | A0 64 00 0A */	lhz r3, 0xa(r4)
/* 814CE49C | 80 04 00 10 */	lwz r0, 0x10(r4)
/* 814CE4A0 | 7C 03 03 96 */	divwu r0, r3, r0
/* 814CE4A4 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814CE4A8 | 40 80 00 1C */	bge .L_814CE4C4
/* 814CE4AC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE4B0 | 38 00 00 0A */	li r0, 0xa
/* 814CE4B4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE4B8 | 38 60 00 0A */	li r3, 0xa
/* 814CE4BC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE4C0 | 48 00 04 48 */	b .L_814CE908
.L_814CE4C4:
/* 814CE4C4 | 7F C0 07 75 */	extsb. r0, r30
/* 814CE4C8 | 41 82 00 50 */	beq .L_814CE518
/* 814CE4CC | 2C 00 00 61 */	cmpwi r0, 0x61
/* 814CE4D0 | 41 80 00 0C */	blt .L_814CE4DC
/* 814CE4D4 | 2C 00 00 7A */	cmpwi r0, 0x7a
/* 814CE4D8 | 40 81 00 18 */	ble .L_814CE4F0
.L_814CE4DC:
/* 814CE4DC | 7F C0 07 74 */	extsb r0, r30
/* 814CE4E0 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 814CE4E4 | 41 80 00 1C */	blt .L_814CE500
/* 814CE4E8 | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 814CE4EC | 41 81 00 14 */	bgt .L_814CE500
.L_814CE4F0:
/* 814CE4F0 | 7F C3 07 74 */	extsb r3, r30
/* 814CE4F4 | 4B FE 72 D5 */	bl VFipf_toupper
/* 814CE4F8 | 3B E3 FF BF */	subi r31, r3, 0x41
/* 814CE4FC | 48 00 00 1C */	b .L_814CE518
.L_814CE500:
/* 814CE500 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE504 | 38 00 00 0A */	li r0, 0xa
/* 814CE508 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE50C | 38 60 00 0A */	li r3, 0xa
/* 814CE510 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE514 | 48 00 03 F4 */	b .L_814CE908
.L_814CE518:
/* 814CE518 | 7F C0 07 75 */	extsb. r0, r30
/* 814CE51C | 40 82 00 78 */	bne .L_814CE594
/* 814CE520 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CE524 | 38 00 00 0D */	li r0, 0xd
/* 814CE528 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CE52C | 3B E0 00 00 */	li r31, 0x0
/* 814CE530 | 38 63 00 48 */	addi r3, r3, 0x48
/* 814CE534 | 7C 09 03 A6 */	mtctr r0
.L_814CE538:
/* 814CE538 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814CE53C | 7C 7E 1B 78 */	mr r30, r3
/* 814CE540 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CE544 | 41 82 00 28 */	beq .L_814CE56C
/* 814CE548 | A0 03 30 E0 */	lhz r0, 0x30e0(r3)
/* 814CE54C | 38 63 18 80 */	addi r3, r3, 0x1880
/* 814CE550 | 7C 7E 1B 78 */	mr r30, r3
/* 814CE554 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814CE558 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CE55C | 41 82 00 10 */	beq .L_814CE56C
/* 814CE560 | 38 63 18 80 */	addi r3, r3, 0x1880
/* 814CE564 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814CE568 | 42 00 FF D0 */	bdnz .L_814CE538
.L_814CE56C:
/* 814CE56C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CE570 | 41 80 00 0C */	blt .L_814CE57C
/* 814CE574 | 2C 1F 00 1A */	cmpwi r31, 0x1a
/* 814CE578 | 41 80 00 74 */	blt .L_814CE5EC
.L_814CE57C:
/* 814CE57C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE580 | 38 00 00 04 */	li r0, 0x4
/* 814CE584 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE588 | 38 60 00 04 */	li r3, 0x4
/* 814CE58C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE590 | 48 00 03 78 */	b .L_814CE908
.L_814CE594:
/* 814CE594 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CE598 | 41 80 00 0C */	blt .L_814CE5A4
/* 814CE59C | 2C 1F 00 1A */	cmpwi r31, 0x1a
/* 814CE5A0 | 41 80 00 1C */	blt .L_814CE5BC
.L_814CE5A4:
/* 814CE5A4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE5A8 | 38 00 00 12 */	li r0, 0x12
/* 814CE5AC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE5B0 | 38 60 00 12 */	li r3, 0x12
/* 814CE5B4 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE5B8 | 48 00 03 50 */	b .L_814CE908
.L_814CE5BC:
/* 814CE5BC | 1C 1F 18 80 */	mulli r0, r31, 0x1880
/* 814CE5C0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE5C4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE5C8 | 7C 64 02 14 */	add r3, r4, r0
/* 814CE5CC | A0 03 18 A8 */	lhz r0, 0x18a8(r3)
/* 814CE5D0 | 3B C3 00 48 */	addi r30, r3, 0x48
/* 814CE5D4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CE5D8 | 41 82 00 14 */	beq .L_814CE5EC
/* 814CE5DC | 38 00 00 12 */	li r0, 0x12
/* 814CE5E0 | 38 60 00 12 */	li r3, 0x12
/* 814CE5E4 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE5E8 | 48 00 03 20 */	b .L_814CE908
.L_814CE5EC:
/* 814CE5EC | 7F C3 F3 78 */	mr r3, r30
/* 814CE5F0 | 38 80 00 00 */	li r4, 0x0
/* 814CE5F4 | 38 A0 18 80 */	li r5, 0x1880
/* 814CE5F8 | 4B FE 73 11 */	bl VFipf_memset
/* 814CE5FC | 38 C0 FF FF */	li r6, -0x1
/* 814CE600 | 7F E3 07 34 */	extsh r3, r31
/* 814CE604 | 90 DE 00 38 */	stw r6, 0x38(r30)
/* 814CE608 | 38 A3 00 41 */	addi r5, r3, 0x41
/* 814CE60C | 38 80 00 01 */	li r4, 0x1
/* 814CE610 | 38 1E 18 4C */	addi r0, r30, 0x184c
/* 814CE614 | 90 DE 00 3C */	stw r6, 0x3c(r30)
/* 814CE618 | 7F C3 F3 78 */	mr r3, r30
/* 814CE61C | 80 DD 00 00 */	lwz r6, 0x0(r29)
/* 814CE620 | 90 DE 18 74 */	stw r6, 0x1874(r30)
/* 814CE624 | 98 BE 18 62 */	stb r5, 0x1862(r30)
/* 814CE628 | 90 9E 18 48 */	stw r4, 0x1848(r30)
/* 814CE62C | 90 1E 18 50 */	stw r0, 0x1850(r30)
/* 814CE630 | 4B FE 80 75 */	bl VFiPFDRV_init
/* 814CE634 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE638 | 41 82 00 08 */	beq .L_814CE640
/* 814CE63C | 48 00 00 50 */	b .L_814CE68C
.L_814CE640:
/* 814CE640 | 80 FD 00 04 */	lwz r7, 0x4(r29)
/* 814CE644 | 7F C3 F3 78 */	mr r3, r30
/* 814CE648 | 80 87 00 00 */	lwz r4, 0x0(r7)
/* 814CE64C | 80 A7 00 04 */	lwz r5, 0x4(r7)
/* 814CE650 | A0 C7 00 08 */	lhz r6, 0x8(r7)
/* 814CE654 | A0 E7 00 0A */	lhz r7, 0xa(r7)
/* 814CE658 | 4B FE D6 9D */	bl VFiPFCACHE_SetCache
/* 814CE65C | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 814CE660 | 7F C3 F3 78 */	mr r3, r30
/* 814CE664 | 80 84 00 0C */	lwz r4, 0xc(r4)
/* 814CE668 | 4B FE D6 A1 */	bl VFiPFCACHE_SetFATBufferSize
/* 814CE66C | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 814CE670 | 7F C3 F3 78 */	mr r3, r30
/* 814CE674 | 80 84 00 10 */	lwz r4, 0x10(r4)
/* 814CE678 | 4B FE D6 A1 */	bl VFiPFCACHE_SetDataBufferSize
/* 814CE67C | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE680 | 38 60 00 00 */	li r3, 0x0
/* 814CE684 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814CE688 | B0 1E 18 60 */	sth r0, 0x1860(r30)
.L_814CE68C:
/* 814CE68C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE690 | 41 82 00 14 */	beq .L_814CE6A4
/* 814CE694 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE698 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE69C | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CE6A0 | 48 00 02 68 */	b .L_814CE908
.L_814CE6A4:
/* 814CE6A4 | 88 1D 00 09 */	lbz r0, 0x9(r29)
/* 814CE6A8 | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814CE6AC | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814CE6B0 | 7F C3 F3 78 */	mr r3, r30
/* 814CE6B4 | 60 00 00 01 */	ori r0, r0, 0x1
/* 814CE6B8 | 98 1D 00 09 */	stb r0, 0x9(r29)
/* 814CE6BC | 88 1E 18 62 */	lbz r0, 0x1862(r30)
/* 814CE6C0 | 98 1D 00 08 */	stb r0, 0x8(r29)
/* 814CE6C4 | 80 85 00 0C */	lwz r4, 0xc(r5)
/* 814CE6C8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814CE6CC | 90 05 00 0C */	stw r0, 0xc(r5)
/* 814CE6D0 | 4B FE 7F 51 */	bl VFiPFDRV_IsInserted
/* 814CE6D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE6D8 | 41 82 00 D4 */	beq .L_814CE7AC
/* 814CE6DC | 7F C3 F3 78 */	mr r3, r30
/* 814CE6E0 | 4B FE 7F 6D */	bl VFiPFDRV_IsDetected
/* 814CE6E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE6E8 | 41 82 01 4C */	beq .L_814CE834
/* 814CE6EC | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE6F0 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE6F4 | 41 82 00 64 */	beq .L_814CE758
/* 814CE6F8 | 7F C3 F3 78 */	mr r3, r30
/* 814CE6FC | 4B FF A5 39 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CE700 | 7F C3 F3 78 */	mr r3, r30
/* 814CE704 | 4B FE F5 41 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CE708 | 7F C3 F3 78 */	mr r3, r30
/* 814CE70C | 4B FE DF 3D */	bl VFiPFCACHE_FreeAllCaches
/* 814CE710 | 7F C3 F3 78 */	mr r3, r30
/* 814CE714 | 38 80 00 01 */	li r4, 0x1
/* 814CE718 | 4B FE 82 5D */	bl VFiPFDRV_unmount
/* 814CE71C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE720 | 40 82 00 24 */	bne .L_814CE744
/* 814CE724 | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE728 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE72C | 41 82 00 0C */	beq .L_814CE738
/* 814CE730 | 38 00 00 00 */	li r0, 0x0
/* 814CE734 | 90 1E 16 00 */	stw r0, 0x1600(r30)
.L_814CE738:
/* 814CE738 | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE73C | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CE740 | B0 1E 18 60 */	sth r0, 0x1860(r30)
.L_814CE744:
/* 814CE744 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE748 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE74C | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CE750 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CE754 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CE758:
/* 814CE758 | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE75C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE760 | 40 82 00 38 */	bne .L_814CE798
/* 814CE764 | 7F C3 F3 78 */	mr r3, r30
/* 814CE768 | 4B FF E8 F1 */	bl VFiPFVOL_DoMountVolume
/* 814CE76C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE770 | 41 82 00 08 */	beq .L_814CE778
/* 814CE774 | 48 00 00 28 */	b .L_814CE79C
.L_814CE778:
/* 814CE778 | A0 1E 18 64 */	lhz r0, 0x1864(r30)
/* 814CE77C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE780 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE784 | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 814CE788 | B0 1E 18 64 */	sth r0, 0x1864(r30)
/* 814CE78C | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CE790 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CE794 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CE798:
/* 814CE798 | 38 60 00 00 */	li r3, 0x0
.L_814CE79C:
/* 814CE79C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE7A0 | 41 82 00 94 */	beq .L_814CE834
/* 814CE7A4 | 7C 7F 1B 78 */	mr r31, r3
/* 814CE7A8 | 48 00 00 90 */	b .L_814CE838
.L_814CE7AC:
/* 814CE7AC | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE7B0 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE7B4 | 41 82 00 80 */	beq .L_814CE834
/* 814CE7B8 | 7F C3 F3 78 */	mr r3, r30
/* 814CE7BC | 4B FE 7E 91 */	bl VFiPFDRV_IsDetected
/* 814CE7C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE7C4 | 41 82 00 64 */	beq .L_814CE828
/* 814CE7C8 | 7F C3 F3 78 */	mr r3, r30
/* 814CE7CC | 4B FF A4 69 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CE7D0 | 7F C3 F3 78 */	mr r3, r30
/* 814CE7D4 | 4B FE F4 71 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CE7D8 | 7F C3 F3 78 */	mr r3, r30
/* 814CE7DC | 4B FE DE 6D */	bl VFiPFCACHE_FreeAllCaches
/* 814CE7E0 | 7F C3 F3 78 */	mr r3, r30
/* 814CE7E4 | 38 80 00 01 */	li r4, 0x1
/* 814CE7E8 | 4B FE 81 8D */	bl VFiPFDRV_unmount
/* 814CE7EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE7F0 | 40 82 00 24 */	bne .L_814CE814
/* 814CE7F4 | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE7F8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE7FC | 41 82 00 0C */	beq .L_814CE808
/* 814CE800 | 38 00 00 00 */	li r0, 0x0
/* 814CE804 | 90 1E 16 00 */	stw r0, 0x1600(r30)
.L_814CE808:
/* 814CE808 | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE80C | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CE810 | B0 1E 18 60 */	sth r0, 0x1860(r30)
.L_814CE814:
/* 814CE814 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE818 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE81C | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CE820 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CE824 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CE828:
/* 814CE828 | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE82C | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CE830 | B0 1E 18 60 */	sth r0, 0x1860(r30)
.L_814CE834:
/* 814CE834 | 3B E0 00 00 */	li r31, 0x0
.L_814CE838:
/* 814CE838 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CE83C | 41 82 00 38 */	beq .L_814CE874
/* 814CE840 | 7F C3 F3 78 */	mr r3, r30
/* 814CE844 | 4B FE 7D DD */	bl VFiPFDRV_IsInserted
/* 814CE848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE84C | 41 82 00 10 */	beq .L_814CE85C
/* 814CE850 | 88 1D 00 09 */	lbz r0, 0x9(r29)
/* 814CE854 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814CE858 | 98 1D 00 09 */	stb r0, 0x9(r29)
.L_814CE85C:
/* 814CE85C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE860 | 38 60 00 00 */	li r3, 0x0
/* 814CE864 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE868 | 93 E4 00 1C */	stw r31, 0x1c(r4)
/* 814CE86C | 93 FE 18 54 */	stw r31, 0x1854(r30)
/* 814CE870 | 48 00 00 98 */	b .L_814CE908
.L_814CE874:
/* 814CE874 | 7F C3 F3 78 */	mr r3, r30
/* 814CE878 | 4B FE 7D A9 */	bl VFiPFDRV_IsInserted
/* 814CE87C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE880 | 41 82 00 84 */	beq .L_814CE904
/* 814CE884 | 88 1D 00 09 */	lbz r0, 0x9(r29)
/* 814CE888 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814CE88C | 98 1D 00 09 */	stb r0, 0x9(r29)
/* 814CE890 | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814CE894 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CE898 | 40 82 00 3C */	bne .L_814CE8D4
/* 814CE89C | 7F C3 F3 78 */	mr r3, r30
/* 814CE8A0 | 4B FF E7 B9 */	bl VFiPFVOL_DoMountVolume
/* 814CE8A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CE8A8 | 41 82 00 0C */	beq .L_814CE8B4
/* 814CE8AC | 7C 60 1B 78 */	mr r0, r3
/* 814CE8B0 | 48 00 00 28 */	b .L_814CE8D8
.L_814CE8B4:
/* 814CE8B4 | A0 1E 18 64 */	lhz r0, 0x1864(r30)
/* 814CE8B8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE8BC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE8C0 | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 814CE8C4 | B0 1E 18 64 */	sth r0, 0x1864(r30)
/* 814CE8C8 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CE8CC | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CE8D0 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CE8D4:
/* 814CE8D4 | 38 00 00 00 */	li r0, 0x0
.L_814CE8D8:
/* 814CE8D8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CE8DC | 41 82 00 1C */	beq .L_814CE8F8
/* 814CE8E0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE8E4 | 38 60 00 00 */	li r3, 0x0
/* 814CE8E8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE8EC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE8F0 | 90 1E 18 54 */	stw r0, 0x1854(r30)
/* 814CE8F4 | 48 00 00 14 */	b .L_814CE908
.L_814CE8F8:
/* 814CE8F8 | 88 1D 00 09 */	lbz r0, 0x9(r29)
/* 814CE8FC | 60 00 00 02 */	ori r0, r0, 0x2
/* 814CE900 | 98 1D 00 09 */	stb r0, 0x9(r29)
.L_814CE904:
/* 814CE904 | 38 60 00 00 */	li r3, 0x0
.L_814CE908:
/* 814CE908 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CE90C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CE910 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CE914 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814CE918 | 7C 08 03 A6 */	mtlr r0
/* 814CE91C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CE920 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_attach

# .text:0x18CC | 0x814CE924 | size: 0x11C
.fn VFiPFVOL_detach, global
/* 814CE924 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CE928 | 7C 08 02 A6 */	mflr r0
/* 814CE92C | 7C 63 07 74 */	extsb r3, r3
/* 814CE930 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CE934 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CE938 | 4B FE 6E 91 */	bl VFipf_toupper
/* 814CE93C | 38 03 FF BF */	subi r0, r3, 0x41
/* 814CE940 | 7C 00 07 35 */	extsh. r0, r0
/* 814CE944 | 41 80 00 0C */	blt .L_814CE950
/* 814CE948 | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 814CE94C | 41 80 00 0C */	blt .L_814CE958
.L_814CE950:
/* 814CE950 | 3B E0 00 00 */	li r31, 0x0
/* 814CE954 | 48 00 00 18 */	b .L_814CE96C
.L_814CE958:
/* 814CE958 | 1C 00 18 80 */	mulli r0, r0, 0x1880
/* 814CE95C | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CE960 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CE964 | 7C 63 02 14 */	add r3, r3, r0
/* 814CE968 | 3B E3 00 48 */	addi r31, r3, 0x48
.L_814CE96C:
/* 814CE96C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CE970 | 40 82 00 1C */	bne .L_814CE98C
/* 814CE974 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE978 | 38 00 00 0A */	li r0, 0xa
/* 814CE97C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE980 | 38 60 00 0A */	li r3, 0xa
/* 814CE984 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE988 | 48 00 00 A4 */	b .L_814CEA2C
.L_814CE98C:
/* 814CE98C | A0 7F 18 60 */	lhz r3, 0x1860(r31)
/* 814CE990 | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 814CE994 | 41 82 00 20 */	beq .L_814CE9B4
/* 814CE998 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE99C | 38 00 00 0A */	li r0, 0xa
/* 814CE9A0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE9A4 | 38 60 00 0A */	li r3, 0xa
/* 814CE9A8 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE9AC | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814CE9B0 | 48 00 00 7C */	b .L_814CEA2C
.L_814CE9B4:
/* 814CE9B4 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 814CE9B8 | 40 82 00 20 */	bne .L_814CE9D8
/* 814CE9BC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE9C0 | 38 00 00 0A */	li r0, 0xa
/* 814CE9C4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE9C8 | 38 60 00 0A */	li r3, 0xa
/* 814CE9CC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CE9D0 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814CE9D4 | 48 00 00 58 */	b .L_814CEA2C
.L_814CE9D8:
/* 814CE9D8 | 7F E3 FB 78 */	mr r3, r31
/* 814CE9DC | 4B FE 7D 49 */	bl VFiPFDRV_finalize
/* 814CE9E0 | 7C 03 00 D0 */	neg r0, r3
/* 814CE9E4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814CE9E8 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814CE9EC | 7C 63 00 39 */	and. r3, r3, r0
/* 814CE9F0 | 41 82 00 18 */	beq .L_814CEA08
/* 814CE9F4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CE9F8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CE9FC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CEA00 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CEA04 | 48 00 00 28 */	b .L_814CEA2C
.L_814CEA08:
/* 814CEA08 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEA0C | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814CEA10 | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814CEA14 | 38 60 00 00 */	li r3, 0x0
/* 814CEA18 | 54 00 04 3C */	rlwinm r0, r0, 0, 16, 30
/* 814CEA1C | B0 1F 18 60 */	sth r0, 0x1860(r31)
/* 814CEA20 | 80 85 00 0C */	lwz r4, 0xc(r5)
/* 814CEA24 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814CEA28 | 90 05 00 0C */	stw r0, 0xc(r5)
.L_814CEA2C:
/* 814CEA2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CEA30 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CEA34 | 7C 08 03 A6 */	mtlr r0
/* 814CEA38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CEA3C | 4E 80 00 20 */	blr
.endfn VFiPFVOL_detach

# .text:0x19E8 | 0x814CEA40 | size: 0x168
.fn VFiPFVOL_format, global
/* 814CEA40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814CEA44 | 7C 08 02 A6 */	mflr r0
/* 814CEA48 | 7C 63 07 74 */	extsb r3, r3
/* 814CEA4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814CEA50 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814CEA54 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814CEA58 | 7C 9E 23 78 */	mr r30, r4
/* 814CEA5C | 4B FE 6D 6D */	bl VFipf_toupper
/* 814CEA60 | 38 03 FF BF */	subi r0, r3, 0x41
/* 814CEA64 | 7C 00 07 35 */	extsh. r0, r0
/* 814CEA68 | 41 80 00 0C */	blt .L_814CEA74
/* 814CEA6C | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 814CEA70 | 41 80 00 0C */	blt .L_814CEA7C
.L_814CEA74:
/* 814CEA74 | 3B E0 00 00 */	li r31, 0x0
/* 814CEA78 | 48 00 00 18 */	b .L_814CEA90
.L_814CEA7C:
/* 814CEA7C | 1C 00 18 80 */	mulli r0, r0, 0x1880
/* 814CEA80 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CEA84 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CEA88 | 7C 63 02 14 */	add r3, r3, r0
/* 814CEA8C | 3B E3 00 48 */	addi r31, r3, 0x48
.L_814CEA90:
/* 814CEA90 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CEA94 | 40 82 00 1C */	bne .L_814CEAB0
/* 814CEA98 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEA9C | 38 00 00 0A */	li r0, 0xa
/* 814CEAA0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEAA4 | 38 60 00 0A */	li r3, 0xa
/* 814CEAA8 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CEAAC | 48 00 00 E4 */	b .L_814CEB90
.L_814CEAB0:
/* 814CEAB0 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEAB4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CEAB8 | 40 82 00 20 */	bne .L_814CEAD8
/* 814CEABC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEAC0 | 38 00 00 0A */	li r0, 0xa
/* 814CEAC4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEAC8 | 38 60 00 0A */	li r3, 0xa
/* 814CEACC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CEAD0 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814CEAD4 | 48 00 00 BC */	b .L_814CEB90
.L_814CEAD8:
/* 814CEAD8 | 7F E3 FB 78 */	mr r3, r31
/* 814CEADC | 4B FE 7B 45 */	bl VFiPFDRV_IsInserted
/* 814CEAE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEAE4 | 40 82 00 20 */	bne .L_814CEB04
/* 814CEAE8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEAEC | 38 00 00 0A */	li r0, 0xa
/* 814CEAF0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEAF4 | 38 60 00 0A */	li r3, 0xa
/* 814CEAF8 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CEAFC | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814CEB00 | 48 00 00 90 */	b .L_814CEB90
.L_814CEB04:
/* 814CEB04 | 80 1F 15 C8 */	lwz r0, 0x15c8(r31)
/* 814CEB08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CEB0C | 41 82 00 14 */	beq .L_814CEB20
/* 814CEB10 | 7F E3 FB 78 */	mr r3, r31
/* 814CEB14 | 4B FF A1 21 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CEB18 | 7F E3 FB 78 */	mr r3, r31
/* 814CEB1C | 4B FE DB 2D */	bl VFiPFCACHE_FreeAllCaches
.L_814CEB20:
/* 814CEB20 | 80 1F 15 CC */	lwz r0, 0x15cc(r31)
/* 814CEB24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CEB28 | 41 82 00 0C */	beq .L_814CEB34
/* 814CEB2C | 7F E3 FB 78 */	mr r3, r31
/* 814CEB30 | 4B FE F1 15 */	bl VFiPFDIR_FinalizeAllDirs
.L_814CEB34:
/* 814CEB34 | 7F E3 FB 78 */	mr r3, r31
/* 814CEB38 | 7F C4 F3 78 */	mr r4, r30
/* 814CEB3C | 4B FF E7 35 */	bl VFiPFVOL_p_format
/* 814CEB40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEB44 | 41 82 00 18 */	beq .L_814CEB5C
/* 814CEB48 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEB4C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEB50 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CEB54 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CEB58 | 48 00 00 38 */	b .L_814CEB90
.L_814CEB5C:
/* 814CEB5C | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814CEB60 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814CEB64 | B0 1F 18 64 */	sth r0, 0x1864(r31)
/* 814CEB68 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814CEB6C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814CEB70 | 40 82 00 14 */	bne .L_814CEB84
/* 814CEB74 | 80 7F 00 34 */	lwz r3, 0x34(r31)
/* 814CEB78 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CEB7C | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 814CEB80 | 48 00 00 0C */	b .L_814CEB8C
.L_814CEB84:
/* 814CEB84 | 80 1F 00 34 */	lwz r0, 0x34(r31)
/* 814CEB88 | 90 1F 00 38 */	stw r0, 0x38(r31)
.L_814CEB8C:
/* 814CEB8C | 38 60 00 00 */	li r3, 0x0
.L_814CEB90:
/* 814CEB90 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814CEB94 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814CEB98 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814CEB9C | 7C 08 03 A6 */	mtlr r0
/* 814CEBA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814CEBA4 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_format

# .text:0x1B50 | 0x814CEBA8 | size: 0x1F0
.fn VFiPFVOL_unmount, global
/* 814CEBA8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CEBAC | 7C 08 02 A6 */	mflr r0
/* 814CEBB0 | 7C 63 07 74 */	extsb r3, r3
/* 814CEBB4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CEBB8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CEBBC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CEBC0 | 3B C0 00 00 */	li r30, 0x0
/* 814CEBC4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814CEBC8 | 7C 9D 23 78 */	mr r29, r4
/* 814CEBCC | 4B FE 6B FD */	bl VFipf_toupper
/* 814CEBD0 | 38 03 FF BF */	subi r0, r3, 0x41
/* 814CEBD4 | 7C 00 07 35 */	extsh. r0, r0
/* 814CEBD8 | 41 80 00 0C */	blt .L_814CEBE4
/* 814CEBDC | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 814CEBE0 | 41 80 00 0C */	blt .L_814CEBEC
.L_814CEBE4:
/* 814CEBE4 | 3B E0 00 00 */	li r31, 0x0
/* 814CEBE8 | 48 00 00 18 */	b .L_814CEC00
.L_814CEBEC:
/* 814CEBEC | 1C 00 18 80 */	mulli r0, r0, 0x1880
/* 814CEBF0 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CEBF4 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CEBF8 | 7C 63 02 14 */	add r3, r3, r0
/* 814CEBFC | 3B E3 00 48 */	addi r31, r3, 0x48
.L_814CEC00:
/* 814CEC00 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CEC04 | 40 82 00 1C */	bne .L_814CEC20
/* 814CEC08 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEC0C | 38 00 00 0A */	li r0, 0xa
/* 814CEC10 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEC14 | 38 60 00 0A */	li r3, 0xa
/* 814CEC18 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CEC1C | 48 00 01 60 */	b .L_814CED7C
.L_814CEC20:
/* 814CEC20 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEC24 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CEC28 | 40 82 00 1C */	bne .L_814CEC44
/* 814CEC2C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEC30 | 38 00 00 0A */	li r0, 0xa
/* 814CEC34 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEC38 | 38 60 00 0A */	li r3, 0xa
/* 814CEC3C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CEC40 | 48 00 01 3C */	b .L_814CED7C
.L_814CEC44:
/* 814CEC44 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814CEC48 | 41 82 00 28 */	beq .L_814CEC70
/* 814CEC4C | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 814CEC50 | 40 82 00 20 */	bne .L_814CEC70
/* 814CEC54 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEC58 | 38 00 00 0A */	li r0, 0xa
/* 814CEC5C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEC60 | 38 60 00 0A */	li r3, 0xa
/* 814CEC64 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CEC68 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814CEC6C | 48 00 01 10 */	b .L_814CED7C
.L_814CEC70:
/* 814CEC70 | 7F E3 FB 78 */	mr r3, r31
/* 814CEC74 | 4B FE 79 D9 */	bl VFiPFDRV_IsDetected
/* 814CEC78 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEC7C | 54 00 FF FE */	extrwi r0, r0, 1, 30
/* 814CEC80 | 7C 00 18 39 */	and. r0, r0, r3
/* 814CEC84 | 41 82 00 64 */	beq .L_814CECE8
/* 814CEC88 | 7F E3 FB 78 */	mr r3, r31
/* 814CEC8C | 4B FF 9F A9 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CEC90 | 7F E3 FB 78 */	mr r3, r31
/* 814CEC94 | 4B FE EF B1 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CEC98 | 7F E3 FB 78 */	mr r3, r31
/* 814CEC9C | 4B FE D9 AD */	bl VFiPFCACHE_FreeAllCaches
/* 814CECA0 | 7F E3 FB 78 */	mr r3, r31
/* 814CECA4 | 38 80 00 01 */	li r4, 0x1
/* 814CECA8 | 4B FE 7C CD */	bl VFiPFDRV_unmount
/* 814CECAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CECB0 | 40 82 00 24 */	bne .L_814CECD4
/* 814CECB4 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CECB8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CECBC | 41 82 00 0C */	beq .L_814CECC8
/* 814CECC0 | 38 00 00 00 */	li r0, 0x0
/* 814CECC4 | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CECC8:
/* 814CECC8 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CECCC | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CECD0 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CECD4:
/* 814CECD4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CECD8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CECDC | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CECE0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CECE4 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CECE8:
/* 814CECE8 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CECEC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CECF0 | 40 82 00 0C */	bne .L_814CECFC
/* 814CECF4 | 38 60 00 00 */	li r3, 0x0
/* 814CECF8 | 48 00 00 84 */	b .L_814CED7C
.L_814CECFC:
/* 814CECFC | 80 1F 15 C8 */	lwz r0, 0x15c8(r31)
/* 814CED00 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CED04 | 40 82 00 10 */	bne .L_814CED14
/* 814CED08 | 80 1F 15 CC */	lwz r0, 0x15cc(r31)
/* 814CED0C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814CED10 | 41 82 00 2C */	beq .L_814CED3C
.L_814CED14:
/* 814CED14 | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 814CED18 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CED1C | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CED20 | 3B C0 00 01 */	li r30, 0x1
/* 814CED24 | 38 00 00 13 */	li r0, 0x13
/* 814CED28 | 90 03 00 1C */	stw r0, 0x1c(r3)
/* 814CED2C | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814CED30 | 40 82 00 0C */	bne .L_814CED3C
/* 814CED34 | 38 60 00 13 */	li r3, 0x13
/* 814CED38 | 48 00 00 44 */	b .L_814CED7C
.L_814CED3C:
/* 814CED3C | 7F E3 FB 78 */	mr r3, r31
/* 814CED40 | 7F A4 EB 78 */	mr r4, r29
/* 814CED44 | 4B FF E4 29 */	bl VFiPFVOL_p_unmount
/* 814CED48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CED4C | 41 82 00 2C */	beq .L_814CED78
/* 814CED50 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814CED54 | 40 82 00 24 */	bne .L_814CED78
/* 814CED58 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CED5C | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 814CED60 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CED64 | 3B C0 00 01 */	li r30, 0x1
/* 814CED68 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CED6C | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CED70 | 40 82 00 08 */	bne .L_814CED78
/* 814CED74 | 7C 7E 1B 78 */	mr r30, r3
.L_814CED78:
/* 814CED78 | 7F C3 F3 78 */	mr r3, r30
.L_814CED7C:
/* 814CED7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CED80 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CED84 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CED88 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814CED8C | 7C 08 03 A6 */	mtlr r0
/* 814CED90 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CED94 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_unmount

# .text:0x1D40 | 0x814CED98 | size: 0x370
.fn VFiPFVOL_sync, global
/* 814CED98 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814CED9C | 7C 08 02 A6 */	mflr r0
/* 814CEDA0 | 7C 63 07 74 */	extsb r3, r3
/* 814CEDA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814CEDA8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814CEDAC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814CEDB0 | 7C 9E 23 78 */	mr r30, r4
/* 814CEDB4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814CEDB8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814CEDBC | 4B FE 6A 0D */	bl VFipf_toupper
/* 814CEDC0 | 38 03 FF BF */	subi r0, r3, 0x41
/* 814CEDC4 | 7C 00 07 35 */	extsh. r0, r0
/* 814CEDC8 | 41 80 00 0C */	blt .L_814CEDD4
/* 814CEDCC | 2C 00 00 1A */	cmpwi r0, 0x1a
/* 814CEDD0 | 41 80 00 0C */	blt .L_814CEDDC
.L_814CEDD4:
/* 814CEDD4 | 3B E0 00 00 */	li r31, 0x0
/* 814CEDD8 | 48 00 00 18 */	b .L_814CEDF0
.L_814CEDDC:
/* 814CEDDC | 1C 00 18 80 */	mulli r0, r0, 0x1880
/* 814CEDE0 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814CEDE4 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814CEDE8 | 7C 63 02 14 */	add r3, r3, r0
/* 814CEDEC | 3B E3 00 48 */	addi r31, r3, 0x48
.L_814CEDF0:
/* 814CEDF0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CEDF4 | 40 82 00 1C */	bne .L_814CEE10
/* 814CEDF8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEDFC | 38 00 00 0A */	li r0, 0xa
/* 814CEE00 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEE04 | 38 60 00 0A */	li r3, 0xa
/* 814CEE08 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CEE0C | 48 00 02 DC */	b .L_814CF0E8
.L_814CEE10:
/* 814CEE10 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814CEE14 | 41 82 00 28 */	beq .L_814CEE3C
/* 814CEE18 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814CEE1C | 41 82 00 20 */	beq .L_814CEE3C
/* 814CEE20 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEE24 | 38 00 00 0A */	li r0, 0xa
/* 814CEE28 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEE2C | 38 60 00 0A */	li r3, 0xa
/* 814CEE30 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814CEE34 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814CEE38 | 48 00 02 B0 */	b .L_814CF0E8
.L_814CEE3C:
/* 814CEE3C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814CEE40 | 40 82 00 0C */	bne .L_814CEE4C
/* 814CEE44 | 38 60 00 0A */	li r3, 0xa
/* 814CEE48 | 48 00 01 A4 */	b .L_814CEFEC
.L_814CEE4C:
/* 814CEE4C | 7F E3 FB 78 */	mr r3, r31
/* 814CEE50 | 4B FE 77 D1 */	bl VFiPFDRV_IsInserted
/* 814CEE54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEE58 | 41 82 00 D0 */	beq .L_814CEF28
/* 814CEE5C | 7F E3 FB 78 */	mr r3, r31
/* 814CEE60 | 4B FE 77 ED */	bl VFiPFDRV_IsDetected
/* 814CEE64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEE68 | 41 82 01 48 */	beq .L_814CEFB0
/* 814CEE6C | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEE70 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CEE74 | 41 82 00 64 */	beq .L_814CEED8
/* 814CEE78 | 7F E3 FB 78 */	mr r3, r31
/* 814CEE7C | 4B FF 9D B9 */	bl VFiPFFILE_FinalizeAllFiles
/* 814CEE80 | 7F E3 FB 78 */	mr r3, r31
/* 814CEE84 | 4B FE ED C1 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CEE88 | 7F E3 FB 78 */	mr r3, r31
/* 814CEE8C | 4B FE D7 BD */	bl VFiPFCACHE_FreeAllCaches
/* 814CEE90 | 7F E3 FB 78 */	mr r3, r31
/* 814CEE94 | 38 80 00 01 */	li r4, 0x1
/* 814CEE98 | 4B FE 7A DD */	bl VFiPFDRV_unmount
/* 814CEE9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEEA0 | 40 82 00 24 */	bne .L_814CEEC4
/* 814CEEA4 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEEA8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CEEAC | 41 82 00 0C */	beq .L_814CEEB8
/* 814CEEB0 | 38 00 00 00 */	li r0, 0x0
/* 814CEEB4 | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CEEB8:
/* 814CEEB8 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEEBC | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CEEC0 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CEEC4:
/* 814CEEC4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEEC8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEECC | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CEED0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CEED4 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CEED8:
/* 814CEED8 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEEDC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CEEE0 | 40 82 00 38 */	bne .L_814CEF18
/* 814CEEE4 | 7F E3 FB 78 */	mr r3, r31
/* 814CEEE8 | 4B FF E1 71 */	bl VFiPFVOL_DoMountVolume
/* 814CEEEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEEF0 | 41 82 00 08 */	beq .L_814CEEF8
/* 814CEEF4 | 48 00 00 28 */	b .L_814CEF1C
.L_814CEEF8:
/* 814CEEF8 | A0 1F 18 64 */	lhz r0, 0x1864(r31)
/* 814CEEFC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEF00 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEF04 | 54 00 04 38 */	rlwinm r0, r0, 0, 16, 28
/* 814CEF08 | B0 1F 18 64 */	sth r0, 0x1864(r31)
/* 814CEF0C | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CEF10 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814CEF14 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CEF18:
/* 814CEF18 | 38 60 00 00 */	li r3, 0x0
.L_814CEF1C:
/* 814CEF1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEF20 | 41 82 00 90 */	beq .L_814CEFB0
/* 814CEF24 | 48 00 00 90 */	b .L_814CEFB4
.L_814CEF28:
/* 814CEF28 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEF2C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CEF30 | 41 82 00 80 */	beq .L_814CEFB0
/* 814CEF34 | 7F E3 FB 78 */	mr r3, r31
/* 814CEF38 | 4B FE 77 15 */	bl VFiPFDRV_IsDetected
/* 814CEF3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEF40 | 41 82 00 64 */	beq .L_814CEFA4
/* 814CEF44 | 7F E3 FB 78 */	mr r3, r31
/* 814CEF48 | 4B FF 9C ED */	bl VFiPFFILE_FinalizeAllFiles
/* 814CEF4C | 7F E3 FB 78 */	mr r3, r31
/* 814CEF50 | 4B FE EC F5 */	bl VFiPFDIR_FinalizeAllDirs
/* 814CEF54 | 7F E3 FB 78 */	mr r3, r31
/* 814CEF58 | 4B FE D6 F1 */	bl VFiPFCACHE_FreeAllCaches
/* 814CEF5C | 7F E3 FB 78 */	mr r3, r31
/* 814CEF60 | 38 80 00 01 */	li r4, 0x1
/* 814CEF64 | 4B FE 7A 11 */	bl VFiPFDRV_unmount
/* 814CEF68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEF6C | 40 82 00 24 */	bne .L_814CEF90
/* 814CEF70 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEF74 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CEF78 | 41 82 00 0C */	beq .L_814CEF84
/* 814CEF7C | 38 00 00 00 */	li r0, 0x0
/* 814CEF80 | 90 1F 16 00 */	stw r0, 0x1600(r31)
.L_814CEF84:
/* 814CEF84 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEF88 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CEF8C | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CEF90:
/* 814CEF90 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEF94 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEF98 | 80 64 00 10 */	lwz r3, 0x10(r4)
/* 814CEF9C | 38 03 FF FF */	subi r0, r3, 0x1
/* 814CEFA0 | 90 04 00 10 */	stw r0, 0x10(r4)
.L_814CEFA4:
/* 814CEFA4 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEFA8 | 54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 814CEFAC | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814CEFB0:
/* 814CEFB0 | 38 60 00 00 */	li r3, 0x0
.L_814CEFB4:
/* 814CEFB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEFB8 | 41 82 00 08 */	beq .L_814CEFC0
/* 814CEFBC | 48 00 00 30 */	b .L_814CEFEC
.L_814CEFC0:
/* 814CEFC0 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814CEFC4 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814CEFC8 | 40 82 00 0C */	bne .L_814CEFD4
/* 814CEFCC | 38 60 00 09 */	li r3, 0x9
/* 814CEFD0 | 48 00 00 1C */	b .L_814CEFEC
.L_814CEFD4:
/* 814CEFD4 | 7F E3 FB 78 */	mr r3, r31
/* 814CEFD8 | 4B FE 76 A1 */	bl VFiPFDRV_IsWProtected
/* 814CEFDC | 7C 03 00 D0 */	neg r0, r3
/* 814CEFE0 | 7C 00 1B 78 */	or r0, r0, r3
/* 814CEFE4 | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814CEFE8 | 70 03 00 0B */	andi. r3, r0, 0xb
.L_814CEFEC:
/* 814CEFEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CEFF0 | 41 82 00 18 */	beq .L_814CF008
/* 814CEFF4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CEFF8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CEFFC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CF000 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CF004 | 48 00 00 E4 */	b .L_814CF0E8
.L_814CF008:
/* 814CF008 | 7F E3 FB 78 */	mr r3, r31
/* 814CF00C | 4B FE D3 01 */	bl VFiPFCACHE_FlushFATCache
/* 814CF010 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF014 | 41 82 00 18 */	beq .L_814CF02C
/* 814CF018 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CF01C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CF020 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CF024 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CF028 | 48 00 00 C0 */	b .L_814CF0E8
.L_814CF02C:
/* 814CF02C | 3B 80 00 00 */	li r28, 0x0
.L_814CF030:
/* 814CF030 | 57 80 04 3E */	clrlwi r0, r28, 16
/* 814CF034 | 1C 00 00 34 */	mulli r0, r0, 0x34
/* 814CF038 | 7F BF 02 14 */	add r29, r31, r0
/* 814CF03C | 80 1D 0C FC */	lwz r0, 0xcfc(r29)
/* 814CF040 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814CF044 | 41 82 00 5C */	beq .L_814CF0A0
/* 814CF048 | 80 7D 0D 04 */	lwz r3, 0xd04(r29)
/* 814CF04C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CF050 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814CF054 | 40 82 00 14 */	bne .L_814CF068
/* 814CF058 | 80 1F 18 5C */	lwz r0, 0x185c(r31)
/* 814CF05C | 54 00 07 FE */	clrlwi r0, r0, 31
/* 814CF060 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814CF064 | 41 82 00 3C */	beq .L_814CF0A0
.L_814CF068:
/* 814CF068 | 38 63 00 38 */	addi r3, r3, 0x38
/* 814CF06C | 38 80 00 01 */	li r4, 0x1
/* 814CF070 | 4B FF 02 65 */	bl VFiPFENT_UpdateSFNEntry
/* 814CF074 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF078 | 41 82 00 18 */	beq .L_814CF090
/* 814CF07C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CF080 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CF084 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CF088 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CF08C | 48 00 00 5C */	b .L_814CF0E8
.L_814CF090:
/* 814CF090 | 80 7D 0D 04 */	lwz r3, 0xd04(r29)
/* 814CF094 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814CF098 | 54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 814CF09C | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814CF0A0:
/* 814CF0A0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814CF0A4 | 28 1C 00 05 */	cmplwi r28, 0x5
/* 814CF0A8 | 41 80 FF 88 */	blt .L_814CF030
/* 814CF0AC | 7F E3 FB 78 */	mr r3, r31
/* 814CF0B0 | 4B FE D3 09 */	bl VFiPFCACHE_FlushDataCache
/* 814CF0B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814CF0B8 | 7C 7D 1B 78 */	mr r29, r3
/* 814CF0BC | 41 82 00 18 */	beq .L_814CF0D4
/* 814CF0C0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814CF0C4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814CF0C8 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814CF0CC | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814CF0D0 | 48 00 00 18 */	b .L_814CF0E8
.L_814CF0D4:
/* 814CF0D4 | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814CF0D8 | 40 82 00 0C */	bne .L_814CF0E4
/* 814CF0DC | 7F E3 FB 78 */	mr r3, r31
/* 814CF0E0 | 4B FE D5 69 */	bl VFiPFCACHE_FreeAllCaches
.L_814CF0E4:
/* 814CF0E4 | 7F A3 EB 78 */	mr r3, r29
.L_814CF0E8:
/* 814CF0E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814CF0EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814CF0F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814CF0F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814CF0F8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814CF0FC | 7C 08 03 A6 */	mtlr r0
/* 814CF100 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814CF104 | 4E 80 00 20 */	blr
.endfn VFiPFVOL_sync
