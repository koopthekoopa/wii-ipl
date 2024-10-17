.include "macros.inc"
.file "snd_SoundThread.cpp"

# 0x81106198..0x81108540 | size: 0x23A8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81106198 | size: 0x10
.obj lbl_81106198, global
	.skip 0x10
.endobj lbl_81106198

# .bss:0x10 | 0x811061A8 | size: 0x2398
.obj instance$4752, local
	.skip 0x2398
.endobj instance$4752

# 0x8150BE98..0x8150C290 | size: 0x3F8
.text
.balign 4

# .text:0x0 | 0x8150BE98 | size: 0x7C
# nw4r::snd::detail::SoundThread::GetInstance()
.fn GetInstance__Q44nw4r3snd6detail11SoundThreadFv, global
/* 8150BE98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150BE9C | 7C 08 02 A6 */	mflr r0
/* 8150BEA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150BEA4 | 88 0D AE E0 */	lbz r0, "@GUARD@instance$4752"@sda21(r0)
/* 8150BEA8 | 7C 00 07 75 */	extsb. r0, r0
/* 8150BEAC | 40 82 00 50 */	bne .L_8150BEFC
/* 8150BEB0 | 3C 60 81 10 */	lis r3, instance$4752@ha
/* 8150BEB4 | 3C 80 81 51 */	lis r4, __dt__Q44nw4r3snd6detail11SoundThreadFv@ha
/* 8150BEB8 | 38 63 61 A8 */	addi r3, r3, instance$4752@l
/* 8150BEBC | 38 00 00 00 */	li r0, 0x0
/* 8150BEC0 | 90 03 23 88 */	stw r0, 0x2388(r3)
/* 8150BEC4 | 38 C3 23 88 */	addi r6, r3, 0x2388
/* 8150BEC8 | 3C A0 81 10 */	lis r5, lbl_81106198@ha
/* 8150BECC | 38 84 BF 14 */	addi r4, r4, __dt__Q44nw4r3snd6detail11SoundThreadFv@l
/* 8150BED0 | 90 03 23 8C */	stw r0, 0x238c(r3)
/* 8150BED4 | 38 A5 61 98 */	addi r5, r5, lbl_81106198@l
/* 8150BED8 | 90 03 23 78 */	stw r0, 0x2378(r3)
/* 8150BEDC | 90 03 23 7C */	stw r0, 0x237c(r3)
/* 8150BEE0 | 90 03 23 84 */	stw r0, 0x2384(r3)
/* 8150BEE4 | 90 C3 23 88 */	stw r6, 0x2388(r3)
/* 8150BEE8 | 90 C3 23 8C */	stw r6, 0x238c(r3)
/* 8150BEEC | 98 03 23 94 */	stb r0, 0x2394(r3)
/* 8150BEF0 | 48 0E D0 F1 */	bl __register_global_object
/* 8150BEF4 | 38 00 00 01 */	li r0, 0x1
/* 8150BEF8 | 98 0D AE E0 */	stb r0, "@GUARD@instance$4752"@sda21(r0)
.L_8150BEFC:
/* 8150BEFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150BF00 | 3C 60 81 10 */	lis r3, instance$4752@ha
/* 8150BF04 | 38 63 61 A8 */	addi r3, r3, instance$4752@l
/* 8150BF08 | 7C 08 03 A6 */	mtlr r0
/* 8150BF0C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150BF10 | 4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail11SoundThreadFv

# .text:0x7C | 0x8150BF14 | size: 0x60
# nw4r::snd::detail::SoundThread::~SoundThread()
.fn __dt__Q44nw4r3snd6detail11SoundThreadFv, global
/* 8150BF14 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150BF18 | 7C 08 02 A6 */	mflr r0
/* 8150BF1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150BF20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150BF24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150BF28 | 7C 9F 23 78 */	mr r31, r4
/* 8150BF2C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150BF30 | 7C 7E 1B 78 */	mr r30, r3
/* 8150BF34 | 41 82 00 24 */	beq .L_8150BF58
/* 8150BF38 | 34 63 23 84 */	addic. r3, r3, 0x2384
/* 8150BF3C | 41 82 00 0C */	beq .L_8150BF48
/* 8150BF40 | 38 80 00 00 */	li r4, 0x0
/* 8150BF44 | 48 00 64 21 */	bl fn_81512364
.L_8150BF48:
/* 8150BF48 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150BF4C | 40 81 00 0C */	ble .L_8150BF58
/* 8150BF50 | 7F C3 F3 78 */	mr r3, r30
/* 8150BF54 | 48 0E C1 91 */	bl __dl__FPv
.L_8150BF58:
/* 8150BF58 | 7F C3 F3 78 */	mr r3, r30
/* 8150BF5C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150BF60 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150BF64 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150BF68 | 7C 08 03 A6 */	mtlr r0
/* 8150BF6C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150BF70 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail11SoundThreadFv

# .text:0xDC | 0x8150BF74 | size: 0x104
# nw4r::snd::detail::SoundThread::Create(long)
.fn Create__Q44nw4r3snd6detail11SoundThreadFl, global
/* 8150BF74 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150BF78 | 7C 08 02 A6 */	mflr r0
/* 8150BF7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150BF80 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150BF84 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150BF88 | 7C 9E 23 78 */	mr r30, r4
/* 8150BF8C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150BF90 | 7C 7D 1B 78 */	mr r29, r3
/* 8150BF94 | 88 03 23 94 */	lbz r0, 0x2394(r3)
/* 8150BF98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150BF9C | 41 82 00 0C */	beq .L_8150BFA8
/* 8150BFA0 | 38 60 00 01 */	li r3, 0x1
/* 8150BFA4 | 48 00 00 B8 */	b .L_8150C05C
.L_8150BFA8:
/* 8150BFA8 | 3B E0 00 01 */	li r31, 0x1
/* 8150BFAC | 9B E3 23 94 */	stb r31, 0x2394(r3)
/* 8150BFB0 | 38 63 23 18 */	addi r3, r3, 0x2318
/* 8150BFB4 | 48 02 7F 9D */	bl OSInitThreadQueue
/* 8150BFB8 | 38 7D 23 20 */	addi r3, r29, 0x2320
/* 8150BFBC | 48 02 5C 15 */	bl fn_81531BD0
/* 8150BFC0 | 88 0D AE E0 */	lbz r0, "@GUARD@instance$4752"@sda21(r0)
/* 8150BFC4 | 7C 00 07 75 */	extsb. r0, r0
/* 8150BFC8 | 40 82 00 4C */	bne .L_8150C014
/* 8150BFCC | 3C 60 81 10 */	lis r3, instance$4752@ha
/* 8150BFD0 | 3C 80 81 51 */	lis r4, __dt__Q44nw4r3snd6detail11SoundThreadFv@ha
/* 8150BFD4 | 38 63 61 A8 */	addi r3, r3, instance$4752@l
/* 8150BFD8 | 38 00 00 00 */	li r0, 0x0
/* 8150BFDC | 90 03 23 88 */	stw r0, 0x2388(r3)
/* 8150BFE0 | 38 C3 23 88 */	addi r6, r3, 0x2388
/* 8150BFE4 | 3C A0 81 10 */	lis r5, lbl_81106198@ha
/* 8150BFE8 | 38 84 BF 14 */	addi r4, r4, __dt__Q44nw4r3snd6detail11SoundThreadFv@l
/* 8150BFEC | 90 03 23 8C */	stw r0, 0x238c(r3)
/* 8150BFF0 | 38 A5 61 98 */	addi r5, r5, lbl_81106198@l
/* 8150BFF4 | 90 03 23 78 */	stw r0, 0x2378(r3)
/* 8150BFF8 | 90 03 23 7C */	stw r0, 0x237c(r3)
/* 8150BFFC | 90 03 23 84 */	stw r0, 0x2384(r3)
/* 8150C000 | 90 C3 23 88 */	stw r6, 0x2388(r3)
/* 8150C004 | 90 C3 23 8C */	stw r6, 0x238c(r3)
/* 8150C008 | 98 03 23 94 */	stb r0, 0x2394(r3)
/* 8150C00C | 48 0E CF D5 */	bl __register_global_object
/* 8150C010 | 9B ED AE E0 */	stb r31, "@GUARD@instance$4752"@sda21(r0)
.L_8150C014:
/* 8150C014 | 3C 80 81 51 */	lis r4, SoundThreadFunc__Q44nw4r3snd6detail11SoundThreadFPv@ha
/* 8150C018 | 3C A0 81 10 */	lis r5, instance$4752@ha
/* 8150C01C | 7F A3 EB 78 */	mr r3, r29
/* 8150C020 | 7F C8 F3 78 */	mr r8, r30
/* 8150C024 | 38 84 C1 0C */	addi r4, r4, SoundThreadFunc__Q44nw4r3snd6detail11SoundThreadFPv@l
/* 8150C028 | 38 A5 61 A8 */	addi r5, r5, instance$4752@l
/* 8150C02C | 38 DD 23 18 */	addi r6, r29, 0x2318
/* 8150C030 | 38 E0 20 00 */	li r7, 0x2000
/* 8150C034 | 39 20 00 00 */	li r9, 0x0
/* 8150C038 | 48 02 85 11 */	bl OSCreateThread
/* 8150C03C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150C040 | 7C 7F 1B 78 */	mr r31, r3
/* 8150C044 | 41 82 00 0C */	beq .L_8150C050
/* 8150C048 | 7F A3 EB 78 */	mr r3, r29
/* 8150C04C | 48 02 8C 05 */	bl OSResumeThread
.L_8150C050:
/* 8150C050 | 7C 1F 00 D0 */	neg r0, r31
/* 8150C054 | 7C 00 FB 78 */	or r0, r0, r31
/* 8150C058 | 54 03 0F FE */	srwi r3, r0, 31
.L_8150C05C:
/* 8150C05C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150C060 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150C064 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150C068 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150C06C | 7C 08 03 A6 */	mtlr r0
/* 8150C070 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150C074 | 4E 80 00 20 */	blr
.endfn Create__Q44nw4r3snd6detail11SoundThreadFl

# .text:0x1E0 | 0x8150C078 | size: 0x94
# nw4r::snd::detail::SoundThread::AxCallback()
.fn AxCallback__Q44nw4r3snd6detail11SoundThreadFv, global
/* 8150C078 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150C07C | 7C 08 02 A6 */	mflr r0
/* 8150C080 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150C084 | 88 0D AE E0 */	lbz r0, "@GUARD@instance$4752"@sda21(r0)
/* 8150C088 | 7C 00 07 75 */	extsb. r0, r0
/* 8150C08C | 40 82 00 50 */	bne .L_8150C0DC
/* 8150C090 | 3C 60 81 10 */	lis r3, instance$4752@ha
/* 8150C094 | 3C 80 81 51 */	lis r4, __dt__Q44nw4r3snd6detail11SoundThreadFv@ha
/* 8150C098 | 38 63 61 A8 */	addi r3, r3, instance$4752@l
/* 8150C09C | 38 00 00 00 */	li r0, 0x0
/* 8150C0A0 | 90 03 23 88 */	stw r0, 0x2388(r3)
/* 8150C0A4 | 38 C3 23 88 */	addi r6, r3, 0x2388
/* 8150C0A8 | 3C A0 81 10 */	lis r5, lbl_81106198@ha
/* 8150C0AC | 38 84 BF 14 */	addi r4, r4, __dt__Q44nw4r3snd6detail11SoundThreadFv@l
/* 8150C0B0 | 90 03 23 8C */	stw r0, 0x238c(r3)
/* 8150C0B4 | 38 A5 61 98 */	addi r5, r5, lbl_81106198@l
/* 8150C0B8 | 90 03 23 78 */	stw r0, 0x2378(r3)
/* 8150C0BC | 90 03 23 7C */	stw r0, 0x237c(r3)
/* 8150C0C0 | 90 03 23 84 */	stw r0, 0x2384(r3)
/* 8150C0C4 | 90 C3 23 88 */	stw r6, 0x2388(r3)
/* 8150C0C8 | 90 C3 23 8C */	stw r6, 0x238c(r3)
/* 8150C0CC | 98 03 23 94 */	stb r0, 0x2394(r3)
/* 8150C0D0 | 48 0E CF 11 */	bl __register_global_object
/* 8150C0D4 | 38 00 00 01 */	li r0, 0x1
/* 8150C0D8 | 98 0D AE E0 */	stb r0, "@GUARD@instance$4752"@sda21(r0)
.L_8150C0DC:
/* 8150C0DC | 3C 60 81 10 */	lis r3, instance$4752@ha
/* 8150C0E0 | 38 80 00 01 */	li r4, 0x1
/* 8150C0E4 | 38 63 61 A8 */	addi r3, r3, instance$4752@l
/* 8150C0E8 | 38 A0 00 00 */	li r5, 0x0
/* 8150C0EC | 38 63 23 38 */	addi r3, r3, 0x2338
/* 8150C0F0 | 48 02 4F 91 */	bl OSSendMessage
/* 8150C0F4 | 48 00 40 7D */	bl detail_UpdateBufferAllPlayers__Q34nw4r3snd10WavePlayerFv
/* 8150C0F8 | 48 00 16 A9 */	bl UpdateBufferAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150C0FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150C100 | 7C 08 03 A6 */	mtlr r0
/* 8150C104 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150C108 | 4E 80 00 20 */	blr
.endfn AxCallback__Q44nw4r3snd6detail11SoundThreadFv

# .text:0x274 | 0x8150C10C | size: 0x64
# nw4r::snd::detail::SoundThread::SoundThreadFunc(void*)
.fn SoundThreadFunc__Q44nw4r3snd6detail11SoundThreadFPv, global
/* 8150C10C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150C110 | 7C 08 02 A6 */	mflr r0
/* 8150C114 | 38 83 23 58 */	addi r4, r3, 0x2358
/* 8150C118 | 38 A0 00 08 */	li r5, 0x8
/* 8150C11C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150C120 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150C124 | 7C 7F 1B 78 */	mr r31, r3
/* 8150C128 | 38 63 23 38 */	addi r3, r3, 0x2338
/* 8150C12C | 48 02 4E F5 */	bl OSInitMessageQueue
/* 8150C130 | 4B FE B4 9D */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150C134 | 3C A0 81 51 */	lis r5, AxCallback__Q44nw4r3snd6detail11SoundThreadFv@ha
/* 8150C138 | 38 9F 23 78 */	addi r4, r31, 0x2378
/* 8150C13C | 38 A5 C0 78 */	addi r5, r5, AxCallback__Q44nw4r3snd6detail11SoundThreadFv@l
/* 8150C140 | 4B FE B9 91 */	bl RegisterCallback__Q44nw4r3snd6detail9AxManagerFPQ54nw4r3snd6detail9AxManager16CallbackListNodePFv_v
/* 8150C144 | 7F E3 FB 78 */	mr r3, r31
/* 8150C148 | 48 00 00 29 */	bl SoundThreadProc__Q44nw4r3snd6detail11SoundThreadFv
/* 8150C14C | 4B FE B4 81 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150C150 | 38 9F 23 78 */	addi r4, r31, 0x2378
/* 8150C154 | 4B FE B9 E9 */	bl UnregisterCallback__Q44nw4r3snd6detail9AxManagerFPQ54nw4r3snd6detail9AxManager16CallbackListNode
/* 8150C158 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150C15C | 38 60 00 00 */	li r3, 0x0
/* 8150C160 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150C164 | 7C 08 03 A6 */	mtlr r0
/* 8150C168 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150C16C | 4E 80 00 20 */	blr
.endfn SoundThreadFunc__Q44nw4r3snd6detail11SoundThreadFPv

# .text:0x2D8 | 0x8150C170 | size: 0x120
# nw4r::snd::detail::SoundThread::SoundThreadProc()
.fn SoundThreadProc__Q44nw4r3snd6detail11SoundThreadFv, global
/* 8150C170 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8150C174 | 7C 08 02 A6 */	mflr r0
/* 8150C178 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8150C17C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150C180 | 48 0E D3 41 */	bl _savegpr_27
/* 8150C184 | 7C 7B 1B 78 */	mr r27, r3
.L_8150C188:
/* 8150C188 | 38 7B 23 38 */	addi r3, r27, 0x2338
/* 8150C18C | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150C190 | 38 A0 00 01 */	li r5, 0x1
/* 8150C194 | 48 02 4F B5 */	bl OSReceiveMessage
/* 8150C198 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8150C19C | 28 00 00 01 */	cmplwi r0, 0x1
/* 8150C1A0 | 40 82 00 C0 */	bne .L_8150C260
/* 8150C1A4 | 3B 9B 23 20 */	addi r28, r27, 0x2320
/* 8150C1A8 | 7F 83 E3 78 */	mr r3, r28
/* 8150C1AC | 48 02 5A 5D */	bl fn_81531C08
/* 8150C1B0 | 48 02 9A E9 */	bl OSGetTick
/* 8150C1B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8150C1B8 | 4B FE B4 15 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150C1BC | 4B FE B7 4D */	bl Update__Q44nw4r3snd6detail9AxManagerFv
/* 8150C1C0 | 4B FF 8A 99 */	bl UpdateAllPlayers__Q44nw4r3snd6detail9SeqPlayerFv
/* 8150C1C4 | 48 00 52 55 */	bl UpdateAllPlayers__Q44nw4r3snd6detail9WsdPlayerFv
/* 8150C1C8 | 48 00 16 31 */	bl UpdateAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150C1CC | 48 00 41 CD */	bl detail_UpdateAllPlayers__Q34nw4r3snd10WavePlayerFv
/* 8150C1D0 | 83 FB 23 88 */	lwz r31, 0x2388(r27)
/* 8150C1D4 | 3B DB 23 88 */	addi r30, r27, 0x2388
/* 8150C1D8 | 48 00 00 1C */	b .L_8150C1F4
.L_8150C1DC:
/* 8150C1DC | 7F E3 FB 78 */	mr r3, r31
/* 8150C1E0 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 8150C1E4 | 81 83 00 08 */	lwz r12, 0x8(r3)
/* 8150C1E8 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8150C1EC | 7D 89 03 A6 */	mtctr r12
/* 8150C1F0 | 4E 80 04 21 */	bctrl
.L_8150C1F4:
/* 8150C1F4 | 7C 1F F0 40 */	cmplw r31, r30
/* 8150C1F8 | 40 82 FF E4 */	bne .L_8150C1DC
/* 8150C1FC | 4B FF 22 59 */	bl UpdateAllChannel__Q44nw4r3snd6detail7ChannelFv
/* 8150C200 | 48 00 32 A9 */	bl CalcRandom__Q44nw4r3snd6detail4UtilFv
/* 8150C204 | 48 02 46 81 */	bl OSDisableInterrupts
/* 8150C208 | 7C 7E 1B 78 */	mr r30, r3
/* 8150C20C | 4B FE B3 C1 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 8150C210 | 4B FE BF 49 */	bl UpdateAllVoices__Q44nw4r3snd6detail9AxManagerFv
/* 8150C214 | 7F C3 F3 78 */	mr r3, r30
/* 8150C218 | 48 02 46 95 */	bl OSRestoreInterrupts
/* 8150C21C | 48 02 9A 7D */	bl OSGetTick
/* 8150C220 | 7C 1D 18 50 */	subf r0, r29, r3
/* 8150C224 | 83 DB 23 88 */	lwz r30, 0x2388(r27)
/* 8150C228 | 90 1B 23 90 */	stw r0, 0x2390(r27)
/* 8150C22C | 3B FB 23 88 */	addi r31, r27, 0x2388
/* 8150C230 | 48 00 00 1C */	b .L_8150C24C
.L_8150C234:
/* 8150C234 | 7F C3 F3 78 */	mr r3, r30
/* 8150C238 | 83 DE 00 00 */	lwz r30, 0x0(r30)
/* 8150C23C | 81 83 00 08 */	lwz r12, 0x8(r3)
/* 8150C240 | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150C244 | 7D 89 03 A6 */	mtctr r12
/* 8150C248 | 4E 80 04 21 */	bctrl
.L_8150C24C:
/* 8150C24C | 7C 1E F8 40 */	cmplw r30, r31
/* 8150C250 | 40 82 FF E4 */	bne .L_8150C234
/* 8150C254 | 7F 83 E3 78 */	mr r3, r28
/* 8150C258 | 48 02 5A 8D */	bl fn_81531CE4
/* 8150C25C | 4B FF FF 2C */	b .L_8150C188
.L_8150C260:
/* 8150C260 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8150C264 | 40 82 FF 24 */	bne .L_8150C188
/* 8150C268 | 4B FF 8A 49 */	bl StopAllPlayers__Q44nw4r3snd6detail9SeqPlayerFv
/* 8150C26C | 48 00 52 F5 */	bl StopAllPlayers__Q44nw4r3snd6detail9WsdPlayerFv
/* 8150C270 | 48 00 15 E1 */	bl StopAllPlayers__Q44nw4r3snd6detail10StrmPlayerFv
/* 8150C274 | 48 00 41 7D */	bl detail_StopAllPlayers__Q34nw4r3snd10WavePlayerFv
/* 8150C278 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8150C27C | 48 0E D2 91 */	bl _restgpr_27
/* 8150C280 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8150C284 | 7C 08 03 A6 */	mtlr r0
/* 8150C288 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150C28C | 4E 80 00 20 */	blr
.endfn SoundThreadProc__Q44nw4r3snd6detail11SoundThreadFv

# 0x81698F20..0x81698F28 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F20 | size: 0x1
.obj "@GUARD@instance$4752", local
	.skip 0x1
.endobj "@GUARD@instance$4752"

# .sbss:0x1 | 0x81698F21 | size: 0x7
.obj gap_12_81698F21_sbss, global
.hidden gap_12_81698F21_sbss
	.skip 0x7
.endobj gap_12_81698F21_sbss
