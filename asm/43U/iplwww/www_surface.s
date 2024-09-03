.include "macros.inc"
.file "www_surface.cpp"

# 0x8136DF38..0x8136E6B4 | size: 0x77C
.text
.balign 4

# .text:0x0 | 0x8136DF38 | size: 0x10
.fn "unresolved_www__25@unnamed@www_surface_cpp", global
/* 8136DF38 | 3C 60 81 64 */	lis r3, lbl_8164391C@ha
/* 8136DF3C | 38 63 39 1C */	addi r3, r3, lbl_8164391C@l
/* 8136DF40 | 4C C6 31 82 */	crclr cr1eq
/* 8136DF44 | 48 1C 07 5C */	b OSReport
.endfn "unresolved_www__25@unnamed@www_surface_cpp"

# .text:0x10 | 0x8136DF48 | size: 0x14
# ext_ead::www::Heap::allocMem1(unsigned long, int)
.fn allocMem1__Q37ext_ead3www4HeapFUli, global
/* 8136DF48 | 7C 60 1B 78 */	mr r0, r3
/* 8136DF4C | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136DF50 | 7C 85 23 78 */	mr r5, r4
/* 8136DF54 | 7C 04 03 78 */	mr r4, r0
/* 8136DF58 | 48 1E C7 FC */	b fn_8155A754
.endfn allocMem1__Q37ext_ead3www4HeapFUli

# .text:0x24 | 0x8136DF5C | size: 0xC
# ext_ead::www::Heap::freeMem1(void*)
.fn freeMem1__Q37ext_ead3www4HeapFPv, global
/* 8136DF5C | 7C 64 1B 78 */	mr r4, r3
/* 8136DF60 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136DF64 | 48 1E CA A0 */	b fn_8155AA04
.endfn freeMem1__Q37ext_ead3www4HeapFPv

# .text:0x30 | 0x8136DF68 | size: 0x14
# ext_ead::www::Heap::allocMem2(unsigned long, int)
.fn allocMem2__Q37ext_ead3www4HeapFUli, global
/* 8136DF68 | 7C 60 1B 78 */	mr r0, r3
/* 8136DF6C | 80 6D A9 24 */	lwz r3, hMem2__Q37ext_ead3www4Heap@sda21(r0)
/* 8136DF70 | 7C 85 23 78 */	mr r5, r4
/* 8136DF74 | 7C 04 03 78 */	mr r4, r0
/* 8136DF78 | 48 1E C7 DC */	b fn_8155A754
.endfn allocMem2__Q37ext_ead3www4HeapFUli

# .text:0x44 | 0x8136DF7C | size: 0xC
# ext_ead::www::Heap::freeMem2(void*)
.fn freeMem2__Q37ext_ead3www4HeapFPv, global
/* 8136DF7C | 7C 64 1B 78 */	mr r4, r3
/* 8136DF80 | 80 6D A9 24 */	lwz r3, hMem2__Q37ext_ead3www4Heap@sda21(r0)
/* 8136DF84 | 48 1E CA 80 */	b fn_8155AA04
.endfn freeMem2__Q37ext_ead3www4HeapFPv

# .text:0x50 | 0x8136DF88 | size: 0xDC
# ext_ead::www::Heap::reportHeap()
.fn reportHeap__Q37ext_ead3www4HeapFv, global
/* 8136DF88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136DF8C | 7C 08 02 A6 */	mflr r0
/* 8136DF90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136DF94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136DF98 | 3F E0 81 64 */	lis r31, lbl_81642D10@ha
/* 8136DF9C | 3B FF 2D 10 */	addi r31, r31, lbl_81642D10@l
/* 8136DFA0 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136DFA4 | 48 1E CB 2D */	bl fn_8155AAD0
/* 8136DFA8 | 80 0D A9 34 */	lwz r0, Instance___Q37ext_ead3www14SurfaceManager@sda21(r0)
/* 8136DFAC | 7C 00 18 40 */	cmplw r0, r3
/* 8136DFB0 | 40 82 00 18 */	bne .L_8136DFC8
/* 8136DFB4 | 80 6D A9 24 */	lwz r3, hMem2__Q37ext_ead3www4Heap@sda21(r0)
/* 8136DFB8 | 48 1E CB 19 */	bl fn_8155AAD0
/* 8136DFBC | 80 0D A9 38 */	lwz r0, opera_callbacks__Q23www9trasition@sda21(r0)
/* 8136DFC0 | 7C 00 18 40 */	cmplw r0, r3
/* 8136DFC4 | 41 82 00 8C */	beq .L_8136E050
.L_8136DFC8:
/* 8136DFC8 | 38 7F 0C 9C */	addi r3, r31, 0xc9c
/* 8136DFCC | 4C C6 31 82 */	crclr cr1eq
/* 8136DFD0 | 48 1C 06 D1 */	bl OSReport
/* 8136DFD4 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136DFD8 | 48 1E CA F9 */	bl fn_8155AAD0
/* 8136DFDC | 80 0D A9 34 */	lwz r0, Instance___Q37ext_ead3www14SurfaceManager@sda21(r0)
/* 8136DFE0 | 7C 00 18 40 */	cmplw r0, r3
/* 8136DFE4 | 41 82 00 1C */	beq .L_8136E000
/* 8136DFE8 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136DFEC | 48 1E CA E5 */	bl fn_8155AAD0
/* 8136DFF0 | 7C 64 1B 78 */	mr r4, r3
/* 8136DFF4 | 38 7F 0C C1 */	addi r3, r31, 0xcc1
/* 8136DFF8 | 4C C6 31 82 */	crclr cr1eq
/* 8136DFFC | 48 1C 06 A5 */	bl OSReport
.L_8136E000:
/* 8136E000 | 80 6D A9 24 */	lwz r3, hMem2__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E004 | 48 1E CA CD */	bl fn_8155AAD0
/* 8136E008 | 80 0D A9 38 */	lwz r0, opera_callbacks__Q23www9trasition@sda21(r0)
/* 8136E00C | 7C 00 18 40 */	cmplw r0, r3
/* 8136E010 | 41 82 00 1C */	beq .L_8136E02C
/* 8136E014 | 80 6D A9 24 */	lwz r3, hMem2__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E018 | 48 1E CA B9 */	bl fn_8155AAD0
/* 8136E01C | 7C 64 1B 78 */	mr r4, r3
/* 8136E020 | 38 7F 0C DD */	addi r3, r31, 0xcdd
/* 8136E024 | 4C C6 31 82 */	crclr cr1eq
/* 8136E028 | 48 1C 06 79 */	bl OSReport
.L_8136E02C:
/* 8136E02C | 38 7F 0C 9C */	addi r3, r31, 0xc9c
/* 8136E030 | 4C C6 31 82 */	crclr cr1eq
/* 8136E034 | 48 1C 06 6D */	bl OSReport
/* 8136E038 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E03C | 48 1E CA 95 */	bl fn_8155AAD0
/* 8136E040 | 90 6D A9 34 */	stw r3, Instance___Q37ext_ead3www14SurfaceManager@sda21(r0)
/* 8136E044 | 80 6D A9 24 */	lwz r3, hMem2__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E048 | 48 1E CA 89 */	bl fn_8155AAD0
/* 8136E04C | 90 6D A9 38 */	stw r3, opera_callbacks__Q23www9trasition@sda21(r0)
.L_8136E050:
/* 8136E050 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E054 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136E058 | 7C 08 03 A6 */	mtlr r0
/* 8136E05C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136E060 | 4E 80 00 20 */	blr
.endfn reportHeap__Q37ext_ead3www4HeapFv

# .text:0x12C | 0x8136E064 | size: 0x6C
# ext_ead::www::Heap::reportLeaHeap()
.fn reportLeaHeap__Q37ext_ead3www4HeapFv, global
/* 8136E064 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E068 | 7C 08 02 A6 */	mflr r0
/* 8136E06C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E070 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136E074 | 80 0D A9 30 */	lwz r0, wwwavail___Q37ext_ead3www4Heap@sda21(r0)
/* 8136E078 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136E07C | 41 82 00 40 */	beq .L_8136E0BC
/* 8136E080 | 3F E0 81 64 */	lis r31, lbl_816439AC@ha
/* 8136E084 | 38 7F 39 AC */	addi r3, r31, lbl_816439AC@l
/* 8136E088 | 4C C6 31 82 */	crclr cr1eq
/* 8136E08C | 48 1C 06 15 */	bl OSReport
/* 8136E090 | 81 8D A9 30 */	lwz r12, wwwavail___Q37ext_ead3www4Heap@sda21(r0)
/* 8136E094 | 7D 89 03 A6 */	mtctr r12
/* 8136E098 | 4E 80 04 21 */	bctrl
/* 8136E09C | 3C A0 81 64 */	lis r5, lbl_81643A09@ha
/* 8136E0A0 | 7C 64 1B 78 */	mr r4, r3
/* 8136E0A4 | 38 65 3A 09 */	addi r3, r5, lbl_81643A09@l
/* 8136E0A8 | 4C C6 31 82 */	crclr cr1eq
/* 8136E0AC | 48 1C 05 F5 */	bl OSReport
/* 8136E0B0 | 38 7F 39 AC */	addi r3, r31, lbl_816439AC@l
/* 8136E0B4 | 4C C6 31 82 */	crclr cr1eq
/* 8136E0B8 | 48 1C 05 E9 */	bl OSReport
.L_8136E0BC:
/* 8136E0BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E0C0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136E0C4 | 7C 08 03 A6 */	mtlr r0
/* 8136E0C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136E0CC | 4E 80 00 20 */	blr
.endfn reportLeaHeap__Q37ext_ead3www4HeapFv

# .text:0x198 | 0x8136E0D0 | size: 0x114
# ext_ead::www::SurfaceManager::CreateManager(int, int, int, int, void*, unsigned long, void*, unsigned long, void*, const char*)
.fn CreateManager__Q37ext_ead3www14SurfaceManagerFiiiiPvUlPvUlPvPCc, global
/* 8136E0D0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136E0D4 | 7C 08 02 A6 */	mflr r0
/* 8136E0D8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136E0DC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136E0E0 | 48 28 B3 D5 */	bl _savegpr_24
/* 8136E0E4 | 80 0D A9 3C */	lwz r0, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E0E8 | 7C 78 1B 78 */	mr r24, r3
/* 8136E0EC | 83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8136E0F0 | 7C 99 23 78 */	mr r25, r4
/* 8136E0F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136E0F8 | 83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8136E0FC | 7C BA 2B 78 */	mr r26, r5
/* 8136E100 | 7C DB 33 78 */	mr r27, r6
/* 8136E104 | 7D 3C 4B 78 */	mr r28, r9
/* 8136E108 | 7D 5D 53 78 */	mr r29, r10
/* 8136E10C | 40 82 00 C0 */	bne .L_8136E1CC
/* 8136E110 | 7C E3 3B 78 */	mr r3, r7
/* 8136E114 | 7D 04 43 78 */	mr r4, r8
/* 8136E118 | 38 A0 00 04 */	li r5, 0x4
/* 8136E11C | 48 1E C5 59 */	bl fn_8155A674
/* 8136E120 | 90 6D A9 20 */	stw r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E124 | 7F 83 E3 78 */	mr r3, r28
/* 8136E128 | 7F A4 EB 78 */	mr r4, r29
/* 8136E12C | 38 A0 00 04 */	li r5, 0x4
/* 8136E130 | 48 1E C5 45 */	bl fn_8155A674
/* 8136E134 | 38 00 00 00 */	li r0, 0x0
/* 8136E138 | 90 6D A9 24 */	stw r3, hMem2__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E13C | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E140 | 38 80 00 3C */	li r4, 0x3c
/* 8136E144 | 90 0D A9 28 */	stw r0, wwwalloc___Q37ext_ead3www4Heap@sda21(r0)
/* 8136E148 | 38 A0 00 04 */	li r5, 0x4
/* 8136E14C | 90 0D A9 2C */	stw r0, wwwfree___Q37ext_ead3www4Heap@sda21(r0)
/* 8136E150 | 90 0D A9 30 */	stw r0, wwwavail___Q37ext_ead3www4Heap@sda21(r0)
/* 8136E154 | 48 1E C6 01 */	bl fn_8155A754
/* 8136E158 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E15C | 90 6D A9 3C */	stw r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E160 | 41 82 00 08 */	beq .L_8136E168
/* 8136E164 | 48 00 02 B9 */	bl __ct__Q37ext_ead3www14SurfaceManagerFv
.L_8136E168:
/* 8136E168 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8136E16C | 41 82 00 0C */	beq .L_8136E178
/* 8136E170 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E174 | 93 C3 00 34 */	stw r30, 0x34(r3)
.L_8136E178:
/* 8136E178 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136E17C | 41 82 00 38 */	beq .L_8136E1B4
/* 8136E180 | 7F E3 FB 78 */	mr r3, r31
/* 8136E184 | 48 28 AD 79 */	bl strlen
/* 8136E188 | 7C 64 1B 78 */	mr r4, r3
/* 8136E18C | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E190 | 38 84 00 01 */	addi r4, r4, 0x1
/* 8136E194 | 38 A0 00 04 */	li r5, 0x4
/* 8136E198 | 48 1E C5 BD */	bl fn_8155A754
/* 8136E19C | 80 AD A9 3C */	lwz r5, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E1A0 | 7F E4 FB 78 */	mr r4, r31
/* 8136E1A4 | 90 65 00 38 */	stw r3, 0x38(r5)
/* 8136E1A8 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E1AC | 80 63 00 38 */	lwz r3, 0x38(r3)
/* 8136E1B0 | 48 29 41 55 */	bl strcpy
.L_8136E1B4:
/* 8136E1B4 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E1B8 | 7F 04 C3 78 */	mr r4, r24
/* 8136E1BC | 7F 25 CB 78 */	mr r5, r25
/* 8136E1C0 | 7F 46 D3 78 */	mr r6, r26
/* 8136E1C4 | 7F 67 DB 78 */	mr r7, r27
/* 8136E1C8 | 48 00 03 01 */	bl InitInstance___Q37ext_ead3www14SurfaceManagerFiiii
.L_8136E1CC:
/* 8136E1CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136E1D0 | 48 28 B3 31 */	bl _restgpr_24
/* 8136E1D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136E1D8 | 7C 08 03 A6 */	mtlr r0
/* 8136E1DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136E1E0 | 4E 80 00 20 */	blr
.endfn CreateManager__Q37ext_ead3www14SurfaceManagerFiiiiPvUlPvUlPvPCc

# .text:0x2AC | 0x8136E1E4 | size: 0x80
# ext_ead::www::SurfaceManager::DisposeManager()
.fn DisposeManager__Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E1E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E1E8 | 7C 08 02 A6 */	mflr r0
/* 8136E1EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E1F0 | 80 8D A9 3C */	lwz r4, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E1F4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136E1F8 | 41 82 00 5C */	beq .L_8136E254
/* 8136E1FC | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E200 | 80 84 00 38 */	lwz r4, 0x38(r4)
/* 8136E204 | 48 1E C8 01 */	bl fn_8155AA04
/* 8136E208 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E20C | 48 00 04 25 */	bl DisposeInstance___Q37ext_ead3www14SurfaceManagerFv
/* 8136E210 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E214 | 48 00 01 75 */	bl UnresolveRsoModule__Q37ext_ead3www14SurfaceManagerFv
/* 8136E218 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E21C | 38 80 FF FF */	li r4, -0x1
/* 8136E220 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136E224 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8136E228 | 7D 89 03 A6 */	mtctr r12
/* 8136E22C | 4E 80 04 21 */	bctrl
/* 8136E230 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E234 | 80 8D A9 3C */	lwz r4, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E238 | 48 1E C7 CD */	bl fn_8155AA04
/* 8136E23C | 38 00 00 00 */	li r0, 0x0
/* 8136E240 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E244 | 90 0D A9 3C */	stw r0, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E248 | 48 1E C4 DD */	bl fn_8155A724
/* 8136E24C | 80 6D A9 24 */	lwz r3, hMem2__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E250 | 48 1E C4 D5 */	bl fn_8155A724
.L_8136E254:
/* 8136E254 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E258 | 7C 08 03 A6 */	mtlr r0
/* 8136E25C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136E260 | 4E 80 00 20 */	blr
.endfn DisposeManager__Q37ext_ead3www14SurfaceManagerFv

# .text:0x32C | 0x8136E264 | size: 0x124
# ext_ead::www::SurfaceManager::ResolveRsoModule()
.fn ResolveRsoModule__Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E264 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8136E268 | 7C 08 02 A6 */	mflr r0
/* 8136E26C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8136E270 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136E274 | 48 28 B2 49 */	bl _savegpr_26
/* 8136E278 | 3F A0 81 64 */	lis r29, lbl_81642D10@ha
/* 8136E27C | 7C 7B 1B 78 */	mr r27, r3
/* 8136E280 | 3B BD 2D 10 */	addi r29, r29, lbl_81642D10@l
/* 8136E284 | 48 1C 7A 15 */	bl fn_81535C98
/* 8136E288 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136E28C | 83 5B 00 34 */	lwz r26, 0x34(r27)
/* 8136E290 | 80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 8136E294 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136E298 | 41 82 00 20 */	beq .L_8136E2B8
/* 8136E29C | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E2A0 | 38 A0 00 20 */	li r5, 0x20
/* 8136E2A4 | 48 1E C4 B1 */	bl fn_8155A754
/* 8136E2A8 | 90 7B 00 30 */	stw r3, 0x30(r27)
/* 8136E2AC | 38 80 00 00 */	li r4, 0x0
/* 8136E2B0 | 80 BA 00 1C */	lwz r5, 0x1c(r26)
/* 8136E2B4 | 4B FC 20 81 */	bl memset
.L_8136E2B8:
/* 8136E2B8 | 48 1C 79 E1 */	bl fn_81535C98
/* 8136E2BC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136E2C0 | 7F 43 D3 78 */	mr r3, r26
/* 8136E2C4 | 80 9B 00 30 */	lwz r4, 0x30(r27)
/* 8136E2C8 | 48 24 F4 7D */	bl fn_815BD744
/* 8136E2CC | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136E2D0 | 38 9D 0D 14 */	addi r4, r29, 0xd14
/* 8136E2D4 | 4C C6 31 82 */	crclr cr1eq
/* 8136E2D8 | 4B FF EC 61 */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136E2DC | 7F 43 D3 78 */	mr r3, r26
/* 8136E2E0 | 48 24 EC 95 */	bl fn_815BCF74
/* 8136E2E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E2E8 | 41 82 00 10 */	beq .L_8136E2F8
/* 8136E2EC | 38 7D 0D 20 */	addi r3, r29, 0xd20
/* 8136E2F0 | 4C C6 31 82 */	crclr cr1eq
/* 8136E2F4 | 48 1C 03 AD */	bl OSReport
.L_8136E2F8:
/* 8136E2F8 | 48 1C 79 A1 */	bl fn_81535C98
/* 8136E2FC | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136E300 | 81 9A 00 24 */	lwz r12, 0x24(r26)
/* 8136E304 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8136E308 | 41 82 00 0C */	beq .L_8136E314
/* 8136E30C | 7D 89 03 A6 */	mtctr r12
/* 8136E310 | 4E 80 04 21 */	bctrl
.L_8136E314:
/* 8136E314 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136E318 | 38 9D 0D 49 */	addi r4, r29, 0xd49
/* 8136E31C | 4C C6 31 82 */	crclr cr1eq
/* 8136E320 | 4B FF EC 19 */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136E324 | 48 1C 79 75 */	bl fn_81535C98
/* 8136E328 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8136E32C | 3B DD 08 8C */	addi r30, r29, 0x88c
/* 8136E330 | 3B 80 00 00 */	li r28, 0x0
/* 8136E334 | 3B E0 00 00 */	li r31, 0x0
.L_8136E338:
/* 8136E338 | 7C 9E F8 2E */	lwzx r4, r30, r31
/* 8136E33C | 7F 7E FA 14 */	add r27, r30, r31
/* 8136E340 | 7F 43 D3 78 */	mr r3, r26
/* 8136E344 | 48 24 EE 71 */	bl fn_815BD1B4
/* 8136E348 | 80 9B 00 04 */	lwz r4, 0x4(r27)
/* 8136E34C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 8136E350 | 28 1C 00 70 */	cmplwi r28, 0x70
/* 8136E354 | 3B FF 00 08 */	addi r31, r31, 0x8
/* 8136E358 | 90 64 00 00 */	stw r3, 0x0(r4)
/* 8136E35C | 41 80 FF DC */	blt .L_8136E338
/* 8136E360 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8136E364 | 38 9D 0D 54 */	addi r4, r29, 0xd54
/* 8136E368 | 4C C6 31 82 */	crclr cr1eq
/* 8136E36C | 4B FF EB CD */	bl report__Q47ext_ead3www5print9TickTimerFPCce
/* 8136E370 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8136E374 | 48 28 B1 95 */	bl _restgpr_26
/* 8136E378 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8136E37C | 7C 08 03 A6 */	mtlr r0
/* 8136E380 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8136E384 | 4E 80 00 20 */	blr
.endfn ResolveRsoModule__Q37ext_ead3www14SurfaceManagerFv

# .text:0x450 | 0x8136E388 | size: 0x94
# ext_ead::www::SurfaceManager::UnresolveRsoModule()
.fn UnresolveRsoModule__Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E388 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E38C | 7C 08 02 A6 */	mflr r0
/* 8136E390 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E394 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136E398 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8136E39C | 7C 7E 1B 78 */	mr r30, r3
/* 8136E3A0 | 83 E3 00 34 */	lwz r31, 0x34(r3)
/* 8136E3A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8136E3A8 | 41 82 00 5C */	beq .L_8136E404
/* 8136E3AC | 81 9F 00 28 */	lwz r12, 0x28(r31)
/* 8136E3B0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8136E3B4 | 41 82 00 0C */	beq .L_8136E3C0
/* 8136E3B8 | 7D 89 03 A6 */	mtctr r12
/* 8136E3BC | 4E 80 04 21 */	bctrl
.L_8136E3C0:
/* 8136E3C0 | 3C C0 81 37 */	lis r6, "unresolved_www__25@unnamed@www_surface_cpp"@ha
/* 8136E3C4 | 3C A0 81 64 */	lis r5, lbl_8164359C@ha
/* 8136E3C8 | 38 00 00 70 */	li r0, 0x70
/* 8136E3CC | 38 60 00 00 */	li r3, 0x0
/* 8136E3D0 | 38 C6 DF 38 */	addi r6, r6, "unresolved_www__25@unnamed@www_surface_cpp"@l
/* 8136E3D4 | 38 A5 35 9C */	addi r5, r5, lbl_8164359C@l
/* 8136E3D8 | 7C 09 03 A6 */	mtctr r0
.L_8136E3DC:
/* 8136E3DC | 7C 85 1A 14 */	add r4, r5, r3
/* 8136E3E0 | 38 63 00 08 */	addi r3, r3, 0x8
/* 8136E3E4 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8136E3E8 | 90 C4 00 00 */	stw r6, 0x0(r4)
/* 8136E3EC | 42 00 FF F0 */	bdnz .L_8136E3DC
/* 8136E3F0 | 7F E3 FB 78 */	mr r3, r31
/* 8136E3F4 | 48 24 F3 59 */	bl fn_815BD74C
/* 8136E3F8 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E3FC | 80 9E 00 30 */	lwz r4, 0x30(r30)
/* 8136E400 | 48 1E C6 05 */	bl fn_8155AA04
.L_8136E404:
/* 8136E404 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E408 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136E40C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8136E410 | 7C 08 03 A6 */	mtlr r0
/* 8136E414 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136E418 | 4E 80 00 20 */	blr
.endfn UnresolveRsoModule__Q37ext_ead3www14SurfaceManagerFv

# .text:0x4E4 | 0x8136E41C | size: 0x6C
# ext_ead::www::SurfaceManager::SurfaceManager()
.fn __ct__Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E41C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E420 | 7C 08 02 A6 */	mflr r0
/* 8136E424 | 3C C0 81 64 */	lis r6, __vt__Q37ext_ead3www14SurfaceManager@ha
/* 8136E428 | 38 A0 02 60 */	li r5, 0x260
/* 8136E42C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E430 | 38 00 00 00 */	li r0, 0x0
/* 8136E434 | 38 C6 3A A0 */	addi r6, r6, __vt__Q37ext_ead3www14SurfaceManager@l
/* 8136E438 | 38 80 01 C8 */	li r4, 0x1c8
/* 8136E43C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136E440 | 7C 7F 1B 78 */	mr r31, r3
/* 8136E444 | 90 C3 00 00 */	stw r6, 0x0(r3)
/* 8136E448 | 90 A3 00 04 */	stw r5, 0x4(r3)
/* 8136E44C | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8136E450 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8136E454 | 90 03 00 28 */	stw r0, 0x28(r3)
/* 8136E458 | 90 03 00 2C */	stw r0, 0x2c(r3)
/* 8136E45C | 90 03 00 30 */	stw r0, 0x30(r3)
/* 8136E460 | 90 03 00 34 */	stw r0, 0x34(r3)
/* 8136E464 | 90 03 00 38 */	stw r0, 0x38(r3)
/* 8136E468 | 38 63 00 10 */	addi r3, r3, 0x10
/* 8136E46C | 48 1C 37 65 */	bl fn_81531BD0
/* 8136E470 | 7F E3 FB 78 */	mr r3, r31
/* 8136E474 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136E478 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E47C | 7C 08 03 A6 */	mtlr r0
/* 8136E480 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136E484 | 4E 80 00 20 */	blr
.endfn __ct__Q37ext_ead3www14SurfaceManagerFv

# .text:0x550 | 0x8136E488 | size: 0x40
# ext_ead::www::SurfaceManager::~SurfaceManager()
.fn __dt__Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E488 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E48C | 7C 08 02 A6 */	mflr r0
/* 8136E490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E494 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E498 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136E49C | 7C 7F 1B 78 */	mr r31, r3
/* 8136E4A0 | 41 82 00 10 */	beq .L_8136E4B0
/* 8136E4A4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136E4A8 | 40 81 00 08 */	ble .L_8136E4B0
/* 8136E4AC | 48 28 9C 39 */	bl __dl__FPv
.L_8136E4B0:
/* 8136E4B0 | 7F E3 FB 78 */	mr r3, r31
/* 8136E4B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136E4B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E4BC | 7C 08 03 A6 */	mtlr r0
/* 8136E4C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136E4C4 | 4E 80 00 20 */	blr
.endfn __dt__Q37ext_ead3www14SurfaceManagerFv

# .text:0x590 | 0x8136E4C8 | size: 0xB4
# ext_ead::www::SurfaceManager::InitInstance_(int, int, int, int)
.fn InitInstance___Q37ext_ead3www14SurfaceManagerFiiii, global
/* 8136E4C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136E4CC | 7C 08 02 A6 */	mflr r0
/* 8136E4D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8136E4D4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136E4D8 | 48 28 AF F1 */	bl _savegpr_29
/* 8136E4DC | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8136E4E0 | 7C 7D 1B 78 */	mr r29, r3
/* 8136E4E4 | 7C DE 33 78 */	mr r30, r6
/* 8136E4E8 | 7C FF 3B 78 */	mr r31, r7
/* 8136E4EC | 90 A3 00 08 */	stw r5, 0x8(r3)
/* 8136E4F0 | 3C 80 00 02 */	lis r4, 0x2
/* 8136E4F4 | 38 A0 00 20 */	li r5, 0x20
/* 8136E4F8 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E4FC | 48 1E C2 59 */	bl fn_8155A754
/* 8136E500 | 90 7D 00 2C */	stw r3, 0x2c(r29)
/* 8136E504 | 38 80 00 00 */	li r4, 0x0
/* 8136E508 | 3C A0 00 02 */	lis r5, 0x2
/* 8136E50C | 4B FC 1E 29 */	bl memset
/* 8136E510 | 3C 80 81 64 */	lis r4, lbl_81643A76@ha
/* 8136E514 | 80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 8136E518 | 38 84 3A 76 */	addi r4, r4, lbl_81643A76@l
/* 8136E51C | 38 60 00 03 */	li r3, 0x3
/* 8136E520 | 4C C6 31 82 */	crclr cr1eq
/* 8136E524 | 48 00 03 71 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136E528 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E52C | 38 80 06 A8 */	li r4, 0x6a8
/* 8136E530 | 38 A0 00 04 */	li r5, 0x4
/* 8136E534 | 48 1E C2 21 */	bl fn_8155A754
/* 8136E538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E53C | 90 7D 00 28 */	stw r3, 0x28(r29)
/* 8136E540 | 41 82 00 08 */	beq .L_8136E548
/* 8136E544 | 4B FF E3 CD */	bl __ct__Q37ext_ead3www13BrowserThreadFv
.L_8136E548:
/* 8136E548 | 80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8136E54C | 7F C4 F3 78 */	mr r4, r30
/* 8136E550 | 80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 8136E554 | 7F E5 FB 78 */	mr r5, r31
/* 8136E558 | 3C E0 00 02 */	lis r7, 0x2
/* 8136E55C | 39 00 00 14 */	li r8, 0x14
/* 8136E560 | 4B FF E6 9D */	bl CreateThread__Q37ext_ead3www13BrowserThreadFiiPvUli
/* 8136E564 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8136E568 | 48 28 AF AD */	bl _restgpr_29
/* 8136E56C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136E570 | 7C 08 03 A6 */	mtlr r0
/* 8136E574 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8136E578 | 4E 80 00 20 */	blr
.endfn InitInstance___Q37ext_ead3www14SurfaceManagerFiiii

# .text:0x644 | 0x8136E57C | size: 0x1C
# ext_ead::www::SurfaceManager::RegisterArcFile(void*)
.fn RegisterArcFile__Q37ext_ead3www14SurfaceManagerFPv, global
/* 8136E57C | 80 AD A9 3C */	lwz r5, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E580 | 7C 64 1B 78 */	mr r4, r3
/* 8136E584 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 8136E588 | 4D 82 00 20 */	beqlr
/* 8136E58C | 80 65 00 28 */	lwz r3, 0x28(r5)
/* 8136E590 | 4B FF E5 DC */	b RegisterArcFile__Q37ext_ead3www13BrowserThreadFPv
/* 8136E594 | 4E 80 00 20 */	blr
.endfn RegisterArcFile__Q37ext_ead3www14SurfaceManagerFPv

# .text:0x660 | 0x8136E598 | size: 0x24
# ext_ead::www::SurfaceManager::RegisterIniFile(void*, unsigned long)
.fn RegisterIniFile__Q37ext_ead3www14SurfaceManagerFPvUl, global
/* 8136E598 | 80 CD A9 3C */	lwz r6, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E59C | 7C 60 1B 78 */	mr r0, r3
/* 8136E5A0 | 7C 85 23 78 */	mr r5, r4
/* 8136E5A4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8136E5A8 | 4D 82 00 20 */	beqlr
/* 8136E5AC | 80 66 00 28 */	lwz r3, 0x28(r6)
/* 8136E5B0 | 7C 04 03 78 */	mr r4, r0
/* 8136E5B4 | 4B FF E6 3C */	b RegisterIniFile__Q37ext_ead3www13BrowserThreadFPvUl
/* 8136E5B8 | 4E 80 00 20 */	blr
.endfn RegisterIniFile__Q37ext_ead3www14SurfaceManagerFPvUl

# .text:0x684 | 0x8136E5BC | size: 0x24
# ext_ead::www::SurfaceManager::RegisterFontFile(int, void*, unsigned long)
.fn RegisterFontFile__Q37ext_ead3www14SurfaceManagerFiPvUl, global
/* 8136E5BC | 3C C0 81 64 */	lis r6, WWW_FONT_FILE_DATA_TABLE__@ha
/* 8136E5C0 | 7C A4 2A 14 */	add r5, r4, r5
/* 8136E5C4 | 54 63 20 36 */	slwi r3, r3, 4
/* 8136E5C8 | 38 C6 39 8C */	addi r6, r6, WWW_FONT_FILE_DATA_TABLE__@l
/* 8136E5CC | 38 05 00 01 */	addi r0, r5, 0x1
/* 8136E5D0 | 7C 66 1A 14 */	add r3, r6, r3
/* 8136E5D4 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8136E5D8 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 8136E5DC | 4E 80 00 20 */	blr
.endfn RegisterFontFile__Q37ext_ead3www14SurfaceManagerFiPvUl

# .text:0x6A8 | 0x8136E5E0 | size: 0x24
# ext_ead::www::SurfaceManager::StartThread()
.fn StartThread__Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E5E0 | 80 6D A9 3C */	lwz r3, ScrollState___Q23www9trasition@sda21(r0)
/* 8136E5E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E5E8 | 4D 82 00 20 */	beqlr
/* 8136E5EC | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 8136E5F0 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136E5F4 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8136E5F8 | 7D 89 03 A6 */	mtctr r12
/* 8136E5FC | 4E 80 04 20 */	bctr
/* 8136E600 | 4E 80 00 20 */	blr
.endfn StartThread__Q37ext_ead3www14SurfaceManagerFv

# .text:0x6CC | 0x8136E604 | size: 0x14
# ext_ead::www::SurfaceManager::StopThreadAsync()
.fn StopThreadAsync__Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E604 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 8136E608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E60C | 4D 82 00 20 */	beqlr
/* 8136E610 | 4B FF E6 68 */	b StopThread__Q37ext_ead3www13BrowserThreadFv
/* 8136E614 | 4E 80 00 20 */	blr
.endfn StopThreadAsync__Q37ext_ead3www14SurfaceManagerFv

# .text:0x6E0 | 0x8136E618 | size: 0x18
# ext_ead::www::SurfaceManager::IsThreadStopped()
.fn IsThreadStopped__Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E618 | 80 63 00 28 */	lwz r3, 0x28(r3)
/* 8136E61C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8136E620 | 41 82 00 08 */	beq .L_8136E628
/* 8136E624 | 4B FF E6 A8 */	b IsThreadStopped__Q37ext_ead3www13BrowserThreadFv
.L_8136E628:
/* 8136E628 | 38 60 00 01 */	li r3, 0x1
/* 8136E62C | 4E 80 00 20 */	blr
.endfn IsThreadStopped__Q37ext_ead3www14SurfaceManagerFv

# .text:0x6F8 | 0x8136E630 | size: 0x84
# ext_ead::www::SurfaceManager::DisposeInstance_()
.fn DisposeInstance___Q37ext_ead3www14SurfaceManagerFv, global
/* 8136E630 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136E634 | 7C 08 02 A6 */	mflr r0
/* 8136E638 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8136E63C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136E640 | 7C 7F 1B 78 */	mr r31, r3
/* 8136E644 | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 8136E648 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8136E64C | 41 82 00 38 */	beq .L_8136E684
/* 8136E650 | 7C 03 03 78 */	mr r3, r0
/* 8136E654 | 4B FF E6 25 */	bl StopThread__Q37ext_ead3www13BrowserThreadFv
/* 8136E658 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8136E65C | 38 80 FF FF */	li r4, -0x1
/* 8136E660 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8136E664 | 81 8C 00 08 */	lwz r12, 0x8(r12)
/* 8136E668 | 7D 89 03 A6 */	mtctr r12
/* 8136E66C | 4E 80 04 21 */	bctrl
/* 8136E670 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E674 | 80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8136E678 | 48 1E C3 8D */	bl fn_8155AA04
/* 8136E67C | 38 00 00 00 */	li r0, 0x0
/* 8136E680 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_8136E684:
/* 8136E684 | 80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8136E688 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8136E68C | 41 82 00 14 */	beq .L_8136E6A0
/* 8136E690 | 80 6D A9 20 */	lwz r3, hMem1__Q37ext_ead3www4Heap@sda21(r0)
/* 8136E694 | 48 1E C3 71 */	bl fn_8155AA04
/* 8136E698 | 38 00 00 00 */	li r0, 0x0
/* 8136E69C | 90 1F 00 2C */	stw r0, 0x2c(r31)
.L_8136E6A0:
/* 8136E6A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136E6A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136E6A8 | 7C 08 03 A6 */	mtlr r0
/* 8136E6AC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8136E6B0 | 4E 80 00 20 */	blr
.endfn DisposeInstance___Q37ext_ead3www14SurfaceManagerFv

# 0x81642D10..0x81643AB8 | size: 0xDA8
.data
.balign 8

# .data:0x0 | 0x81642D10 | size: 0xF
.obj lbl_81642D10, global
	.string "WWWSurfaceInit"
.endobj lbl_81642D10

# .data:0xF | 0x81642D1F | size: 0x14
.obj lbl_81642D1F, global
	.string "WWWSurfaceNewScreen"
.endobj lbl_81642D1F

# .data:0x23 | 0x81642D33 | size: 0x17
.obj lbl_81642D33, global
	.string "WWWSurfaceDeleteScreen"
.endobj lbl_81642D33

# .data:0x3A | 0x81642D4A | size: 0x11
.obj lbl_81642D4A, global
	.string "WWWSurfaceResize"
.endobj lbl_81642D4A

# .data:0x4B | 0x81642D5B | size: 0x13
.obj lbl_81642D5B, global
	.string "WWWSurfaceShutdown"
.endobj lbl_81642D5B

# .data:0x5E | 0x81642D6E | size: 0x1B
.obj lbl_81642D6E, global
	.string "WWWSurfaceSetFlushCallback"
.endobj lbl_81642D6E

# .data:0x79 | 0x81642D89 | size: 0x15
.obj lbl_81642D89, global
	.string "WWWSurfaceInvalidate"
.endobj lbl_81642D89

# .data:0x8E | 0x81642D9E | size: 0x17
.obj lbl_81642D9E, global
	.string "WWWSurfaceUpdateScreen"
.endobj lbl_81642D9E

# .data:0xA5 | 0x81642DB5 | size: 0x13
.obj lbl_81642DB5, global
	.string "WWWSurfaceLockArea"
.endobj lbl_81642DB5

# .data:0xB8 | 0x81642DC8 | size: 0x15
.obj lbl_81642DC8, global
	.string "WWWSurfaceUnlockArea"
.endobj lbl_81642DC8

# .data:0xCD | 0x81642DDD | size: 0x13
.obj lbl_81642DDD, global
	.string "WWWSurfaceMouseEvt"
.endobj lbl_81642DDD

# .data:0xE0 | 0x81642DF0 | size: 0x13
.obj lbl_81642DF0, global
	.string "WWWSurfaceWheelEvt"
.endobj lbl_81642DF0

# .data:0xF3 | 0x81642E03 | size: 0x16
.obj lbl_81642E03, global
	.string "WWWSurfaceKeyboardEvt"
.endobj lbl_81642E03

# .data:0x109 | 0x81642E19 | size: 0x12
.obj lbl_81642E19, global
	.string "WWWSurfaceAddFont"
.endobj lbl_81642E19

# .data:0x11B | 0x81642E2B | size: 0x11
.obj lbl_81642E2B, global
	.string "WWWCreateBrowser"
.endobj lbl_81642E2B

# .data:0x12C | 0x81642E3C | size: 0x14
.obj lbl_81642E3C, global
	.string "WWWTerminateBrowser"
.endobj lbl_81642E3C

# .data:0x140 | 0x81642E50 | size: 0xC
.obj lbl_81642E50, global
	.string "WWWRunSlice"
.endobj lbl_81642E50

# .data:0x14C | 0x81642E5C | size: 0x17
.obj lbl_81642E5C, global
	.string "WWWCreateBrowserWindow"
.endobj lbl_81642E5C

# .data:0x163 | 0x81642E73 | size: 0x16
.obj lbl_81642E73, global
	.string "WWWCloseBrowserWindow"
.endobj lbl_81642E73

# .data:0x179 | 0x81642E89 | size: 0x1F
.obj lbl_81642E89, global
	.string "WWWSetBrowserWindowTransparent"
.endobj lbl_81642E89

# .data:0x198 | 0x81642EA8 | size: 0x18
.obj lbl_81642EA8, global
	.string "WWWGetBrowserWindowRect"
.endobj lbl_81642EA8

# .data:0x1B0 | 0x81642EC0 | size: 0x18
.obj lbl_81642EC0, global
	.string "WWWSetBrowserWindowRect"
.endobj lbl_81642EC0

# .data:0x1C8 | 0x81642ED8 | size: 0x16
.obj lbl_81642ED8, global
	.string "WWWRaiseBrowserWindow"
.endobj lbl_81642ED8

# .data:0x1DE | 0x81642EEE | size: 0x16
.obj lbl_81642EEE, global
	.string "WWWLowerBrowserWindow"
.endobj lbl_81642EEE

# .data:0x1F4 | 0x81642F04 | size: 0x15
.obj lbl_81642F04, global
	.string "WWWShowBrowserWindow"
.endobj lbl_81642F04

# .data:0x209 | 0x81642F19 | size: 0x15
.obj lbl_81642F19, global
	.string "WWWHideBrowserWindow"
.endobj lbl_81642F19

# .data:0x21E | 0x81642F2E | size: 0xD
.obj lbl_81642F2E, global
	.string "WWWCommitIme"
.endobj lbl_81642F2E

# .data:0x22B | 0x81642F3B | size: 0xD
.obj lbl_81642F3B, global
	.string "WWWUpdateIme"
.endobj lbl_81642F3B

# .data:0x238 | 0x81642F48 | size: 0xB
.obj lbl_81642F48, global
	.string "WWWPostUrl"
.endobj lbl_81642F48

# .data:0x243 | 0x81642F53 | size: 0xB
.obj lbl_81642F53, global
	.string "WWWOpenUrl"
.endobj lbl_81642F53

# .data:0x24E | 0x81642F5E | size: 0x13
.obj lbl_81642F5E, global
	.string "WWWGetHistoryCount"
.endobj lbl_81642F5E

# .data:0x261 | 0x81642F71 | size: 0xC
.obj lbl_81642F71, global
	.string "WWWNextPage"
.endobj lbl_81642F71

# .data:0x26D | 0x81642F7D | size: 0xC
.obj lbl_81642F7D, global
	.string "WWWPrevPage"
.endobj lbl_81642F7D

# .data:0x279 | 0x81642F89 | size: 0x11
.obj lbl_81642F89, global
	.string "WWWMoveInHistory"
.endobj lbl_81642F89

# .data:0x28A | 0x81642F9A | size: 0xA
.obj lbl_81642F9A, global
	.string "WWWReload"
.endobj lbl_81642F9A

# .data:0x294 | 0x81642FA4 | size: 0xA
.obj lbl_81642FA4, global
	.string "WWWReflow"
.endobj lbl_81642FA4

# .data:0x29E | 0x81642FAE | size: 0xA
.obj lbl_81642FAE, global
	.string "WWWSearch"
.endobj lbl_81642FAE

# .data:0x2A8 | 0x81642FB8 | size: 0xF
.obj lbl_81642FB8, global
	.string "WWWResetSearch"
.endobj lbl_81642FB8

# .data:0x2B7 | 0x81642FC7 | size: 0xC
.obj lbl_81642FC7, global
	.string "WWWSetFocus"
.endobj lbl_81642FC7

# .data:0x2C3 | 0x81642FD3 | size: 0xD
.obj lbl_81642FD3, global
	.string "WWWLoseFocus"
.endobj lbl_81642FD3

# .data:0x2D0 | 0x81642FE0 | size: 0xB
.obj lbl_81642FE0, global
	.string "WWWHistory"
.endobj lbl_81642FE0

# .data:0x2DB | 0x81642FEB | size: 0x10
.obj lbl_81642FEB, global
	.string "WWWClearHistory"
.endobj lbl_81642FEB

# .data:0x2EB | 0x81642FFB | size: 0xF
.obj lbl_81642FFB, global
	.string "WWWGetTrueZoom"
.endobj lbl_81642FFB

# .data:0x2FA | 0x8164300A | size: 0xF
.obj lbl_8164300A, global
	.string "WWWSetTrueZoom"
.endobj lbl_8164300A

# .data:0x309 | 0x81643019 | size: 0xB
.obj lbl_81643019, global
	.string "WWWGetZoom"
.endobj lbl_81643019

# .data:0x314 | 0x81643024 | size: 0xB
.obj lbl_81643024, global
	.string "WWWSetZoom"
.endobj lbl_81643024

# .data:0x31F | 0x8164302F | size: 0x13
.obj lbl_8164302F, global
	.string "WWWGetSecurityMode"
.endobj lbl_8164302F

# .data:0x332 | 0x81643042 | size: 0xD
.obj lbl_81643042, global
	.string "WWWGetScroll"
.endobj lbl_81643042

# .data:0x33F | 0x8164304F | size: 0xD
.obj lbl_8164304F, global
	.string "WWWSetScroll"
.endobj lbl_8164304F

# .data:0x34C | 0x8164305C | size: 0x14
.obj lbl_8164305C, global
	.string "WWWSetRenderingMode"
.endobj lbl_8164305C

# .data:0x360 | 0x81643070 | size: 0x14
.obj lbl_81643070, global
	.string "WWWGetRenderingMode"
.endobj lbl_81643070

# .data:0x374 | 0x81643084 | size: 0x10
.obj lbl_81643084, global
	.string "WWWSetImageMode"
.endobj lbl_81643084

# .data:0x384 | 0x81643094 | size: 0x1C
.obj lbl_81643094, global
	.string "WWWCreateCertificateManager"
.endobj lbl_81643094

# .data:0x3A0 | 0x816430B0 | size: 0x1B
.obj lbl_816430B0, global
	.string "WWWCloseCertificateManager"
.endobj lbl_816430B0

# .data:0x3BB | 0x816430CB | size: 0x1B
.obj lbl_816430CB, global
	.string "WWWGetNumberOfCertificates"
.endobj lbl_816430CB

# .data:0x3D6 | 0x816430E6 | size: 0x17
.obj lbl_816430E6, global
	.string "WWWSetLanguageEncoding"
.endobj lbl_816430E6

# .data:0x3ED | 0x816430FD | size: 0x13
.obj lbl_816430FD, global
	.string "WWWGetDocumentIcon"
.endobj lbl_816430FD

# .data:0x400 | 0x81643110 | size: 0x16
.obj lbl_81643110, global
	.string "WWWGetDocumentIconUrl"
.endobj lbl_81643110

# .data:0x416 | 0x81643126 | size: 0x10
.obj lbl_81643126, global
	.string "WWWClearCookies"
.endobj lbl_81643126

# .data:0x426 | 0x81643136 | size: 0x13
.obj lbl_81643136, global
	.string "WWWGetDocumentSize"
.endobj lbl_81643136

# .data:0x439 | 0x81643149 | size: 0xE
.obj lbl_81643149, global
	.string "WWWSetIntPref"
.endobj lbl_81643149

# .data:0x447 | 0x81643157 | size: 0xE
.obj lbl_81643157, global
	.string "WWWGetIntPref"
.endobj lbl_81643157

# .data:0x455 | 0x81643165 | size: 0x11
.obj lbl_81643165, global
	.string "WWWSetStringPref"
.endobj lbl_81643165

# .data:0x466 | 0x81643176 | size: 0x11
.obj lbl_81643176, global
	.string "WWWGetStringPref"
.endobj lbl_81643176

# .data:0x477 | 0x81643187 | size: 0xF
.obj lbl_81643187, global
	.string "WWWCommitPrefs"
.endobj lbl_81643187

# .data:0x486 | 0x81643196 | size: 0x12
.obj lbl_81643196, global
	.string "WWWSetFocusColors"
.endobj lbl_81643196

# .data:0x498 | 0x816431A8 | size: 0x16
.obj lbl_816431A8, global
	.string "WWWSetScrollbarColors"
.endobj lbl_816431A8

# .data:0x4AE | 0x816431BE | size: 0x14
.obj lbl_816431BE, global
	.string "WWWSetScrollbarSize"
.endobj lbl_816431BE

# .data:0x4C2 | 0x816431D2 | size: 0x13
.obj lbl_816431D2, global
	.string "WWWSetWidgetColors"
.endobj lbl_816431D2

# .data:0x4D5 | 0x816431E5 | size: 0x1B
.obj lbl_816431E5, global
	.string "WWWSetDisabledWidgetColors"
.endobj lbl_816431E5

# .data:0x4F0 | 0x81643200 | size: 0x19
.obj lbl_81643200, global
	.string "WWWSetButtonWidgetColors"
.endobj lbl_81643200

# .data:0x509 | 0x81643219 | size: 0x18
.obj lbl_81643219, global
	.string "WWWSetUastringExtension"
.endobj lbl_81643219

# .data:0x521 | 0x81643231 | size: 0x1B
.obj lbl_81643231, global
	.string "WWWMarkNextItemInDirection"
.endobj lbl_81643231

# .data:0x53C | 0x8164324C | size: 0x13
.obj lbl_8164324C, global
	.string "WWWResetNavigation"
.endobj lbl_8164324C

# .data:0x54F | 0x8164325F | size: 0x12
.obj lbl_8164325F, global
	.string "WWWClearHighlight"
.endobj lbl_8164325F

# .data:0x561 | 0x81643271 | size: 0x10
.obj lbl_81643271, global
	.string "WWWSetHighlight"
.endobj lbl_81643271

# .data:0x571 | 0x81643281 | size: 0x15
.obj lbl_81643281, global
	.string "WWWGetActiveLinkType"
.endobj lbl_81643281

# .data:0x586 | 0x81643296 | size: 0x21
.obj lbl_81643296, global
	.string "WWWGetBrowserAllocationFunctions"
.endobj lbl_81643296

# .data:0x5A7 | 0x816432B7 | size: 0x26
.obj lbl_816432B7, global
	.string "WWWShutdownBrowserAllocationFunctions"
.endobj lbl_816432B7

# .data:0x5CD | 0x816432DD | size: 0x1A
.obj lbl_816432DD, global
	.string "WWWSetAllocationFunctions"
.endobj lbl_816432DD

# .data:0x5E7 | 0x816432F7 | size: 0x15
.obj lbl_816432F7, global
	.string "WWWHTTPCreateHttpLib"
.endobj lbl_816432F7

# .data:0x5FC | 0x8164330C | size: 0x18
.obj lbl_8164330C, global
	.string "WWWHTTPTerminateHttpLib"
.endobj lbl_8164330C

# .data:0x614 | 0x81643324 | size: 0x17
.obj lbl_81643324, global
	.string "WWWHTTPSessionRunSlice"
.endobj lbl_81643324

# .data:0x62B | 0x8164333B | size: 0x13
.obj lbl_8164333B, global
	.string "WWWHTTPInitSession"
.endobj lbl_8164333B

# .data:0x63E | 0x8164334E | size: 0x15
.obj lbl_8164334E, global
	.string "WWWHTTPDeleteSession"
.endobj lbl_8164334E

# .data:0x653 | 0x81643363 | size: 0x18
.obj lbl_81643363, global
	.string "WWWHTTPSetSessionHeader"
.endobj lbl_81643363

# .data:0x66B | 0x8164337B | size: 0x1B
.obj lbl_8164337B, global
	.string "WWWHTTPRemoveSessionHeader"
.endobj lbl_8164337B

# .data:0x686 | 0x81643396 | size: 0x1F
.obj lbl_81643396, global
	.string "WWWHTTPRemoveAllSessionHeaders"
.endobj lbl_81643396

# .data:0x6A5 | 0x816433B5 | size: 0x15
.obj lbl_816433B5, global
	.string "WWWHTTPCreateRequest"
.endobj lbl_816433B5

# .data:0x6BA | 0x816433CA | size: 0x15
.obj lbl_816433CA, global
	.string "WWWHTTPDeleteRequest"
.endobj lbl_816433CA

# .data:0x6CF | 0x816433DF | size: 0x18
.obj lbl_816433DF, global
	.string "WWWHTTPSetRequestHeader"
.endobj lbl_816433DF

# .data:0x6E7 | 0x816433F7 | size: 0x18
.obj lbl_816433F7, global
	.string "WWWHTTPGetRequestHeader"
.endobj lbl_816433F7

# .data:0x6FF | 0x8164340F | size: 0x1B
.obj lbl_8164340F, global
	.string "WWWHTTPRemoveRequestHeader"
.endobj lbl_8164340F

# .data:0x71A | 0x8164342A | size: 0x1F
.obj lbl_8164342A, global
	.string "WWWHTTPRemoveAllRequestHeaders"
.endobj lbl_8164342A

# .data:0x739 | 0x81643449 | size: 0x19
.obj lbl_81643449, global
	.string "WWWHTTPGetResponseHeader"
.endobj lbl_81643449

# .data:0x752 | 0x81643462 | size: 0x1A
.obj lbl_81643462, global
	.string "WWWHTTPGetResponseHeaders"
.endobj lbl_81643462

# .data:0x76C | 0x8164347C | size: 0xD
.obj lbl_8164347C, global
	.string "WWWHTTPIssue"
.endobj lbl_8164347C

# .data:0x779 | 0x81643489 | size: 0x18
.obj lbl_81643489, global
	.string "WWWHTTPNbActiveRequests"
.endobj lbl_81643489

# .data:0x791 | 0x816434A1 | size: 0x14
.obj lbl_816434A1, global
	.string "WWWHTTPPostBodyData"
.endobj lbl_816434A1

# .data:0x7A5 | 0x816434B5 | size: 0x1A
.obj lbl_816434B5, global
	.string "WWWHTTPSetAuthCredentials"
.endobj lbl_816434B5

# .data:0x7BF | 0x816434CF | size: 0x1D
.obj lbl_816434CF, global
	.string "WWWHTTPRemoveAuthCredentials"
.endobj lbl_816434CF

# .data:0x7DC | 0x816434EC | size: 0x10
.obj lbl_816434EC, global
	.string "WWWHTTPSetProxy"
.endobj lbl_816434EC

# .data:0x7EC | 0x816434FC | size: 0x13
.obj lbl_816434FC, global
	.string "WWWHTTPRemoveProxy"
.endobj lbl_816434FC

# .data:0x7FF | 0x8164350F | size: 0x12
.obj lbl_8164350F, global
	.string "WWWHTTPEndLoading"
.endobj lbl_8164350F

# .data:0x811 | 0x81643521 | size: 0xF
.obj lbl_81643521, global
	.string "WWWAddJSPlugin"
.endobj lbl_81643521

# .data:0x820 | 0x81643530 | size: 0xF
.obj lbl_81643530, global
	.string "WWWAddNSPlugin"
.endobj lbl_81643530

# .data:0x82F | 0x8164353F | size: 0x11
.obj lbl_8164353F, global
	.string "WWWProtocolWrite"
.endobj lbl_8164353F

# .data:0x840 | 0x81643550 | size: 0x17
.obj lbl_81643550, global
	.string "WWWProtocolSetMimeType"
.endobj lbl_81643550

# .data:0x857 | 0x81643567 | size: 0x14
.obj lbl_81643567, global
	.string "WWWProtocolFinished"
.endobj lbl_81643567

# .data:0x86B | 0x8164357B | size: 0x12
.obj lbl_8164357B, global
	.string "WWWProtocolFailed"
.endobj lbl_8164357B

# .data:0x87D | 0x8164358D | size: 0xF
.obj lbl_8164358D, global
	.string "WWWAddProtocol"
.endobj lbl_8164358D

# .data:0x88C | 0x8164359C | size: 0x380
.obj lbl_8164359C, global
	.4byte lbl_81642D10
	.4byte WWWSurfaceInit
	.4byte lbl_81642D1F
	.4byte WWWSurfaceNewScreen
	.4byte lbl_81642D33
	.4byte WWWSurfaceDeleteScreen
	.4byte lbl_81642D4A
	.4byte WWWSurfaceResize
	.4byte lbl_81642D5B
	.4byte WWWSurfaceShutdown
	.4byte lbl_81642D6E
	.4byte WWWSurfaceSetFlushCallback
	.4byte lbl_81642D89
	.4byte WWWSurfaceInvalidate
	.4byte lbl_81642D9E
	.4byte WWWSurfaceUpdateScreen
	.4byte lbl_81642DB5
	.4byte WWWSurfaceLockArea
	.4byte lbl_81642DC8
	.4byte WWWSurfaceUnlockArea
	.4byte lbl_81642DDD
	.4byte WWWSurfaceMouseEvt
	.4byte lbl_81642DF0
	.4byte WWWSurfaceWheelEvt
	.4byte lbl_81642E03
	.4byte WWWSurfaceKeyboardEvt
	.4byte lbl_81642E19
	.4byte WWWSurfaceAddFont
	.4byte lbl_81642E2B
	.4byte WWWCreateBrowser
	.4byte lbl_81642E3C
	.4byte WWWTerminateBrowser
	.4byte lbl_81642E50
	.4byte WWWRunSlice
	.4byte lbl_81642E5C
	.4byte WWWCreateBrowserWindow
	.4byte lbl_81642E73
	.4byte WWWCloseBrowserWindow
	.4byte lbl_81642E89
	.4byte WWWSetBrowserWindowTransparent
	.4byte lbl_81642EA8
	.4byte WWWGetBrowserWindowRect
	.4byte lbl_81642EC0
	.4byte WWWSetBrowserWindowRect
	.4byte lbl_81642ED8
	.4byte WWWRaiseBrowserWindow
	.4byte lbl_81642EEE
	.4byte WWWLowerBrowserWindow
	.4byte lbl_81642F04
	.4byte WWWShowBrowserWindow
	.4byte lbl_81642F19
	.4byte WWWHideBrowserWindow
	.4byte lbl_81642F2E
	.4byte WWWCommitIme
	.4byte lbl_81642F3B
	.4byte WWWUpdateIme
	.4byte lbl_81642F48
	.4byte WWWPostUrl
	.4byte lbl_81642F53
	.4byte WWWOpenUrl
	.4byte lbl_81642F5E
	.4byte WWWGetHistoryCount
	.4byte lbl_81642F71
	.4byte WWWNextPage
	.4byte lbl_81642F7D
	.4byte WWWPrevPage
	.4byte lbl_81642F89
	.4byte WWWMoveInHistory
	.4byte lbl_816962F0
	.4byte WWWStop
	.4byte lbl_81642F9A
	.4byte WWWReload
	.4byte lbl_81642FA4
	.4byte WWWReflow
	.4byte lbl_81642FAE
	.4byte WWWSearch
	.4byte lbl_81642FB8
	.4byte WWWResetSearch
	.4byte lbl_81642FC7
	.4byte WWWSetFocus
	.4byte lbl_81642FD3
	.4byte WWWLoseFocus
	.4byte lbl_81642FE0
	.4byte WWWHistory
	.4byte lbl_81642FEB
	.4byte WWWClearHistory
	.4byte lbl_81642FFB
	.4byte WWWGetTrueZoom
	.4byte lbl_8164300A
	.4byte WWWSetTrueZoom
	.4byte lbl_81643019
	.4byte WWWGetZoom
	.4byte lbl_81643024
	.4byte WWWSetZoom
	.4byte lbl_8164302F
	.4byte WWWGetSecurityMode
	.4byte lbl_81643042
	.4byte WWWGetScroll
	.4byte lbl_8164304F
	.4byte WWWSetScroll
	.4byte lbl_8164305C
	.4byte WWWSetRenderingMode
	.4byte lbl_81643070
	.4byte WWWGetRenderingMode
	.4byte lbl_81643084
	.4byte WWWSetImageMode
	.4byte lbl_81643094
	.4byte WWWCreateCertificateManager
	.4byte lbl_816430B0
	.4byte WWWCloseCertificateManager
	.4byte lbl_816430CB
	.4byte WWWGetNumberOfCertificates
	.4byte lbl_816430E6
	.4byte WWWSetLanguageEncoding
	.4byte lbl_816430FD
	.4byte WWWGetDocumentIcon
	.4byte lbl_81643110
	.4byte WWWGetDocumentIconUrl
	.4byte lbl_81643126
	.4byte WWWClearCookies
	.4byte lbl_81643136
	.4byte WWWGetDocumentSize
	.4byte lbl_81643149
	.4byte WWWSetIntPref
	.4byte lbl_81643157
	.4byte WWWGetIntPref
	.4byte lbl_81643165
	.4byte WWWSetStringPref
	.4byte lbl_81643176
	.4byte WWWGetStringPref
	.4byte lbl_81643187
	.4byte WWWCommitPrefs
	.4byte lbl_81643196
	.4byte WWWSetFocusColors
	.4byte lbl_816431A8
	.4byte WWWSetScrollbarColors
	.4byte lbl_816431BE
	.4byte WWWSetScrollbarSize
	.4byte lbl_816431D2
	.4byte WWWSetWidgetColors
	.4byte lbl_816431E5
	.4byte WWWSetDisabledWidgetColors
	.4byte lbl_81643200
	.4byte WWWSetButtonWidgetColors
	.4byte lbl_81643219
	.4byte WWWSetUastringExtension
	.4byte lbl_81643231
	.4byte WWWMarkNextItemInDirection
	.4byte lbl_8164324C
	.4byte WWWResetNavigation
	.4byte lbl_8164325F
	.4byte WWWClearHighlight
	.4byte lbl_81643271
	.4byte WWWSetHighlight
	.4byte lbl_81643281
	.4byte WWWGetActiveLinkType
	.4byte lbl_81643296
	.4byte WWWGetBrowserAllocationFunctions
	.4byte lbl_816432B7
	.4byte WWWShutdownBrowserAllocationFunctions
	.4byte lbl_816432DD
	.4byte WWWSetAllocationFunctions
	.4byte lbl_816432F7
	.4byte WWWHTTPCreateHttpLib
	.4byte lbl_8164330C
	.4byte WWWHTTPTerminateHttpLib
	.4byte lbl_81643324
	.4byte WWWHTTPSessionRunSlice
	.4byte lbl_8164333B
	.4byte WWWHTTPInitSession
	.4byte lbl_8164334E
	.4byte WWWHTTPDeleteSession
	.4byte lbl_81643363
	.4byte WWWHTTPSetSessionHeader
	.4byte lbl_8164337B
	.4byte WWWHTTPRemoveSessionHeader
	.4byte lbl_81643396
	.4byte WWWHTTPRemoveAllSessionHeaders
	.4byte lbl_816433B5
	.4byte WWWHTTPCreateRequest
	.4byte lbl_816433CA
	.4byte WWWHTTPDeleteRequest
	.4byte lbl_816433DF
	.4byte WWWHTTPSetRequestHeader
	.4byte lbl_816433F7
	.4byte WWWHTTPGetRequestHeader
	.4byte lbl_8164340F
	.4byte WWWHTTPRemoveRequestHeader
	.4byte lbl_8164342A
	.4byte WWWHTTPRemoveAllRequestHeaders
	.4byte lbl_81643449
	.4byte WWWHTTPGetResponseHeader
	.4byte lbl_81643462
	.4byte WWWHTTPGetResponseHeaders
	.4byte lbl_8164347C
	.4byte WWWHTTPIssue
	.4byte lbl_81643489
	.4byte WWWHTTPNbActiveRequests
	.4byte lbl_816434A1
	.4byte WWWHTTPPostBodyData
	.4byte lbl_816434B5
	.4byte WWWHTTPSetAuthCredentials
	.4byte lbl_816434CF
	.4byte WWWHTTPRemoveAuthCredentials
	.4byte lbl_816434EC
	.4byte WWWHTTPSetProxy
	.4byte lbl_816434FC
	.4byte WWWHTTPRemoveProxy
	.4byte lbl_8164350F
	.4byte WWWHTTPEndLoading
	.4byte lbl_81643521
	.4byte WWWAddJSPlugin
	.4byte lbl_81643530
	.4byte WWWAddNSPlugin
	.4byte lbl_8164353F
	.4byte WWWProtocolWrite
	.4byte lbl_81643550
	.4byte WWWProtocolSetMimeType
	.4byte lbl_81643567
	.4byte WWWProtocolFinished
	.4byte lbl_8164357B
	.4byte WWWProtocolFailed
	.4byte lbl_8164358D
	.4byte WWWAddProtocol
.endobj lbl_8164359C

# .data:0xC0C | 0x8164391C | size: 0x60
.obj lbl_8164391C, global
	.4byte 0x0A457272
	.4byte 0x6F723A20
	.4byte 0x63616C6C
	.4byte 0x20777777
	.4byte 0x20756E6C
	.4byte 0x696E6B65
	.4byte 0x64206675
	.4byte 0x6E637469
	.4byte 0x6F6E2E0A
	.4byte 0x005B5469
	.4byte 0x636B5469
	.4byte 0x6D65725D
	.4byte 0x005B5761
	.4byte 0x726E696E
	.4byte 0x675D005B
	.4byte 0x5B457665
	.4byte 0x6E745D5D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_8164391C

# .data:0xC6C | 0x8164397C | size: 0x10
.obj lbl_8164397C, global
	.string "DirectUniversal"
.endobj lbl_8164397C

# .data:0xC7C | 0x8164398C | size: 0x20
.obj WWW_FONT_FILE_DATA_TABLE__, global
	.4byte lbl_8164397C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj WWW_FONT_FILE_DATA_TABLE__

# .data:0xC9C | 0x816439AC | size: 0x5D
.obj lbl_816439AC, global
	.4byte 0x202B2B2B
	.4byte 0x2B2B2B2B
	.4byte 0x2B2B2B2B
	.4byte 0x2B2B2B2B
	.4byte 0x2B2B2B2B
	.4byte 0x2B2B2B2B
	.4byte 0x2B2B2B2B
	.4byte 0x2B2B2B2B
	.4byte 0x2B2B2B0A
	.4byte 0x00202B2B
	.4byte 0x2B2B204D
	.4byte 0x454D3120
	.4byte 0x48656170
	.4byte 0x20467265
	.4byte 0x653A2025
	.4byte 0x3038780A
	.4byte 0x00202B2B
	.4byte 0x2B2B204D
	.4byte 0x454D3220
	.4byte 0x48656170
	.4byte 0x20467265
	.4byte 0x653A2025
	.4byte 0x3038780A
	.byte 0x00
.endobj lbl_816439AC

# .data:0xCF9 | 0x81643A09 | size: 0x6D
.obj lbl_81643A09, global
	.4byte 0x202B2B2B
	.4byte 0x2B204C65
	.4byte 0x61204865
	.4byte 0x61702046
	.4byte 0x7265653A
	.4byte 0x20253038
	.4byte 0x780A0052
	.4byte 0x534F4C69
	.4byte 0x6E6B4C69
	.4byte 0x7374006D
	.4byte 0x6F64756C
	.4byte 0x65442773
	.4byte 0x20496D70
	.4byte 0x6F727453
	.4byte 0x796D626F
	.4byte 0x6C206973
	.4byte 0x20726573
	.4byte 0x6F6C7665
	.4byte 0x6420616C
	.4byte 0x6C2E0A00
	.4byte 0x52534F5F
	.4byte 0x70726F6C
	.4byte 0x6F670052
	.4byte 0x65736F6C
	.4byte 0x76654D6F
	.4byte 0x64756C65
	.4byte 0x5F777777
	.byte 0x00
.endobj lbl_81643A09

# .data:0xD66 | 0x81643A76 | size: 0x2A
.obj lbl_81643A76, global
	.4byte 0x7777775F
	.4byte 0x73757266
	.4byte 0x6163653A
	.4byte 0x204F7065
	.4byte 0x72615468
	.4byte 0x72656164
	.4byte 0x53746163
	.4byte 0x6B3A2070
	.4byte 0x74723A25
	.4byte 0x700A0000
	.2byte 0x0000
.endobj lbl_81643A76

# .data:0xD90 | 0x81643AA0 | size: 0x18
# ext_ead::www::SurfaceManager::__vtable
.obj __vt__Q37ext_ead3www14SurfaceManager, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q37ext_ead3www14SurfaceManagerFv
	.4byte 0x203A2025
	.4byte 0x645B6D73
	.4byte 0x5D0A0000
.endobj __vt__Q37ext_ead3www14SurfaceManager

# 0x816962F0..0x816962F8 | size: 0x8
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816962F0 | size: 0x8
.obj lbl_816962F0, global
	.string "WWWStop"
.endobj lbl_816962F0

# 0x81698960..0x81698978 | size: 0x18
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698960 | size: 0x4
# ext_ead::www::Heap::hMem1
.obj hMem1__Q37ext_ead3www4Heap, global
	.skip 0x4
.endobj hMem1__Q37ext_ead3www4Heap

# .sbss:0x4 | 0x81698964 | size: 0x4
# ext_ead::www::Heap::hMem2
.obj hMem2__Q37ext_ead3www4Heap, global
	.skip 0x4
.endobj hMem2__Q37ext_ead3www4Heap

# .sbss:0x8 | 0x81698968 | size: 0x4
# ext_ead::www::Heap::wwwalloc_
.obj wwwalloc___Q37ext_ead3www4Heap, global
	.skip 0x4
.endobj wwwalloc___Q37ext_ead3www4Heap

# .sbss:0xC | 0x8169896C | size: 0x4
# ext_ead::www::Heap::wwwfree_
.obj wwwfree___Q37ext_ead3www4Heap, global
	.skip 0x4
.endobj wwwfree___Q37ext_ead3www4Heap

# .sbss:0x10 | 0x81698970 | size: 0x4
# ext_ead::www::Heap::wwwavail_
.obj wwwavail___Q37ext_ead3www4Heap, global
	.skip 0x4
.endobj wwwavail___Q37ext_ead3www4Heap

# .sbss:0x14 | 0x81698974 | size: 0x4
# ext_ead::www::SurfaceManager::Instance_
.obj Instance___Q37ext_ead3www14SurfaceManager, global
	.skip 0x4
.endobj Instance___Q37ext_ead3www14SurfaceManager
