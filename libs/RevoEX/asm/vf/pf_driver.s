.include "macros.inc"
.file "pf_driver.c"

# 0x814B61C4..0x814B6CAC | size: 0xAE8
.text
.balign 4

# .text:0x0 | 0x814B61C4 | size: 0xEC
.fn VFiPFDRV_GetBPBInformation, global
/* 814B61C4 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 814B61C8 | 7C 08 02 A6 */	mflr r0
/* 814B61CC | 90 01 00 84 */	stw r0, 0x84(r1)
/* 814B61D0 | 93 E1 00 7C */	stw r31, 0x7c(r1)
/* 814B61D4 | 7C 9F 23 78 */	mr r31, r4
/* 814B61D8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B61DC | 48 00 0B E5 */	bl VFipdm_bpb_get_bpb_information
/* 814B61E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B61E4 | 41 82 00 0C */	beq .L_814B61F0
/* 814B61E8 | 38 60 00 07 */	li r3, 0x7
/* 814B61EC | 48 00 00 B0 */	b .L_814B629C
.L_814B61F0:
/* 814B61F0 | A0 01 00 10 */	lhz r0, 0x10(r1)
/* 814B61F4 | 38 60 00 00 */	li r3, 0x0
/* 814B61F8 | B0 1F 00 00 */	sth r0, 0x0(r31)
/* 814B61FC | A0 01 00 14 */	lhz r0, 0x14(r1)
/* 814B6200 | B0 1F 00 02 */	sth r0, 0x2(r31)
/* 814B6204 | A0 01 00 16 */	lhz r0, 0x16(r1)
/* 814B6208 | B0 1F 00 04 */	sth r0, 0x4(r31)
/* 814B620C | 88 01 00 12 */	lbz r0, 0x12(r1)
/* 814B6210 | 98 1F 00 06 */	stb r0, 0x6(r31)
/* 814B6214 | 88 01 00 13 */	lbz r0, 0x13(r1)
/* 814B6218 | 98 1F 00 07 */	stb r0, 0x7(r31)
/* 814B621C | 80 01 00 70 */	lwz r0, 0x70(r1)
/* 814B6220 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814B6224 | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814B6228 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814B622C | 80 01 00 4C */	lwz r0, 0x4c(r1)
/* 814B6230 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 814B6234 | A0 01 00 50 */	lhz r0, 0x50(r1)
/* 814B6238 | B0 1F 00 14 */	sth r0, 0x14(r31)
/* 814B623C | A0 01 00 52 */	lhz r0, 0x52(r1)
/* 814B6240 | B0 1F 00 16 */	sth r0, 0x16(r31)
/* 814B6244 | A0 01 00 48 */	lhz r0, 0x48(r1)
/* 814B6248 | B0 1F 00 18 */	sth r0, 0x18(r31)
/* 814B624C | 88 01 00 2A */	lbz r0, 0x2a(r1)
/* 814B6250 | 98 1F 00 1A */	stb r0, 0x1a(r31)
/* 814B6254 | 80 01 00 58 */	lwz r0, 0x58(r1)
/* 814B6258 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 814B625C | 88 01 00 5C */	lbz r0, 0x5c(r1)
/* 814B6260 | 98 1F 00 20 */	stb r0, 0x20(r31)
/* 814B6264 | 88 01 00 5D */	lbz r0, 0x5d(r1)
/* 814B6268 | 98 1F 00 21 */	stb r0, 0x21(r31)
/* 814B626C | 88 01 00 57 */	lbz r0, 0x57(r1)
/* 814B6270 | 98 1F 00 22 */	stb r0, 0x22(r31)
/* 814B6274 | A0 01 00 5E */	lhz r0, 0x5e(r1)
/* 814B6278 | B0 1F 00 24 */	sth r0, 0x24(r31)
/* 814B627C | 80 01 00 60 */	lwz r0, 0x60(r1)
/* 814B6280 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814B6284 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 814B6288 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 814B628C | 80 01 00 68 */	lwz r0, 0x68(r1)
/* 814B6290 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 814B6294 | 80 01 00 6C */	lwz r0, 0x6c(r1)
/* 814B6298 | 90 1F 00 34 */	stw r0, 0x34(r31)
.L_814B629C:
/* 814B629C | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 814B62A0 | 83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 814B62A4 | 7C 08 03 A6 */	mtlr r0
/* 814B62A8 | 38 21 00 80 */	addi r1, r1, 0x80
/* 814B62AC | 4E 80 00 20 */	blr
.endfn VFiPFDRV_GetBPBInformation

# .text:0xEC | 0x814B62B0 | size: 0x1BC
.fn VFiPFDRV_GetFSINFOInformation, global
/* 814B62B0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B62B4 | 7C 08 02 A6 */	mflr r0
/* 814B62B8 | 38 80 FF FF */	li r4, -0x1
/* 814B62BC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B62C0 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814B62C4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814B62C8 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814B62CC | 7C 7E 1B 78 */	mr r30, r3
/* 814B62D0 | 48 00 5B 89 */	bl VFiPFCACHE_AllocateDataPage
/* 814B62D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B62D8 | 41 82 00 08 */	beq .L_814B62E0
/* 814B62DC | 48 00 01 78 */	b .L_814B6454
.L_814B62E0:
/* 814B62E0 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B62E4 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814B62E8 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B62EC | 38 C0 00 01 */	li r6, 0x1
/* 814B62F0 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814B62F4 | A0 BE 00 14 */	lhz r5, 0x14(r30)
/* 814B62F8 | A0 FE 00 00 */	lhz r7, 0x0(r30)
/* 814B62FC | 48 00 34 E1 */	bl VFipdm_part_logical_read
/* 814B6300 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6304 | 41 82 00 50 */	beq .L_814B6354
/* 814B6308 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B630C | 40 82 00 24 */	bne .L_814B6330
/* 814B6310 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B6314 | 48 00 40 8D */	bl VFipdm_part_get_driver_error_code
/* 814B6318 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B631C | 3B E0 10 00 */	li r31, 0x1000
/* 814B6320 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B6324 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B6328 | 90 7E 18 58 */	stw r3, 0x1858(r30)
/* 814B632C | 48 00 00 08 */	b .L_814B6334
.L_814B6330:
/* 814B6330 | 3B E0 FF FF */	li r31, -0x1
.L_814B6334:
/* 814B6334 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B6338 | 7F C3 F3 78 */	mr r3, r30
/* 814B633C | 48 00 5B 91 */	bl VFiPFCACHE_FreeDataPage
/* 814B6340 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B6344 | 38 80 00 01 */	li r4, 0x1
/* 814B6348 | 48 00 31 D5 */	bl VFipdm_part_release_permission
/* 814B634C | 7F E3 FB 78 */	mr r3, r31
/* 814B6350 | 48 00 01 04 */	b .L_814B6454
.L_814B6354:
/* 814B6354 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814B6358 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B635C | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814B6360 | 48 00 12 05 */	bl VFipdm_bpb_check_fsinfo_sector
/* 814B6364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6368 | 41 82 00 24 */	beq .L_814B638C
/* 814B636C | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B6370 | 7F C3 F3 78 */	mr r3, r30
/* 814B6374 | 48 00 5B 59 */	bl VFiPFCACHE_FreeDataPage
/* 814B6378 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B637C | 38 80 00 01 */	li r4, 0x1
/* 814B6380 | 48 00 31 9D */	bl VFipdm_part_release_permission
/* 814B6384 | 38 60 FF FF */	li r3, -0x1
/* 814B6388 | 48 00 00 CC */	b .L_814B6454
.L_814B638C:
/* 814B638C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814B6390 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B6394 | 40 82 00 24 */	bne .L_814B63B8
/* 814B6398 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B639C | 7F C3 F3 78 */	mr r3, r30
/* 814B63A0 | 48 00 5B 2D */	bl VFiPFCACHE_FreeDataPage
/* 814B63A4 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B63A8 | 38 80 00 01 */	li r4, 0x1
/* 814B63AC | 48 00 31 71 */	bl VFipdm_part_release_permission
/* 814B63B0 | 38 60 00 07 */	li r3, 0x7
/* 814B63B4 | 48 00 00 A0 */	b .L_814B6454
.L_814B63B8:
/* 814B63B8 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814B63BC | 38 81 00 18 */	addi r4, r1, 0x18
/* 814B63C0 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814B63C4 | 48 00 0F 35 */	bl VFipdm_bpb_get_fsinfo_information
/* 814B63C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B63CC | 41 82 00 0C */	beq .L_814B63D8
/* 814B63D0 | 38 00 00 07 */	li r0, 0x7
/* 814B63D4 | 48 00 00 48 */	b .L_814B641C
.L_814B63D8:
/* 814B63D8 | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814B63DC | 28 04 00 02 */	cmplwi r4, 0x2
/* 814B63E0 | 41 80 00 18 */	blt .L_814B63F8
/* 814B63E4 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 814B63E8 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814B63EC | 7C 04 00 40 */	cmplw r4, r0
/* 814B63F0 | 40 80 00 08 */	bge .L_814B63F8
/* 814B63F4 | 90 9E 00 38 */	stw r4, 0x38(r30)
.L_814B63F8:
/* 814B63F8 | 80 81 00 1C */	lwz r4, 0x1c(r1)
/* 814B63FC | 28 04 00 02 */	cmplwi r4, 0x2
/* 814B6400 | 41 80 00 18 */	blt .L_814B6418
/* 814B6404 | 80 7E 00 34 */	lwz r3, 0x34(r30)
/* 814B6408 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814B640C | 7C 04 00 40 */	cmplw r4, r0
/* 814B6410 | 40 80 00 08 */	bge .L_814B6418
/* 814B6414 | 90 9E 00 3C */	stw r4, 0x3c(r30)
.L_814B6418:
/* 814B6418 | 38 00 00 00 */	li r0, 0x0
.L_814B641C:
/* 814B641C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B6420 | 41 82 00 24 */	beq .L_814B6444
/* 814B6424 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B6428 | 7F C3 F3 78 */	mr r3, r30
/* 814B642C | 48 00 5A A1 */	bl VFiPFCACHE_FreeDataPage
/* 814B6430 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B6434 | 38 80 00 01 */	li r4, 0x1
/* 814B6438 | 48 00 30 E5 */	bl VFipdm_part_release_permission
/* 814B643C | 38 60 FF FF */	li r3, -0x1
/* 814B6440 | 48 00 00 14 */	b .L_814B6454
.L_814B6444:
/* 814B6444 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B6448 | 7F C3 F3 78 */	mr r3, r30
/* 814B644C | 48 00 5A 81 */	bl VFiPFCACHE_FreeDataPage
/* 814B6450 | 38 60 00 00 */	li r3, 0x0
.L_814B6454:
/* 814B6454 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B6458 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814B645C | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814B6460 | 7C 08 03 A6 */	mtlr r0
/* 814B6464 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B6468 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_GetFSINFOInformation

# .text:0x2A8 | 0x814B646C | size: 0x1B4
.fn VFiPFDRV_StoreFreeCountToFSINFO, global
/* 814B646C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B6470 | 7C 08 02 A6 */	mflr r0
/* 814B6474 | 38 80 FF FF */	li r4, -0x1
/* 814B6478 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B647C | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814B6480 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B6484 | 7C 7F 1B 78 */	mr r31, r3
/* 814B6488 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814B648C | 48 00 59 CD */	bl VFiPFCACHE_AllocateDataPage
/* 814B6490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6494 | 41 82 00 08 */	beq .L_814B649C
/* 814B6498 | 48 00 01 70 */	b .L_814B6608
.L_814B649C:
/* 814B649C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B64A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B64A4 | A0 BF 00 14 */	lhz r5, 0x14(r31)
/* 814B64A8 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814B64AC | 40 82 00 0C */	bne .L_814B64B8
/* 814B64B0 | 3B C0 00 0A */	li r30, 0xa
/* 814B64B4 | 48 00 00 54 */	b .L_814B6508
.L_814B64B8:
/* 814B64B8 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B64BC | 39 01 00 08 */	addi r8, r1, 0x8
/* 814B64C0 | A0 FF 00 00 */	lhz r7, 0x0(r31)
/* 814B64C4 | 38 C0 00 01 */	li r6, 0x1
/* 814B64C8 | 48 00 33 15 */	bl VFipdm_part_logical_read
/* 814B64CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B64D0 | 41 82 00 34 */	beq .L_814B6504
/* 814B64D4 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B64D8 | 40 82 00 24 */	bne .L_814B64FC
/* 814B64DC | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B64E0 | 48 00 3E C1 */	bl VFipdm_part_get_driver_error_code
/* 814B64E4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B64E8 | 3B C0 10 00 */	li r30, 0x1000
/* 814B64EC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B64F0 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B64F4 | 90 7F 18 58 */	stw r3, 0x1858(r31)
/* 814B64F8 | 48 00 00 10 */	b .L_814B6508
.L_814B64FC:
/* 814B64FC | 3B C0 FF FF */	li r30, -0x1
/* 814B6500 | 48 00 00 08 */	b .L_814B6508
.L_814B6504:
/* 814B6504 | 3B C0 00 00 */	li r30, 0x0
.L_814B6508:
/* 814B6508 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B650C | 40 82 00 10 */	bne .L_814B651C
/* 814B6510 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814B6514 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B6518 | 41 82 00 08 */	beq .L_814B6520
.L_814B651C:
/* 814B651C | 3B C0 00 11 */	li r30, 0x11
.L_814B6520:
/* 814B6520 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B6524 | 40 82 00 D4 */	bne .L_814B65F8
/* 814B6528 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B652C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814B6530 | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 814B6534 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814B6538 | 98 03 01 E8 */	stb r0, 0x1e8(r3)
/* 814B653C | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B6540 | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 814B6544 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814B6548 | 54 00 C6 3E */	extrwi r0, r0, 8, 16
/* 814B654C | 98 03 01 E9 */	stb r0, 0x1e9(r3)
/* 814B6550 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B6554 | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 814B6558 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814B655C | 54 00 86 3E */	extrwi r0, r0, 8, 8
/* 814B6560 | 98 03 01 EA */	stb r0, 0x1ea(r3)
/* 814B6564 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B6568 | 80 1F 00 38 */	lwz r0, 0x38(r31)
/* 814B656C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814B6570 | 54 00 46 3E */	srwi r0, r0, 24
/* 814B6574 | 98 03 01 EB */	stb r0, 0x1eb(r3)
/* 814B6578 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814B657C | A0 BF 00 14 */	lhz r5, 0x14(r31)
/* 814B6580 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814B6584 | 40 82 00 0C */	bne .L_814B6590
/* 814B6588 | 3B C0 00 0A */	li r30, 0xa
/* 814B658C | 48 00 00 54 */	b .L_814B65E0
.L_814B6590:
/* 814B6590 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6594 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814B6598 | A0 FF 00 00 */	lhz r7, 0x0(r31)
/* 814B659C | 38 C0 00 01 */	li r6, 0x1
/* 814B65A0 | 48 00 34 49 */	bl VFipdm_part_logical_write
/* 814B65A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B65A8 | 41 82 00 34 */	beq .L_814B65DC
/* 814B65AC | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B65B0 | 40 82 00 24 */	bne .L_814B65D4
/* 814B65B4 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B65B8 | 48 00 3D E9 */	bl VFipdm_part_get_driver_error_code
/* 814B65BC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B65C0 | 3B C0 10 00 */	li r30, 0x1000
/* 814B65C4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B65C8 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B65CC | 90 7F 18 58 */	stw r3, 0x1858(r31)
/* 814B65D0 | 48 00 00 10 */	b .L_814B65E0
.L_814B65D4:
/* 814B65D4 | 3B C0 FF FF */	li r30, -0x1
/* 814B65D8 | 48 00 00 08 */	b .L_814B65E0
.L_814B65DC:
/* 814B65DC | 3B C0 00 00 */	li r30, 0x0
.L_814B65E0:
/* 814B65E0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814B65E4 | 40 82 00 10 */	bne .L_814B65F4
/* 814B65E8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814B65EC | 28 00 00 01 */	cmplwi r0, 0x1
/* 814B65F0 | 41 82 00 08 */	beq .L_814B65F8
.L_814B65F4:
/* 814B65F4 | 3B C0 00 11 */	li r30, 0x11
.L_814B65F8:
/* 814B65F8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814B65FC | 7F E3 FB 78 */	mr r3, r31
/* 814B6600 | 48 00 58 CD */	bl VFiPFCACHE_FreeDataPage
/* 814B6604 | 7F C3 F3 78 */	mr r3, r30
.L_814B6608:
/* 814B6608 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B660C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B6610 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814B6614 | 7C 08 03 A6 */	mtlr r0
/* 814B6618 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B661C | 4E 80 00 20 */	blr
.endfn VFiPFDRV_StoreFreeCountToFSINFO

# .text:0x45C | 0x814B6620 | size: 0x2C
.fn VFiPFDRV_IsInserted, global
/* 814B6620 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B6624 | 7C 08 02 A6 */	mflr r0
/* 814B6628 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B662C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B6630 | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B6634 | 48 00 39 79 */	bl VFipdm_part_check_media_insert
/* 814B6638 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B663C | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B6640 | 7C 08 03 A6 */	mtlr r0
/* 814B6644 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B6648 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_IsInserted

# .text:0x488 | 0x814B664C | size: 0x2C
.fn VFiPFDRV_IsDetected, global
/* 814B664C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B6650 | 7C 08 02 A6 */	mflr r0
/* 814B6654 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B6658 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B665C | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B6660 | 48 00 3A 51 */	bl VFipdm_part_check_media_detect
/* 814B6664 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B6668 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B666C | 7C 08 03 A6 */	mtlr r0
/* 814B6670 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B6674 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_IsDetected

# .text:0x4B4 | 0x814B6678 | size: 0x2C
.fn VFiPFDRV_IsWProtected, global
/* 814B6678 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B667C | 7C 08 02 A6 */	mflr r0
/* 814B6680 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B6684 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B6688 | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B668C | 48 00 38 1D */	bl VFipdm_part_check_media_write_protect
/* 814B6690 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B6694 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814B6698 | 7C 08 03 A6 */	mtlr r0
/* 814B669C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B66A0 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_IsWProtected

# .text:0x4E0 | 0x814B66A4 | size: 0x80
.fn VFiPFDRV_init, global
/* 814B66A4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814B66A8 | 7C 08 02 A6 */	mflr r0
/* 814B66AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B66B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814B66B4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814B66B8 | 7C 7F 1B 78 */	mr r31, r3
/* 814B66BC | 40 82 00 0C */	bne .L_814B66C8
/* 814B66C0 | 38 60 00 0A */	li r3, 0xa
/* 814B66C4 | 48 00 00 4C */	b .L_814B6710
.L_814B66C8:
/* 814B66C8 | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B66CC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B66D0 | 48 00 3A E5 */	bl VFipdm_part_check_data_erase
/* 814B66D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B66D8 | 41 82 00 0C */	beq .L_814B66E4
/* 814B66DC | 38 60 FF FF */	li r3, -0x1
/* 814B66E0 | 48 00 00 30 */	b .L_814B6710
.L_814B66E4:
/* 814B66E4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814B66E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B66EC | 41 82 00 14 */	beq .L_814B6700
/* 814B66F0 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814B66F4 | 60 00 00 40 */	ori r0, r0, 0x40
/* 814B66F8 | B0 1F 18 60 */	sth r0, 0x1860(r31)
/* 814B66FC | 48 00 00 10 */	b .L_814B670C
.L_814B6700:
/* 814B6700 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814B6704 | 54 00 06 B0 */	rlwinm r0, r0, 0, 26, 24
/* 814B6708 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814B670C:
/* 814B670C | 38 60 00 00 */	li r3, 0x0
.L_814B6710:
/* 814B6710 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814B6714 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814B6718 | 7C 08 03 A6 */	mtlr r0
/* 814B671C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814B6720 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_init

# .text:0x560 | 0x814B6724 | size: 0x18
.fn VFiPFDRV_finalize, global
/* 814B6724 | 7C 83 00 D0 */	neg r4, r3
/* 814B6728 | 38 00 00 0A */	li r0, 0xa
/* 814B672C | 7C 83 1B 78 */	or r3, r4, r3
/* 814B6730 | 7C 63 FE 70 */	srawi r3, r3, 31
/* 814B6734 | 7C 03 18 78 */	andc r3, r0, r3
/* 814B6738 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_finalize

# .text:0x578 | 0x814B673C | size: 0x238
.fn VFiPFDRV_mount, global
/* 814B673C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814B6740 | 7C 08 02 A6 */	mflr r0
/* 814B6744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6748 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814B674C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814B6750 | 7C 7F 1B 78 */	mr r31, r3
/* 814B6754 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814B6758 | 40 82 00 0C */	bne .L_814B6764
/* 814B675C | 38 60 00 0A */	li r3, 0xa
/* 814B6760 | 48 00 01 FC */	b .L_814B695C
.L_814B6764:
/* 814B6764 | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B6768 | 48 00 2B DD */	bl VFipdm_part_get_permission
/* 814B676C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6770 | 41 82 00 34 */	beq .L_814B67A4
/* 814B6774 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B6778 | 40 82 00 24 */	bne .L_814B679C
/* 814B677C | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6780 | 48 00 3C 21 */	bl VFipdm_part_get_driver_error_code
/* 814B6784 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B6788 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B678C | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B6790 | 90 7F 18 58 */	stw r3, 0x1858(r31)
/* 814B6794 | 38 60 10 00 */	li r3, 0x1000
/* 814B6798 | 48 00 01 C4 */	b .L_814B695C
.L_814B679C:
/* 814B679C | 38 60 FF FF */	li r3, -0x1
/* 814B67A0 | 48 00 01 BC */	b .L_814B695C
.L_814B67A4:
/* 814B67A4 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B67A8 | 38 81 00 14 */	addi r4, r1, 0x14
/* 814B67AC | 48 00 35 E9 */	bl VFipdm_part_get_media_information
/* 814B67B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B67B4 | 41 82 00 18 */	beq .L_814B67CC
/* 814B67B8 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B67BC | 38 80 00 01 */	li r4, 0x1
/* 814B67C0 | 48 00 2D 5D */	bl VFipdm_part_release_permission
/* 814B67C4 | 38 60 FF FF */	li r3, -0x1
/* 814B67C8 | 48 00 01 94 */	b .L_814B695C
.L_814B67CC:
/* 814B67CC | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 814B67D0 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814B67D4 | 41 82 00 18 */	beq .L_814B67EC
/* 814B67D8 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814B67DC | 80 61 00 24 */	lwz r3, 0x24(r1)
/* 814B67E0 | 60 00 00 10 */	ori r0, r0, 0x10
/* 814B67E4 | B0 1F 18 60 */	sth r0, 0x1860(r31)
/* 814B67E8 | 90 7F 18 7C */	stw r3, 0x187c(r31)
.L_814B67EC:
/* 814B67EC | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 814B67F0 | 54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 814B67F4 | 41 82 00 10 */	beq .L_814B6804
/* 814B67F8 | A0 1F 18 60 */	lhz r0, 0x1860(r31)
/* 814B67FC | 60 00 00 20 */	ori r0, r0, 0x20
/* 814B6800 | B0 1F 18 60 */	sth r0, 0x1860(r31)
.L_814B6804:
/* 814B6804 | 7F E3 FB 78 */	mr r3, r31
/* 814B6808 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814B680C | 38 80 FF FF */	li r4, -0x1
/* 814B6810 | 48 00 56 49 */	bl VFiPFCACHE_AllocateDataPage
/* 814B6814 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B6818 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814B681C | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6820 | 38 A0 00 00 */	li r5, 0x0
/* 814B6824 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814B6828 | 38 C0 00 01 */	li r6, 0x1
/* 814B682C | 38 E0 02 00 */	li r7, 0x200
/* 814B6830 | 48 00 2F AD */	bl VFipdm_part_logical_read
/* 814B6834 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6838 | 41 82 00 50 */	beq .L_814B6888
/* 814B683C | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B6840 | 40 82 00 24 */	bne .L_814B6864
/* 814B6844 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6848 | 48 00 3B 59 */	bl VFipdm_part_get_driver_error_code
/* 814B684C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B6850 | 3B C0 10 00 */	li r30, 0x1000
/* 814B6854 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B6858 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B685C | 90 7F 18 58 */	stw r3, 0x1858(r31)
/* 814B6860 | 48 00 00 08 */	b .L_814B6868
.L_814B6864:
/* 814B6864 | 3B C0 FF FF */	li r30, -0x1
.L_814B6868:
/* 814B6868 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B686C | 7F E3 FB 78 */	mr r3, r31
/* 814B6870 | 48 00 56 5D */	bl VFiPFCACHE_FreeDataPage
/* 814B6874 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6878 | 38 80 00 01 */	li r4, 0x1
/* 814B687C | 48 00 2C A1 */	bl VFipdm_part_release_permission
/* 814B6880 | 7F C3 F3 78 */	mr r3, r30
/* 814B6884 | 48 00 00 D8 */	b .L_814B695C
.L_814B6888:
/* 814B6888 | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814B688C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814B6890 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814B6894 | 48 00 0B 89 */	bl VFipdm_bpb_check_boot_sector
/* 814B6898 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B689C | 41 82 00 24 */	beq .L_814B68C0
/* 814B68A0 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B68A4 | 7F E3 FB 78 */	mr r3, r31
/* 814B68A8 | 48 00 56 25 */	bl VFiPFCACHE_FreeDataPage
/* 814B68AC | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B68B0 | 38 80 00 01 */	li r4, 0x1
/* 814B68B4 | 48 00 2C 69 */	bl VFipdm_part_release_permission
/* 814B68B8 | 38 60 FF FF */	li r3, -0x1
/* 814B68BC | 48 00 00 A0 */	b .L_814B695C
.L_814B68C0:
/* 814B68C0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814B68C4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B68C8 | 40 82 00 24 */	bne .L_814B68EC
/* 814B68CC | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B68D0 | 7F E3 FB 78 */	mr r3, r31
/* 814B68D4 | 48 00 55 F9 */	bl VFiPFCACHE_FreeDataPage
/* 814B68D8 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B68DC | 38 80 00 01 */	li r4, 0x1
/* 814B68E0 | 48 00 2C 3D */	bl VFipdm_part_release_permission
/* 814B68E4 | 38 60 00 07 */	li r3, 0x7
/* 814B68E8 | 48 00 00 74 */	b .L_814B695C
.L_814B68EC:
/* 814B68EC | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814B68F0 | 7F E4 FB 78 */	mr r4, r31
/* 814B68F4 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814B68F8 | 4B FF F8 CD */	bl VFiPFDRV_GetBPBInformation
/* 814B68FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6900 | 7C 7E 1B 78 */	mr r30, r3
/* 814B6904 | 41 82 00 24 */	beq .L_814B6928
/* 814B6908 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B690C | 7F E3 FB 78 */	mr r3, r31
/* 814B6910 | 48 00 55 BD */	bl VFiPFCACHE_FreeDataPage
/* 814B6914 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6918 | 38 80 00 01 */	li r4, 0x1
/* 814B691C | 48 00 2C 01 */	bl VFipdm_part_release_permission
/* 814B6920 | 7F C3 F3 78 */	mr r3, r30
/* 814B6924 | 48 00 00 38 */	b .L_814B695C
.L_814B6928:
/* 814B6928 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814B692C | 7F E3 FB 78 */	mr r3, r31
/* 814B6930 | 48 00 55 9D */	bl VFiPFCACHE_FreeDataPage
/* 814B6934 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 814B6938 | 38 60 FF FF */	li r3, -0x1
/* 814B693C | 90 7F 00 38 */	stw r3, 0x38(r31)
/* 814B6940 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814B6944 | 90 7F 00 3C */	stw r3, 0x3c(r31)
/* 814B6948 | 40 82 00 10 */	bne .L_814B6958
/* 814B694C | 7F E3 FB 78 */	mr r3, r31
/* 814B6950 | 4B FF F9 61 */	bl VFiPFDRV_GetFSINFOInformation
/* 814B6954 | 7C 7E 1B 78 */	mr r30, r3
.L_814B6958:
/* 814B6958 | 7F C3 F3 78 */	mr r3, r30
.L_814B695C:
/* 814B695C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814B6960 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814B6964 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814B6968 | 7C 08 03 A6 */	mtlr r0
/* 814B696C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814B6970 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_mount

# .text:0x7B0 | 0x814B6974 | size: 0x88
.fn VFiPFDRV_unmount, global
/* 814B6974 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B6978 | 7C 08 02 A6 */	mflr r0
/* 814B697C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6980 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B6984 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B6988 | 7C 7F 1B 78 */	mr r31, r3
/* 814B698C | 40 82 00 0C */	bne .L_814B6998
/* 814B6990 | 38 60 00 0A */	li r3, 0xa
/* 814B6994 | 48 00 00 54 */	b .L_814B69E8
.L_814B6998:
/* 814B6998 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814B699C | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B69A0 | 7C 00 00 34 */	cntlzw r0, r0
/* 814B69A4 | 54 04 D9 7E */	srwi r4, r0, 5
/* 814B69A8 | 48 00 2B 75 */	bl VFipdm_part_release_permission
/* 814B69AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B69B0 | 41 82 00 34 */	beq .L_814B69E4
/* 814B69B4 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B69B8 | 40 82 00 24 */	bne .L_814B69DC
/* 814B69BC | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B69C0 | 48 00 39 E1 */	bl VFipdm_part_get_driver_error_code
/* 814B69C4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B69C8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B69CC | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B69D0 | 90 7F 18 58 */	stw r3, 0x1858(r31)
/* 814B69D4 | 38 60 10 00 */	li r3, 0x1000
/* 814B69D8 | 48 00 00 10 */	b .L_814B69E8
.L_814B69DC:
/* 814B69DC | 38 60 FF FF */	li r3, -0x1
/* 814B69E0 | 48 00 00 08 */	b .L_814B69E8
.L_814B69E4:
/* 814B69E4 | 38 60 00 00 */	li r3, 0x0
.L_814B69E8:
/* 814B69E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B69EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B69F0 | 7C 08 03 A6 */	mtlr r0
/* 814B69F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B69F8 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_unmount

# .text:0x838 | 0x814B69FC | size: 0x128
.fn VFiPFDRV_format, global
/* 814B69FC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B6A00 | 7C 08 02 A6 */	mflr r0
/* 814B6A04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6A08 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B6A0C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B6A10 | 7C 9F 23 78 */	mr r31, r4
/* 814B6A14 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814B6A18 | 7C 7E 1B 78 */	mr r30, r3
/* 814B6A1C | 40 82 00 0C */	bne .L_814B6A28
/* 814B6A20 | 38 60 00 0A */	li r3, 0xa
/* 814B6A24 | 48 00 00 E8 */	b .L_814B6B0C
.L_814B6A28:
/* 814B6A28 | A0 03 18 60 */	lhz r0, 0x1860(r3)
/* 814B6A2C | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814B6A30 | 40 82 00 44 */	bne .L_814B6A74
/* 814B6A34 | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B6A38 | 48 00 29 0D */	bl VFipdm_part_get_permission
/* 814B6A3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6A40 | 41 82 00 34 */	beq .L_814B6A74
/* 814B6A44 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B6A48 | 40 82 00 24 */	bne .L_814B6A6C
/* 814B6A4C | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B6A50 | 48 00 39 51 */	bl VFipdm_part_get_driver_error_code
/* 814B6A54 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B6A58 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B6A5C | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B6A60 | 90 7E 18 58 */	stw r3, 0x1858(r30)
/* 814B6A64 | 38 60 10 00 */	li r3, 0x1000
/* 814B6A68 | 48 00 00 A4 */	b .L_814B6B0C
.L_814B6A6C:
/* 814B6A6C | 38 60 FF FF */	li r3, -0x1
/* 814B6A70 | 48 00 00 9C */	b .L_814B6B0C
.L_814B6A74:
/* 814B6A74 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B6A78 | 7F E4 FB 78 */	mr r4, r31
/* 814B6A7C | 48 00 2C 21 */	bl VFipdm_part_format
/* 814B6A80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6A84 | 41 82 00 34 */	beq .L_814B6AB8
/* 814B6A88 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B6A8C | 40 82 00 24 */	bne .L_814B6AB0
/* 814B6A90 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B6A94 | 48 00 39 0D */	bl VFipdm_part_get_driver_error_code
/* 814B6A98 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B6A9C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B6AA0 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B6AA4 | 90 7E 18 58 */	stw r3, 0x1858(r30)
/* 814B6AA8 | 38 60 10 00 */	li r3, 0x1000
/* 814B6AAC | 48 00 00 60 */	b .L_814B6B0C
.L_814B6AB0:
/* 814B6AB0 | 38 60 FF FF */	li r3, -0x1
/* 814B6AB4 | 48 00 00 58 */	b .L_814B6B0C
.L_814B6AB8:
/* 814B6AB8 | A0 1E 18 60 */	lhz r0, 0x1860(r30)
/* 814B6ABC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814B6AC0 | 40 82 00 48 */	bne .L_814B6B08
/* 814B6AC4 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B6AC8 | 38 80 00 01 */	li r4, 0x1
/* 814B6ACC | 48 00 2A 51 */	bl VFipdm_part_release_permission
/* 814B6AD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6AD4 | 41 82 00 34 */	beq .L_814B6B08
/* 814B6AD8 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B6ADC | 40 82 00 24 */	bne .L_814B6B00
/* 814B6AE0 | 80 7E 18 74 */	lwz r3, 0x1874(r30)
/* 814B6AE4 | 48 00 38 BD */	bl VFipdm_part_get_driver_error_code
/* 814B6AE8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B6AEC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B6AF0 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B6AF4 | 90 7E 18 58 */	stw r3, 0x1858(r30)
/* 814B6AF8 | 38 60 10 00 */	li r3, 0x1000
/* 814B6AFC | 48 00 00 10 */	b .L_814B6B0C
.L_814B6B00:
/* 814B6B00 | 38 60 FF FF */	li r3, -0x1
/* 814B6B04 | 48 00 00 08 */	b .L_814B6B0C
.L_814B6B08:
/* 814B6B08 | 38 60 00 00 */	li r3, 0x0
.L_814B6B0C:
/* 814B6B0C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B6B10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B6B14 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814B6B18 | 7C 08 03 A6 */	mtlr r0
/* 814B6B1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B6B20 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_format

# .text:0x960 | 0x814B6B24 | size: 0x84
.fn VFiPFDRV_lread, global
/* 814B6B24 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B6B28 | 7C 08 02 A6 */	mflr r0
/* 814B6B2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6B30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B6B34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B6B38 | 7C 7F 1B 78 */	mr r31, r3
/* 814B6B3C | 40 82 00 0C */	bne .L_814B6B48
/* 814B6B40 | 38 60 00 0A */	li r3, 0xa
/* 814B6B44 | 48 00 00 50 */	b .L_814B6B94
.L_814B6B48:
/* 814B6B48 | 7C E8 3B 78 */	mr r8, r7
/* 814B6B4C | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B6B50 | A0 FF 00 00 */	lhz r7, 0x0(r31)
/* 814B6B54 | 48 00 2C 89 */	bl VFipdm_part_logical_read
/* 814B6B58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6B5C | 41 82 00 34 */	beq .L_814B6B90
/* 814B6B60 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B6B64 | 40 82 00 24 */	bne .L_814B6B88
/* 814B6B68 | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6B6C | 48 00 38 35 */	bl VFipdm_part_get_driver_error_code
/* 814B6B70 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B6B74 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B6B78 | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B6B7C | 90 7F 18 58 */	stw r3, 0x1858(r31)
/* 814B6B80 | 38 60 10 00 */	li r3, 0x1000
/* 814B6B84 | 48 00 00 10 */	b .L_814B6B94
.L_814B6B88:
/* 814B6B88 | 38 60 FF FF */	li r3, -0x1
/* 814B6B8C | 48 00 00 08 */	b .L_814B6B94
.L_814B6B90:
/* 814B6B90 | 38 60 00 00 */	li r3, 0x0
.L_814B6B94:
/* 814B6B94 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B6B98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B6B9C | 7C 08 03 A6 */	mtlr r0
/* 814B6BA0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B6BA4 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_lread

# .text:0x9E4 | 0x814B6BA8 | size: 0x84
.fn VFiPFDRV_lwrite, global
/* 814B6BA8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B6BAC | 7C 08 02 A6 */	mflr r0
/* 814B6BB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6BB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B6BB8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B6BBC | 7C 7F 1B 78 */	mr r31, r3
/* 814B6BC0 | 40 82 00 0C */	bne .L_814B6BCC
/* 814B6BC4 | 38 60 00 0A */	li r3, 0xa
/* 814B6BC8 | 48 00 00 50 */	b .L_814B6C18
.L_814B6BCC:
/* 814B6BCC | 7C E8 3B 78 */	mr r8, r7
/* 814B6BD0 | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B6BD4 | A0 FF 00 00 */	lhz r7, 0x0(r31)
/* 814B6BD8 | 48 00 2E 11 */	bl VFipdm_part_logical_write
/* 814B6BDC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6BE0 | 41 82 00 34 */	beq .L_814B6C14
/* 814B6BE4 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B6BE8 | 40 82 00 24 */	bne .L_814B6C0C
/* 814B6BEC | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6BF0 | 48 00 37 B1 */	bl VFipdm_part_get_driver_error_code
/* 814B6BF4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B6BF8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B6BFC | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B6C00 | 90 7F 18 58 */	stw r3, 0x1858(r31)
/* 814B6C04 | 38 60 10 00 */	li r3, 0x1000
/* 814B6C08 | 48 00 00 10 */	b .L_814B6C18
.L_814B6C0C:
/* 814B6C0C | 38 60 FF FF */	li r3, -0x1
/* 814B6C10 | 48 00 00 08 */	b .L_814B6C18
.L_814B6C14:
/* 814B6C14 | 38 60 00 00 */	li r3, 0x0
.L_814B6C18:
/* 814B6C18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B6C1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B6C20 | 7C 08 03 A6 */	mtlr r0
/* 814B6C24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B6C28 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_lwrite

# .text:0xA68 | 0x814B6C2C | size: 0x80
.fn VFiPFDRV_lerase, global
/* 814B6C2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814B6C30 | 7C 08 02 A6 */	mflr r0
/* 814B6C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6C38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814B6C3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814B6C40 | 7C 7F 1B 78 */	mr r31, r3
/* 814B6C44 | 40 82 00 0C */	bne .L_814B6C50
/* 814B6C48 | 38 60 00 0A */	li r3, 0xa
/* 814B6C4C | 48 00 00 4C */	b .L_814B6C98
.L_814B6C50:
/* 814B6C50 | 80 63 18 74 */	lwz r3, 0x1874(r3)
/* 814B6C54 | A0 DF 00 00 */	lhz r6, 0x0(r31)
/* 814B6C58 | 48 00 2F 9D */	bl VFipdm_part_logical_erase
/* 814B6C5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814B6C60 | 41 82 00 34 */	beq .L_814B6C94
/* 814B6C64 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 814B6C68 | 40 82 00 24 */	bne .L_814B6C8C
/* 814B6C6C | 80 7F 18 74 */	lwz r3, 0x1874(r31)
/* 814B6C70 | 48 00 37 31 */	bl VFipdm_part_get_driver_error_code
/* 814B6C74 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814B6C78 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814B6C7C | 90 64 00 20 */	stw r3, 0x20(r4)
/* 814B6C80 | 90 7F 18 58 */	stw r3, 0x1858(r31)
/* 814B6C84 | 38 60 10 00 */	li r3, 0x1000
/* 814B6C88 | 48 00 00 10 */	b .L_814B6C98
.L_814B6C8C:
/* 814B6C8C | 38 60 FF FF */	li r3, -0x1
/* 814B6C90 | 48 00 00 08 */	b .L_814B6C98
.L_814B6C94:
/* 814B6C94 | 38 60 00 00 */	li r3, 0x0
.L_814B6C98:
/* 814B6C98 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814B6C9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814B6CA0 | 7C 08 03 A6 */	mtlr r0
/* 814B6CA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814B6CA8 | 4E 80 00 20 */	blr
.endfn VFiPFDRV_lerase
