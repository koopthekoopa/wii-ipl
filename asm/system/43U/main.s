.include "macros.inc"
.file "main.cpp"

# 0x81360764 - 0x813607A0
.text
.balign 4

.fn mainmenu, global
/* 81360764 0002EB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81360768 0002EB68  7C 08 02 A6 */	mflr r0
/* 8136076C 0002EB6C  38 60 00 00 */	li r3, 0x0
/* 81360770 0002EB70  38 80 00 00 */	li r4, 0x0
/* 81360774 0002EB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 81360778 0002EB78  4B FD 38 95 */	bl init__Q23ipl6SystemFiPPc
/* 8136077C 0002EB7C  4B FD 43 AD */	bl run__Q23ipl6SystemFv
/* 81360780 0002EB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81360784 0002EB84  7C 08 03 A6 */	mtlr r0
/* 81360788 0002EB88  38 21 00 10 */	addi r1, r1, 0x10
/* 8136078C 0002EB8C  4E 80 00 20 */	blr
.endfn mainmenu

.fn NANDCheck, global
/* 81360790 0002EB90  38 00 00 00 */	li r0, 0x0
/* 81360794 0002EB94  38 60 00 00 */	li r3, 0x0
/* 81360798 0002EB98  90 05 00 00 */	stw r0, 0x0(r5)
/* 8136079C 0002EB9C  4E 80 00 20 */	blr
.endfn NANDCheck
