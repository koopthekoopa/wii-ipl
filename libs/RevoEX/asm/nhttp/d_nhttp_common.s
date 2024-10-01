.include "macros.inc"
.file "d_nhttp_common.c"

# 0x810C8BC0..0x810C98A0 | size: 0xCE0
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810C8BC0 | size: 0x40
.obj NHTTPiStaticResource, global
	.skip 0x40
.endobj NHTTPiStaticResource

# .bss:0x40 | 0x810C8C00 | size: 0xCA0
.obj sysInfo, global
	.skip 0xCA0
.endobj sysInfo

# 0x8149C524..0x8149CD4C | size: 0x828
.text
.balign 4

# .text:0x0 | 0x8149C524 | size: 0x88
.fn NHTTPi_WaitForCompletion, global
/* 8149C524 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C528 | 7C 08 02 A6 */	mflr r0
/* 8149C52C | 3C 80 81 0D */	lis r4, NHTTPiStaticResource@ha
/* 8149C530 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C534 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149C538 | 3B E4 8B C0 */	addi r31, r4, NHTTPiStaticResource@l
/* 8149C53C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149C540 | 7C 7E 1B 78 */	mr r30, r3
/* 8149C544 | 80 04 8B C0 */	lwz r0, NHTTPiStaticResource@l(r4)
/* 8149C548 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149C54C | 40 82 00 1C */	bne .L_8149C568
/* 8149C550 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8149C554 | 48 09 56 7D */	bl fn_81531BD0
/* 8149C558 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 8149C55C | 48 09 59 79 */	bl fn_81531ED4
/* 8149C560 | 38 00 00 01 */	li r0, 0x1
/* 8149C564 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8149C568:
/* 8149C568 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8149C56C | 48 09 56 9D */	bl fn_81531C08
/* 8149C570 | 48 00 00 10 */	b .L_8149C580
.L_8149C574:
/* 8149C574 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 8149C578 | 38 9F 00 04 */	addi r4, r31, 0x4
/* 8149C57C | 48 09 59 5D */	bl fn_81531ED8
.L_8149C580:
/* 8149C580 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8149C584 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149C588 | 40 82 FF EC */	bne .L_8149C574
/* 8149C58C | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8149C590 | 48 09 57 55 */	bl fn_81531CE4
/* 8149C594 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C598 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C59C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149C5A0 | 7C 08 03 A6 */	mtlr r0
/* 8149C5A4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C5A8 | 4E 80 00 20 */	blr
.endfn NHTTPi_WaitForCompletion

# .text:0x88 | 0x8149C5AC | size: 0x7C
.fn NHTTPi_NotifyCompletion, global
/* 8149C5AC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C5B0 | 7C 08 02 A6 */	mflr r0
/* 8149C5B4 | 3C 80 81 0D */	lis r4, NHTTPiStaticResource@ha
/* 8149C5B8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C5BC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149C5C0 | 3B E4 8B C0 */	addi r31, r4, NHTTPiStaticResource@l
/* 8149C5C4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8149C5C8 | 7C 7E 1B 78 */	mr r30, r3
/* 8149C5CC | 80 04 8B C0 */	lwz r0, NHTTPiStaticResource@l(r4)
/* 8149C5D0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149C5D4 | 40 82 00 1C */	bne .L_8149C5F0
/* 8149C5D8 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8149C5DC | 48 09 55 F5 */	bl fn_81531BD0
/* 8149C5E0 | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 8149C5E4 | 48 09 58 F1 */	bl fn_81531ED4
/* 8149C5E8 | 38 00 00 01 */	li r0, 0x1
/* 8149C5EC | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_8149C5F0:
/* 8149C5F0 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8149C5F4 | 48 09 56 15 */	bl fn_81531C08
/* 8149C5F8 | 38 00 00 00 */	li r0, 0x0
/* 8149C5FC | 38 7F 00 1C */	addi r3, r31, 0x1c
/* 8149C600 | 90 1E 00 0C */	stw r0, 0xc(r30)
/* 8149C604 | 48 09 59 B1 */	bl fn_81531FB4
/* 8149C608 | 38 7F 00 04 */	addi r3, r31, 0x4
/* 8149C60C | 48 09 56 D9 */	bl fn_81531CE4
/* 8149C610 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C614 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C618 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8149C61C | 7C 08 03 A6 */	mtlr r0
/* 8149C620 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C624 | 4E 80 00 20 */	blr
.endfn NHTTPi_NotifyCompletion

# .text:0x104 | 0x8149C628 | size: 0x110
.fn NHTTPi_ControlConnectionList, local
/* 8149C628 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8149C62C | 7C 08 02 A6 */	mflr r0
/* 8149C630 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8149C634 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8149C638 | 3B E0 00 00 */	li r31, 0x0
/* 8149C63C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8149C640 | 7C BE 2B 78 */	mr r30, r5
/* 8149C644 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8149C648 | 7C 9D 23 78 */	mr r29, r4
/* 8149C64C | 93 81 00 10 */	stw r28, 0x10(r1)
/* 8149C650 | 7C 7C 1B 78 */	mr r28, r3
/* 8149C654 | 4B FF 99 A9 */	bl NHTTPi_lockReqList
/* 8149C658 | 28 1E 00 03 */	cmplwi r30, 0x3
/* 8149C65C | 40 82 00 18 */	bne .L_8149C674
/* 8149C660 | 80 0D AD 80 */	lwz r0, l_nhttp_connection_list_p@sda21(r0)
/* 8149C664 | 7F BF EB 78 */	mr r31, r29
/* 8149C668 | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 8149C66C | 93 AD AD 80 */	stw r29, l_nhttp_connection_list_p@sda21(r0)
/* 8149C670 | 48 00 00 9C */	b .L_8149C70C
.L_8149C674:
/* 8149C674 | 38 8D AD 80 */	li r4, l_nhttp_connection_list_p@sda21
/* 8149C678 | 48 00 00 88 */	b .L_8149C700
.L_8149C67C:
/* 8149C67C | 2C 1E 00 02 */	cmpwi r30, 0x2
/* 8149C680 | 41 82 00 48 */	beq .L_8149C6C8
/* 8149C684 | 40 80 00 14 */	bge .L_8149C698
/* 8149C688 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8149C68C | 41 82 00 18 */	beq .L_8149C6A4
/* 8149C690 | 40 80 00 24 */	bge .L_8149C6B4
/* 8149C694 | 48 00 00 5C */	b .L_8149C6F0
.L_8149C698:
/* 8149C698 | 2C 1E 00 04 */	cmpwi r30, 0x4
/* 8149C69C | 41 82 00 40 */	beq .L_8149C6DC
/* 8149C6A0 | 48 00 00 50 */	b .L_8149C6F0
.L_8149C6A4:
/* 8149C6A4 | 7C 03 E8 40 */	cmplw r3, r29
/* 8149C6A8 | 40 82 00 48 */	bne .L_8149C6F0
/* 8149C6AC | 7C 7F 1B 78 */	mr r31, r3
/* 8149C6B0 | 48 00 00 40 */	b .L_8149C6F0
.L_8149C6B4:
/* 8149C6B4 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8149C6B8 | 7C 00 E8 40 */	cmplw r0, r29
/* 8149C6BC | 40 82 00 34 */	bne .L_8149C6F0
/* 8149C6C0 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C6C4 | 48 00 00 2C */	b .L_8149C6F0
.L_8149C6C8:
/* 8149C6C8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8149C6CC | 7C 00 E8 40 */	cmplw r0, r29
/* 8149C6D0 | 40 82 00 20 */	bne .L_8149C6F0
/* 8149C6D4 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C6D8 | 48 00 00 18 */	b .L_8149C6F0
.L_8149C6DC:
/* 8149C6DC | 7C 03 E8 40 */	cmplw r3, r29
/* 8149C6E0 | 40 82 00 10 */	bne .L_8149C6F0
/* 8149C6E4 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 8149C6E8 | 7C 7F 1B 78 */	mr r31, r3
/* 8149C6EC | 90 04 00 00 */	stw r0, 0x0(r4)
.L_8149C6F0:
/* 8149C6F0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8149C6F4 | 40 82 00 18 */	bne .L_8149C70C
/* 8149C6F8 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8149C6FC | 38 83 00 20 */	addi r4, r3, 0x20
.L_8149C700:
/* 8149C700 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 8149C704 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C708 | 40 82 FF 74 */	bne .L_8149C67C
.L_8149C70C:
/* 8149C70C | 7F 83 E3 78 */	mr r3, r28
/* 8149C710 | 4B FF 98 F1 */	bl NHTTPi_unlockReqList
/* 8149C714 | 7F E3 FB 78 */	mr r3, r31
/* 8149C718 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8149C71C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8149C720 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8149C724 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 8149C728 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8149C72C | 7C 08 03 A6 */	mtlr r0
/* 8149C730 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8149C734 | 4E 80 00 20 */	blr
.endfn NHTTPi_ControlConnectionList

# .text:0x214 | 0x8149C738 | size: 0x30
.fn NHTTPi_CommitConnectionList, global
/* 8149C738 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C73C | 7C 08 02 A6 */	mflr r0
/* 8149C740 | 38 A0 00 03 */	li r5, 0x3
/* 8149C744 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C748 | 4B FF FE E1 */	bl NHTTPi_ControlConnectionList
/* 8149C74C | 7C 03 00 D0 */	neg r0, r3
/* 8149C750 | 7C 60 00 F8 */	nor r0, r3, r0
/* 8149C754 | 7C 03 FE 70 */	srawi r3, r0, 31
/* 8149C758 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C75C | 7C 08 03 A6 */	mtlr r0
/* 8149C760 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C764 | 4E 80 00 20 */	blr
.endfn NHTTPi_CommitConnectionList

# .text:0x244 | 0x8149C768 | size: 0x30
.fn NHTTPi_OmitConnectionList, global
/* 8149C768 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C76C | 7C 08 02 A6 */	mflr r0
/* 8149C770 | 38 A0 00 04 */	li r5, 0x4
/* 8149C774 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C778 | 4B FF FE B1 */	bl NHTTPi_ControlConnectionList
/* 8149C77C | 7C 03 00 D0 */	neg r0, r3
/* 8149C780 | 7C 60 00 F8 */	nor r0, r3, r0
/* 8149C784 | 7C 03 FE 70 */	srawi r3, r0, 31
/* 8149C788 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C78C | 7C 08 03 A6 */	mtlr r0
/* 8149C790 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C794 | 4E 80 00 20 */	blr
.endfn NHTTPi_OmitConnectionList

# .text:0x274 | 0x8149C798 | size: 0x38
.fn NHTTPi_Connection2Request, global
/* 8149C798 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C79C | 7C 08 02 A6 */	mflr r0
/* 8149C7A0 | 38 A0 00 00 */	li r5, 0x0
/* 8149C7A4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C7A8 | 4B FF FE 81 */	bl NHTTPi_ControlConnectionList
/* 8149C7AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C7B0 | 41 82 00 0C */	beq .L_8149C7BC
/* 8149C7B4 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8149C7B8 | 48 00 00 08 */	b .L_8149C7C0
.L_8149C7BC:
/* 8149C7BC | 38 60 00 00 */	li r3, 0x0
.L_8149C7C0:
/* 8149C7C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C7C4 | 7C 08 03 A6 */	mtlr r0
/* 8149C7C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C7CC | 4E 80 00 20 */	blr
.endfn NHTTPi_Connection2Request

# .text:0x2AC | 0x8149C7D0 | size: 0x38
.fn NHTTPi_Connection2Response, global
/* 8149C7D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C7D4 | 7C 08 02 A6 */	mflr r0
/* 8149C7D8 | 38 A0 00 00 */	li r5, 0x0
/* 8149C7DC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C7E0 | 4B FF FE 49 */	bl NHTTPi_ControlConnectionList
/* 8149C7E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C7E8 | 41 82 00 0C */	beq .L_8149C7F4
/* 8149C7EC | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8149C7F0 | 48 00 00 08 */	b .L_8149C7F8
.L_8149C7F4:
/* 8149C7F4 | 38 60 00 00 */	li r3, 0x0
.L_8149C7F8:
/* 8149C7F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C7FC | 7C 08 03 A6 */	mtlr r0
/* 8149C800 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C804 | 4E 80 00 20 */	blr
.endfn NHTTPi_Connection2Response

# .text:0x2E4 | 0x8149C808 | size: 0x8
.fn NHTTPi_Request2Connection, global
/* 8149C808 | 38 A0 00 01 */	li r5, 0x1
/* 8149C80C | 4B FF FE 1C */	b NHTTPi_ControlConnectionList
.endfn NHTTPi_Request2Connection

# .text:0x2EC | 0x8149C810 | size: 0x8
.fn NHTTPi_Response2Connection, global
/* 8149C810 | 38 A0 00 02 */	li r5, 0x2
/* 8149C814 | 4B FF FE 14 */	b NHTTPi_ControlConnectionList
.endfn NHTTPi_Response2Connection

# .text:0x2F4 | 0x8149C818 | size: 0x8
.fn NHTTPi_GetConnection, global
/* 8149C818 | 38 A0 00 00 */	li r5, 0x0
/* 8149C81C | 4B FF FE 0C */	b NHTTPi_ControlConnectionList
.endfn NHTTPi_GetConnection

# .text:0x2FC | 0x8149C820 | size: 0x44
.fn NHTTPi_GetRequest, global
/* 8149C820 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C824 | 7C 08 02 A6 */	mflr r0
/* 8149C828 | 38 A0 00 00 */	li r5, 0x0
/* 8149C82C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C830 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149C834 | 7C 9F 23 78 */	mr r31, r4
/* 8149C838 | 4B FF FD F1 */	bl NHTTPi_ControlConnectionList
/* 8149C83C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C840 | 41 82 00 0C */	beq .L_8149C84C
/* 8149C844 | 80 63 00 10 */	lwz r3, 0x10(r3)
/* 8149C848 | 48 00 00 08 */	b .L_8149C850
.L_8149C84C:
/* 8149C84C | 7F E3 FB 78 */	mr r3, r31
.L_8149C850:
/* 8149C850 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C854 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C858 | 7C 08 03 A6 */	mtlr r0
/* 8149C85C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C860 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetRequest

# .text:0x340 | 0x8149C864 | size: 0x44
.fn NHTTPi_GetResponse, global
/* 8149C864 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149C868 | 7C 08 02 A6 */	mflr r0
/* 8149C86C | 38 A0 00 00 */	li r5, 0x0
/* 8149C870 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149C874 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149C878 | 7C 9F 23 78 */	mr r31, r4
/* 8149C87C | 4B FF FD AD */	bl NHTTPi_ControlConnectionList
/* 8149C880 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C884 | 41 82 00 0C */	beq .L_8149C890
/* 8149C888 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8149C88C | 48 00 00 08 */	b .L_8149C894
.L_8149C890:
/* 8149C890 | 7F E3 FB 78 */	mr r3, r31
.L_8149C894:
/* 8149C894 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149C898 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C89C | 7C 08 03 A6 */	mtlr r0
/* 8149C8A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149C8A4 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetResponse

# .text:0x384 | 0x8149C8A8 | size: 0x20
.fn NHTTPi_GetConnectionListLength, global
/* 8149C8A8 | 80 8D AD 80 */	lwz r4, l_nhttp_connection_list_p@sda21(r0)
/* 8149C8AC | 38 60 00 00 */	li r3, 0x0
/* 8149C8B0 | 48 00 00 0C */	b .L_8149C8BC
.L_8149C8B4:
/* 8149C8B4 | 80 84 00 20 */	lwz r4, 0x20(r4)
/* 8149C8B8 | 38 63 00 01 */	addi r3, r3, 0x1
.L_8149C8BC:
/* 8149C8BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149C8C0 | 40 82 FF F4 */	bne .L_8149C8B4
/* 8149C8C4 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetConnectionListLength

# .text:0x3A4 | 0x8149C8C8 | size: 0xE8
.fn NHTTPi_PostSendCallback, global
/* 8149C8C8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149C8CC | 7C 08 02 A6 */	mflr r0
/* 8149C8D0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149C8D4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149C8D8 | 48 15 CB E9 */	bl _savegpr_27
/* 8149C8DC | 7C BF 2B 78 */	mr r31, r5
/* 8149C8E0 | 7C 7B 1B 78 */	mr r27, r3
/* 8149C8E4 | 7C 9C 23 78 */	mr r28, r4
/* 8149C8E8 | 7C DE 33 78 */	mr r30, r6
/* 8149C8EC | 3B A0 FF FF */	li r29, -0x1
/* 8149C8F0 | 38 A0 00 00 */	li r5, 0x0
/* 8149C8F4 | 4B FF FD 35 */	bl NHTTPi_ControlConnectionList
/* 8149C8F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C8FC | 41 82 00 98 */	beq .L_8149C994
/* 8149C900 | 7F 63 DB 78 */	mr r3, r27
/* 8149C904 | 7F 84 E3 78 */	mr r4, r28
/* 8149C908 | 38 A0 00 00 */	li r5, 0x0
/* 8149C90C | 4B FF FD 1D */	bl NHTTPi_ControlConnectionList
/* 8149C910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C914 | 41 82 00 0C */	beq .L_8149C920
/* 8149C918 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 8149C91C | 48 00 00 08 */	b .L_8149C924
.L_8149C920:
/* 8149C920 | 38 00 00 00 */	li r0, 0x0
.L_8149C924:
/* 8149C924 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149C928 | 41 82 00 6C */	beq .L_8149C994
/* 8149C92C | 80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 8149C930 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149C934 | 41 82 00 60 */	beq .L_8149C994
/* 8149C938 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 8149C93C | 7F 83 E3 78 */	mr r3, r28
/* 8149C940 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149C944 | 38 80 00 01 */	li r4, 0x1
/* 8149C948 | 80 1C 00 24 */	lwz r0, 0x24(r28)
/* 8149C94C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8149C950 | 80 1C 00 28 */	lwz r0, 0x28(r28)
/* 8149C954 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8149C958 | 93 C1 00 14 */	stw r30, 0x14(r1)
/* 8149C95C | 81 9C 00 1C */	lwz r12, 0x1c(r28)
/* 8149C960 | 7D 89 03 A6 */	mtctr r12
/* 8149C964 | 4E 80 04 21 */	bctrl
/* 8149C968 | 83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8149C96C | 7C 7D 1B 78 */	mr r29, r3
/* 8149C970 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149C974 | 7F 63 DB 78 */	mr r3, r27
/* 8149C978 | 7F 84 E3 78 */	mr r4, r28
/* 8149C97C | 38 A0 00 00 */	li r5, 0x0
/* 8149C980 | 4B FF FC A9 */	bl NHTTPi_ControlConnectionList
/* 8149C984 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C988 | 41 82 00 0C */	beq .L_8149C994
/* 8149C98C | 93 E3 00 24 */	stw r31, 0x24(r3)
/* 8149C990 | 93 C3 00 28 */	stw r30, 0x28(r3)
.L_8149C994:
/* 8149C994 | 39 61 00 30 */	addi r11, r1, 0x30
/* 8149C998 | 7F A3 EB 78 */	mr r3, r29
/* 8149C99C | 48 15 CB 71 */	bl _restgpr_27
/* 8149C9A0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149C9A4 | 7C 08 03 A6 */	mtlr r0
/* 8149C9A8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149C9AC | 4E 80 00 20 */	blr
.endfn NHTTPi_PostSendCallback

# .text:0x48C | 0x8149C9B0 | size: 0x118
.fn NHTTPi_BufferFullCallback, global
/* 8149C9B0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149C9B4 | 7C 08 02 A6 */	mflr r0
/* 8149C9B8 | 38 A0 00 00 */	li r5, 0x0
/* 8149C9BC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149C9C0 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8149C9C4 | 7C 9F 23 78 */	mr r31, r4
/* 8149C9C8 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8149C9CC | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 8149C9D0 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 8149C9D4 | 7C 7C 1B 78 */	mr r28, r3
/* 8149C9D8 | 4B FF FC 51 */	bl NHTTPi_ControlConnectionList
/* 8149C9DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C9E0 | 41 82 00 C8 */	beq .L_8149CAA8
/* 8149C9E4 | 7F 83 E3 78 */	mr r3, r28
/* 8149C9E8 | 7F E4 FB 78 */	mr r4, r31
/* 8149C9EC | 38 A0 00 00 */	li r5, 0x0
/* 8149C9F0 | 4B FF FC 39 */	bl NHTTPi_ControlConnectionList
/* 8149C9F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149C9F8 | 41 82 00 0C */	beq .L_8149CA04
/* 8149C9FC | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8149CA00 | 48 00 00 08 */	b .L_8149CA08
.L_8149CA04:
/* 8149CA04 | 38 C0 00 00 */	li r6, 0x0
.L_8149CA08:
/* 8149CA08 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8149CA0C | 41 82 00 9C */	beq .L_8149CAA8
/* 8149CA10 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8149CA14 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149CA18 | 41 82 00 90 */	beq .L_8149CAA8
/* 8149CA1C | 80 06 00 28 */	lwz r0, 0x28(r6)
/* 8149CA20 | 7F E3 FB 78 */	mr r3, r31
/* 8149CA24 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149CA28 | 38 80 00 02 */	li r4, 0x2
/* 8149CA2C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8149CA30 | 80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8149CA34 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8149CA38 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8149CA3C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8149CA40 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8149CA44 | 7D 89 03 A6 */	mtctr r12
/* 8149CA48 | 4E 80 04 21 */	bctrl
/* 8149CA4C | 7F E4 FB 78 */	mr r4, r31
/* 8149CA50 | 83 A1 00 10 */	lwz r29, 0x10(r1)
/* 8149CA54 | 83 C1 00 0C */	lwz r30, 0xc(r1)
/* 8149CA58 | 7F 83 E3 78 */	mr r3, r28
/* 8149CA5C | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 8149CA60 | 38 A0 00 00 */	li r5, 0x0
/* 8149CA64 | 4B FF FB C5 */	bl NHTTPi_ControlConnectionList
/* 8149CA68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CA6C | 7C 64 1B 78 */	mr r4, r3
/* 8149CA70 | 41 82 00 38 */	beq .L_8149CAA8
/* 8149CA74 | 7F 83 E3 78 */	mr r3, r28
/* 8149CA78 | 38 A0 00 00 */	li r5, 0x0
/* 8149CA7C | 4B FF FB AD */	bl NHTTPi_ControlConnectionList
/* 8149CA80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CA84 | 41 82 00 0C */	beq .L_8149CA90
/* 8149CA88 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8149CA8C | 48 00 00 08 */	b .L_8149CA94
.L_8149CA90:
/* 8149CA90 | 38 60 00 00 */	li r3, 0x0
.L_8149CA94:
/* 8149CA94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CA98 | 41 82 00 10 */	beq .L_8149CAA8
/* 8149CA9C | 93 E3 00 28 */	stw r31, 0x28(r3)
/* 8149CAA0 | 93 C3 00 1C */	stw r30, 0x1c(r3)
/* 8149CAA4 | 93 A3 00 04 */	stw r29, 0x4(r3)
.L_8149CAA8:
/* 8149CAA8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149CAAC | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8149CAB0 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8149CAB4 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8149CAB8 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 8149CABC | 7C 08 03 A6 */	mtlr r0
/* 8149CAC0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149CAC4 | 4E 80 00 20 */	blr
.endfn NHTTPi_BufferFullCallback

# .text:0x5A4 | 0x8149CAC8 | size: 0x118
.fn NHTTPi_ReceivedCallback, global
/* 8149CAC8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8149CACC | 7C 08 02 A6 */	mflr r0
/* 8149CAD0 | 38 A0 00 00 */	li r5, 0x0
/* 8149CAD4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8149CAD8 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8149CADC | 7C 9F 23 78 */	mr r31, r4
/* 8149CAE0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8149CAE4 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 8149CAE8 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 8149CAEC | 7C 7C 1B 78 */	mr r28, r3
/* 8149CAF0 | 4B FF FB 39 */	bl NHTTPi_ControlConnectionList
/* 8149CAF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CAF8 | 41 82 00 C8 */	beq .L_8149CBC0
/* 8149CAFC | 7F 83 E3 78 */	mr r3, r28
/* 8149CB00 | 7F E4 FB 78 */	mr r4, r31
/* 8149CB04 | 38 A0 00 00 */	li r5, 0x0
/* 8149CB08 | 4B FF FB 21 */	bl NHTTPi_ControlConnectionList
/* 8149CB0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CB10 | 41 82 00 0C */	beq .L_8149CB1C
/* 8149CB14 | 80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8149CB18 | 48 00 00 08 */	b .L_8149CB20
.L_8149CB1C:
/* 8149CB1C | 38 C0 00 00 */	li r6, 0x0
.L_8149CB20:
/* 8149CB20 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 8149CB24 | 41 82 00 9C */	beq .L_8149CBC0
/* 8149CB28 | 80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8149CB2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149CB30 | 41 82 00 90 */	beq .L_8149CBC0
/* 8149CB34 | 80 06 00 28 */	lwz r0, 0x28(r6)
/* 8149CB38 | 7F E3 FB 78 */	mr r3, r31
/* 8149CB3C | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8149CB40 | 38 80 00 03 */	li r4, 0x3
/* 8149CB44 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8149CB48 | 80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8149CB4C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 8149CB50 | 80 06 00 04 */	lwz r0, 0x4(r6)
/* 8149CB54 | 90 01 00 10 */	stw r0, 0x10(r1)
/* 8149CB58 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8149CB5C | 7D 89 03 A6 */	mtctr r12
/* 8149CB60 | 4E 80 04 21 */	bctrl
/* 8149CB64 | 7F E4 FB 78 */	mr r4, r31
/* 8149CB68 | 83 A1 00 10 */	lwz r29, 0x10(r1)
/* 8149CB6C | 83 C1 00 0C */	lwz r30, 0xc(r1)
/* 8149CB70 | 7F 83 E3 78 */	mr r3, r28
/* 8149CB74 | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 8149CB78 | 38 A0 00 00 */	li r5, 0x0
/* 8149CB7C | 4B FF FA AD */	bl NHTTPi_ControlConnectionList
/* 8149CB80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CB84 | 7C 64 1B 78 */	mr r4, r3
/* 8149CB88 | 41 82 00 38 */	beq .L_8149CBC0
/* 8149CB8C | 7F 83 E3 78 */	mr r3, r28
/* 8149CB90 | 38 A0 00 00 */	li r5, 0x0
/* 8149CB94 | 4B FF FA 95 */	bl NHTTPi_ControlConnectionList
/* 8149CB98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CB9C | 41 82 00 0C */	beq .L_8149CBA8
/* 8149CBA0 | 80 63 00 14 */	lwz r3, 0x14(r3)
/* 8149CBA4 | 48 00 00 08 */	b .L_8149CBAC
.L_8149CBA8:
/* 8149CBA8 | 38 60 00 00 */	li r3, 0x0
.L_8149CBAC:
/* 8149CBAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CBB0 | 41 82 00 10 */	beq .L_8149CBC0
/* 8149CBB4 | 93 E3 00 28 */	stw r31, 0x28(r3)
/* 8149CBB8 | 93 C3 00 1C */	stw r30, 0x1c(r3)
/* 8149CBBC | 93 A3 00 04 */	stw r29, 0x4(r3)
.L_8149CBC0:
/* 8149CBC0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8149CBC4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8149CBC8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8149CBCC | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8149CBD0 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 8149CBD4 | 7C 08 03 A6 */	mtlr r0
/* 8149CBD8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8149CBDC | 4E 80 00 20 */	blr
.endfn NHTTPi_ReceivedCallback

# .text:0x6BC | 0x8149CBE0 | size: 0x58
.fn NHTTPi_CompleteCallback, global
/* 8149CBE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149CBE4 | 7C 08 02 A6 */	mflr r0
/* 8149CBE8 | 38 A0 00 00 */	li r5, 0x0
/* 8149CBEC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149CBF0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149CBF4 | 7C 9F 23 78 */	mr r31, r4
/* 8149CBF8 | 4B FF FA 31 */	bl NHTTPi_ControlConnectionList
/* 8149CBFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CC00 | 41 82 00 24 */	beq .L_8149CC24
/* 8149CC04 | 81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 8149CC08 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 8149CC0C | 41 82 00 18 */	beq .L_8149CC24
/* 8149CC10 | 7F E3 FB 78 */	mr r3, r31
/* 8149CC14 | 38 80 00 04 */	li r4, 0x4
/* 8149CC18 | 38 A0 00 00 */	li r5, 0x0
/* 8149CC1C | 7D 89 03 A6 */	mtctr r12
/* 8149CC20 | 4E 80 04 21 */	bctrl
.L_8149CC24:
/* 8149CC24 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149CC28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149CC2C | 7C 08 03 A6 */	mtlr r0
/* 8149CC30 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149CC34 | 4E 80 00 20 */	blr
.endfn NHTTPi_CompleteCallback

# .text:0x714 | 0x8149CC38 | size: 0x68
.fn NHTTPi_GetSystemInfoP, global
/* 8149CC38 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149CC3C | 7C 08 02 A6 */	mflr r0
/* 8149CC40 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149CC44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8149CC48 | 80 0D AD 84 */	lwz r0, sysInfo_p@sda21(r0)
/* 8149CC4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8149CC50 | 40 82 00 38 */	bne .L_8149CC88
/* 8149CC54 | 3F E0 81 0D */	lis r31, sysInfo@ha
/* 8149CC58 | 3B FF 8C 00 */	addi r31, r31, sysInfo@l
/* 8149CC5C | 93 ED AD 84 */	stw r31, sysInfo_p@sda21(r0)
/* 8149CC60 | 7F E3 FB 78 */	mr r3, r31
/* 8149CC64 | 4B FF 8B E5 */	bl NHTTPi_InitBgnEndInfo
/* 8149CC68 | 38 7F 08 00 */	addi r3, r31, 0x800
/* 8149CC6C | 4B FF 90 F1 */	bl NHTTPi_InitListInfo
/* 8149CC70 | 38 7F 08 08 */	addi r3, r31, 0x808
/* 8149CC74 | 4B FF 9B F9 */	bl NHTTPi_InitRequestInfo
/* 8149CC78 | 38 7F 08 0C */	addi r3, r31, 0x80c
/* 8149CC7C | 4B FF 93 31 */	bl NHTTPi_InitMutexInfo
/* 8149CC80 | 38 7F 08 40 */	addi r3, r31, 0x840
/* 8149CC84 | 4B FF BA F1 */	bl NHTTPi_InitThreadInfo
.L_8149CC88:
/* 8149CC88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8149CC8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149CC90 | 80 6D AD 84 */	lwz r3, sysInfo_p@sda21(r0)
/* 8149CC94 | 7C 08 03 A6 */	mtlr r0
/* 8149CC98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149CC9C | 4E 80 00 20 */	blr
.endfn NHTTPi_GetSystemInfoP

# .text:0x77C | 0x8149CCA0 | size: 0x4
.fn NHTTPi_GetBgnEndInfoP, global
/* 8149CCA0 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetBgnEndInfoP

# .text:0x780 | 0x8149CCA4 | size: 0x8
.fn NHTTPi_GetListInfoP, global
/* 8149CCA4 | 38 63 08 00 */	addi r3, r3, 0x800
/* 8149CCA8 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetListInfoP

# .text:0x788 | 0x8149CCAC | size: 0x8
.fn NHTTPi_GetReqInfoP, global
/* 8149CCAC | 38 63 08 08 */	addi r3, r3, 0x808
/* 8149CCB0 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetReqInfoP

# .text:0x790 | 0x8149CCB4 | size: 0x8
.fn NHTTPi_GetThreadInfoP, global
/* 8149CCB4 | 38 63 08 40 */	addi r3, r3, 0x840
/* 8149CCB8 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetThreadInfoP

# .text:0x798 | 0x8149CCBC | size: 0x8
.fn NHTTPi_GetMutexInfoP, global
/* 8149CCBC | 38 63 08 0C */	addi r3, r3, 0x80c
/* 8149CCC0 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetMutexInfoP

# .text:0x7A0 | 0x8149CCC4 | size: 0x10
.fn NHTTPi_SetVirtualContentLength, global
/* 8149CCC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CCC8 | 4D 82 00 20 */	beqlr
/* 8149CCCC | 90 83 00 2C */	stw r4, 0x2c(r3)
/* 8149CCD0 | 4E 80 00 20 */	blr
.endfn NHTTPi_SetVirtualContentLength

# .text:0x7B0 | 0x8149CCD4 | size: 0x18
.fn NHTTPi_GetVirtualContentLength, global
/* 8149CCD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CCD8 | 41 82 00 0C */	beq .L_8149CCE4
/* 8149CCDC | 80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8149CCE0 | 4E 80 00 20 */	blr
.L_8149CCE4:
/* 8149CCE4 | 38 60 00 00 */	li r3, 0x0
/* 8149CCE8 | 4E 80 00 20 */	blr
.endfn NHTTPi_GetVirtualContentLength

# .text:0x7C8 | 0x8149CCEC | size: 0x60
.fn NHTTPi_InitConnectionList, global
/* 8149CCEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8149CCF0 | 7C 08 02 A6 */	mflr r0
/* 8149CCF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8149CCF8 | 80 6D AD 80 */	lwz r3, l_nhttp_connection_list_p@sda21(r0)
/* 8149CCFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CD00 | 41 82 00 34 */	beq .L_8149CD34
/* 8149CD04 | 38 80 00 00 */	li r4, 0x0
/* 8149CD08 | 48 00 00 0C */	b .L_8149CD14
.L_8149CD0C:
/* 8149CD0C | 80 63 00 20 */	lwz r3, 0x20(r3)
/* 8149CD10 | 38 84 00 01 */	addi r4, r4, 0x1
.L_8149CD14:
/* 8149CD14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8149CD18 | 40 82 FF F4 */	bne .L_8149CD0C
/* 8149CD1C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8149CD20 | 41 82 00 14 */	beq .L_8149CD34
/* 8149CD24 | 3C 60 81 67 */	lis r3, lbl_8166D530@ha
/* 8149CD28 | 38 63 D5 30 */	addi r3, r3, lbl_8166D530@l
/* 8149CD2C | 4C C6 31 82 */	crclr cr1eq
/* 8149CD30 | 48 16 39 71 */	bl printf
.L_8149CD34:
/* 8149CD34 | 38 00 00 00 */	li r0, 0x0
/* 8149CD38 | 90 0D AD 80 */	stw r0, l_nhttp_connection_list_p@sda21(r0)
/* 8149CD3C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8149CD40 | 7C 08 03 A6 */	mtlr r0
/* 8149CD44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8149CD48 | 4E 80 00 20 */	blr
.endfn NHTTPi_InitConnectionList

# 0x8166D530..0x8166D570 | size: 0x40
.data
.balign 8

# .data:0x0 | 0x8166D530 | size: 0x40
.obj lbl_8166D530, global
	.4byte 0x2A776172
	.4byte 0x6E696E67
	.4byte 0x3A202564
	.4byte 0x20636F6E
	.4byte 0x6E656374
	.4byte 0x696F6E73
	.4byte 0x20726573
	.4byte 0x74732120
	.4byte 0x506C6561
	.4byte 0x73652066
	.4byte 0x72656520
	.4byte 0x636F6E6E
	.4byte 0x65637469
	.4byte 0x6F6E732E
	.4byte 0x0A000000
	.4byte 0x00000000
.endobj lbl_8166D530

# 0x81698DC0..0x81698DC8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698DC0 | size: 0x4
.obj l_nhttp_connection_list_p, local
	.skip 0x4
.endobj l_nhttp_connection_list_p

# .sbss:0x4 | 0x81698DC4 | size: 0x4
.obj sysInfo_p, local
	.skip 0x4
.endobj sysInfo_p
