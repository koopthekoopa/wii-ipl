.include "macros.inc"
.file "iplCSImage.cpp"

# 0x8145EF88..0x8145EFD4 | size: 0x4C
.text
.balign 4

# .text:0x0 | 0x8145EF88 | size: 0x1C
# ipl::cs::iplimage::allocator(CHANSVm*, unsigned long)
.fn allocator__Q33ipl2cs8iplimageFP7CHANSVmUl, global
/* 8145EF88 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 8145EF8C | 7C 83 23 78 */	mr r3, r4
/* 8145EF90 | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 8145EF94 | 38 A0 00 20 */	li r5, 0x20
/* 8145EF98 | 80 86 00 88 */	lwz r4, 0x88(r6)
/* 8145EF9C | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8145EFA0 | 48 19 91 34 */	b __nwa__FUlPQ23EGG4Heapi
.endfn allocator__Q33ipl2cs8iplimageFP7CHANSVmUl

# .text:0x1C | 0x8145EFA4 | size: 0x30
# ipl::cs::iplimage::init(CHANSVm*)
.fn init__Q33ipl2cs8iplimageFP7CHANSVm, global
/* 8145EFA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8145EFA8 | 7C 08 02 A6 */	mflr r0
/* 8145EFAC | 3C 60 81 46 */	lis r3, allocator__Q33ipl2cs8iplimageFP7CHANSVmUl@ha
/* 8145EFB0 | 38 80 00 00 */	li r4, 0x0
/* 8145EFB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8145EFB8 | 38 63 EF 88 */	addi r3, r3, allocator__Q33ipl2cs8iplimageFP7CHANSVmUl@l
/* 8145EFBC | 4B FF 5B 29 */	bl CHANSVmImageRegisterAllocator
/* 8145EFC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8145EFC4 | 38 60 00 01 */	li r3, 0x1
/* 8145EFC8 | 7C 08 03 A6 */	mtlr r0
/* 8145EFCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 8145EFD0 | 4E 80 00 20 */	blr
.endfn init__Q33ipl2cs8iplimageFP7CHANSVm
