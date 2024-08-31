.include "macros.inc"
.file "iplFramework.cpp"

# 0x8133DE08..0x8133E310 | size: 0x508
.text
.balign 4

# .text:0x0 | 0x8133DE08 | size: 0x58
# ipl::Framework::Framework(EGG::Heap*)
.fn __ct__Q23ipl9FrameworkFPQ23EGG4Heap, global
/* 8133DE08 0000C208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133DE0C 0000C20C  7C 08 02 A6 */	mflr r0
/* 8133DE10 0000C210  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133DE14 0000C214  38 00 00 00 */	li r0, 0x0
/* 8133DE18 0000C218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DE1C 0000C21C  7C 9F 23 78 */	mr r31, r4
/* 8133DE20 0000C220  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133DE24 0000C224  7C 7E 1B 78 */	mr r30, r3
/* 8133DE28 0000C228  90 03 00 00 */	stw r0, 0x0(r3)
/* 8133DE2C 0000C22C  48 1F EC 75 */	bl fn_8153CAA0
/* 8133DE30 0000C230  7F C3 F3 78 */	mr r3, r30
/* 8133DE34 0000C234  48 00 03 B1 */	bl init_vi__Q23ipl9FrameworkFv
/* 8133DE38 0000C238  7F C3 F3 78 */	mr r3, r30
/* 8133DE3C 0000C23C  7F E4 FB 78 */	mr r4, r31
/* 8133DE40 0000C240  48 00 04 49 */	bl init_xfb__Q23ipl9FrameworkFPQ23EGG4Heap
/* 8133DE44 0000C244  7F C3 F3 78 */	mr r3, r30
/* 8133DE48 0000C248  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133DE4C 0000C24C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133DE50 0000C250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DE54 0000C254  7C 08 03 A6 */	mtlr r0
/* 8133DE58 0000C258  38 21 00 10 */	addi r1, r1, 0x10
/* 8133DE5C 0000C25C  4E 80 00 20 */	blr
.endfn __ct__Q23ipl9FrameworkFPQ23EGG4Heap

# .text:0x58 | 0x8133DE60 | size: 0x14
# ipl::Framework::beginFrame()
.fn beginFrame__Q23ipl9FrameworkFv, global
/* 8133DE60 0000C260  80 03 00 04 */	lwz r0, 0x4(r3)
/* 8133DE64 0000C264  7C 00 00 34 */	cntlzw r0, r0
/* 8133DE68 0000C268  54 00 D9 7E */	srwi r0, r0, 5
/* 8133DE6C 0000C26C  90 03 00 04 */	stw r0, 0x4(r3)
/* 8133DE70 0000C270  4E 80 00 20 */	blr
.endfn beginFrame__Q23ipl9FrameworkFv

# .text:0x6C | 0x8133DE74 | size: 0x4
# ipl::Framework::beginRender()
.fn beginRender__Q23ipl9FrameworkFv, global
/* 8133DE74 0000C274  48 20 85 1C */	b GXInvalidateTexAll
.endfn beginRender__Q23ipl9FrameworkFv

# .text:0x70 | 0x8133DE78 | size: 0x98
# ipl::Framework::endRender()
.fn endRender__Q23ipl9FrameworkFv, global
/* 8133DE78 0000C278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133DE7C 0000C27C  7C 08 02 A6 */	mflr r0
/* 8133DE80 0000C280  3C 80 01 00 */	lis r4, 0x100
/* 8133DE84 0000C284  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133DE88 0000C288  38 00 00 00 */	li r0, 0x0
/* 8133DE8C 0000C28C  38 84 FF FF */	subi r4, r4, 0x1
/* 8133DE90 0000C290  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8133DE94 0000C294  7C 7F 1B 78 */	mr r31, r3
/* 8133DE98 0000C298  38 61 00 08 */	addi r3, r1, 0x8
/* 8133DE9C 0000C29C  98 01 00 0C */	stb r0, 0xc(r1)
/* 8133DEA0 0000C2A0  98 01 00 0D */	stb r0, 0xd(r1)
/* 8133DEA4 0000C2A4  98 01 00 0E */	stb r0, 0xe(r1)
/* 8133DEA8 0000C2A8  98 01 00 0F */	stb r0, 0xf(r1)
/* 8133DEAC 0000C2AC  98 01 00 08 */	stb r0, 0x8(r1)
/* 8133DEB0 0000C2B0  98 01 00 09 */	stb r0, 0x9(r1)
/* 8133DEB4 0000C2B4  98 01 00 0A */	stb r0, 0xa(r1)
/* 8133DEB8 0000C2B8  98 01 00 0B */	stb r0, 0xb(r1)
/* 8133DEBC 0000C2BC  48 20 73 85 */	bl GXSetCopyClear
/* 8133DEC0 0000C2C0  38 60 00 01 */	li r3, 0x1
/* 8133DEC4 0000C2C4  38 80 00 07 */	li r4, 0x7
/* 8133DEC8 0000C2C8  38 A0 00 01 */	li r5, 0x1
/* 8133DECC 0000C2CC  48 20 99 45 */	bl GXSetZMode
/* 8133DED0 0000C2D0  38 60 00 01 */	li r3, 0x1
/* 8133DED4 0000C2D4  48 20 99 11 */	bl GXSetAlphaUpdate
/* 8133DED8 0000C2D8  38 60 00 01 */	li r3, 0x1
/* 8133DEDC 0000C2DC  48 20 98 DD */	bl GXSetColorUpdate
/* 8133DEE0 0000C2E0  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133DEE4 0000C2E4  38 80 00 01 */	li r4, 0x1
/* 8133DEE8 0000C2E8  54 00 10 3A */	slwi r0, r0, 2
/* 8133DEEC 0000C2EC  7C 7F 02 14 */	add r3, r31, r0
/* 8133DEF0 0000C2F0  80 63 00 08 */	lwz r3, 0x8(r3)
/* 8133DEF4 0000C2F4  48 20 75 BD */	bl GXCopyDisp
/* 8133DEF8 0000C2F8  48 20 61 15 */	bl GXFlush
/* 8133DEFC 0000C2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133DF00 0000C300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133DF04 0000C304  7C 08 03 A6 */	mtlr r0
/* 8133DF08 0000C308  38 21 00 20 */	addi r1, r1, 0x20
/* 8133DF0C 0000C30C  4E 80 00 20 */	blr
.endfn endRender__Q23ipl9FrameworkFv

# .text:0x108 | 0x8133DF10 | size: 0x48
# ipl::Framework::endFrame()
.fn endFrame__Q23ipl9FrameworkFv, global
/* 8133DF10 0000C310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133DF14 0000C314  7C 08 02 A6 */	mflr r0
/* 8133DF18 0000C318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133DF1C 0000C31C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DF20 0000C320  7C 7F 1B 78 */	mr r31, r3
/* 8133DF24 0000C324  48 20 64 91 */	bl GXDrawDone
/* 8133DF28 0000C328  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133DF2C 0000C32C  54 00 10 3A */	slwi r0, r0, 2
/* 8133DF30 0000C330  7C 7F 02 14 */	add r3, r31, r0
/* 8133DF34 0000C334  80 63 00 08 */	lwz r3, 0x8(r3)
/* 8133DF38 0000C338  48 20 01 7D */	bl fn_8153E0B4
/* 8133DF3C 0000C33C  48 20 00 65 */	bl VIFlush
/* 8133DF40 0000C340  48 1F F0 A9 */	bl VIWaitForRetrace
/* 8133DF44 0000C344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DF48 0000C348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133DF4C 0000C34C  7C 08 03 A6 */	mtlr r0
/* 8133DF50 0000C350  38 21 00 10 */	addi r1, r1, 0x10
/* 8133DF54 0000C354  4E 80 00 20 */	blr
.endfn endFrame__Q23ipl9FrameworkFv

# .text:0x150 | 0x8133DF58 | size: 0xB4
# ipl::Framework::resetRenderMode()
.fn resetRenderMode__Q23ipl9FrameworkFv, global
/* 8133DF58 0000C358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133DF5C 0000C35C  7C 08 02 A6 */	mflr r0
/* 8133DF60 0000C360  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133DF64 0000C364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DF68 0000C368  7C 7F 1B 78 */	mr r31, r3
/* 8133DF6C 0000C36C  48 00 00 A1 */	bl reset_render_mode__Q23ipl9FrameworkFv
/* 8133DF70 0000C370  48 20 00 31 */	bl VIFlush
/* 8133DF74 0000C374  80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8133DF78 0000C378  38 60 00 00 */	li r3, 0x0
/* 8133DF7C 0000C37C  38 80 00 00 */	li r4, 0x0
/* 8133DF80 0000C380  A0 A6 00 04 */	lhz r5, 0x4(r6)
/* 8133DF84 0000C384  A0 C6 00 06 */	lhz r6, 0x6(r6)
/* 8133DF88 0000C388  48 20 6D B5 */	bl GXSetDispCopySrc
/* 8133DF8C 0000C38C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133DF90 0000C390  A0 64 00 06 */	lhz r3, 0x6(r4)
/* 8133DF94 0000C394  A0 84 00 08 */	lhz r4, 0x8(r4)
/* 8133DF98 0000C398  48 20 6F AD */	bl GXGetYScaleFactor
/* 8133DF9C 0000C39C  48 20 71 D9 */	bl GXSetDispCopyYScale
/* 8133DFA0 0000C3A0  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8133DFA4 0000C3A4  54 64 04 3E */	clrlwi r4, r3, 16
/* 8133DFA8 0000C3A8  A0 65 00 04 */	lhz r3, 0x4(r5)
/* 8133DFAC 0000C3AC  48 20 6E 11 */	bl GXSetDispCopyDst
/* 8133DFB0 0000C3B0  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133DFB4 0000C3B4  7C 00 00 34 */	cntlzw r0, r0
/* 8133DFB8 0000C3B8  54 00 D9 7E */	srwi r0, r0, 5
/* 8133DFBC 0000C3BC  90 1F 00 04 */	stw r0, 0x4(r31)
/* 8133DFC0 0000C3C0  48 20 83 D1 */	bl GXInvalidateTexAll
/* 8133DFC4 0000C3C4  7F E3 FB 78 */	mr r3, r31
/* 8133DFC8 0000C3C8  4B FF FE B1 */	bl endRender__Q23ipl9FrameworkFv
/* 8133DFCC 0000C3CC  7F E3 FB 78 */	mr r3, r31
/* 8133DFD0 0000C3D0  4B FF FF 41 */	bl endFrame__Q23ipl9FrameworkFv
/* 8133DFD4 0000C3D4  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133DFD8 0000C3D8  7C 00 00 34 */	cntlzw r0, r0
/* 8133DFDC 0000C3DC  54 00 D9 7E */	srwi r0, r0, 5
/* 8133DFE0 0000C3E0  90 1F 00 04 */	stw r0, 0x4(r31)
/* 8133DFE4 0000C3E4  48 20 83 AD */	bl GXInvalidateTexAll
/* 8133DFE8 0000C3E8  7F E3 FB 78 */	mr r3, r31
/* 8133DFEC 0000C3EC  4B FF FE 8D */	bl endRender__Q23ipl9FrameworkFv
/* 8133DFF0 0000C3F0  7F E3 FB 78 */	mr r3, r31
/* 8133DFF4 0000C3F4  4B FF FF 1D */	bl endFrame__Q23ipl9FrameworkFv
/* 8133DFF8 0000C3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DFFC 0000C3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E000 0000C400  7C 08 03 A6 */	mtlr r0
/* 8133E004 0000C404  38 21 00 10 */	addi r1, r1, 0x10
/* 8133E008 0000C408  4E 80 00 20 */	blr
.endfn resetRenderMode__Q23ipl9FrameworkFv

# .text:0x204 | 0x8133E00C | size: 0x1D8
# ipl::Framework::reset_render_mode()
.fn reset_render_mode__Q23ipl9FrameworkFv, global
/* 8133E00C 0000C40C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133E010 0000C410  7C 08 02 A6 */	mflr r0
/* 8133E014 0000C414  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133E018 0000C418  39 61 00 20 */	addi r11, r1, 0x20
/* 8133E01C 0000C41C  48 2B B4 A5 */	bl _savegpr_27
/* 8133E020 0000C420  3F C0 81 63 */	lis r30, lbl_81634FA8@ha
/* 8133E024 0000C424  7C 7F 1B 78 */	mr r31, r3
/* 8133E028 0000C428  3B DE 4F A8 */	addi r30, r30, lbl_81634FA8@l
/* 8133E02C 0000C42C  48 22 BF 89 */	bl SCGetAspectRatio
/* 8133E030 0000C430  54 7D 06 3E */	clrlwi r29, r3, 24
/* 8133E034 0000C434  48 22 C1 5D */	bl fn_8156A190
/* 8133E038 0000C438  54 7C 06 3E */	clrlwi r28, r3, 24
/* 8133E03C 0000C43C  48 22 C0 55 */	bl fn_8156A090
/* 8133E040 0000C440  C0 02 80 90 */	lfs f0, lbl_81694490@sda21(r0)
/* 8133E044 0000C444  54 7B 06 3E */	clrlwi r27, r3, 24
/* 8133E048 0000C448  93 BF 00 10 */	stw r29, 0x10(r31)
/* 8133E04C 0000C44C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8133E050 0000C450  48 20 01 E9 */	bl VIGetTvFormat
/* 8133E054 0000C454  2C 03 00 02 */	cmpwi r3, 0x2
/* 8133E058 0000C458  41 82 00 24 */	beq .L_8133E07C
/* 8133E05C 0000C45C  40 80 00 14 */	bge .L_8133E070
/* 8133E060 0000C460  2C 03 00 00 */	cmpwi r3, 0x0
/* 8133E064 0000C464  41 82 00 18 */	beq .L_8133E07C
/* 8133E068 0000C468  40 80 00 7C */	bge .L_8133E0E4
/* 8133E06C 0000C46C  48 00 01 58 */	b .L_8133E1C4
.L_8133E070:
/* 8133E070 0000C470  2C 03 00 05 */	cmpwi r3, 0x5
/* 8133E074 0000C474  41 82 00 70 */	beq .L_8133E0E4
/* 8133E078 0000C478  48 00 01 4C */	b .L_8133E1C4
.L_8133E07C:
/* 8133E07C 0000C47C  48 20 02 7D */	bl fn_8153E2F8
/* 8133E080 0000C480  28 03 00 01 */	cmplwi r3, 0x1
/* 8133E084 0000C484  40 82 00 18 */	bne .L_8133E09C
/* 8133E088 0000C488  28 1C 00 01 */	cmplwi r28, 0x1
/* 8133E08C 0000C48C  40 82 00 10 */	bne .L_8133E09C
/* 8133E090 0000C490  38 1E 00 3C */	addi r0, r30, 0x3c
/* 8133E094 0000C494  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8133E098 0000C498  48 00 00 0C */	b .L_8133E0A4
.L_8133E09C:
/* 8133E09C 0000C49C  38 1E 00 00 */	addi r0, r30, 0x0
/* 8133E0A0 0000C4A0  90 1F 00 00 */	stw r0, 0x0(r31)
.L_8133E0A4:
/* 8133E0A4 0000C4A4  28 1D 00 01 */	cmplwi r29, 0x1
/* 8133E0A8 0000C4A8  40 82 00 14 */	bne .L_8133E0BC
/* 8133E0AC 0000C4AC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E0B0 0000C4B0  38 00 02 AE */	li r0, 0x2ae
/* 8133E0B4 0000C4B4  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8133E0B8 0000C4B8  48 00 00 10 */	b .L_8133E0C8
.L_8133E0BC:
/* 8133E0BC 0000C4BC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E0C0 0000C4C0  38 00 02 9E */	li r0, 0x29e
/* 8133E0C4 0000C4C4  B0 03 00 0E */	sth r0, 0xe(r3)
.L_8133E0C8:
/* 8133E0C8 0000C4C8  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E0CC 0000C4CC  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8133E0D0 0000C4D0  20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8133E0D4 0000C4D4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8133E0D8 0000C4D8  7C 00 01 94 */	addze r0, r0
/* 8133E0DC 0000C4DC  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8133E0E0 0000C4E0  48 00 00 E4 */	b .L_8133E1C4
.L_8133E0E4:
/* 8133E0E4 0000C4E4  48 20 02 15 */	bl fn_8153E2F8
/* 8133E0E8 0000C4E8  28 03 00 01 */	cmplwi r3, 0x1
/* 8133E0EC 0000C4EC  40 82 00 4C */	bne .L_8133E138
/* 8133E0F0 0000C4F0  28 1C 00 01 */	cmplwi r28, 0x1
/* 8133E0F4 0000C4F4  40 82 00 44 */	bne .L_8133E138
/* 8133E0F8 0000C4F8  38 7E 00 F0 */	addi r3, r30, 0xf0
/* 8133E0FC 0000C4FC  28 1D 00 01 */	cmplwi r29, 0x1
/* 8133E100 0000C500  90 7F 00 00 */	stw r3, 0x0(r31)
/* 8133E104 0000C504  40 82 00 10 */	bne .L_8133E114
/* 8133E108 0000C508  38 00 02 AE */	li r0, 0x2ae
/* 8133E10C 0000C50C  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8133E110 0000C510  48 00 00 0C */	b .L_8133E11C
.L_8133E114:
/* 8133E114 0000C514  38 00 02 9E */	li r0, 0x29e
/* 8133E118 0000C518  B0 03 00 0E */	sth r0, 0xe(r3)
.L_8133E11C:
/* 8133E11C 0000C51C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E120 0000C520  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8133E124 0000C524  20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8133E128 0000C528  7C 00 0E 70 */	srawi r0, r0, 1
/* 8133E12C 0000C52C  7C 00 01 94 */	addze r0, r0
/* 8133E130 0000C530  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8133E134 0000C534  48 00 00 90 */	b .L_8133E1C4
.L_8133E138:
/* 8133E138 0000C538  28 1B 00 01 */	cmplwi r27, 0x1
/* 8133E13C 0000C53C  40 82 00 44 */	bne .L_8133E180
/* 8133E140 0000C540  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8133E144 0000C544  28 1D 00 01 */	cmplwi r29, 0x1
/* 8133E148 0000C548  90 7F 00 00 */	stw r3, 0x0(r31)
/* 8133E14C 0000C54C  40 82 00 10 */	bne .L_8133E15C
/* 8133E150 0000C550  38 00 02 AE */	li r0, 0x2ae
/* 8133E154 0000C554  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8133E158 0000C558  48 00 00 0C */	b .L_8133E164
.L_8133E15C:
/* 8133E15C 0000C55C  38 00 02 9E */	li r0, 0x29e
/* 8133E160 0000C560  B0 03 00 0E */	sth r0, 0xe(r3)
.L_8133E164:
/* 8133E164 0000C564  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E168 0000C568  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8133E16C 0000C56C  20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8133E170 0000C570  7C 00 0E 70 */	srawi r0, r0, 1
/* 8133E174 0000C574  7C 00 01 94 */	addze r0, r0
/* 8133E178 0000C578  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8133E17C 0000C57C  48 00 00 48 */	b .L_8133E1C4
.L_8133E180:
/* 8133E180 0000C580  38 7E 00 78 */	addi r3, r30, 0x78
/* 8133E184 0000C584  28 1D 00 01 */	cmplwi r29, 0x1
/* 8133E188 0000C588  90 7F 00 00 */	stw r3, 0x0(r31)
/* 8133E18C 0000C58C  40 82 00 10 */	bne .L_8133E19C
/* 8133E190 0000C590  38 00 02 AA */	li r0, 0x2aa
/* 8133E194 0000C594  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8133E198 0000C598  48 00 00 0C */	b .L_8133E1A4
.L_8133E19C:
/* 8133E19C 0000C59C  38 00 02 9A */	li r0, 0x29a
/* 8133E1A0 0000C5A0  B0 03 00 0E */	sth r0, 0xe(r3)
.L_8133E1A4:
/* 8133E1A4 0000C5A4  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E1A8 0000C5A8  C0 02 80 94 */	lfs f0, lbl_81694494@sda21(r0)
/* 8133E1AC 0000C5AC  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8133E1B0 0000C5B0  20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8133E1B4 0000C5B4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8133E1B8 0000C5B8  7C 00 01 94 */	addze r0, r0
/* 8133E1BC 0000C5BC  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8133E1C0 0000C5C0  D0 1F 00 14 */	stfs f0, 0x14(r31)
.L_8133E1C4:
/* 8133E1C4 0000C5C4  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E1C8 0000C5C8  48 1F F3 A1 */	bl fn_8153D568
/* 8133E1CC 0000C5CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8133E1D0 0000C5D0  48 2B B3 3D */	bl _restgpr_27
/* 8133E1D4 0000C5D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133E1D8 0000C5D8  7C 08 03 A6 */	mtlr r0
/* 8133E1DC 0000C5DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8133E1E0 0000C5E0  4E 80 00 20 */	blr
.endfn reset_render_mode__Q23ipl9FrameworkFv

# .text:0x3DC | 0x8133E1E4 | size: 0xA4
# ipl::Framework::init_vi()
.fn init_vi__Q23ipl9FrameworkFv, global
/* 8133E1E4 0000C5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133E1E8 0000C5E8  7C 08 02 A6 */	mflr r0
/* 8133E1EC 0000C5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8133E1F0 0000C5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133E1F4 0000C5F4  7C 7F 1B 78 */	mr r31, r3
/* 8133E1F8 0000C5F8  38 60 00 01 */	li r3, 0x1
/* 8133E1FC 0000C5FC  48 1F FF 2D */	bl VISetBlack
/* 8133E200 0000C600  7F E3 FB 78 */	mr r3, r31
/* 8133E204 0000C604  4B FF FE 09 */	bl reset_render_mode__Q23ipl9FrameworkFv
/* 8133E208 0000C608  38 60 00 01 */	li r3, 0x1
/* 8133E20C 0000C60C  48 20 23 D5 */	bl fn_815405E0
/* 8133E210 0000C610  38 60 00 00 */	li r3, 0x0
/* 8133E214 0000C614  48 20 23 CD */	bl fn_815405E0
/* 8133E218 0000C618  38 60 00 00 */	li r3, 0x0
/* 8133E21C 0000C61C  48 20 05 2D */	bl fn_8153E748
/* 8133E220 0000C620  48 22 BF CD */	bl fn_8156A1EC
/* 8133E224 0000C624  54 63 06 3E */	clrlwi r3, r3, 24
/* 8133E228 0000C628  48 20 05 21 */	bl fn_8153E748
/* 8133E22C 0000C62C  48 1F FD 75 */	bl VIFlush
/* 8133E230 0000C630  80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8133E234 0000C634  38 60 00 00 */	li r3, 0x0
/* 8133E238 0000C638  38 80 00 00 */	li r4, 0x0
/* 8133E23C 0000C63C  A0 A6 00 04 */	lhz r5, 0x4(r6)
/* 8133E240 0000C640  A0 C6 00 06 */	lhz r6, 0x6(r6)
/* 8133E244 0000C644  48 20 6A F9 */	bl GXSetDispCopySrc
/* 8133E248 0000C648  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133E24C 0000C64C  A0 64 00 06 */	lhz r3, 0x6(r4)
/* 8133E250 0000C650  A0 84 00 08 */	lhz r4, 0x8(r4)
/* 8133E254 0000C654  48 20 6C F1 */	bl GXGetYScaleFactor
/* 8133E258 0000C658  48 20 6F 1D */	bl GXSetDispCopyYScale
/* 8133E25C 0000C65C  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8133E260 0000C660  54 64 04 3E */	clrlwi r4, r3, 16
/* 8133E264 0000C664  A0 65 00 04 */	lhz r3, 0x4(r5)
/* 8133E268 0000C668  48 20 6B 55 */	bl GXSetDispCopyDst
/* 8133E26C 0000C66C  48 1F ED 7D */	bl VIWaitForRetrace
/* 8133E270 0000C670  48 1F ED 79 */	bl VIWaitForRetrace
/* 8133E274 0000C674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133E278 0000C678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E27C 0000C67C  7C 08 03 A6 */	mtlr r0
/* 8133E280 0000C680  38 21 00 10 */	addi r1, r1, 0x10
/* 8133E284 0000C684  4E 80 00 20 */	blr
.endfn init_vi__Q23ipl9FrameworkFv

# .text:0x480 | 0x8133E288 | size: 0x88
# ipl::Framework::init_xfb(EGG::Heap*)
.fn init_xfb__Q23ipl9FrameworkFPQ23EGG4Heap, global
/* 8133E288 0000C688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133E28C 0000C68C  7C 08 02 A6 */	mflr r0
/* 8133E290 0000C690  90 01 00 24 */	stw r0, 0x24(r1)
/* 8133E294 0000C694  39 61 00 20 */	addi r11, r1, 0x20
/* 8133E298 0000C698  48 2B B2 29 */	bl _savegpr_27
/* 8133E29C 0000C69C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8133E2A0 0000C6A0  7C 7B 1B 78 */	mr r27, r3
/* 8133E2A4 0000C6A4  7C 9C 23 78 */	mr r28, r4
/* 8133E2A8 0000C6A8  3B A0 00 00 */	li r29, 0x0
/* 8133E2AC 0000C6AC  A0 65 00 04 */	lhz r3, 0x4(r5)
/* 8133E2B0 0000C6B0  3B E0 00 00 */	li r31, 0x0
/* 8133E2B4 0000C6B4  A0 05 00 08 */	lhz r0, 0x8(r5)
/* 8133E2B8 0000C6B8  38 63 00 0F */	addi r3, r3, 0xf
/* 8133E2BC 0000C6BC  54 63 04 36 */	rlwinm r3, r3, 0, 16, 27
/* 8133E2C0 0000C6C0  7C 03 01 D6 */	mullw r0, r3, r0
/* 8133E2C4 0000C6C4  54 1E 08 3C */	slwi r30, r0, 1
.L_8133E2C8:
/* 8133E2C8 0000C6C8  7F C3 F3 78 */	mr r3, r30
/* 8133E2CC 0000C6CC  7F 84 E3 78 */	mr r4, r28
/* 8133E2D0 0000C6D0  38 A0 00 20 */	li r5, 0x20
/* 8133E2D4 0000C6D4  48 2B 9E 01 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133E2D8 0000C6D8  3B BD 00 01 */	addi r29, r29, 0x1
/* 8133E2DC 0000C6DC  7C 9B FA 14 */	add r4, r27, r31
/* 8133E2E0 0000C6E0  2C 1D 00 02 */	cmpwi r29, 0x2
/* 8133E2E4 0000C6E4  90 64 00 08 */	stw r3, 0x8(r4)
/* 8133E2E8 0000C6E8  3B FF 00 04 */	addi r31, r31, 0x4
/* 8133E2EC 0000C6EC  41 80 FF DC */	blt .L_8133E2C8
/* 8133E2F0 0000C6F0  38 00 00 00 */	li r0, 0x0
/* 8133E2F4 0000C6F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8133E2F8 0000C6F8  90 1B 00 04 */	stw r0, 0x4(r27)
/* 8133E2FC 0000C6FC  48 2B B2 11 */	bl _restgpr_27
/* 8133E300 0000C700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133E304 0000C704  7C 08 03 A6 */	mtlr r0
/* 8133E308 0000C708  38 21 00 20 */	addi r1, r1, 0x20
/* 8133E30C 0000C70C  4E 80 00 20 */	blr
.endfn init_xfb__Q23ipl9FrameworkFPQ23EGG4Heap

# 0x81634FA8..0x816350D8 | size: 0x130
.data
.balign 8

# .data:0x0 | 0x81634FA8 | size: 0x130
.obj lbl_81634FA8, global
	.4byte 0x00000000
	.4byte 0x028001C8
	.4byte 0x01C80019
	.4byte 0x000C029E
	.4byte 0x01C80000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060707
	.4byte 0x0C0C0C07
	.4byte 0x07000000
	.4byte 0x00000002
	.4byte 0x028001C8
	.4byte 0x01C80019
	.4byte 0x000C029E
	.4byte 0x01C80000
	.4byte 0x00000000
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x028001C8
	.4byte 0x021E001B
	.4byte 0x0010029A
	.4byte 0x021E0000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060707
	.4byte 0x0C0C0C07
	.4byte 0x07000000
	.4byte 0x00000014
	.4byte 0x028001C8
	.4byte 0x01C80019
	.4byte 0x000C029E
	.4byte 0x01C80000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060707
	.4byte 0x0C0C0C07
	.4byte 0x07000000
	.4byte 0x00000016
	.4byte 0x028001C8
	.4byte 0x01C80019
	.4byte 0x000C029E
	.4byte 0x01C80000
	.4byte 0x00000000
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81634FA8

# 0x81694490..0x81694498 | size: 0x8
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81694490 | size: 0x4
.obj lbl_81694490, global
	.float 1
.endobj lbl_81694490

# .sdata2:0x4 | 0x81694494 | size: 0x4
.obj lbl_81694494, global
	.float 1.2
.endobj lbl_81694494
