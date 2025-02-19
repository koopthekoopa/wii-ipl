#include <decomp.h>

#define save_restore_reg    r11

#define SAVE_FPR(reg) _savefpr_##reg
#define RESTORE_FPR(reg) _restfpr_##reg
#define SAVE_GPR(reg) _savegpr_##reg
#define RESTORE_GPR(reg) _restgpr_##reg

#define ENTRY_SAVE_FPR(reg) entry SAVE_FPR(reg)
#define ENTRY_RESTORE_FPR(reg) entry RESTORE_FPR(reg)
#define ENTRY_SAVE_GPR(reg) entry SAVE_GPR(reg)
#define ENTRY_RESTORE_GPR(reg) entry RESTORE_GPR(reg)

#pragma force_active on /* Force. */

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

    stwu    r1, -16(r1)
    lis     r4, __constants@ha
    addi    r4, r4, __constants@l

    li      r3, 0
    lfd     f0, 0(r4)
    lfd     f3, 8(r4)
    lfd     f4, 16(r4)
    fcmpu   cr0, f1, f0
    fcmpu   cr6, f1, f3
    blt     @exit

    subi    r3, r3, 1

    bge     cr6, @exit
    fcmpu   cr7, f1, f4
    fmr     f2, f1
    blt     cr7, @1
    fsub    f2, f1, f4

@1:
    fctiwz  f2, f2
    stfd    f2, 8(r1)
    lwz     r3, 12(r1)
    blt     cr7, @exit
    addis   r3, r3, 0x8000

@exit:
    addi    r1, r1, 0x10
    blr
}

static asm void __save_fpr() {
    nofralloc

    ENTRY_SAVE_FPR(14)
        stfd    fp14, -144(save_restore_reg)
    ENTRY_SAVE_FPR(15)
        stfd    fp15, -136(save_restore_reg)
    ENTRY_SAVE_FPR(16)
        stfd    fp16, -128(save_restore_reg)
    ENTRY_SAVE_FPR(17)
        stfd    fp17, -120(save_restore_reg)
    ENTRY_SAVE_FPR(18)
        stfd    fp18, -112(save_restore_reg)
    ENTRY_SAVE_FPR(19)
        stfd    fp19, -104(save_restore_reg)
    ENTRY_SAVE_FPR(20)
        stfd    fp20, -96(save_restore_reg)
    ENTRY_SAVE_FPR(21)
        stfd    fp21, -88(save_restore_reg)
    ENTRY_SAVE_FPR(22)
        stfd    fp22, -80(save_restore_reg)
    ENTRY_SAVE_FPR(23)
        stfd    fp23, -72(save_restore_reg)
    ENTRY_SAVE_FPR(24)
        stfd    fp24, -64(save_restore_reg)
    ENTRY_SAVE_FPR(25)
        stfd    fp25, -56(save_restore_reg)
    ENTRY_SAVE_FPR(26)
        stfd    fp26, -48(save_restore_reg)
    ENTRY_SAVE_FPR(27)
        stfd    fp27, -40(save_restore_reg)
    ENTRY_SAVE_FPR(28)
        stfd    fp28, -32(save_restore_reg)
    ENTRY_SAVE_FPR(29)
        stfd    fp29, -24(save_restore_reg)
    ENTRY_SAVE_FPR(30)
        stfd    fp30, -16(save_restore_reg)
    ENTRY_SAVE_FPR(31)
        stfd    fp31, -8(save_restore_reg)
        blr
}

static asm void __restore_fpr() {
    nofralloc
    ENTRY_RESTORE_FPR(14)
        lfd        fp14, -144(save_restore_reg)
    ENTRY_RESTORE_FPR(15)
        lfd        fp15, -136(save_restore_reg)
    ENTRY_RESTORE_FPR(16)
        lfd        fp16, -128(save_restore_reg)
    ENTRY_RESTORE_FPR(17)
        lfd        fp17, -120(save_restore_reg)
    ENTRY_RESTORE_FPR(18)
        lfd        fp18, -112(save_restore_reg)
    ENTRY_RESTORE_FPR(19)
        lfd        fp19, -104(save_restore_reg)
    ENTRY_RESTORE_FPR(20)
        lfd        fp20, -96(save_restore_reg)
    ENTRY_RESTORE_FPR(21)
        lfd        fp21, -88(save_restore_reg)
    ENTRY_RESTORE_FPR(22)
        lfd        fp22, -80(save_restore_reg)
    ENTRY_RESTORE_FPR(23)
        lfd        fp23, -72(save_restore_reg)
    ENTRY_RESTORE_FPR(24)
        lfd        fp24, -64(save_restore_reg)
    ENTRY_RESTORE_FPR(25)
        lfd        fp25, -56(save_restore_reg)
    ENTRY_RESTORE_FPR(26)
        lfd        fp26, -48(save_restore_reg)
    ENTRY_RESTORE_FPR(27)
        lfd        fp27, -40(save_restore_reg)
    ENTRY_RESTORE_FPR(28)
        lfd        fp28, -32(save_restore_reg)
    ENTRY_RESTORE_FPR(29)
        lfd        fp29, -24(save_restore_reg)
    ENTRY_RESTORE_FPR(30)
        lfd        fp30, -16(save_restore_reg)
    ENTRY_RESTORE_FPR(31)
        lfd        fp31, -8(save_restore_reg)
        blr
}

static asm void __save_gpr() {
    nofralloc
    ENTRY_SAVE_GPR(14)
        stw        r14, -72(save_restore_reg)
    ENTRY_SAVE_GPR(15)
        stw        r15, -68(save_restore_reg)
    ENTRY_SAVE_GPR(16)
        stw        r16, -64(save_restore_reg)
    ENTRY_SAVE_GPR(17)
        stw        r17, -60(save_restore_reg)
    ENTRY_SAVE_GPR(18)
        stw        r18, -56(save_restore_reg)
    ENTRY_SAVE_GPR(19)
        stw        r19, -52(save_restore_reg)
    ENTRY_SAVE_GPR(20)
        stw        r20, -48(save_restore_reg)
    ENTRY_SAVE_GPR(21)
        stw        r21, -44(save_restore_reg)
    ENTRY_SAVE_GPR(22)
        stw        r22, -40(save_restore_reg)
    ENTRY_SAVE_GPR(23)
        stw        r23, -36(save_restore_reg)
    ENTRY_SAVE_GPR(24)
        stw        r24, -32(save_restore_reg)
    ENTRY_SAVE_GPR(25)
        stw        r25, -28(save_restore_reg)
    ENTRY_SAVE_GPR(26)
        stw        r26, -24(save_restore_reg)
    ENTRY_SAVE_GPR(27)
        stw        r27, -20(save_restore_reg)
    ENTRY_SAVE_GPR(28)
        stw        r28, -16(save_restore_reg)
    ENTRY_SAVE_GPR(29)
        stw        r29, -12(save_restore_reg)
    ENTRY_SAVE_GPR(30)
        stw        r30, -8(save_restore_reg)
    ENTRY_SAVE_GPR(31)
        stw        r31, -4(save_restore_reg)
        blr
}

static asm void __restore_gpr() {
    nofralloc
    ENTRY_RESTORE_GPR(14)
        lwz        r14, -72(save_restore_reg)
    ENTRY_RESTORE_GPR(15)
        lwz        r15, -68(save_restore_reg)
    ENTRY_RESTORE_GPR(16)
        lwz        r16, -64(save_restore_reg)
    ENTRY_RESTORE_GPR(17)
        lwz        r17, -60(save_restore_reg)
    ENTRY_RESTORE_GPR(18)
        lwz        r18, -56(save_restore_reg)
    ENTRY_RESTORE_GPR(19)
        lwz        r19, -52(save_restore_reg)
    ENTRY_RESTORE_GPR(20)
        lwz        r20, -48(save_restore_reg)
    ENTRY_RESTORE_GPR(21)
        lwz        r21, -44(save_restore_reg)
    ENTRY_RESTORE_GPR(22)
        lwz        r22, -40(save_restore_reg)
    ENTRY_RESTORE_GPR(23)
        lwz        r23, -36(save_restore_reg)
    ENTRY_RESTORE_GPR(24)
        lwz        r24, -32(save_restore_reg)
    ENTRY_RESTORE_GPR(25)
        lwz        r25, -28(save_restore_reg)
    ENTRY_RESTORE_GPR(26)
        lwz        r26, -24(save_restore_reg)
    ENTRY_RESTORE_GPR(27)
        lwz        r27, -20(save_restore_reg)
    ENTRY_RESTORE_GPR(28)
        lwz        r28, -16(save_restore_reg)
    ENTRY_RESTORE_GPR(29)
        lwz        r29, -12(save_restore_reg)
    ENTRY_RESTORE_GPR(30)
        lwz        r30, -8(save_restore_reg)
    ENTRY_RESTORE_GPR(31)
        lwz        r31, -4(save_restore_reg)
        blr
}

asm void __div2u() {
    cmpwi r3, 0x0
    cntlzw r0, r3
    cntlzw r9, r4
    bne L_815F9538
    addi r0, r9, 0x20
L_815F9538:
    cmpwi r5, 0x0
    cntlzw r9, r5
    cntlzw r10, r6
    bne L_815F954C
    addi r9, r10, 0x20
L_815F954C:
    cmpw r0, r9
    subfic r10, r0, 0x40
    bgt L_815F9604
    addi r9, r9, 0x1
    subfic r9, r9, 0x40
    add r0, r0, r9
    subf r9, r9, r10
    mtctr r9
    cmpwi r9, 0x20
    subi r7, r9, 0x20
    blt L_815F9584
    srw r8, r3, r7
    li r7, 0x0
    b L_815F9598
L_815F9584:
    srw r8, r4, r9
    subfic r7, r9, 0x20
    slw r7, r3, r7
    or r8, r8, r7
    srw r7, r3, r9
L_815F9598:
    cmpwi r0, 0x20
    subic r9, r0, 0x20
    blt L_815F95B0
    slw r3, r4, r9
    li r4, 0x0
    b L_815F95C4
L_815F95B0:
    slw r3, r3, r0
    subfic r9, r0, 0x20
    srw r9, r4, r9
    or r3, r3, r9
    slw r4, r4, r0
L_815F95C4:
    li r10, -0x1
    addic r7, r7, 0x0
L_815F95CC:
    adde r4, r4, r4
    adde r3, r3, r3
    adde r8, r8, r8
    adde r7, r7, r7
    subfc r0, r6, r8
    subfe. r9, r5, r7
    blt L_815F95F4
    mr r8, r0
    mr r7, r9
    addic r0, r10, 0x1
L_815F95F4:
    bdnz L_815F95CC
    adde r4, r4, r4
    adde r3, r3, r3
    blr
L_815F9604:
    li r4, 0x0
    li r3, 0x0
    blr
}

asm void __div2i() {
    stwu r1, -0x10(r1)
    clrrwi. r9, r3, 31
    beq L_815F9624
    subfic r4, r4, 0x0
    subfze r3, r3
L_815F9624:
    stw r9, 0x8(r1)
    clrrwi. r10, r5, 31
    beq L_815F9638
    subfic r6, r6, 0x0
    subfze r5, r5
L_815F9638:
    stw r10, 0xc(r1)
    cmpwi r3, 0x0
    cntlzw r0, r3
    cntlzw r9, r4
    bne L_815F9650
    addi r0, r9, 0x20
L_815F9650:
    cmpwi r5, 0x0
    cntlzw r9, r5
    cntlzw r10, r6
    bne L_815F9664
    addi r9, r10, 0x20
L_815F9664:
    cmpw r0, r9
    subfic r10, r0, 0x40
    bgt L_815F9738
    addi r9, r9, 0x1
    subfic r9, r9, 0x40
    add r0, r0, r9
    subf r9, r9, r10
    mtctr r9
    cmpwi r9, 0x20
    subi r7, r9, 0x20
    blt L_815F969C
    srw r8, r3, r7
    li r7, 0x0
    b L_815F96B0
L_815F969C:
    srw r8, r4, r9
    subfic r7, r9, 0x20
    slw r7, r3, r7
    or r8, r8, r7
    srw r7, r3, r9
L_815F96B0:
    cmpwi r0, 0x20
    subic r9, r0, 0x20
    blt L_815F96C8
    slw r3, r4, r9
    li r4, 0x0
    b L_815F96DC
L_815F96C8:
    slw r3, r3, r0
    subfic r9, r0, 0x20
    srw r9, r4, r9
    or r3, r3, r9
    slw r4, r4, r0
L_815F96DC:
    li r10, -0x1
    addic r7, r7, 0x0
L_815F96E4:
    adde r4, r4, r4
    adde r3, r3, r3
    adde r8, r8, r8
    adde r7, r7, r7
    subfc r0, r6, r8
    subfe. r9, r5, r7
    blt L_815F970C
    mr r8, r0
    mr r7, r9
    addic r0, r10, 0x1
L_815F970C:
    bdnz L_815F96E4
    adde r4, r4, r4
    adde r3, r3, r3
    lwz r9, 0x8(r1)
    lwz r10, 0xc(r1)
    xor. r7, r9, r10
    beq L_815F9734
    cmpwi r9, 0x0
    subfic r4, r4, 0x0
    subfze r3, r3
L_815F9734:
    b L_815F9740
L_815F9738:
    li r4, 0x0
    li r3, 0x0
L_815F9740:
    addi r1, r1, 0x10
    blr
}

asm void __mod2u() {
    cmpwi r3, 0x0
    cntlzw r0, r3
    cntlzw r9, r4
    bne L_815F975C
    addi r0, r9, 0x20
L_815F975C:
    cmpwi r5, 0x0
    cntlzw r9, r5
    cntlzw r10, r6
    bne L_815F9770
    addi r9, r10, 0x20
L_815F9770:
    cmpw r0, r9
    subfic r10, r0, 0x40
    bgt L_815F9828
    addi r9, r9, 0x1
    subfic r9, r9, 0x40
    add r0, r0, r9
    subf r9, r9, r10
    mtctr r9
    cmpwi r9, 0x20
    subi r7, r9, 0x20
    blt L_815F97A8
    srw r8, r3, r7
    li r7, 0x0
    b L_815F97BC
L_815F97A8:
    srw r8, r4, r9
    subfic r7, r9, 0x20
    slw r7, r3, r7
    or r8, r8, r7
    srw r7, r3, r9
L_815F97BC:
    cmpwi r0, 0x20
    subic r9, r0, 0x20
    blt L_815F97D4
    slw r3, r4, r9
    li r4, 0x0
    b L_815F97E8
L_815F97D4:
    slw r3, r3, r0
    subfic r9, r0, 0x20
    srw r9, r4, r9
    or r3, r3, r9
    slw r4, r4, r0
L_815F97E8:
    li r10, -0x1
    addic r7, r7, 0x0
L_815F97F0:
    adde r4, r4, r4
    adde r3, r3, r3
    adde r8, r8, r8
    adde r7, r7, r7
    subfc r0, r6, r8
    subfe. r9, r5, r7
    blt L_815F9818
    mr r8, r0
    mr r7, r9
    addic r0, r10, 0x1
L_815F9818:
    bdnz L_815F97F0
    mr r4, r8
    mr r3, r7
    blr
L_815F9828:
    blr
}

asm void __mod2i() {
    cmpwi cr7, r3, 0x0
    bge cr7, L_815F983C
    subfic r4, r4, 0x0
    subfze r3, r3
L_815F983C:
    cmpwi r5, 0x0
    bge L_815F984C
    subfic r6, r6, 0x0
    subfze r5, r5
L_815F984C:
    cmpwi r3, 0x0
    cntlzw r0, r3
    cntlzw r9, r4
    bne L_815F9860
    addi r0, r9, 0x20
L_815F9860:
    cmpwi r5, 0x0
    cntlzw r9, r5
    cntlzw r10, r6
    bne L_815F9874
    addi r9, r10, 0x20
L_815F9874:
    cmpw r0, r9
    subfic r10, r0, 0x40
    bgt L_815F9928
    addi r9, r9, 0x1
    subfic r9, r9, 0x40
    add r0, r0, r9
    subf r9, r9, r10
    mtctr r9
    cmpwi r9, 0x20
    subi r7, r9, 0x20
    blt L_815F98AC
    srw r8, r3, r7
    li r7, 0x0
    b L_815F98C0
L_815F98AC:
    srw r8, r4, r9
    subfic r7, r9, 0x20
    slw r7, r3, r7
    or r8, r8, r7
    srw r7, r3, r9
L_815F98C0:
    cmpwi r0, 0x20
    subic r9, r0, 0x20
    blt L_815F98D8
    slw r3, r4, r9
    li r4, 0x0
    b L_815F98EC
L_815F98D8:
    slw r3, r3, r0
    subfic r9, r0, 0x20
    srw r9, r4, r9
    or r3, r3, r9
    slw r4, r4, r0
L_815F98EC:
    li r10, -0x1
    addic r7, r7, 0x0
L_815F98F4:
    adde r4, r4, r4
    adde r3, r3, r3
    adde r8, r8, r8
    adde r7, r7, r7
    subfc r0, r6, r8
    subfe. r9, r5, r7
    blt L_815F991C
    mr r8, r0
    mr r7, r9
    addic r0, r10, 0x1
L_815F991C:
    bdnz L_815F98F4
    mr r4, r8
    mr r3, r7
L_815F9928:
    bge cr7, L_815F9934
    subfic r4, r4, 0x0
    subfze r3, r3
L_815F9934:
    blr
}

asm void __shl2i() {
    subfic r8, r5, 0x20
    subic r9, r5, 0x20
    slw r3, r3, r5
    srw r10, r4, r8
    or r3, r3, r10
    slw r10, r4, r9
    or r3, r3, r10
    slw r4, r4, r5
    blr
}

asm void __shr2u() {
    subfic r8, r5, 0x20
    subic r9, r5, 0x20
    srw r4, r4, r5
    slw r10, r3, r8
    or r4, r4, r10
    srw r10, r3, r9
    or r4, r4, r10
    srw r3, r3, r5
    blr
}

asm void __shr2i() {
    subfic r8, r5, 0x20
    subic. r9, r5, 0x20
    srw r4, r4, r5
    slw r10, r3, r8
    or r4, r4, r10
    sraw r10, r3, r9
    ble L_815F99A0
    or r4, r4, r10
L_815F99A0:
    sraw r3, r3, r5
    blr
}

asm void __cvt_sll_dbl() {
    stwu r1, -0x10(r1)
    clrrwi. r5, r3, 31
    beq L_815F99BC
    subfic r4, r4, 0x0
    subfze r3, r3
L_815F99BC:
    or. r7, r3, r4
    li r6, 0x0
    beq L_815F9A44
    cntlzw r7, r3
    cntlzw r8, r4
    extlwi r9, r7, 5, 26
    srawi r9, r9, 31
    and r9, r9, r8
    add r7, r7, r9
    subfic r8, r7, 0x20
    subic r9, r7, 0x20
    slw r3, r3, r7
    srw r10, r4, r8
    or r3, r3, r10
    slw r10, r4, r9
    or r3, r3, r10
    slw r4, r4, r7
    subf r6, r7, r6
    clrlwi r7, r4, 21
    cmpwi r7, 0x400
    addi r6, r6, 0x43e
    blt L_815F9A2C
    bgt L_815F9A20
    rlwinm. r7, r4, 0, 20, 20
    beq L_815F9A2C
L_815F9A20:
    addic r4, r4, 0x800
    addze r3, r3
    addze r6, r6
L_815F9A2C:
    rotrwi r4, r4, 11
    rlwimi r4, r3, 21, 0, 10
    extrwi r3, r3, 20, 1
    slwi r6, r6, 20
    or r3, r6, r3
    or r3, r5, r3
L_815F9A44:
    stw r3, 0x8(r1)
    stw r4, 0xc(r1)
    lfd f1, 0x8(r1)
    addi r1, r1, 0x10
    blr
}

asm void __cvt_ull_dbl() {
    stwu r1, -0x10(r1)
    or. r7, r3, r4
    li r6, 0x0
    beq L_815F9AE0
    cntlzw r7, r3
    cntlzw r8, r4
    extlwi r9, r7, 5, 26
    srawi r9, r9, 31
    and r9, r9, r8
    add r7, r7, r9
    subfic r8, r7, 0x20
    subic r9, r7, 0x20
    slw r3, r3, r7
    srw r10, r4, r8
    or r3, r3, r10
    slw r10, r4, r9
    or r3, r3, r10
    slw r4, r4, r7
    subf r6, r7, r6
    clrlwi r7, r4, 21
    cmpwi r7, 0x400
    addi r6, r6, 0x43e
    blt L_815F9ACC
    bgt L_815F9AC0
    rlwinm. r7, r4, 0, 20, 20
    beq L_815F9ACC
L_815F9AC0:
    addic r4, r4, 0x800
    addze r3, r3
    addze r6, r6
L_815F9ACC:
    rotrwi r4, r4, 11
    rlwimi r4, r3, 21, 0, 10
    extrwi r3, r3, 20, 1
    slwi r6, r6, 20
    or r3, r6, r3
L_815F9AE0:
    stw r3, 0x8(r1)
    stw r4, 0xc(r1)
    lfd f1, 0x8(r1)
    addi r1, r1, 0x10
    blr
}

asm void __cvt_ull_flt() {
    stwu r1, -0x10(r1)
    or. r7, r3, r4
    li r6, 0x0
    beq L_815F9B7C
    cntlzw r7, r3
    cntlzw r8, r4
    extlwi r9, r7, 5, 26
    srawi r9, r9, 31
    and r9, r9, r8
    add r7, r7, r9
    subfic r8, r7, 0x20
    subic r9, r7, 0x20
    slw r3, r3, r7
    srw r10, r4, r8
    or r3, r3, r10
    slw r10, r4, r9
    or r3, r3, r10
    slw r4, r4, r7
    subf r6, r7, r6
    clrlwi r7, r4, 21
    cmpwi r7, 0x400
    addi r6, r6, 0x43e
    blt L_815F9B68
    bgt L_815F9B5C
    rlwinm. r7, r4, 0, 20, 20
    beq L_815F9B68
L_815F9B5C:
    addic r4, r4, 0x800
    addze r3, r3
    addze r6, r6
L_815F9B68:
    rotrwi r4, r4, 11
    rlwimi r4, r3, 21, 0, 10
    extrwi r3, r3, 20, 1
    slwi r6, r6, 20
    or r3, r6, r3
L_815F9B7C:
    stw r3, 0x8(r1)
    stw r4, 0xc(r1)
    lfd f1, 0x8(r1)
    frsp f1, f1
    addi r1, r1, 0x10
    blr
}

asm void __cvt_dbl_usll() {
    stwu r1, -0x10(r1)
    stfd f1, 0x8(r1)
    lwz r3, 0x8(r1)
    lwz r4, 0xc(r1)
    extrwi r5, r3, 11, 1
    cmplwi r5, 0x3ff
    bge L_815F9BBC
    li r3, 0x0
    li r4, 0x0
    b L_815F9C58
L_815F9BBC:
    mr r6, r3
    clrlwi r3, r3, 12
    oris r3, r3, 0x10
    subi r5, r5, 0x433
    cmpwi r5, 0x0
    bge L_815F9BFC
    neg r5, r5
    subfic r8, r5, 0x20
    subic r9, r5, 0x20
    srw r4, r4, r5
    slw r10, r3, r8
    or r4, r4, r10
    srw r10, r3, r9
    or r4, r4, r10
    srw r3, r3, r5
    b L_815F9C48
L_815F9BFC:
    cmpwi r5, 0xa
    ble+ L_815F9C28
    clrrwi. r6, r6, 31
    beq L_815F9C18
    lis r3, 0x8000
    li r4, 0x0
    b L_815F9C58
L_815F9C18:
    lis r3, 0x7fff
    ori r3, r3, 0xffff
    li r4, -0x1
    b L_815F9C58
L_815F9C28:
    subfic r8, r5, 0x20
    subic r9, r5, 0x20
    slw r3, r3, r5
    srw r10, r4, r8
    or r3, r3, r10
    slw r10, r4, r9
    or r3, r3, r10
    slw r4, r4, r5
L_815F9C48:
    clrrwi. r6, r6, 31
    beq L_815F9C58
    subfic r4, r4, 0x0
    subfze r3, r3
L_815F9C58:
    addi r1, r1, 0x10
    blr
}

asm void __cvt_dbl_ull() {
    stwu r1, -0x10(r1)
    stfd f1, 0x8(r1)
    lwz r3, 0x8(r1)
    lwz r4, 0xc(r1)
    extrwi r5, r3, 11, 1
    cmplwi r5, 0x3ff
    bge L_815F9C88
L_815F9C7C:
    li r3, 0x0
    li r4, 0x0
    b L_815F9D00
L_815F9C88:
    clrrwi. r6, r3, 31
    bne L_815F9C7C
    clrlwi r3, r3, 12
    oris r3, r3, 0x10
    subi r5, r5, 0x433
    cmpwi r5, 0x0
    bge L_815F9CCC
    neg r5, r5
    subfic r8, r5, 0x20
    subic r9, r5, 0x20
    srw r4, r4, r5
    slw r10, r3, r8
    or r4, r4, r10
    srw r10, r3, r9
    or r4, r4, r10
    srw r3, r3, r5
    b L_815F9D00
L_815F9CCC:
    cmpwi r5, 0xb
    ble+ L_815F9CE0
    li r3, -0x1
    li r4, -0x1
    b L_815F9D00
L_815F9CE0:
    subfic r8, r5, 0x20
    subic r9, r5, 0x20
    slw r3, r3, r5
    srw r10, r4, r8
    or r3, r3, r10
    slw r10, r4, r9
    or r3, r3, r10
    slw r4, r4, r5
L_815F9D00:
    addi r1, r1, 0x10
    blr
}


