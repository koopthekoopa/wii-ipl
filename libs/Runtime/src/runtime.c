#include <decomp_vscode.h>

#define save_restore_reg    r11

#define SAVE_FPR(reg) _savefpr_##reg
#define RESTORE_FPR(reg) _restfpr_##reg
#define SAVE_GPR(reg) _savegpr_##reg
#define RESTORE_GPR(reg) _restgpr_##reg

#define ENTRY_SAVE_FPR(reg) entry SAVE_FPR(reg)
#define ENTRY_RESTORE_FPR(reg) entry RESTORE_FPR(reg)
#define ENTRY_SAVE_GPR(reg) entry SAVE_GPR(reg)
#define ENTRY_RESTORE_GPR(reg) entry RESTORE_GPR(reg)

void SAVE_FPR(14)();
void SAVE_FPR(15)();
void SAVE_FPR(16)();
void SAVE_FPR(17)();
void SAVE_FPR(18)();
void SAVE_FPR(19)();
void SAVE_FPR(20)();
void SAVE_FPR(21)();
void SAVE_FPR(22)();
void SAVE_FPR(23)();
void SAVE_FPR(24)();
void SAVE_FPR(25)();
void SAVE_FPR(26)();
void SAVE_FPR(27)();
void SAVE_FPR(28)();
void SAVE_FPR(29)();
void SAVE_FPR(30)();
void SAVE_FPR(31)();

void RESTORE_FPR(14)();
void RESTORE_FPR(15)();
void RESTORE_FPR(16)();
void RESTORE_FPR(17)();
void RESTORE_FPR(18)();
void RESTORE_FPR(19)();
void RESTORE_FPR(20)();
void RESTORE_FPR(21)();
void RESTORE_FPR(22)();
void RESTORE_FPR(23)();
void RESTORE_FPR(24)();
void RESTORE_FPR(25)();
void RESTORE_FPR(26)();
void RESTORE_FPR(27)();
void RESTORE_FPR(28)();
void RESTORE_FPR(29)();
void RESTORE_FPR(30)();
void RESTORE_FPR(31)();

void SAVE_GPR(14)();
void SAVE_GPR(15)();
void SAVE_GPR(16)();
void SAVE_GPR(17)();
void SAVE_GPR(18)();
void SAVE_GPR(19)();
void SAVE_GPR(20)();
void SAVE_GPR(21)();
void SAVE_GPR(22)();
void SAVE_GPR(23)();
void SAVE_GPR(24)();
void SAVE_GPR(25)();
void SAVE_GPR(26)();
void SAVE_GPR(27)();
void SAVE_GPR(28)();
void SAVE_GPR(29)();
void SAVE_GPR(30)();
void SAVE_GPR(31)();

void RESTORE_GPR(14)();
void RESTORE_GPR(15)();
void RESTORE_GPR(16)();
void RESTORE_GPR(17)();
void RESTORE_GPR(18)();
void RESTORE_GPR(19)();
void RESTORE_GPR(20)();
void RESTORE_GPR(21)();
void RESTORE_GPR(22)();
void RESTORE_GPR(23)();
void RESTORE_GPR(24)();
void RESTORE_GPR(25)();
void RESTORE_GPR(26)();
void RESTORE_GPR(27)();
void RESTORE_GPR(28)();
void RESTORE_GPR(29)();
void RESTORE_GPR(30)();
void RESTORE_GPR(31)();

const unsigned long long __constants[] = {
    0x0000000000000000,
    0x41F0000000000000,
    0x41E0000000000000,
};

asm unsigned long __cvt_fp2unsigned(register double d) {
	nofralloc

	stwu r1, -16(r1)
	lis r4, __constants@ha
	addi r4, r4, __constants@l

	li r3, 0
	lfd f0, 0(r4)
	lfd f3, 8(r4)
	lfd f4, 16(r4)
	fcmpu cr0, f1, f0
	fcmpu cr6, f1, f3
	blt L_815F93EC

	subi r3, r3, 1

	bge cr6, L_815F93EC
	fcmpu cr7, f1, f4
	fmr f2, f1
	blt cr7, L_815F93D8
	fsub f2, f1, f4

L_815F93D8:
	fctiwz f2, f2
	stfd f2, 8(r1)
	lwz r3, 12(r1)
	blt cr7, L_815F93EC
	addis r3, r3, 0x8000

L_815F93EC:
	addi r1, r1, 0x10
	blr
}

/*
    @Address 0x815F948C
    @Size 0x4C
*/
static asm void __save_fpr() {
	nofralloc

	ENTRY_SAVE_FPR(14)
		stfd	fp14, -144(save_restore_reg)
	ENTRY_SAVE_FPR(15)
		stfd	fp15, -136(save_restore_reg)
	ENTRY_SAVE_FPR(16)
		stfd	fp16, -128(save_restore_reg)
	ENTRY_SAVE_FPR(17)
		stfd	fp17, -120(save_restore_reg)
	ENTRY_SAVE_FPR(18)
		stfd	fp18, -112(save_restore_reg)
	ENTRY_SAVE_FPR(19)
		stfd	fp19, -104(save_restore_reg)
	ENTRY_SAVE_FPR(20)
		stfd	fp20, -96(save_restore_reg)
	ENTRY_SAVE_FPR(21)
		stfd	fp21, -88(save_restore_reg)
	ENTRY_SAVE_FPR(22)
		stfd	fp22, -80(save_restore_reg)
	ENTRY_SAVE_FPR(23)
		stfd	fp23, -72(save_restore_reg)
	ENTRY_SAVE_FPR(24)
		stfd	fp24, -64(save_restore_reg)
	ENTRY_SAVE_FPR(25)
		stfd	fp25, -56(save_restore_reg)
	ENTRY_SAVE_FPR(26)
		stfd	fp26, -48(save_restore_reg)
	ENTRY_SAVE_FPR(27)
		stfd	fp27, -40(save_restore_reg)
	ENTRY_SAVE_FPR(28)
		stfd	fp28, -32(save_restore_reg)
	ENTRY_SAVE_FPR(29)
		stfd	fp29, -24(save_restore_reg)
	ENTRY_SAVE_FPR(30)
		stfd	fp30, -16(save_restore_reg)
	ENTRY_SAVE_FPR(31)
		stfd	fp31, -8(save_restore_reg)
		blr
}

/*
    @Address 0x815F9440
    @Size 0x4C
*/
static asm void __restore_fpr() {
	nofralloc
	ENTRY_RESTORE_FPR(14)
		lfd		fp14, -144(save_restore_reg)
	ENTRY_RESTORE_FPR(15)
		lfd		fp15, -136(save_restore_reg)
	ENTRY_RESTORE_FPR(16)
		lfd		fp16, -128(save_restore_reg)
	ENTRY_RESTORE_FPR(17)
		lfd		fp17, -120(save_restore_reg)
	ENTRY_RESTORE_FPR(18)
		lfd		fp18, -112(save_restore_reg)
	ENTRY_RESTORE_FPR(19)
		lfd		fp19, -104(save_restore_reg)
	ENTRY_RESTORE_FPR(20)
		lfd		fp20, -96(save_restore_reg)
	ENTRY_RESTORE_FPR(21)
		lfd		fp21, -88(save_restore_reg)
	ENTRY_RESTORE_FPR(22)
		lfd		fp22, -80(save_restore_reg)
	ENTRY_RESTORE_FPR(23)
		lfd		fp23, -72(save_restore_reg)
	ENTRY_RESTORE_FPR(24)
		lfd		fp24, -64(save_restore_reg)
	ENTRY_RESTORE_FPR(25)
		lfd		fp25, -56(save_restore_reg)
	ENTRY_RESTORE_FPR(26)
		lfd		fp26, -48(save_restore_reg)
	ENTRY_RESTORE_FPR(27)
		lfd		fp27, -40(save_restore_reg)
	ENTRY_RESTORE_FPR(28)
		lfd		fp28, -32(save_restore_reg)
	ENTRY_RESTORE_FPR(29)
		lfd		fp29, -24(save_restore_reg)
	ENTRY_RESTORE_FPR(30)
		lfd		fp30, -16(save_restore_reg)
	ENTRY_RESTORE_FPR(31)
		lfd		fp31, -8(save_restore_reg)
		blr
}

/*
    @Address 0x815F948C
    @Size 0x4C
*/
static asm void __save_gpr() {
	nofralloc
	ENTRY_SAVE_GPR(14)
		stw		r14, -72(save_restore_reg)
	ENTRY_SAVE_GPR(15)
		stw		r15, -68(save_restore_reg)
	ENTRY_SAVE_GPR(16)
		stw		r16, -64(save_restore_reg)
	ENTRY_SAVE_GPR(17)
		stw		r17, -60(save_restore_reg)
	ENTRY_SAVE_GPR(18)
		stw		r18, -56(save_restore_reg)
	ENTRY_SAVE_GPR(19)
		stw		r19, -52(save_restore_reg)
	ENTRY_SAVE_GPR(20)
		stw		r20, -48(save_restore_reg)
	ENTRY_SAVE_GPR(21)
		stw		r21, -44(save_restore_reg)
	ENTRY_SAVE_GPR(22)
		stw		r22, -40(save_restore_reg)
	ENTRY_SAVE_GPR(23)
		stw		r23, -36(save_restore_reg)
	ENTRY_SAVE_GPR(24)
		stw		r24, -32(save_restore_reg)
	ENTRY_SAVE_GPR(25)
		stw		r25, -28(save_restore_reg)
	ENTRY_SAVE_GPR(26)
		stw		r26, -24(save_restore_reg)
	ENTRY_SAVE_GPR(27)
		stw		r27, -20(save_restore_reg)
	ENTRY_SAVE_GPR(28)
		stw		r28, -16(save_restore_reg)
	ENTRY_SAVE_GPR(29)
		stw		r29, -12(save_restore_reg)
	ENTRY_SAVE_GPR(30)
		stw		r30, -8(save_restore_reg)
	ENTRY_SAVE_GPR(31)
		stw		r31, -4(save_restore_reg)
		blr
}

/*
    @Address 0x815F94D8
    @Size 0x4C
*/
static asm void __restore_gpr() {
	nofralloc
	ENTRY_RESTORE_GPR(14)
		lwz		r14, -72(save_restore_reg)
	ENTRY_RESTORE_GPR(15)
		lwz		r15, -68(save_restore_reg)
	ENTRY_RESTORE_GPR(16)
		lwz		r16, -64(save_restore_reg)
	ENTRY_RESTORE_GPR(17)
		lwz		r17, -60(save_restore_reg)
	ENTRY_RESTORE_GPR(18)
		lwz		r18, -56(save_restore_reg)
	ENTRY_RESTORE_GPR(19)
		lwz		r19, -52(save_restore_reg)
	ENTRY_RESTORE_GPR(20)
		lwz		r20, -48(save_restore_reg)
	ENTRY_RESTORE_GPR(21)
		lwz		r21, -44(save_restore_reg)
	ENTRY_RESTORE_GPR(22)
		lwz		r22, -40(save_restore_reg)
	ENTRY_RESTORE_GPR(23)
		lwz		r23, -36(save_restore_reg)
	ENTRY_RESTORE_GPR(24)
		lwz		r24, -32(save_restore_reg)
	ENTRY_RESTORE_GPR(25)
		lwz		r25, -28(save_restore_reg)
	ENTRY_RESTORE_GPR(26)
		lwz		r26, -24(save_restore_reg)
	ENTRY_RESTORE_GPR(27)
		lwz		r27, -20(save_restore_reg)
	ENTRY_RESTORE_GPR(28)
		lwz		r28, -16(save_restore_reg)
	ENTRY_RESTORE_GPR(29)
		lwz		r29, -12(save_restore_reg)
	ENTRY_RESTORE_GPR(30)
		lwz		r30, -8(save_restore_reg)
	ENTRY_RESTORE_GPR(31)
		lwz		r31, -4(save_restore_reg)
		blr
}

/*
	@Address: 0x815F9524
	@Size: 0xEC
*/
asm void __div2u() {
/* 815F9524 002C7924  2C 03 00 00 */	cmpwi r3, 0x0
/* 815F9528 002C7928  7C 60 00 34 */	cntlzw r0, r3
/* 815F952C 002C792C  7C 89 00 34 */	cntlzw r9, r4
/* 815F9530 002C7930  40 82 00 08 */	bne L_815F9538
/* 815F9534 002C7934  38 09 00 20 */	addi r0, r9, 0x20
L_815F9538:
/* 815F9538 002C7938  2C 05 00 00 */	cmpwi r5, 0x0
/* 815F953C 002C793C  7C A9 00 34 */	cntlzw r9, r5
/* 815F9540 002C7940  7C CA 00 34 */	cntlzw r10, r6
/* 815F9544 002C7944  40 82 00 08 */	bne L_815F954C
/* 815F9548 002C7948  39 2A 00 20 */	addi r9, r10, 0x20
L_815F954C:
/* 815F954C 002C794C  7C 00 48 00 */	cmpw r0, r9
/* 815F9550 002C7950  21 40 00 40 */	subfic r10, r0, 0x40
/* 815F9554 002C7954  41 81 00 B0 */	bgt L_815F9604
/* 815F9558 002C7958  39 29 00 01 */	addi r9, r9, 0x1
/* 815F955C 002C795C  21 29 00 40 */	subfic r9, r9, 0x40
/* 815F9560 002C7960  7C 00 4A 14 */	add r0, r0, r9
/* 815F9564 002C7964  7D 29 50 50 */	subf r9, r9, r10
/* 815F9568 002C7968  7D 29 03 A6 */	mtctr r9
/* 815F956C 002C796C  2C 09 00 20 */	cmpwi r9, 0x20
/* 815F9570 002C7970  38 E9 FF E0 */	subi r7, r9, 0x20
/* 815F9574 002C7974  41 80 00 10 */	blt L_815F9584
/* 815F9578 002C7978  7C 68 3C 30 */	srw r8, r3, r7
/* 815F957C 002C797C  38 E0 00 00 */	li r7, 0x0
/* 815F9580 002C7980  48 00 00 18 */	b L_815F9598
L_815F9584:
/* 815F9584 002C7984  7C 88 4C 30 */	srw r8, r4, r9
/* 815F9588 002C7988  20 E9 00 20 */	subfic r7, r9, 0x20
/* 815F958C 002C798C  7C 67 38 30 */	slw r7, r3, r7
/* 815F9590 002C7990  7D 08 3B 78 */	or r8, r8, r7
/* 815F9594 002C7994  7C 67 4C 30 */	srw r7, r3, r9
L_815F9598:
/* 815F9598 002C7998  2C 00 00 20 */	cmpwi r0, 0x20
/* 815F959C 002C799C  31 20 FF E0 */	subic r9, r0, 0x20
/* 815F95A0 002C79A0  41 80 00 10 */	blt L_815F95B0
/* 815F95A4 002C79A4  7C 83 48 30 */	slw r3, r4, r9
/* 815F95A8 002C79A8  38 80 00 00 */	li r4, 0x0
/* 815F95AC 002C79AC  48 00 00 18 */	b L_815F95C4
L_815F95B0:
/* 815F95B0 002C79B0  7C 63 00 30 */	slw r3, r3, r0
/* 815F95B4 002C79B4  21 20 00 20 */	subfic r9, r0, 0x20
/* 815F95B8 002C79B8  7C 89 4C 30 */	srw r9, r4, r9
/* 815F95BC 002C79BC  7C 63 4B 78 */	or r3, r3, r9
/* 815F95C0 002C79C0  7C 84 00 30 */	slw r4, r4, r0
L_815F95C4:
/* 815F95C4 002C79C4  39 40 FF FF */	li r10, -0x1
/* 815F95C8 002C79C8  30 E7 00 00 */	addic r7, r7, 0x0
L_815F95CC:
/* 815F95CC 002C79CC  7C 84 21 14 */	adde r4, r4, r4
/* 815F95D0 002C79D0  7C 63 19 14 */	adde r3, r3, r3
/* 815F95D4 002C79D4  7D 08 41 14 */	adde r8, r8, r8
/* 815F95D8 002C79D8  7C E7 39 14 */	adde r7, r7, r7
/* 815F95DC 002C79DC  7C 06 40 10 */	subfc r0, r6, r8
/* 815F95E0 002C79E0  7D 25 39 11 */	subfe. r9, r5, r7
/* 815F95E4 002C79E4  41 80 00 10 */	blt L_815F95F4
/* 815F95E8 002C79E8  7C 08 03 78 */	mr r8, r0
/* 815F95EC 002C79EC  7D 27 4B 78 */	mr r7, r9
/* 815F95F0 002C79F0  30 0A 00 01 */	addic r0, r10, 0x1
L_815F95F4:
/* 815F95F4 002C79F4  42 00 FF D8 */	bdnz L_815F95CC
/* 815F95F8 002C79F8  7C 84 21 14 */	adde r4, r4, r4
/* 815F95FC 002C79FC  7C 63 19 14 */	adde r3, r3, r3
/* 815F9600 002C7A00  4E 80 00 20 */	blr
L_815F9604:
/* 815F9604 002C7A04  38 80 00 00 */	li r4, 0x0
/* 815F9608 002C7A08  38 60 00 00 */	li r3, 0x0
/* 815F960C 002C7A0C  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F9610
	@Size: 0x138
*/
asm void __div2i() {
/* 815F9610 002C7A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815F9614 002C7A14  54 69 00 01 */	clrrwi. r9, r3, 31
/* 815F9618 002C7A18  41 82 00 0C */	beq L_815F9624
/* 815F961C 002C7A1C  20 84 00 00 */	subfic r4, r4, 0x0
/* 815F9620 002C7A20  7C 63 01 90 */	subfze r3, r3
L_815F9624:
/* 815F9624 002C7A24  91 21 00 08 */	stw r9, 0x8(r1)
/* 815F9628 002C7A28  54 AA 00 01 */	clrrwi. r10, r5, 31
/* 815F962C 002C7A2C  41 82 00 0C */	beq L_815F9638
/* 815F9630 002C7A30  20 C6 00 00 */	subfic r6, r6, 0x0
/* 815F9634 002C7A34  7C A5 01 90 */	subfze r5, r5
L_815F9638:
/* 815F9638 002C7A38  91 41 00 0C */	stw r10, 0xc(r1)
/* 815F963C 002C7A3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 815F9640 002C7A40  7C 60 00 34 */	cntlzw r0, r3
/* 815F9644 002C7A44  7C 89 00 34 */	cntlzw r9, r4
/* 815F9648 002C7A48  40 82 00 08 */	bne L_815F9650
/* 815F964C 002C7A4C  38 09 00 20 */	addi r0, r9, 0x20
L_815F9650:
/* 815F9650 002C7A50  2C 05 00 00 */	cmpwi r5, 0x0
/* 815F9654 002C7A54  7C A9 00 34 */	cntlzw r9, r5
/* 815F9658 002C7A58  7C CA 00 34 */	cntlzw r10, r6
/* 815F965C 002C7A5C  40 82 00 08 */	bne L_815F9664
/* 815F9660 002C7A60  39 2A 00 20 */	addi r9, r10, 0x20
L_815F9664:
/* 815F9664 002C7A64  7C 00 48 00 */	cmpw r0, r9
/* 815F9668 002C7A68  21 40 00 40 */	subfic r10, r0, 0x40
/* 815F966C 002C7A6C  41 81 00 CC */	bgt L_815F9738
/* 815F9670 002C7A70  39 29 00 01 */	addi r9, r9, 0x1
/* 815F9674 002C7A74  21 29 00 40 */	subfic r9, r9, 0x40
/* 815F9678 002C7A78  7C 00 4A 14 */	add r0, r0, r9
/* 815F967C 002C7A7C  7D 29 50 50 */	subf r9, r9, r10
/* 815F9680 002C7A80  7D 29 03 A6 */	mtctr r9
/* 815F9684 002C7A84  2C 09 00 20 */	cmpwi r9, 0x20
/* 815F9688 002C7A88  38 E9 FF E0 */	subi r7, r9, 0x20
/* 815F968C 002C7A8C  41 80 00 10 */	blt L_815F969C
/* 815F9690 002C7A90  7C 68 3C 30 */	srw r8, r3, r7
/* 815F9694 002C7A94  38 E0 00 00 */	li r7, 0x0
/* 815F9698 002C7A98  48 00 00 18 */	b L_815F96B0
L_815F969C:
/* 815F969C 002C7A9C  7C 88 4C 30 */	srw r8, r4, r9
/* 815F96A0 002C7AA0  20 E9 00 20 */	subfic r7, r9, 0x20
/* 815F96A4 002C7AA4  7C 67 38 30 */	slw r7, r3, r7
/* 815F96A8 002C7AA8  7D 08 3B 78 */	or r8, r8, r7
/* 815F96AC 002C7AAC  7C 67 4C 30 */	srw r7, r3, r9
L_815F96B0:
/* 815F96B0 002C7AB0  2C 00 00 20 */	cmpwi r0, 0x20
/* 815F96B4 002C7AB4  31 20 FF E0 */	subic r9, r0, 0x20
/* 815F96B8 002C7AB8  41 80 00 10 */	blt L_815F96C8
/* 815F96BC 002C7ABC  7C 83 48 30 */	slw r3, r4, r9
/* 815F96C0 002C7AC0  38 80 00 00 */	li r4, 0x0
/* 815F96C4 002C7AC4  48 00 00 18 */	b L_815F96DC
L_815F96C8:
/* 815F96C8 002C7AC8  7C 63 00 30 */	slw r3, r3, r0
/* 815F96CC 002C7ACC  21 20 00 20 */	subfic r9, r0, 0x20
/* 815F96D0 002C7AD0  7C 89 4C 30 */	srw r9, r4, r9
/* 815F96D4 002C7AD4  7C 63 4B 78 */	or r3, r3, r9
/* 815F96D8 002C7AD8  7C 84 00 30 */	slw r4, r4, r0
L_815F96DC:
/* 815F96DC 002C7ADC  39 40 FF FF */	li r10, -0x1
/* 815F96E0 002C7AE0  30 E7 00 00 */	addic r7, r7, 0x0
L_815F96E4:
/* 815F96E4 002C7AE4  7C 84 21 14 */	adde r4, r4, r4
/* 815F96E8 002C7AE8  7C 63 19 14 */	adde r3, r3, r3
/* 815F96EC 002C7AEC  7D 08 41 14 */	adde r8, r8, r8
/* 815F96F0 002C7AF0  7C E7 39 14 */	adde r7, r7, r7
/* 815F96F4 002C7AF4  7C 06 40 10 */	subfc r0, r6, r8
/* 815F96F8 002C7AF8  7D 25 39 11 */	subfe. r9, r5, r7
/* 815F96FC 002C7AFC  41 80 00 10 */	blt L_815F970C
/* 815F9700 002C7B00  7C 08 03 78 */	mr r8, r0
/* 815F9704 002C7B04  7D 27 4B 78 */	mr r7, r9
/* 815F9708 002C7B08  30 0A 00 01 */	addic r0, r10, 0x1
L_815F970C:
/* 815F970C 002C7B0C  42 00 FF D8 */	bdnz L_815F96E4
/* 815F9710 002C7B10  7C 84 21 14 */	adde r4, r4, r4
/* 815F9714 002C7B14  7C 63 19 14 */	adde r3, r3, r3
/* 815F9718 002C7B18  81 21 00 08 */	lwz r9, 0x8(r1)
/* 815F971C 002C7B1C  81 41 00 0C */	lwz r10, 0xc(r1)
/* 815F9720 002C7B20  7D 27 52 79 */	xor. r7, r9, r10
/* 815F9724 002C7B24  41 82 00 10 */	beq L_815F9734
/* 815F9728 002C7B28  2C 09 00 00 */	cmpwi r9, 0x0
/* 815F972C 002C7B2C  20 84 00 00 */	subfic r4, r4, 0x0
/* 815F9730 002C7B30  7C 63 01 90 */	subfze r3, r3
L_815F9734:
/* 815F9734 002C7B34  48 00 00 0C */	b L_815F9740
L_815F9738:
/* 815F9738 002C7B38  38 80 00 00 */	li r4, 0x0
/* 815F973C 002C7B3C  38 60 00 00 */	li r3, 0x0
L_815F9740:
/* 815F9740 002C7B40  38 21 00 10 */	addi r1, r1, 0x10
/* 815F9744 002C7B44  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F9748
	@Size: 0xE4
*/
asm void __mod2u() {
/* 815F9748 002C7B48  2C 03 00 00 */	cmpwi r3, 0x0
/* 815F974C 002C7B4C  7C 60 00 34 */	cntlzw r0, r3
/* 815F9750 002C7B50  7C 89 00 34 */	cntlzw r9, r4
/* 815F9754 002C7B54  40 82 00 08 */	bne L_815F975C
/* 815F9758 002C7B58  38 09 00 20 */	addi r0, r9, 0x20
L_815F975C:
/* 815F975C 002C7B5C  2C 05 00 00 */	cmpwi r5, 0x0
/* 815F9760 002C7B60  7C A9 00 34 */	cntlzw r9, r5
/* 815F9764 002C7B64  7C CA 00 34 */	cntlzw r10, r6
/* 815F9768 002C7B68  40 82 00 08 */	bne L_815F9770
/* 815F976C 002C7B6C  39 2A 00 20 */	addi r9, r10, 0x20
L_815F9770:
/* 815F9770 002C7B70  7C 00 48 00 */	cmpw r0, r9
/* 815F9774 002C7B74  21 40 00 40 */	subfic r10, r0, 0x40
/* 815F9778 002C7B78  41 81 00 B0 */	bgt L_815F9828
/* 815F977C 002C7B7C  39 29 00 01 */	addi r9, r9, 0x1
/* 815F9780 002C7B80  21 29 00 40 */	subfic r9, r9, 0x40
/* 815F9784 002C7B84  7C 00 4A 14 */	add r0, r0, r9
/* 815F9788 002C7B88  7D 29 50 50 */	subf r9, r9, r10
/* 815F978C 002C7B8C  7D 29 03 A6 */	mtctr r9
/* 815F9790 002C7B90  2C 09 00 20 */	cmpwi r9, 0x20
/* 815F9794 002C7B94  38 E9 FF E0 */	subi r7, r9, 0x20
/* 815F9798 002C7B98  41 80 00 10 */	blt L_815F97A8
/* 815F979C 002C7B9C  7C 68 3C 30 */	srw r8, r3, r7
/* 815F97A0 002C7BA0  38 E0 00 00 */	li r7, 0x0
/* 815F97A4 002C7BA4  48 00 00 18 */	b L_815F97BC
L_815F97A8:
/* 815F97A8 002C7BA8  7C 88 4C 30 */	srw r8, r4, r9
/* 815F97AC 002C7BAC  20 E9 00 20 */	subfic r7, r9, 0x20
/* 815F97B0 002C7BB0  7C 67 38 30 */	slw r7, r3, r7
/* 815F97B4 002C7BB4  7D 08 3B 78 */	or r8, r8, r7
/* 815F97B8 002C7BB8  7C 67 4C 30 */	srw r7, r3, r9
L_815F97BC:
/* 815F97BC 002C7BBC  2C 00 00 20 */	cmpwi r0, 0x20
/* 815F97C0 002C7BC0  31 20 FF E0 */	subic r9, r0, 0x20
/* 815F97C4 002C7BC4  41 80 00 10 */	blt L_815F97D4
/* 815F97C8 002C7BC8  7C 83 48 30 */	slw r3, r4, r9
/* 815F97CC 002C7BCC  38 80 00 00 */	li r4, 0x0
/* 815F97D0 002C7BD0  48 00 00 18 */	b L_815F97E8
L_815F97D4:
/* 815F97D4 002C7BD4  7C 63 00 30 */	slw r3, r3, r0
/* 815F97D8 002C7BD8  21 20 00 20 */	subfic r9, r0, 0x20
/* 815F97DC 002C7BDC  7C 89 4C 30 */	srw r9, r4, r9
/* 815F97E0 002C7BE0  7C 63 4B 78 */	or r3, r3, r9
/* 815F97E4 002C7BE4  7C 84 00 30 */	slw r4, r4, r0
L_815F97E8:
/* 815F97E8 002C7BE8  39 40 FF FF */	li r10, -0x1
/* 815F97EC 002C7BEC  30 E7 00 00 */	addic r7, r7, 0x0
L_815F97F0:
/* 815F97F0 002C7BF0  7C 84 21 14 */	adde r4, r4, r4
/* 815F97F4 002C7BF4  7C 63 19 14 */	adde r3, r3, r3
/* 815F97F8 002C7BF8  7D 08 41 14 */	adde r8, r8, r8
/* 815F97FC 002C7BFC  7C E7 39 14 */	adde r7, r7, r7
/* 815F9800 002C7C00  7C 06 40 10 */	subfc r0, r6, r8
/* 815F9804 002C7C04  7D 25 39 11 */	subfe. r9, r5, r7
/* 815F9808 002C7C08  41 80 00 10 */	blt L_815F9818
/* 815F980C 002C7C0C  7C 08 03 78 */	mr r8, r0
/* 815F9810 002C7C10  7D 27 4B 78 */	mr r7, r9
/* 815F9814 002C7C14  30 0A 00 01 */	addic r0, r10, 0x1
L_815F9818:
/* 815F9818 002C7C18  42 00 FF D8 */	bdnz L_815F97F0
/* 815F981C 002C7C1C  7D 04 43 78 */	mr r4, r8
/* 815F9820 002C7C20  7C E3 3B 78 */	mr r3, r7
/* 815F9824 002C7C24  4E 80 00 20 */	blr
L_815F9828:
/* 815F9828 002C7C28  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F982C
	@Size: 0x10C
*/
asm void __mod2i() {
/* 815F982C 002C7C2C  2F 83 00 00 */	cmpwi cr7, r3, 0x0
/* 815F9830 002C7C30  40 9C 00 0C */	bge cr7, L_815F983C
/* 815F9834 002C7C34  20 84 00 00 */	subfic r4, r4, 0x0
/* 815F9838 002C7C38  7C 63 01 90 */	subfze r3, r3
L_815F983C:
/* 815F983C 002C7C3C  2C 05 00 00 */	cmpwi r5, 0x0
/* 815F9840 002C7C40  40 80 00 0C */	bge L_815F984C
/* 815F9844 002C7C44  20 C6 00 00 */	subfic r6, r6, 0x0
/* 815F9848 002C7C48  7C A5 01 90 */	subfze r5, r5
L_815F984C:
/* 815F984C 002C7C4C  2C 03 00 00 */	cmpwi r3, 0x0
/* 815F9850 002C7C50  7C 60 00 34 */	cntlzw r0, r3
/* 815F9854 002C7C54  7C 89 00 34 */	cntlzw r9, r4
/* 815F9858 002C7C58  40 82 00 08 */	bne L_815F9860
/* 815F985C 002C7C5C  38 09 00 20 */	addi r0, r9, 0x20
L_815F9860:
/* 815F9860 002C7C60  2C 05 00 00 */	cmpwi r5, 0x0
/* 815F9864 002C7C64  7C A9 00 34 */	cntlzw r9, r5
/* 815F9868 002C7C68  7C CA 00 34 */	cntlzw r10, r6
/* 815F986C 002C7C6C  40 82 00 08 */	bne L_815F9874
/* 815F9870 002C7C70  39 2A 00 20 */	addi r9, r10, 0x20
L_815F9874:
/* 815F9874 002C7C74  7C 00 48 00 */	cmpw r0, r9
/* 815F9878 002C7C78  21 40 00 40 */	subfic r10, r0, 0x40
/* 815F987C 002C7C7C  41 81 00 AC */	bgt L_815F9928
/* 815F9880 002C7C80  39 29 00 01 */	addi r9, r9, 0x1
/* 815F9884 002C7C84  21 29 00 40 */	subfic r9, r9, 0x40
/* 815F9888 002C7C88  7C 00 4A 14 */	add r0, r0, r9
/* 815F988C 002C7C8C  7D 29 50 50 */	subf r9, r9, r10
/* 815F9890 002C7C90  7D 29 03 A6 */	mtctr r9
/* 815F9894 002C7C94  2C 09 00 20 */	cmpwi r9, 0x20
/* 815F9898 002C7C98  38 E9 FF E0 */	subi r7, r9, 0x20
/* 815F989C 002C7C9C  41 80 00 10 */	blt L_815F98AC
/* 815F98A0 002C7CA0  7C 68 3C 30 */	srw r8, r3, r7
/* 815F98A4 002C7CA4  38 E0 00 00 */	li r7, 0x0
/* 815F98A8 002C7CA8  48 00 00 18 */	b L_815F98C0
L_815F98AC:
/* 815F98AC 002C7CAC  7C 88 4C 30 */	srw r8, r4, r9
/* 815F98B0 002C7CB0  20 E9 00 20 */	subfic r7, r9, 0x20
/* 815F98B4 002C7CB4  7C 67 38 30 */	slw r7, r3, r7
/* 815F98B8 002C7CB8  7D 08 3B 78 */	or r8, r8, r7
/* 815F98BC 002C7CBC  7C 67 4C 30 */	srw r7, r3, r9
L_815F98C0:
/* 815F98C0 002C7CC0  2C 00 00 20 */	cmpwi r0, 0x20
/* 815F98C4 002C7CC4  31 20 FF E0 */	subic r9, r0, 0x20
/* 815F98C8 002C7CC8  41 80 00 10 */	blt L_815F98D8
/* 815F98CC 002C7CCC  7C 83 48 30 */	slw r3, r4, r9
/* 815F98D0 002C7CD0  38 80 00 00 */	li r4, 0x0
/* 815F98D4 002C7CD4  48 00 00 18 */	b L_815F98EC
L_815F98D8:
/* 815F98D8 002C7CD8  7C 63 00 30 */	slw r3, r3, r0
/* 815F98DC 002C7CDC  21 20 00 20 */	subfic r9, r0, 0x20
/* 815F98E0 002C7CE0  7C 89 4C 30 */	srw r9, r4, r9
/* 815F98E4 002C7CE4  7C 63 4B 78 */	or r3, r3, r9
/* 815F98E8 002C7CE8  7C 84 00 30 */	slw r4, r4, r0
L_815F98EC:
/* 815F98EC 002C7CEC  39 40 FF FF */	li r10, -0x1
/* 815F98F0 002C7CF0  30 E7 00 00 */	addic r7, r7, 0x0
L_815F98F4:
/* 815F98F4 002C7CF4  7C 84 21 14 */	adde r4, r4, r4
/* 815F98F8 002C7CF8  7C 63 19 14 */	adde r3, r3, r3
/* 815F98FC 002C7CFC  7D 08 41 14 */	adde r8, r8, r8
/* 815F9900 002C7D00  7C E7 39 14 */	adde r7, r7, r7
/* 815F9904 002C7D04  7C 06 40 10 */	subfc r0, r6, r8
/* 815F9908 002C7D08  7D 25 39 11 */	subfe. r9, r5, r7
/* 815F990C 002C7D0C  41 80 00 10 */	blt L_815F991C
/* 815F9910 002C7D10  7C 08 03 78 */	mr r8, r0
/* 815F9914 002C7D14  7D 27 4B 78 */	mr r7, r9
/* 815F9918 002C7D18  30 0A 00 01 */	addic r0, r10, 0x1
L_815F991C:
/* 815F991C 002C7D1C  42 00 FF D8 */	bdnz L_815F98F4
/* 815F9920 002C7D20  7D 04 43 78 */	mr r4, r8
/* 815F9924 002C7D24  7C E3 3B 78 */	mr r3, r7
L_815F9928:
/* 815F9928 002C7D28  40 9C 00 0C */	bge cr7, L_815F9934
/* 815F992C 002C7D2C  20 84 00 00 */	subfic r4, r4, 0x0
/* 815F9930 002C7D30  7C 63 01 90 */	subfze r3, r3
L_815F9934:
/* 815F9934 002C7D34  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F9938
	@Size: 0x24
*/
asm void __shl2i() {
/* 815F9938 002C7D38  21 05 00 20 */	subfic r8, r5, 0x20
/* 815F993C 002C7D3C  31 25 FF E0 */	subic r9, r5, 0x20
/* 815F9940 002C7D40  7C 63 28 30 */	slw r3, r3, r5
/* 815F9944 002C7D44  7C 8A 44 30 */	srw r10, r4, r8
/* 815F9948 002C7D48  7C 63 53 78 */	or r3, r3, r10
/* 815F994C 002C7D4C  7C 8A 48 30 */	slw r10, r4, r9
/* 815F9950 002C7D50  7C 63 53 78 */	or r3, r3, r10
/* 815F9954 002C7D54  7C 84 28 30 */	slw r4, r4, r5
/* 815F9958 002C7D58  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F995C
	@Size: 0x24
*/
asm void __shr2u() {
/* 815F995C 002C7D5C  21 05 00 20 */	subfic r8, r5, 0x20
/* 815F9960 002C7D60  31 25 FF E0 */	subic r9, r5, 0x20
/* 815F9964 002C7D64  7C 84 2C 30 */	srw r4, r4, r5
/* 815F9968 002C7D68  7C 6A 40 30 */	slw r10, r3, r8
/* 815F996C 002C7D6C  7C 84 53 78 */	or r4, r4, r10
/* 815F9970 002C7D70  7C 6A 4C 30 */	srw r10, r3, r9
/* 815F9974 002C7D74  7C 84 53 78 */	or r4, r4, r10
/* 815F9978 002C7D78  7C 63 2C 30 */	srw r3, r3, r5
/* 815F997C 002C7D7C  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F9980
	@Size: 0x28
*/
asm void __shr2i() {
/* 815F9980 002C7D80  21 05 00 20 */	subfic r8, r5, 0x20
/* 815F9984 002C7D84  35 25 FF E0 */	subic. r9, r5, 0x20
/* 815F9988 002C7D88  7C 84 2C 30 */	srw r4, r4, r5
/* 815F998C 002C7D8C  7C 6A 40 30 */	slw r10, r3, r8
/* 815F9990 002C7D90  7C 84 53 78 */	or r4, r4, r10
/* 815F9994 002C7D94  7C 6A 4E 30 */	sraw r10, r3, r9
/* 815F9998 002C7D98  40 81 00 08 */	ble L_815F99A0
/* 815F999C 002C7D9C  7C 84 53 78 */	or r4, r4, r10
L_815F99A0:
/* 815F99A0 002C7DA0  7C 63 2E 30 */	sraw r3, r3, r5
/* 815F99A4 002C7DA4  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F99A8
	@Size: 0xB0
*/
asm void __cvt_sll_dbl() {
/* 815F99A8 002C7DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815F99AC 002C7DAC  54 65 00 01 */	clrrwi. r5, r3, 31
/* 815F99B0 002C7DB0  41 82 00 0C */	beq L_815F99BC
/* 815F99B4 002C7DB4  20 84 00 00 */	subfic r4, r4, 0x0
/* 815F99B8 002C7DB8  7C 63 01 90 */	subfze r3, r3
L_815F99BC:
/* 815F99BC 002C7DBC  7C 67 23 79 */	or. r7, r3, r4
/* 815F99C0 002C7DC0  38 C0 00 00 */	li r6, 0x0
/* 815F99C4 002C7DC4  41 82 00 80 */	beq L_815F9A44
/* 815F99C8 002C7DC8  7C 67 00 34 */	cntlzw r7, r3
/* 815F99CC 002C7DCC  7C 88 00 34 */	cntlzw r8, r4
/* 815F99D0 002C7DD0  54 E9 D0 08 */	extlwi r9, r7, 5, 26
/* 815F99D4 002C7DD4  7D 29 FE 70 */	srawi r9, r9, 31
/* 815F99D8 002C7DD8  7D 29 40 38 */	and r9, r9, r8
/* 815F99DC 002C7DDC  7C E7 4A 14 */	add r7, r7, r9
/* 815F99E0 002C7DE0  21 07 00 20 */	subfic r8, r7, 0x20
/* 815F99E4 002C7DE4  31 27 FF E0 */	subic r9, r7, 0x20
/* 815F99E8 002C7DE8  7C 63 38 30 */	slw r3, r3, r7
/* 815F99EC 002C7DEC  7C 8A 44 30 */	srw r10, r4, r8
/* 815F99F0 002C7DF0  7C 63 53 78 */	or r3, r3, r10
/* 815F99F4 002C7DF4  7C 8A 48 30 */	slw r10, r4, r9
/* 815F99F8 002C7DF8  7C 63 53 78 */	or r3, r3, r10
/* 815F99FC 002C7DFC  7C 84 38 30 */	slw r4, r4, r7
/* 815F9A00 002C7E00  7C C7 30 50 */	subf r6, r7, r6
/* 815F9A04 002C7E04  54 87 05 7E */	clrlwi r7, r4, 21
/* 815F9A08 002C7E08  2C 07 04 00 */	cmpwi r7, 0x400
/* 815F9A0C 002C7E0C  38 C6 04 3E */	addi r6, r6, 0x43e
/* 815F9A10 002C7E10  41 80 00 1C */	blt L_815F9A2C
/* 815F9A14 002C7E14  41 81 00 0C */	bgt L_815F9A20
/* 815F9A18 002C7E18  54 87 05 29 */	rlwinm. r7, r4, 0, 20, 20
/* 815F9A1C 002C7E1C  41 82 00 10 */	beq L_815F9A2C
L_815F9A20:
/* 815F9A20 002C7E20  30 84 08 00 */	addic r4, r4, 0x800
/* 815F9A24 002C7E24  7C 63 01 94 */	addze r3, r3
/* 815F9A28 002C7E28  7C C6 01 94 */	addze r6, r6
L_815F9A2C:
/* 815F9A2C 002C7E2C  54 84 A8 3E */	rotrwi r4, r4, 11
/* 815F9A30 002C7E30  50 64 A8 14 */	rlwimi r4, r3, 21, 0, 10
/* 815F9A34 002C7E34  54 63 AB 3E */	extrwi r3, r3, 20, 1
/* 815F9A38 002C7E38  54 C6 A0 16 */	slwi r6, r6, 20
/* 815F9A3C 002C7E3C  7C C3 1B 78 */	or r3, r6, r3
/* 815F9A40 002C7E40  7C A3 1B 78 */	or r3, r5, r3
L_815F9A44:
/* 815F9A44 002C7E44  90 61 00 08 */	stw r3, 0x8(r1)
/* 815F9A48 002C7E48  90 81 00 0C */	stw r4, 0xc(r1)
/* 815F9A4C 002C7E4C  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 815F9A50 002C7E50  38 21 00 10 */	addi r1, r1, 0x10
/* 815F9A54 002C7E54  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F9A58
	@Size: 0x9C
*/
asm void __cvt_ull_dbl() {
/* 815F9A58 002C7E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815F9A5C 002C7E5C  7C 67 23 79 */	or. r7, r3, r4
/* 815F9A60 002C7E60  38 C0 00 00 */	li r6, 0x0
/* 815F9A64 002C7E64  41 82 00 7C */	beq L_815F9AE0
/* 815F9A68 002C7E68  7C 67 00 34 */	cntlzw r7, r3
/* 815F9A6C 002C7E6C  7C 88 00 34 */	cntlzw r8, r4
/* 815F9A70 002C7E70  54 E9 D0 08 */	extlwi r9, r7, 5, 26
/* 815F9A74 002C7E74  7D 29 FE 70 */	srawi r9, r9, 31
/* 815F9A78 002C7E78  7D 29 40 38 */	and r9, r9, r8
/* 815F9A7C 002C7E7C  7C E7 4A 14 */	add r7, r7, r9
/* 815F9A80 002C7E80  21 07 00 20 */	subfic r8, r7, 0x20
/* 815F9A84 002C7E84  31 27 FF E0 */	subic r9, r7, 0x20
/* 815F9A88 002C7E88  7C 63 38 30 */	slw r3, r3, r7
/* 815F9A8C 002C7E8C  7C 8A 44 30 */	srw r10, r4, r8
/* 815F9A90 002C7E90  7C 63 53 78 */	or r3, r3, r10
/* 815F9A94 002C7E94  7C 8A 48 30 */	slw r10, r4, r9
/* 815F9A98 002C7E98  7C 63 53 78 */	or r3, r3, r10
/* 815F9A9C 002C7E9C  7C 84 38 30 */	slw r4, r4, r7
/* 815F9AA0 002C7EA0  7C C7 30 50 */	subf r6, r7, r6
/* 815F9AA4 002C7EA4  54 87 05 7E */	clrlwi r7, r4, 21
/* 815F9AA8 002C7EA8  2C 07 04 00 */	cmpwi r7, 0x400
/* 815F9AAC 002C7EAC  38 C6 04 3E */	addi r6, r6, 0x43e
/* 815F9AB0 002C7EB0  41 80 00 1C */	blt L_815F9ACC
/* 815F9AB4 002C7EB4  41 81 00 0C */	bgt L_815F9AC0
/* 815F9AB8 002C7EB8  54 87 05 29 */	rlwinm. r7, r4, 0, 20, 20
/* 815F9ABC 002C7EBC  41 82 00 10 */	beq L_815F9ACC
L_815F9AC0:
/* 815F9AC0 002C7EC0  30 84 08 00 */	addic r4, r4, 0x800
/* 815F9AC4 002C7EC4  7C 63 01 94 */	addze r3, r3
/* 815F9AC8 002C7EC8  7C C6 01 94 */	addze r6, r6
L_815F9ACC:
/* 815F9ACC 002C7ECC  54 84 A8 3E */	rotrwi r4, r4, 11
/* 815F9AD0 002C7ED0  50 64 A8 14 */	rlwimi r4, r3, 21, 0, 10
/* 815F9AD4 002C7ED4  54 63 AB 3E */	extrwi r3, r3, 20, 1
/* 815F9AD8 002C7ED8  54 C6 A0 16 */	slwi r6, r6, 20
/* 815F9ADC 002C7EDC  7C C3 1B 78 */	or r3, r6, r3
L_815F9AE0:
/* 815F9AE0 002C7EE0  90 61 00 08 */	stw r3, 0x8(r1)
/* 815F9AE4 002C7EE4  90 81 00 0C */	stw r4, 0xc(r1)
/* 815F9AE8 002C7EE8  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 815F9AEC 002C7EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 815F9AF0 002C7EF0  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F9AF4
	@Size: 0xA0
*/
asm void __cvt_ull_flt() {
/* 815F9AF4 002C7EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815F9AF8 002C7EF8  7C 67 23 79 */	or. r7, r3, r4
/* 815F9AFC 002C7EFC  38 C0 00 00 */	li r6, 0x0
/* 815F9B00 002C7F00  41 82 00 7C */	beq L_815F9B7C
/* 815F9B04 002C7F04  7C 67 00 34 */	cntlzw r7, r3
/* 815F9B08 002C7F08  7C 88 00 34 */	cntlzw r8, r4
/* 815F9B0C 002C7F0C  54 E9 D0 08 */	extlwi r9, r7, 5, 26
/* 815F9B10 002C7F10  7D 29 FE 70 */	srawi r9, r9, 31
/* 815F9B14 002C7F14  7D 29 40 38 */	and r9, r9, r8
/* 815F9B18 002C7F18  7C E7 4A 14 */	add r7, r7, r9
/* 815F9B1C 002C7F1C  21 07 00 20 */	subfic r8, r7, 0x20
/* 815F9B20 002C7F20  31 27 FF E0 */	subic r9, r7, 0x20
/* 815F9B24 002C7F24  7C 63 38 30 */	slw r3, r3, r7
/* 815F9B28 002C7F28  7C 8A 44 30 */	srw r10, r4, r8
/* 815F9B2C 002C7F2C  7C 63 53 78 */	or r3, r3, r10
/* 815F9B30 002C7F30  7C 8A 48 30 */	slw r10, r4, r9
/* 815F9B34 002C7F34  7C 63 53 78 */	or r3, r3, r10
/* 815F9B38 002C7F38  7C 84 38 30 */	slw r4, r4, r7
/* 815F9B3C 002C7F3C  7C C7 30 50 */	subf r6, r7, r6
/* 815F9B40 002C7F40  54 87 05 7E */	clrlwi r7, r4, 21
/* 815F9B44 002C7F44  2C 07 04 00 */	cmpwi r7, 0x400
/* 815F9B48 002C7F48  38 C6 04 3E */	addi r6, r6, 0x43e
/* 815F9B4C 002C7F4C  41 80 00 1C */	blt L_815F9B68
/* 815F9B50 002C7F50  41 81 00 0C */	bgt L_815F9B5C
/* 815F9B54 002C7F54  54 87 05 29 */	rlwinm. r7, r4, 0, 20, 20
/* 815F9B58 002C7F58  41 82 00 10 */	beq L_815F9B68
L_815F9B5C:
/* 815F9B5C 002C7F5C  30 84 08 00 */	addic r4, r4, 0x800
/* 815F9B60 002C7F60  7C 63 01 94 */	addze r3, r3
/* 815F9B64 002C7F64  7C C6 01 94 */	addze r6, r6
L_815F9B68:
/* 815F9B68 002C7F68  54 84 A8 3E */	rotrwi r4, r4, 11
/* 815F9B6C 002C7F6C  50 64 A8 14 */	rlwimi r4, r3, 21, 0, 10
/* 815F9B70 002C7F70  54 63 AB 3E */	extrwi r3, r3, 20, 1
/* 815F9B74 002C7F74  54 C6 A0 16 */	slwi r6, r6, 20
/* 815F9B78 002C7F78  7C C3 1B 78 */	or r3, r6, r3
L_815F9B7C:
/* 815F9B7C 002C7F7C  90 61 00 08 */	stw r3, 0x8(r1)
/* 815F9B80 002C7F80  90 81 00 0C */	stw r4, 0xc(r1)
/* 815F9B84 002C7F84  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 815F9B88 002C7F88  FC 20 08 18 */	frsp f1, f1
/* 815F9B8C 002C7F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 815F9B90 002C7F90  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F9B94
	@Size: 0xCC
*/
asm void __cvt_dbl_usll() {
/* 815F9B94 002C7F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815F9B98 002C7F98  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 815F9B9C 002C7F9C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 815F9BA0 002C7FA0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 815F9BA4 002C7FA4  54 65 65 7E */	extrwi r5, r3, 11, 1
/* 815F9BA8 002C7FA8  28 05 03 FF */	cmplwi r5, 0x3ff
/* 815F9BAC 002C7FAC  40 80 00 10 */	bge L_815F9BBC
/* 815F9BB0 002C7FB0  38 60 00 00 */	li r3, 0x0
/* 815F9BB4 002C7FB4  38 80 00 00 */	li r4, 0x0
/* 815F9BB8 002C7FB8  48 00 00 A0 */	b L_815F9C58
L_815F9BBC:
/* 815F9BBC 002C7FBC  7C 66 1B 78 */	mr r6, r3
/* 815F9BC0 002C7FC0  54 63 03 3E */	clrlwi r3, r3, 12
/* 815F9BC4 002C7FC4  64 63 00 10 */	oris r3, r3, 0x10
/* 815F9BC8 002C7FC8  38 A5 FB CD */	subi r5, r5, 0x433
/* 815F9BCC 002C7FCC  2C 05 00 00 */	cmpwi r5, 0x0
/* 815F9BD0 002C7FD0  40 80 00 2C */	bge L_815F9BFC
/* 815F9BD4 002C7FD4  7C A5 00 D0 */	neg r5, r5
/* 815F9BD8 002C7FD8  21 05 00 20 */	subfic r8, r5, 0x20
/* 815F9BDC 002C7FDC  31 25 FF E0 */	subic r9, r5, 0x20
/* 815F9BE0 002C7FE0  7C 84 2C 30 */	srw r4, r4, r5
/* 815F9BE4 002C7FE4  7C 6A 40 30 */	slw r10, r3, r8
/* 815F9BE8 002C7FE8  7C 84 53 78 */	or r4, r4, r10
/* 815F9BEC 002C7FEC  7C 6A 4C 30 */	srw r10, r3, r9
/* 815F9BF0 002C7FF0  7C 84 53 78 */	or r4, r4, r10
/* 815F9BF4 002C7FF4  7C 63 2C 30 */	srw r3, r3, r5
/* 815F9BF8 002C7FF8  48 00 00 50 */	b L_815F9C48
L_815F9BFC:
/* 815F9BFC 002C7FFC  2C 05 00 0A */	cmpwi r5, 0xa
/* 815F9C00 002C8000  40 A1 00 28 */	ble+ L_815F9C28
/* 815F9C04 002C8004  54 C6 00 01 */	clrrwi. r6, r6, 31
/* 815F9C08 002C8008  41 82 00 10 */	beq L_815F9C18
/* 815F9C0C 002C800C  3C 60 80 00 */	lis r3, 0x8000
/* 815F9C10 002C8010  38 80 00 00 */	li r4, 0x0
/* 815F9C14 002C8014  48 00 00 44 */	b L_815F9C58
L_815F9C18:
/* 815F9C18 002C8018  3C 60 7F FF */	lis r3, 0x7fff
/* 815F9C1C 002C801C  60 63 FF FF */	ori r3, r3, 0xffff
/* 815F9C20 002C8020  38 80 FF FF */	li r4, -0x1
/* 815F9C24 002C8024  48 00 00 34 */	b L_815F9C58
L_815F9C28:
/* 815F9C28 002C8028  21 05 00 20 */	subfic r8, r5, 0x20
/* 815F9C2C 002C802C  31 25 FF E0 */	subic r9, r5, 0x20
/* 815F9C30 002C8030  7C 63 28 30 */	slw r3, r3, r5
/* 815F9C34 002C8034  7C 8A 44 30 */	srw r10, r4, r8
/* 815F9C38 002C8038  7C 63 53 78 */	or r3, r3, r10
/* 815F9C3C 002C803C  7C 8A 48 30 */	slw r10, r4, r9
/* 815F9C40 002C8040  7C 63 53 78 */	or r3, r3, r10
/* 815F9C44 002C8044  7C 84 28 30 */	slw r4, r4, r5
L_815F9C48:
/* 815F9C48 002C8048  54 C6 00 01 */	clrrwi. r6, r6, 31
/* 815F9C4C 002C804C  41 82 00 0C */	beq L_815F9C58
/* 815F9C50 002C8050  20 84 00 00 */	subfic r4, r4, 0x0
/* 815F9C54 002C8054  7C 63 01 90 */	subfze r3, r3
L_815F9C58:
/* 815F9C58 002C8058  38 21 00 10 */	addi r1, r1, 0x10
/* 815F9C5C 002C805C  4E 80 00 20 */	blr
}

/*
	@Address: 0x815F9C60
	@Size: 0xAB
*/
asm void __cvt_dbl_ull() {
/* 815F9C60 002C8060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 815F9C64 002C8064  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 815F9C68 002C8068  80 61 00 08 */	lwz r3, 0x8(r1)
/* 815F9C6C 002C806C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 815F9C70 002C8070  54 65 65 7E */	extrwi r5, r3, 11, 1
/* 815F9C74 002C8074  28 05 03 FF */	cmplwi r5, 0x3ff
/* 815F9C78 002C8078  40 80 00 10 */	bge L_815F9C88
L_815F9C7C:
/* 815F9C7C 002C807C  38 60 00 00 */	li r3, 0x0
/* 815F9C80 002C8080  38 80 00 00 */	li r4, 0x0
/* 815F9C84 002C8084  48 00 00 7C */	b L_815F9D00
L_815F9C88:
/* 815F9C88 002C8088  54 66 00 01 */	clrrwi. r6, r3, 31
/* 815F9C8C 002C808C  40 82 FF F0 */	bne L_815F9C7C
/* 815F9C90 002C8090  54 63 03 3E */	clrlwi r3, r3, 12
/* 815F9C94 002C8094  64 63 00 10 */	oris r3, r3, 0x10
/* 815F9C98 002C8098  38 A5 FB CD */	subi r5, r5, 0x433
/* 815F9C9C 002C809C  2C 05 00 00 */	cmpwi r5, 0x0
/* 815F9CA0 002C80A0  40 80 00 2C */	bge L_815F9CCC
/* 815F9CA4 002C80A4  7C A5 00 D0 */	neg r5, r5
/* 815F9CA8 002C80A8  21 05 00 20 */	subfic r8, r5, 0x20
/* 815F9CAC 002C80AC  31 25 FF E0 */	subic r9, r5, 0x20
/* 815F9CB0 002C80B0  7C 84 2C 30 */	srw r4, r4, r5
/* 815F9CB4 002C80B4  7C 6A 40 30 */	slw r10, r3, r8
/* 815F9CB8 002C80B8  7C 84 53 78 */	or r4, r4, r10
/* 815F9CBC 002C80BC  7C 6A 4C 30 */	srw r10, r3, r9
/* 815F9CC0 002C80C0  7C 84 53 78 */	or r4, r4, r10
/* 815F9CC4 002C80C4  7C 63 2C 30 */	srw r3, r3, r5
/* 815F9CC8 002C80C8  48 00 00 38 */	b L_815F9D00
L_815F9CCC:
/* 815F9CCC 002C80CC  2C 05 00 0B */	cmpwi r5, 0xb
/* 815F9CD0 002C80D0  40 A1 00 10 */	ble+ L_815F9CE0
/* 815F9CD4 002C80D4  38 60 FF FF */	li r3, -0x1
/* 815F9CD8 002C80D8  38 80 FF FF */	li r4, -0x1
/* 815F9CDC 002C80DC  48 00 00 24 */	b L_815F9D00
L_815F9CE0:
/* 815F9CE0 002C80E0  21 05 00 20 */	subfic r8, r5, 0x20
/* 815F9CE4 002C80E4  31 25 FF E0 */	subic r9, r5, 0x20
/* 815F9CE8 002C80E8  7C 63 28 30 */	slw r3, r3, r5
/* 815F9CEC 002C80EC  7C 8A 44 30 */	srw r10, r4, r8
/* 815F9CF0 002C80F0  7C 63 53 78 */	or r3, r3, r10
/* 815F9CF4 002C80F4  7C 8A 48 30 */	slw r10, r4, r9
/* 815F9CF8 002C80F8  7C 63 53 78 */	or r3, r3, r10
/* 815F9CFC 002C80FC  7C 84 28 30 */	slw r4, r4, r5
L_815F9D00:
/* 815F9D00 002C8100  38 21 00 10 */	addi r1, r1, 0x10
/* 815F9D04 002C8104  4E 80 00 20 */	blr
}


