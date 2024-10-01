.include "macros.inc"
.file "iplFramework.cpp"

# 0x8133DE08..0x8133E310 | size: 0x508
.text
.balign 4

# .text:0x0 | 0x8133DE08 | size: 0x58
# ipl::Framework::Framework(EGG::Heap*)
.fn __ct__Q23ipl9FrameworkFPQ23EGG4Heap, global
/* 8133DE08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133DE0C | 7C 08 02 A6 */	mflr r0
/* 8133DE10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133DE14 | 38 00 00 00 */	li r0, 0x0
/* 8133DE18 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DE1C | 7C 9F 23 78 */	mr r31, r4
/* 8133DE20 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8133DE24 | 7C 7E 1B 78 */	mr r30, r3
/* 8133DE28 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8133DE2C | 48 1F EC 75 */	bl fn_8153CAA0
/* 8133DE30 | 7F C3 F3 78 */	mr r3, r30
/* 8133DE34 | 48 00 03 B1 */	bl init_vi__Q23ipl9FrameworkFv
/* 8133DE38 | 7F C3 F3 78 */	mr r3, r30
/* 8133DE3C | 7F E4 FB 78 */	mr r4, r31
/* 8133DE40 | 48 00 04 49 */	bl init_xfb__Q23ipl9FrameworkFPQ23EGG4Heap
/* 8133DE44 | 7F C3 F3 78 */	mr r3, r30
/* 8133DE48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133DE4C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8133DE50 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DE54 | 7C 08 03 A6 */	mtlr r0
/* 8133DE58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133DE5C | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl9FrameworkFPQ23EGG4Heap

# .text:0x58 | 0x8133DE60 | size: 0x14
# ipl::Framework::beginFrame()
.fn beginFrame__Q23ipl9FrameworkFv, global
/* 8133DE60 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8133DE64 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133DE68 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8133DE6C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8133DE70 | 4E 80 00 20 */	blr
.endfn beginFrame__Q23ipl9FrameworkFv

# .text:0x6C | 0x8133DE74 | size: 0x4
# ipl::Framework::beginRender()
.fn beginRender__Q23ipl9FrameworkFv, global
/* 8133DE74 | 48 20 85 1C */	b GXInvalidateTexAll
.endfn beginRender__Q23ipl9FrameworkFv

# .text:0x70 | 0x8133DE78 | size: 0x98
# ipl::Framework::endRender()
.fn endRender__Q23ipl9FrameworkFv, global
/* 8133DE78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133DE7C | 7C 08 02 A6 */	mflr r0
/* 8133DE80 | 3C 80 01 00 */	lis r4, 0x100
/* 8133DE84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133DE88 | 38 00 00 00 */	li r0, 0x0
/* 8133DE8C | 38 84 FF FF */	subi r4, r4, 0x1
/* 8133DE90 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8133DE94 | 7C 7F 1B 78 */	mr r31, r3
/* 8133DE98 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8133DE9C | 98 01 00 0C */	stb r0, 0xc(r1)
/* 8133DEA0 | 98 01 00 0D */	stb r0, 0xd(r1)
/* 8133DEA4 | 98 01 00 0E */	stb r0, 0xe(r1)
/* 8133DEA8 | 98 01 00 0F */	stb r0, 0xf(r1)
/* 8133DEAC | 98 01 00 08 */	stb r0, 0x8(r1)
/* 8133DEB0 | 98 01 00 09 */	stb r0, 0x9(r1)
/* 8133DEB4 | 98 01 00 0A */	stb r0, 0xa(r1)
/* 8133DEB8 | 98 01 00 0B */	stb r0, 0xb(r1)
/* 8133DEBC | 48 20 73 85 */	bl GXSetCopyClear
/* 8133DEC0 | 38 60 00 01 */	li r3, 0x1
/* 8133DEC4 | 38 80 00 07 */	li r4, 0x7
/* 8133DEC8 | 38 A0 00 01 */	li r5, 0x1
/* 8133DECC | 48 20 99 45 */	bl GXSetZMode
/* 8133DED0 | 38 60 00 01 */	li r3, 0x1
/* 8133DED4 | 48 20 99 11 */	bl GXSetAlphaUpdate
/* 8133DED8 | 38 60 00 01 */	li r3, 0x1
/* 8133DEDC | 48 20 98 DD */	bl GXSetColorUpdate
/* 8133DEE0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133DEE4 | 38 80 00 01 */	li r4, 0x1
/* 8133DEE8 | 54 00 10 3A */	slwi r0, r0, 2
/* 8133DEEC | 7C 7F 02 14 */	add r3, r31, r0
/* 8133DEF0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8133DEF4 | 48 20 75 BD */	bl GXCopyDisp
/* 8133DEF8 | 48 20 61 15 */	bl GXFlush
/* 8133DEFC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133DF00 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8133DF04 | 7C 08 03 A6 */	mtlr r0
/* 8133DF08 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133DF0C | 4E 80 00 20 */	blr
.endfn endRender__Q23ipl9FrameworkFv

# .text:0x108 | 0x8133DF10 | size: 0x48
# ipl::Framework::endFrame()
.fn endFrame__Q23ipl9FrameworkFv, global
/* 8133DF10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133DF14 | 7C 08 02 A6 */	mflr r0
/* 8133DF18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133DF1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DF20 | 7C 7F 1B 78 */	mr r31, r3
/* 8133DF24 | 48 20 64 91 */	bl GXDrawDone
/* 8133DF28 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133DF2C | 54 00 10 3A */	slwi r0, r0, 2
/* 8133DF30 | 7C 7F 02 14 */	add r3, r31, r0
/* 8133DF34 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 8133DF38 | 48 20 01 7D */	bl fn_8153E0B4
/* 8133DF3C | 48 20 00 65 */	bl VIFlush
/* 8133DF40 | 48 1F F0 A9 */	bl VIWaitForRetrace
/* 8133DF44 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DF48 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133DF4C | 7C 08 03 A6 */	mtlr r0
/* 8133DF50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133DF54 | 4E 80 00 20 */	blr
.endfn endFrame__Q23ipl9FrameworkFv

# .text:0x150 | 0x8133DF58 | size: 0xB4
# ipl::Framework::resetRenderMode()
.fn resetRenderMode__Q23ipl9FrameworkFv, global
/* 8133DF58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133DF5C | 7C 08 02 A6 */	mflr r0
/* 8133DF60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133DF64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133DF68 | 7C 7F 1B 78 */	mr r31, r3
/* 8133DF6C | 48 00 00 A1 */	bl reset_render_mode__Q23ipl9FrameworkFv
/* 8133DF70 | 48 20 00 31 */	bl VIFlush
/* 8133DF74 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8133DF78 | 38 60 00 00 */	li r3, 0x0
/* 8133DF7C | 38 80 00 00 */	li r4, 0x0
/* 8133DF80 | A0 A6 00 04 */	lhz r5, 0x4(r6)
/* 8133DF84 | A0 C6 00 06 */	lhz r6, 0x6(r6)
/* 8133DF88 | 48 20 6D B5 */	bl GXSetDispCopySrc
/* 8133DF8C | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133DF90 | A0 64 00 06 */	lhz r3, 0x6(r4)
/* 8133DF94 | A0 84 00 08 */	lhz r4, 0x8(r4)
/* 8133DF98 | 48 20 6F AD */	bl GXGetYScaleFactor
/* 8133DF9C | 48 20 71 D9 */	bl GXSetDispCopyYScale
/* 8133DFA0 | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8133DFA4 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 8133DFA8 | A0 65 00 04 */	lhz r3, 0x4(r5)
/* 8133DFAC | 48 20 6E 11 */	bl GXSetDispCopyDst
/* 8133DFB0 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133DFB4 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133DFB8 | 54 00 D9 7E */	srwi r0, r0, 5
/* 8133DFBC | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8133DFC0 | 48 20 83 D1 */	bl GXInvalidateTexAll
/* 8133DFC4 | 7F E3 FB 78 */	mr r3, r31
/* 8133DFC8 | 4B FF FE B1 */	bl endRender__Q23ipl9FrameworkFv
/* 8133DFCC | 7F E3 FB 78 */	mr r3, r31
/* 8133DFD0 | 4B FF FF 41 */	bl endFrame__Q23ipl9FrameworkFv
/* 8133DFD4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8133DFD8 | 7C 00 00 34 */	cntlzw r0, r0
/* 8133DFDC | 54 00 D9 7E */	srwi r0, r0, 5
/* 8133DFE0 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8133DFE4 | 48 20 83 AD */	bl GXInvalidateTexAll
/* 8133DFE8 | 7F E3 FB 78 */	mr r3, r31
/* 8133DFEC | 4B FF FE 8D */	bl endRender__Q23ipl9FrameworkFv
/* 8133DFF0 | 7F E3 FB 78 */	mr r3, r31
/* 8133DFF4 | 4B FF FF 1D */	bl endFrame__Q23ipl9FrameworkFv
/* 8133DFF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133DFFC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E000 | 7C 08 03 A6 */	mtlr r0
/* 8133E004 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133E008 | 4E 80 00 20 */	blr
.endfn resetRenderMode__Q23ipl9FrameworkFv

# .text:0x204 | 0x8133E00C | size: 0x1D8
# ipl::Framework::reset_render_mode()
.fn reset_render_mode__Q23ipl9FrameworkFv, global
/* 8133E00C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133E010 | 7C 08 02 A6 */	mflr r0
/* 8133E014 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133E018 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133E01C | 48 2B B4 A5 */	bl _savegpr_27
/* 8133E020 | 3F C0 81 63 */	lis r30, sRMO_Ntsc_640x456IntDf__3ipl@ha
/* 8133E024 | 7C 7F 1B 78 */	mr r31, r3
/* 8133E028 | 3B DE 4F A8 */	addi r30, r30, sRMO_Ntsc_640x456IntDf__3ipl@l
/* 8133E02C | 48 22 BF 89 */	bl SCGetAspectRatio
/* 8133E030 | 54 7D 06 3E */	clrlwi r29, r3, 24
/* 8133E034 | 48 22 C1 5D */	bl fn_8156A190
/* 8133E038 | 54 7C 06 3E */	clrlwi r28, r3, 24
/* 8133E03C | 48 22 C0 55 */	bl fn_8156A090
/* 8133E040 | C0 02 80 90 */	lfs f0, lbl_81694490@sda21(r0)
/* 8133E044 | 54 7B 06 3E */	clrlwi r27, r3, 24
/* 8133E048 | 93 BF 00 10 */	stw r29, 0x10(r31)
/* 8133E04C | D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8133E050 | 48 20 01 E9 */	bl VIGetTvFormat
/* 8133E054 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8133E058 | 41 82 00 24 */	beq .L_8133E07C
/* 8133E05C | 40 80 00 14 */	bge .L_8133E070
/* 8133E060 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8133E064 | 41 82 00 18 */	beq .L_8133E07C
/* 8133E068 | 40 80 00 7C */	bge .L_8133E0E4
/* 8133E06C | 48 00 01 58 */	b .L_8133E1C4
.L_8133E070:
/* 8133E070 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8133E074 | 41 82 00 70 */	beq .L_8133E0E4
/* 8133E078 | 48 00 01 4C */	b .L_8133E1C4
.L_8133E07C:
/* 8133E07C | 48 20 02 7D */	bl fn_8153E2F8
/* 8133E080 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8133E084 | 40 82 00 18 */	bne .L_8133E09C
/* 8133E088 | 28 1C 00 01 */	cmplwi r28, 0x1
/* 8133E08C | 40 82 00 10 */	bne .L_8133E09C
/* 8133E090 | 38 1E 00 3C */	addi r0, r30, 0x3c
/* 8133E094 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 8133E098 | 48 00 00 0C */	b .L_8133E0A4
.L_8133E09C:
/* 8133E09C | 38 1E 00 00 */	addi r0, r30, 0x0
/* 8133E0A0 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8133E0A4:
/* 8133E0A4 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8133E0A8 | 40 82 00 14 */	bne .L_8133E0BC
/* 8133E0AC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E0B0 | 38 00 02 AE */	li r0, 0x2ae
/* 8133E0B4 | B0 03 00 0E */	sth r0, 0xe(r3)
/* 8133E0B8 | 48 00 00 10 */	b .L_8133E0C8
.L_8133E0BC:
/* 8133E0BC | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E0C0 | 38 00 02 9E */	li r0, 0x29e
/* 8133E0C4 | B0 03 00 0E */	sth r0, 0xe(r3)
.L_8133E0C8:
/* 8133E0C8 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E0CC | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8133E0D0 | 20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8133E0D4 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8133E0D8 | 7C 00 01 94 */	addze r0, r0
/* 8133E0DC | B0 03 00 0A */	sth r0, 0xa(r3)
/* 8133E0E0 | 48 00 00 E4 */	b .L_8133E1C4
.L_8133E0E4:
/* 8133E0E4 | 48 20 02 15 */	bl fn_8153E2F8
/* 8133E0E8 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8133E0EC | 40 82 00 4C */	bne .L_8133E138
/* 8133E0F0 | 28 1C 00 01 */	cmplwi r28, 0x1
/* 8133E0F4 | 40 82 00 44 */	bne .L_8133E138
/* 8133E0F8 | 38 7E 00 F0 */	addi r3, r30, 0xf0
/* 8133E0FC | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8133E100 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8133E104 | 40 82 00 10 */	bne .L_8133E114
/* 8133E108 | 38 00 02 AE */	li r0, 0x2ae
/* 8133E10C | B0 03 00 0E */	sth r0, 0xe(r3)
/* 8133E110 | 48 00 00 0C */	b .L_8133E11C
.L_8133E114:
/* 8133E114 | 38 00 02 9E */	li r0, 0x29e
/* 8133E118 | B0 03 00 0E */	sth r0, 0xe(r3)
.L_8133E11C:
/* 8133E11C | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E120 | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8133E124 | 20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8133E128 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8133E12C | 7C 00 01 94 */	addze r0, r0
/* 8133E130 | B0 03 00 0A */	sth r0, 0xa(r3)
/* 8133E134 | 48 00 00 90 */	b .L_8133E1C4
.L_8133E138:
/* 8133E138 | 28 1B 00 01 */	cmplwi r27, 0x1
/* 8133E13C | 40 82 00 44 */	bne .L_8133E180
/* 8133E140 | 38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8133E144 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8133E148 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8133E14C | 40 82 00 10 */	bne .L_8133E15C
/* 8133E150 | 38 00 02 AE */	li r0, 0x2ae
/* 8133E154 | B0 03 00 0E */	sth r0, 0xe(r3)
/* 8133E158 | 48 00 00 0C */	b .L_8133E164
.L_8133E15C:
/* 8133E15C | 38 00 02 9E */	li r0, 0x29e
/* 8133E160 | B0 03 00 0E */	sth r0, 0xe(r3)
.L_8133E164:
/* 8133E164 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E168 | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8133E16C | 20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8133E170 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8133E174 | 7C 00 01 94 */	addze r0, r0
/* 8133E178 | B0 03 00 0A */	sth r0, 0xa(r3)
/* 8133E17C | 48 00 00 48 */	b .L_8133E1C4
.L_8133E180:
/* 8133E180 | 38 7E 00 78 */	addi r3, r30, 0x78
/* 8133E184 | 28 1D 00 01 */	cmplwi r29, 0x1
/* 8133E188 | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 8133E18C | 40 82 00 10 */	bne .L_8133E19C
/* 8133E190 | 38 00 02 AA */	li r0, 0x2aa
/* 8133E194 | B0 03 00 0E */	sth r0, 0xe(r3)
/* 8133E198 | 48 00 00 0C */	b .L_8133E1A4
.L_8133E19C:
/* 8133E19C | 38 00 02 9A */	li r0, 0x29a
/* 8133E1A0 | B0 03 00 0E */	sth r0, 0xe(r3)
.L_8133E1A4:
/* 8133E1A4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E1A8 | C0 02 80 94 */	lfs f0, lbl_81694494@sda21(r0)
/* 8133E1AC | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8133E1B0 | 20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8133E1B4 | 7C 00 0E 70 */	srawi r0, r0, 1
/* 8133E1B8 | 7C 00 01 94 */	addze r0, r0
/* 8133E1BC | B0 03 00 0A */	sth r0, 0xa(r3)
/* 8133E1C0 | D0 1F 00 14 */	stfs f0, 0x14(r31)
.L_8133E1C4:
/* 8133E1C4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8133E1C8 | 48 1F F3 A1 */	bl fn_8153D568
/* 8133E1CC | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133E1D0 | 48 2B B3 3D */	bl _restgpr_27
/* 8133E1D4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133E1D8 | 7C 08 03 A6 */	mtlr r0
/* 8133E1DC | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133E1E0 | 4E 80 00 20 */	blr
.endfn reset_render_mode__Q23ipl9FrameworkFv

# .text:0x3DC | 0x8133E1E4 | size: 0xA4
# ipl::Framework::init_vi()
.fn init_vi__Q23ipl9FrameworkFv, global
/* 8133E1E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8133E1E8 | 7C 08 02 A6 */	mflr r0
/* 8133E1EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8133E1F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8133E1F4 | 7C 7F 1B 78 */	mr r31, r3
/* 8133E1F8 | 38 60 00 01 */	li r3, 0x1
/* 8133E1FC | 48 1F FF 2D */	bl VISetBlack
/* 8133E200 | 7F E3 FB 78 */	mr r3, r31
/* 8133E204 | 4B FF FE 09 */	bl reset_render_mode__Q23ipl9FrameworkFv
/* 8133E208 | 38 60 00 01 */	li r3, 0x1
/* 8133E20C | 48 20 23 D5 */	bl fn_815405E0
/* 8133E210 | 38 60 00 00 */	li r3, 0x0
/* 8133E214 | 48 20 23 CD */	bl fn_815405E0
/* 8133E218 | 38 60 00 00 */	li r3, 0x0
/* 8133E21C | 48 20 05 2D */	bl fn_8153E748
/* 8133E220 | 48 22 BF CD */	bl fn_8156A1EC
/* 8133E224 | 54 63 06 3E */	clrlwi r3, r3, 24
/* 8133E228 | 48 20 05 21 */	bl fn_8153E748
/* 8133E22C | 48 1F FD 75 */	bl VIFlush
/* 8133E230 | 80 DF 00 00 */	lwz r6, 0x0(r31)
/* 8133E234 | 38 60 00 00 */	li r3, 0x0
/* 8133E238 | 38 80 00 00 */	li r4, 0x0
/* 8133E23C | A0 A6 00 04 */	lhz r5, 0x4(r6)
/* 8133E240 | A0 C6 00 06 */	lhz r6, 0x6(r6)
/* 8133E244 | 48 20 6A F9 */	bl GXSetDispCopySrc
/* 8133E248 | 80 9F 00 00 */	lwz r4, 0x0(r31)
/* 8133E24C | A0 64 00 06 */	lhz r3, 0x6(r4)
/* 8133E250 | A0 84 00 08 */	lhz r4, 0x8(r4)
/* 8133E254 | 48 20 6C F1 */	bl GXGetYScaleFactor
/* 8133E258 | 48 20 6F 1D */	bl GXSetDispCopyYScale
/* 8133E25C | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 8133E260 | 54 64 04 3E */	clrlwi r4, r3, 16
/* 8133E264 | A0 65 00 04 */	lhz r3, 0x4(r5)
/* 8133E268 | 48 20 6B 55 */	bl GXSetDispCopyDst
/* 8133E26C | 48 1F ED 7D */	bl VIWaitForRetrace
/* 8133E270 | 48 1F ED 79 */	bl VIWaitForRetrace
/* 8133E274 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8133E278 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8133E27C | 7C 08 03 A6 */	mtlr r0
/* 8133E280 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8133E284 | 4E 80 00 20 */	blr
.endfn init_vi__Q23ipl9FrameworkFv

# .text:0x480 | 0x8133E288 | size: 0x88
# ipl::Framework::init_xfb(EGG::Heap*)
.fn init_xfb__Q23ipl9FrameworkFPQ23EGG4Heap, global
/* 8133E288 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8133E28C | 7C 08 02 A6 */	mflr r0
/* 8133E290 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8133E294 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133E298 | 48 2B B2 29 */	bl _savegpr_27
/* 8133E29C | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8133E2A0 | 7C 7B 1B 78 */	mr r27, r3
/* 8133E2A4 | 7C 9C 23 78 */	mr r28, r4
/* 8133E2A8 | 3B A0 00 00 */	li r29, 0x0
/* 8133E2AC | A0 65 00 04 */	lhz r3, 0x4(r5)
/* 8133E2B0 | 3B E0 00 00 */	li r31, 0x0
/* 8133E2B4 | A0 05 00 08 */	lhz r0, 0x8(r5)
/* 8133E2B8 | 38 63 00 0F */	addi r3, r3, 0xf
/* 8133E2BC | 54 63 04 36 */	rlwinm r3, r3, 0, 16, 27
/* 8133E2C0 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 8133E2C4 | 54 1E 08 3C */	slwi r30, r0, 1
.L_8133E2C8:
/* 8133E2C8 | 7F C3 F3 78 */	mr r3, r30
/* 8133E2CC | 7F 84 E3 78 */	mr r4, r28
/* 8133E2D0 | 38 A0 00 20 */	li r5, 0x20
/* 8133E2D4 | 48 2B 9E 01 */	bl __nwa__FUlPQ23EGG4Heapi
/* 8133E2D8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 8133E2DC | 7C 9B FA 14 */	add r4, r27, r31
/* 8133E2E0 | 2C 1D 00 02 */	cmpwi r29, 0x2
/* 8133E2E4 | 90 64 00 08 */	stw r3, 0x8(r4)
/* 8133E2E8 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 8133E2EC | 41 80 FF DC */	blt .L_8133E2C8
/* 8133E2F0 | 38 00 00 00 */	li r0, 0x0
/* 8133E2F4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8133E2F8 | 90 1B 00 04 */	stw r0, 0x4(r27)
/* 8133E2FC | 48 2B B2 11 */	bl _restgpr_27
/* 8133E300 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8133E304 | 7C 08 03 A6 */	mtlr r0
/* 8133E308 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8133E30C | 4E 80 00 20 */	blr
.endfn init_xfb__Q23ipl9FrameworkFPQ23EGG4Heap

# 0x81634FA8..0x816350D8 | size: 0x130
.data
.balign 8

# .data:0x0 | 0x81634FA8 | size: 0x3C
# ipl::sRMO_Ntsc_640x456IntDf
.obj sRMO_Ntsc_640x456IntDf__3ipl, local
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
.endobj sRMO_Ntsc_640x456IntDf__3ipl

# .data:0x3C | 0x81634FE4 | size: 0x3C
# ipl::sRMO_Ntsc_640x456Prog
.obj sRMO_Ntsc_640x456Prog__3ipl, local
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
.endobj sRMO_Ntsc_640x456Prog__3ipl

# .data:0x78 | 0x81635020 | size: 0x3C
# ipl::sRMO_Pal50_640x456IntDf
.obj sRMO_Pal50_640x456IntDf__3ipl, local
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
.endobj sRMO_Pal50_640x456IntDf__3ipl

# .data:0xB4 | 0x8163505C | size: 0x3C
# ipl::sRMO_Pal60_640x456IntDf
.obj sRMO_Pal60_640x456IntDf__3ipl, local
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
.endobj sRMO_Pal60_640x456IntDf__3ipl

# .data:0xF0 | 0x81635098 | size: 0x3C
# ipl::sRMO_Pal60_640x456Prog
.obj sRMO_Pal60_640x456Prog__3ipl, local
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
.endobj sRMO_Pal60_640x456Prog__3ipl

# .data:0x12C | 0x816350D4 | size: 0x4
.obj gap_08_816350D4_data, global
.hidden gap_08_816350D4_data
	.4byte 0x00000000
.endobj gap_08_816350D4_data

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
