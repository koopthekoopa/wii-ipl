.include "macros.inc"
.file "textinputbase.cpp"

# 0x8143BECC..0x8143BF88 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x8143BECC | size: 0x20
# textinput::CommandSender::setCommandReceiver(textinput::CommandReceiver*)
.fn setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver, global
/* 8143BECC | 7C 80 23 78 */	mr r0, r4
/* 8143BED0 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 8143BED4 | 7C 64 1B 78 */	mr r4, r3
/* 8143BED8 | 7C 03 03 78 */	mr r3, r0
/* 8143BEDC | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8143BEE0 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143BEE4 | 7D 89 03 A6 */	mtctr r12
/* 8143BEE8 | 4E 80 04 20 */	bctr
.endfn setCommandReceiver__Q29textinput13CommandSenderFPQ29textinput15CommandReceiver

# .text:0x20 | 0x8143BEEC | size: 0x90
# textinput::CommandReceiver::onCommand(textinput::CommandReceiver::INPUT_COMMAND, void*)
.fn onCommand__Q29textinput15CommandReceiverFQ39textinput15CommandReceiver13INPUT_COMMANDPv, global
/* 8143BEEC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8143BEF0 | 7C 08 02 A6 */	mflr r0
/* 8143BEF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8143BEF8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8143BEFC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8143BF00 | 7C BE 2B 78 */	mr r30, r5
/* 8143BF04 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8143BF08 | 7C 9D 23 78 */	mr r29, r4
/* 8143BF0C | 38 80 00 00 */	li r4, 0x0
/* 8143BF10 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8143BF14 | 7C 7C 1B 78 */	mr r28, r3
/* 8143BF18 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8143BF1C | 48 0D 63 C1 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8143BF20 | 7C 7F 1B 78 */	mr r31, r3
/* 8143BF24 | 48 00 00 30 */	b .L_8143BF54
.L_8143BF28:
/* 8143BF28 | 81 9F 00 00 */	lwz r12, 0x0(r31)
/* 8143BF2C | 7F E3 FB 78 */	mr r3, r31
/* 8143BF30 | 7F A4 EB 78 */	mr r4, r29
/* 8143BF34 | 7F C5 F3 78 */	mr r5, r30
/* 8143BF38 | 81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8143BF3C | 7D 89 03 A6 */	mtctr r12
/* 8143BF40 | 4E 80 04 21 */	bctrl
/* 8143BF44 | 7F E4 FB 78 */	mr r4, r31
/* 8143BF48 | 38 7C 00 04 */	addi r3, r28, 0x4
/* 8143BF4C | 48 0D 63 91 */	bl List_GetNext__Q24nw4r2utFPCQ34nw4r2ut4ListPCv
/* 8143BF50 | 7C 7F 1B 78 */	mr r31, r3
.L_8143BF54:
/* 8143BF54 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8143BF58 | 40 82 FF D0 */	bne .L_8143BF28
/* 8143BF5C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8143BF60 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8143BF64 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8143BF68 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8143BF6C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8143BF70 | 7C 08 03 A6 */	mtlr r0
/* 8143BF74 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8143BF78 | 4E 80 00 20 */	blr
.endfn onCommand__Q29textinput15CommandReceiverFQ39textinput15CommandReceiver13INPUT_COMMANDPv

# .text:0xB0 | 0x8143BF7C | size: 0xC
# textinput::CommandReceiver::clearSender()
.fn clearSender__Q29textinput15CommandReceiverFv, global
/* 8143BF7C | 38 80 00 04 */	li r4, 0x4
/* 8143BF80 | 38 63 00 04 */	addi r3, r3, 0x4
/* 8143BF84 | 48 0D 60 D8 */	b List_Init__Q24nw4r2utFPQ34nw4r2ut4ListUs
.endfn clearSender__Q29textinput15CommandReceiverFv

# 0x81667E18..0x81667E38 | size: 0x20
.data
.balign 8

# .data:0x0 | 0x81667E18 | size: 0x20
# textinput::CommandReceiver::__vtable
.obj __vt__Q29textinput15CommandReceiver, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q29textinput15CommandReceiverFv
	.4byte create__Q29textinput4BaseFP12MEMAllocator
	.4byte init__Q29textinput4BaseFv
	.4byte clearSender__Q29textinput15CommandReceiverFv
	.4byte onCommand__Q29textinput15CommandReceiverFQ39textinput15CommandReceiver13INPUT_COMMANDPv
	.4byte addSender__Q29textinput15CommandReceiverFPQ29textinput13CommandSender
.endobj __vt__Q29textinput15CommandReceiver
