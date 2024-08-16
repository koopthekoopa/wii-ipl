.include "macros.inc"
.file "BringUp.c"

# 0x813803F0..0x8138049C | size: 0xAC
.text
.balign 4

# .text:0x0 | 0x813803F0 | size: 0x34
.fn enableLegacyDI, global
/* 813803F0 0004E7F0  3C 60 CD 80 */	lis r3, 0xcd80
/* 813803F4 0004E7F4  80 03 01 80 */	lwz r0, 0x180(r3)
/* 813803F8 0004E7F8  54 00 06 B0 */	rlwinm r0, r0, 0, 26, 24
/* 813803FC 0004E7FC  60 00 00 40 */	ori r0, r0, 0x40
/* 81380400 0004E800  90 03 01 80 */	stw r0, 0x180(r3)
/* 81380404 0004E804  80 03 00 70 */	lwz r0, 0x70(r3)
/* 81380408 0004E808  54 00 07 34 */	rlwinm r0, r0, 0, 28, 26
/* 8138040C 0004E80C  60 00 00 10 */	ori r0, r0, 0x10
/* 81380410 0004E810  90 03 00 70 */	stw r0, 0x70(r3)
/* 81380414 0004E814  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 81380418 0004E818  54 00 03 98 */	rlwinm r0, r0, 0, 14, 12
/* 8138041C 0004E81C  90 03 00 3C */	stw r0, 0x3c(r3)
/* 81380420 0004E820  4E 80 00 20 */	blr
.endfn enableLegacyDI

# .text:0x34 | 0x81380424 | size: 0x1C
.fn setVI1Cfg, global
/* 81380424 0004E824  3C 80 CD 80 */	lis r4, 0xcd80
/* 81380428 0004E828  54 60 88 1C */	slwi r0, r3, 17
/* 8138042C 0004E82C  80 64 00 18 */	lwz r3, 0x18(r4)
/* 81380430 0004E830  54 63 03 DA */	rlwinm r3, r3, 0, 15, 13
/* 81380434 0004E834  7C 60 03 78 */	or r0, r3, r0
/* 81380438 0004E838  90 04 00 18 */	stw r0, 0x18(r4)
/* 8138043C 0004E83C  4E 80 00 20 */	blr
.endfn setVI1Cfg

# .text:0x50 | 0x81380440 | size: 0x1C
.fn setVISolidClrYCol, global
/* 81380440 0004E840  3C 80 CD 80 */	lis r4, 0xcd80
/* 81380444 0004E844  54 60 40 2E */	slwi r0, r3, 8
/* 81380448 0004E848  80 64 00 24 */	lwz r3, 0x24(r4)
/* 8138044C 0004E84C  54 63 06 1E */	rlwinm r3, r3, 0, 24, 15
/* 81380450 0004E850  7C 60 03 78 */	or r0, r3, r0
/* 81380454 0004E854  90 04 00 24 */	stw r0, 0x24(r4)
/* 81380458 0004E858  4E 80 00 20 */	blr
.endfn setVISolidClrYCol

# .text:0x6C | 0x8138045C | size: 0x10
.fn getVISolidClrYCol, global
/* 8138045C 0004E85C  3C 60 CD 80 */	lis r3, 0xcd80
/* 81380460 0004E860  80 03 00 24 */	lwz r0, 0x24(r3)
/* 81380464 0004E864  54 03 C6 3E */	extrwi r3, r0, 8, 16
/* 81380468 0004E868  4E 80 00 20 */	blr
.endfn getVISolidClrYCol

# .text:0x7C | 0x8138046C | size: 0x1C
.fn GPIOPPCInit, global
/* 8138046C 0004E86C  3C 80 00 01 */	lis r4, 0x1
/* 81380470 0004E870  3C 60 CD 80 */	lis r3, 0xcd80
/* 81380474 0004E874  38 04 C3 20 */	subi r0, r4, 0x3ce0
/* 81380478 0004E878  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8138047C 0004E87C  38 04 C0 00 */	subi r0, r4, 0x4000
/* 81380480 0004E880  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 81380484 0004E884  4E 80 00 20 */	blr
.endfn GPIOPPCInit

# .text:0x98 | 0x81380488 | size: 0x14
.fn EjectDisc, global
/* 81380488 0004E888  3C 60 CD 80 */	lis r3, 0xcd80
/* 8138048C 0004E88C  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 81380490 0004E890  60 00 02 00 */	ori r0, r0, 0x200
/* 81380494 0004E894  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 81380498 0004E898  4E 80 00 20 */	blr
.endfn EjectDisc
