.include "macros.inc"
.file "snd_StrmFile.cpp"

# 0x8150C4B0..0x8150C8D8 | size: 0x428
.text
.balign 4

# .text:0x0 | 0x8150C4B0 | size: 0x10
# nw4r::snd::detail::StrmFileReader::StrmFileReader()
.fn __ct__Q44nw4r3snd6detail14StrmFileReaderFv, global
/* 8150C4B0 | 38 00 00 00 */	li r0, 0x0
/* 8150C4B4 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8150C4B8 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8150C4BC | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail14StrmFileReaderFv

# .text:0x10 | 0x8150C4C0 | size: 0xCC
# nw4r::snd::detail::StrmFileReader::ReadStrmInfo(nw4r::snd::detail::StrmInfo*) const
.fn ReadStrmInfo__Q44nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3snd6detail8StrmInfo, global
/* 8150C4C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150C4C4 | 7C 08 02 A6 */	mflr r0
/* 8150C4C8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 8150C4CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150C4D0 | 38 A3 00 08 */	addi r5, r3, 0x8
/* 8150C4D4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150C4D8 | 7C 9F 23 78 */	mr r31, r4
/* 8150C4DC | 88 63 00 08 */	lbz r3, 0x8(r3)
/* 8150C4E0 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8150C4E4 | 48 00 2F E9 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8150C4E8 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8150C4EC | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 8150C4F0 | 88 03 00 01 */	lbz r0, 0x1(r3)
/* 8150C4F4 | 98 1F 00 01 */	stb r0, 0x1(r31)
/* 8150C4F8 | 88 03 00 02 */	lbz r0, 0x2(r3)
/* 8150C4FC | 98 1F 00 02 */	stb r0, 0x2(r31)
/* 8150C500 | 88 83 00 03 */	lbz r4, 0x3(r3)
/* 8150C504 | A0 03 00 04 */	lhz r0, 0x4(r3)
/* 8150C508 | 54 84 80 1E */	slwi r4, r4, 16
/* 8150C50C | 7C 04 02 14 */	add r0, r4, r0
/* 8150C510 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 8150C514 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8150C518 | B0 1F 00 08 */	sth r0, 0x8(r31)
/* 8150C51C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 8150C520 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 8150C524 | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8150C528 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8150C52C | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8150C530 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8150C534 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8150C538 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 8150C53C | 80 03 00 18 */	lwz r0, 0x18(r3)
/* 8150C540 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8150C544 | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8150C548 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 8150C54C | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 8150C550 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 8150C554 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8150C558 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 8150C55C | 80 03 00 28 */	lwz r0, 0x28(r3)
/* 8150C560 | 90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8150C564 | 80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8150C568 | 90 1F 00 30 */	stw r0, 0x30(r31)
/* 8150C56C | 80 03 00 30 */	lwz r0, 0x30(r3)
/* 8150C570 | 38 60 00 01 */	li r3, 0x1
/* 8150C574 | 90 1F 00 34 */	stw r0, 0x34(r31)
/* 8150C578 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150C57C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150C580 | 7C 08 03 A6 */	mtlr r0
/* 8150C584 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150C588 | 4E 80 00 20 */	blr
.endfn ReadStrmInfo__Q44nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3snd6detail8StrmInfo

# .text:0xDC | 0x8150C58C | size: 0x188
# nw4r::snd::detail::StrmFileReader::ReadAdpcmInfo(nw4r::snd::detail::AdpcmInfo*, int) const
.fn ReadAdpcmInfo__Q44nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3snd6detail9AdpcmInfoi, global
/* 8150C58C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150C590 | 7C 08 02 A6 */	mflr r0
/* 8150C594 | 80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8150C598 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150C59C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150C5A0 | 7C 9F 23 78 */	mr r31, r4
/* 8150C5A4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150C5A8 | 7C BE 2B 78 */	mr r30, r5
/* 8150C5AC | 38 A6 00 08 */	addi r5, r6, 0x8
/* 8150C5B0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150C5B4 | 7C 7D 1B 78 */	mr r29, r3
/* 8150C5B8 | 88 66 00 08 */	lbz r3, 0x8(r6)
/* 8150C5BC | 80 86 00 0C */	lwz r4, 0xc(r6)
/* 8150C5C0 | 48 00 2F 0D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8150C5C4 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8150C5C8 | 28 00 00 02 */	cmplwi r0, 0x2
/* 8150C5CC | 41 82 00 0C */	beq .L_8150C5D8
/* 8150C5D0 | 38 60 00 00 */	li r3, 0x0
/* 8150C5D4 | 48 00 01 24 */	b .L_8150C6F8
.L_8150C5D8:
/* 8150C5D8 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8150C5DC | 88 64 00 18 */	lbz r3, 0x18(r4)
/* 8150C5E0 | 38 A4 00 08 */	addi r5, r4, 0x8
/* 8150C5E4 | 80 84 00 1C */	lwz r4, 0x1c(r4)
/* 8150C5E8 | 48 00 2E E5 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8150C5EC | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8150C5F0 | 7C 1E 00 00 */	cmpw r30, r0
/* 8150C5F4 | 41 80 00 0C */	blt .L_8150C600
/* 8150C5F8 | 38 60 00 00 */	li r3, 0x0
/* 8150C5FC | 48 00 00 FC */	b .L_8150C6F8
.L_8150C600:
/* 8150C600 | 57 C0 18 38 */	slwi r0, r30, 3
/* 8150C604 | 80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8150C608 | 7C C3 02 14 */	add r6, r3, r0
/* 8150C60C | 38 A4 00 08 */	addi r5, r4, 0x8
/* 8150C610 | 88 66 00 04 */	lbz r3, 0x4(r6)
/* 8150C614 | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 8150C618 | 48 00 2E B5 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8150C61C | 7C 64 1B 78 */	mr r4, r3
/* 8150C620 | 80 BD 00 04 */	lwz r5, 0x4(r29)
/* 8150C624 | 88 63 00 00 */	lbz r3, 0x0(r3)
/* 8150C628 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 8150C62C | 38 A5 00 08 */	addi r5, r5, 0x8
/* 8150C630 | 48 00 2E 9D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8150C634 | A0 83 00 00 */	lhz r4, 0x0(r3)
/* 8150C638 | A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8150C63C | B0 9F 00 00 */	sth r4, 0x0(r31)
/* 8150C640 | B0 1F 00 02 */	sth r0, 0x2(r31)
/* 8150C644 | A0 83 00 04 */	lhz r4, 0x4(r3)
/* 8150C648 | A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8150C64C | B0 9F 00 04 */	sth r4, 0x4(r31)
/* 8150C650 | B0 1F 00 06 */	sth r0, 0x6(r31)
/* 8150C654 | A0 83 00 08 */	lhz r4, 0x8(r3)
/* 8150C658 | A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8150C65C | B0 9F 00 08 */	sth r4, 0x8(r31)
/* 8150C660 | B0 1F 00 0A */	sth r0, 0xa(r31)
/* 8150C664 | A0 83 00 0C */	lhz r4, 0xc(r3)
/* 8150C668 | A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8150C66C | B0 9F 00 0C */	sth r4, 0xc(r31)
/* 8150C670 | B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8150C674 | A0 83 00 10 */	lhz r4, 0x10(r3)
/* 8150C678 | A0 03 00 12 */	lhz r0, 0x12(r3)
/* 8150C67C | B0 9F 00 10 */	sth r4, 0x10(r31)
/* 8150C680 | B0 1F 00 12 */	sth r0, 0x12(r31)
/* 8150C684 | A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8150C688 | A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8150C68C | B0 9F 00 14 */	sth r4, 0x14(r31)
/* 8150C690 | B0 1F 00 16 */	sth r0, 0x16(r31)
/* 8150C694 | A0 83 00 18 */	lhz r4, 0x18(r3)
/* 8150C698 | A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 8150C69C | B0 9F 00 18 */	sth r4, 0x18(r31)
/* 8150C6A0 | B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 8150C6A4 | A0 83 00 1C */	lhz r4, 0x1c(r3)
/* 8150C6A8 | A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 8150C6AC | B0 9F 00 1C */	sth r4, 0x1c(r31)
/* 8150C6B0 | B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 8150C6B4 | A0 83 00 20 */	lhz r4, 0x20(r3)
/* 8150C6B8 | A0 03 00 22 */	lhz r0, 0x22(r3)
/* 8150C6BC | B0 9F 00 20 */	sth r4, 0x20(r31)
/* 8150C6C0 | B0 1F 00 22 */	sth r0, 0x22(r31)
/* 8150C6C4 | A0 83 00 24 */	lhz r4, 0x24(r3)
/* 8150C6C8 | A0 03 00 26 */	lhz r0, 0x26(r3)
/* 8150C6CC | B0 9F 00 24 */	sth r4, 0x24(r31)
/* 8150C6D0 | B0 1F 00 26 */	sth r0, 0x26(r31)
/* 8150C6D4 | A0 03 00 28 */	lhz r0, 0x28(r3)
/* 8150C6D8 | B0 1F 00 28 */	sth r0, 0x28(r31)
/* 8150C6DC | A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 8150C6E0 | B0 1F 00 2A */	sth r0, 0x2a(r31)
/* 8150C6E4 | A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 8150C6E8 | B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 8150C6EC | A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 8150C6F0 | 38 60 00 01 */	li r3, 0x1
/* 8150C6F4 | B0 1F 00 2E */	sth r0, 0x2e(r31)
.L_8150C6F8:
/* 8150C6F8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150C6FC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150C700 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150C704 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150C708 | 7C 08 03 A6 */	mtlr r0
/* 8150C70C | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150C710 | 4E 80 00 20 */	blr
.endfn ReadAdpcmInfo__Q44nw4r3snd6detail14StrmFileReaderCFPQ44nw4r3snd6detail9AdpcmInfoi

# .text:0x264 | 0x8150C714 | size: 0x1C4
# nw4r::snd::detail::StrmFileLoader::LoadFileHeader(void*, unsigned long)
.fn LoadFileHeader__Q44nw4r3snd6detail14StrmFileLoaderFPvUl, global
/* 8150C714 | 94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8150C718 | 7C 08 02 A6 */	mflr r0
/* 8150C71C | 90 01 00 84 */	stw r0, 0x84(r1)
/* 8150C720 | 93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8150C724 | 7C 9F 23 78 */	mr r31, r4
/* 8150C728 | 38 80 00 00 */	li r4, 0x0
/* 8150C72C | 93 C1 00 78 */	stw r30, 0x78(r1)
/* 8150C730 | 7C 7E 1B 78 */	mr r30, r3
/* 8150C734 | 93 A1 00 74 */	stw r29, 0x74(r1)
/* 8150C738 | 93 81 00 70 */	stw r28, 0x70(r1)
/* 8150C73C | 7C BC 2B 78 */	mr r28, r5
/* 8150C740 | 38 A0 00 00 */	li r5, 0x0
/* 8150C744 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8150C748 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150C74C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8150C750 | 7D 89 03 A6 */	mtctr r12
/* 8150C754 | 4E 80 04 21 */	bctrl
/* 8150C758 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8150C75C | 38 01 00 27 */	addi r0, r1, 0x27
/* 8150C760 | 54 1D 00 34 */	clrrwi r29, r0, 5
/* 8150C764 | 38 A0 00 40 */	li r5, 0x40
/* 8150C768 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150C76C | 7F A4 EB 78 */	mr r4, r29
/* 8150C770 | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8150C774 | 7D 89 03 A6 */	mtctr r12
/* 8150C778 | 4E 80 04 21 */	bctrl
/* 8150C77C | 28 03 00 40 */	cmplwi r3, 0x40
/* 8150C780 | 41 82 00 0C */	beq .L_8150C78C
/* 8150C784 | 38 60 00 00 */	li r3, 0x0
/* 8150C788 | 48 00 01 30 */	b .L_8150C8B8
.L_8150C78C:
/* 8150C78C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8150C790 | 3C 03 AD AD */	subis r0, r3, 0x5253
/* 8150C794 | 28 00 54 4D */	cmplwi r0, 0x544d
/* 8150C798 | 41 82 00 0C */	beq .L_8150C7A4
/* 8150C79C | 38 00 00 00 */	li r0, 0x0
/* 8150C7A0 | 48 00 00 30 */	b .L_8150C7D0
.L_8150C7A4:
/* 8150C7A4 | A0 9D 00 06 */	lhz r4, 0x6(r29)
/* 8150C7A8 | 28 04 01 00 */	cmplwi r4, 0x100
/* 8150C7AC | 40 80 00 0C */	bge .L_8150C7B8
/* 8150C7B0 | 38 00 00 00 */	li r0, 0x0
/* 8150C7B4 | 48 00 00 1C */	b .L_8150C7D0
.L_8150C7B8:
/* 8150C7B8 | 20 04 01 00 */	subfic r0, r4, 0x100
/* 8150C7BC | 38 60 01 00 */	li r3, 0x100
/* 8150C7C0 | 7C 63 23 38 */	orc r3, r3, r4
/* 8150C7C4 | 54 00 F8 7E */	srwi r0, r0, 1
/* 8150C7C8 | 7C 00 18 50 */	subf r0, r0, r3
/* 8150C7CC | 54 00 0F FE */	srwi r0, r0, 31
.L_8150C7D0:
/* 8150C7D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150C7D4 | 40 82 00 0C */	bne .L_8150C7E0
/* 8150C7D8 | 38 60 00 00 */	li r3, 0x0
/* 8150C7DC | 48 00 00 DC */	b .L_8150C8B8
.L_8150C7E0:
/* 8150C7E0 | 80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8150C7E4 | 7C 00 E0 40 */	cmplw r0, r28
/* 8150C7E8 | 40 81 00 0C */	ble .L_8150C7F4
/* 8150C7EC | 38 60 00 00 */	li r3, 0x0
/* 8150C7F0 | 48 00 00 C8 */	b .L_8150C8B8
.L_8150C7F4:
/* 8150C7F4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8150C7F8 | 38 80 00 00 */	li r4, 0x0
/* 8150C7FC | 80 DD 00 10 */	lwz r6, 0x10(r29)
/* 8150C800 | 38 A0 00 00 */	li r5, 0x0
/* 8150C804 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150C808 | 80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8150C80C | 81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8150C810 | 7F A6 02 14 */	add r29, r6, r0
/* 8150C814 | 7D 89 03 A6 */	mtctr r12
/* 8150C818 | 4E 80 04 21 */	bctrl
/* 8150C81C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8150C820 | 7F E4 FB 78 */	mr r4, r31
/* 8150C824 | 7F A5 EB 78 */	mr r5, r29
/* 8150C828 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150C82C | 81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8150C830 | 7D 89 03 A6 */	mtctr r12
/* 8150C834 | 4E 80 04 21 */	bctrl
/* 8150C838 | 7C 03 E8 40 */	cmplw r3, r29
/* 8150C83C | 41 82 00 0C */	beq .L_8150C848
/* 8150C840 | 38 60 00 00 */	li r3, 0x0
/* 8150C844 | 48 00 00 74 */	b .L_8150C8B8
.L_8150C848:
/* 8150C848 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8150C84C | 3C 03 AD AD */	subis r0, r3, 0x5253
/* 8150C850 | 28 00 54 4D */	cmplwi r0, 0x544d
/* 8150C854 | 41 82 00 0C */	beq .L_8150C860
/* 8150C858 | 38 00 00 00 */	li r0, 0x0
/* 8150C85C | 48 00 00 30 */	b .L_8150C88C
.L_8150C860:
/* 8150C860 | A0 9F 00 06 */	lhz r4, 0x6(r31)
/* 8150C864 | 28 04 01 00 */	cmplwi r4, 0x100
/* 8150C868 | 40 80 00 0C */	bge .L_8150C874
/* 8150C86C | 38 00 00 00 */	li r0, 0x0
/* 8150C870 | 48 00 00 1C */	b .L_8150C88C
.L_8150C874:
/* 8150C874 | 20 04 01 00 */	subfic r0, r4, 0x100
/* 8150C878 | 38 60 01 00 */	li r3, 0x100
/* 8150C87C | 7C 63 23 38 */	orc r3, r3, r4
/* 8150C880 | 54 00 F8 7E */	srwi r0, r0, 1
/* 8150C884 | 7C 00 18 50 */	subf r0, r0, r3
/* 8150C888 | 54 00 0F FE */	srwi r0, r0, 31
.L_8150C88C:
/* 8150C88C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150C890 | 41 82 00 24 */	beq .L_8150C8B4
/* 8150C894 | 93 FE 00 04 */	stw r31, 0x4(r30)
/* 8150C898 | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8150C89C | 7C 60 FA 14 */	add r3, r0, r31
/* 8150C8A0 | 90 7E 00 08 */	stw r3, 0x8(r30)
/* 8150C8A4 | 38 A3 00 08 */	addi r5, r3, 0x8
/* 8150C8A8 | 88 63 00 08 */	lbz r3, 0x8(r3)
/* 8150C8AC | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8150C8B0 | 48 00 2C 1D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
.L_8150C8B4:
/* 8150C8B4 | 38 60 00 01 */	li r3, 0x1
.L_8150C8B8:
/* 8150C8B8 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8150C8BC | 83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8150C8C0 | 83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8150C8C4 | 83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8150C8C8 | 83 81 00 70 */	lwz r28, 0x70(r1)
/* 8150C8CC | 7C 08 03 A6 */	mtlr r0
/* 8150C8D0 | 38 21 00 80 */	addi r1, r1, 0x80
/* 8150C8D4 | 4E 80 00 20 */	blr
.endfn LoadFileHeader__Q44nw4r3snd6detail14StrmFileLoaderFPvUl
