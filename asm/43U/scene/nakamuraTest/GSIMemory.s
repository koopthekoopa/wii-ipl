.include "macros.inc"
.file "GSIMemory.c"

# 0x813D6328..0x813D6384 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x813D6328 | size: 0x10
.fn _gsi_memalign, global
/* 813D6328 | 7C 60 1B 78 */	mr r0, r3
/* 813D632C | 7C 64 1B 96 */	divwu r3, r4, r3
/* 813D6330 | 7C 04 03 78 */	mr r4, r0
/* 813D6334 | 48 22 51 A4 */	b fn_815FB4D8
.endfn _gsi_memalign

# .text:0x10 | 0x813D6338 | size: 0x1C
.fn gsiMemoryCallbacksSet, global
/* 813D6338 | 3D 00 81 65 */	lis r8, lbl_81653838@ha
/* 813D633C | 38 E8 38 38 */	addi r7, r8, lbl_81653838@l
/* 813D6340 | 90 68 38 38 */	stw r3, lbl_81653838@l(r8)
/* 813D6344 | 90 87 00 04 */	stw r4, 0x4(r7)
/* 813D6348 | 90 A7 00 08 */	stw r5, 0x8(r7)
/* 813D634C | 90 C7 00 0C */	stw r6, 0xc(r7)
/* 813D6350 | 4E 80 00 20 */	blr
.endfn gsiMemoryCallbacksSet

# .text:0x2C | 0x813D6354 | size: 0x10
.fn gsimalloc, global
/* 813D6354 | 3C 80 81 65 */	lis r4, lbl_81653838@ha
/* 813D6358 | 81 84 38 38 */	lwz r12, lbl_81653838@l(r4)
/* 813D635C | 7D 89 03 A6 */	mtctr r12
/* 813D6360 | 4E 80 04 20 */	bctr
.endfn gsimalloc

# .text:0x3C | 0x813D6364 | size: 0x20
.fn gsifree, global
/* 813D6364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813D6368 | 4D 82 00 20 */	beqlr
/* 813D636C | 3C 80 81 65 */	lis r4, lbl_81653838@ha
/* 813D6370 | 38 84 38 38 */	addi r4, r4, lbl_81653838@l
/* 813D6374 | 81 84 00 04 */	lwz r12, 0x4(r4)
/* 813D6378 | 7D 89 03 A6 */	mtctr r12
/* 813D637C | 4E 80 04 20 */	bctr
/* 813D6380 | 4E 80 00 20 */	blr
.endfn gsifree

# 0x81653838..0x81653848 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x81653838 | size: 0x10
.obj lbl_81653838, global
	.4byte fn_815FAFF0
	.4byte fn_815FB090
	.4byte fn_815FB1C0
	.4byte _gsi_memalign
.endobj lbl_81653838
