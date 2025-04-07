#include <revolution/os.h>
#include <private/os.h>

#include <revolution/base/PPCArch.h>

#include <private/db.h>

static asm void __OSLoadFPUContext(u32 dummy, register OSContext* fpucontext) {
#ifdef __MWERKS__
    nofralloc

    lhz     r5, fpucontext->state
    clrlwi. r5, r5, 31
    beq     _exit
    
    lfd     f0, fpucontext->fpscr_pad
    mtfs    f0
    mfspr   r5, HID2
    rlwinm. r5, r5, 3, 31, 31
    beq     _load_fpr
    
    psq_l   f0, OSContext.psf[0](fpucontext), 0, 0
    psq_l   f1, OSContext.psf[1](fpucontext), 0, 0
    psq_l   f2, OSContext.psf[2](fpucontext), 0, 0
    psq_l   f3, OSContext.psf[3](fpucontext), 0, 0
    psq_l   f4, OSContext.psf[4](fpucontext), 0, 0
    psq_l   f5, OSContext.psf[5](fpucontext), 0, 0
    psq_l   f6, OSContext.psf[6](fpucontext), 0, 0
    psq_l   f7, OSContext.psf[7](fpucontext), 0, 0
    psq_l   f8, OSContext.psf[8](fpucontext), 0, 0
    psq_l   f9, OSContext.psf[9](fpucontext), 0, 0
    psq_l   f10, OSContext.psf[10](fpucontext), 0, 0
    psq_l   f11, OSContext.psf[11](fpucontext), 0, 0
    psq_l   f12, OSContext.psf[12](fpucontext), 0, 0
    psq_l   f13, OSContext.psf[13](fpucontext), 0, 0
    psq_l   f14, OSContext.psf[14](fpucontext), 0, 0
    psq_l   f15, OSContext.psf[15](fpucontext), 0, 0
    psq_l   f16, OSContext.psf[16](fpucontext), 0, 0
    psq_l   f17, OSContext.psf[17](fpucontext), 0, 0
    psq_l   f18, OSContext.psf[18](fpucontext), 0, 0
    psq_l   f19, OSContext.psf[19](fpucontext), 0, 0
    psq_l   f20, OSContext.psf[20](fpucontext), 0, 0
    psq_l   f21, OSContext.psf[21](fpucontext), 0, 0
    psq_l   f22, OSContext.psf[22](fpucontext), 0, 0
    psq_l   f23, OSContext.psf[23](fpucontext), 0, 0
    psq_l   f24, OSContext.psf[24](fpucontext), 0, 0
    psq_l   f25, OSContext.psf[25](fpucontext), 0, 0
    psq_l   f26, OSContext.psf[26](fpucontext), 0, 0
    psq_l   f27, OSContext.psf[27](fpucontext), 0, 0
    psq_l   f28, OSContext.psf[28](fpucontext), 0, 0
    psq_l   f29, OSContext.psf[29](fpucontext), 0, 0
    psq_l   f30, OSContext.psf[30](fpucontext), 0, 0
    psq_l   f31, OSContext.psf[31](fpucontext), 0, 0

_load_fpr:
    lfd     f0, fpucontext->fpr[0]
    lfd     f1, fpucontext->fpr[1]
    lfd     f2, fpucontext->fpr[2]
    lfd     f3, fpucontext->fpr[3]
    lfd     f4, fpucontext->fpr[4]
    lfd     f5, fpucontext->fpr[5]
    lfd     f6, fpucontext->fpr[6]
    lfd     f7, fpucontext->fpr[7]
    lfd     f8, fpucontext->fpr[8]
    lfd     f9, fpucontext->fpr[9]
    lfd     f10, fpucontext->fpr[10]
    lfd     f11, fpucontext->fpr[11]
    lfd     f12, fpucontext->fpr[12]
    lfd     f13, fpucontext->fpr[13]
    lfd     f14, fpucontext->fpr[14]
    lfd     f15, fpucontext->fpr[15]
    lfd     f16, fpucontext->fpr[16]
    lfd     f17, fpucontext->fpr[17]
    lfd     f18, fpucontext->fpr[18]
    lfd     f19, fpucontext->fpr[19]
    lfd     f20, fpucontext->fpr[20]
    lfd     f21, fpucontext->fpr[21]
    lfd     f22, fpucontext->fpr[22]
    lfd     f23, fpucontext->fpr[23]
    lfd     f24, fpucontext->fpr[24]
    lfd     f25, fpucontext->fpr[25]
    lfd     f26, fpucontext->fpr[26]
    lfd     f27, fpucontext->fpr[27]
    lfd     f28, fpucontext->fpr[28]
    lfd     f29, fpucontext->fpr[29]
    lfd     f30, fpucontext->fpr[30]
    lfd     f31, fpucontext->fpr[31]

_exit:
    blr
#endif // __MWERKS__
}

static asm void __OSSaveFPUContext(u32 dummy0, u32 dummy1, register OSContext* fpucontext) {
#ifdef __MWERKS__
    nofralloc

    lhz     r3,   fpucontext->state
    ori     r3,   r3, OS_CONTEXT_STATE_FPSAVED
    sth     r3,   fpucontext->state

    stfd    fp0,  fpucontext->fpr[0]
    stfd    fp1,  fpucontext->fpr[1]
    stfd    fp2,  fpucontext->fpr[2]
    stfd    fp3,  fpucontext->fpr[3]
    stfd    fp4,  fpucontext->fpr[4]
    stfd    fp5,  fpucontext->fpr[5]
    stfd    fp6,  fpucontext->fpr[6]
    stfd    fp7,  fpucontext->fpr[7]
    stfd    fp8,  fpucontext->fpr[8]
    stfd    fp9,  fpucontext->fpr[9]
    stfd    fp10, fpucontext->fpr[10]
    stfd    fp11, fpucontext->fpr[11]
    stfd    fp12, fpucontext->fpr[12]
    stfd    fp13, fpucontext->fpr[13]
    stfd    fp14, fpucontext->fpr[14]
    stfd    fp15, fpucontext->fpr[15]
    stfd    fp16, fpucontext->fpr[16]
    stfd    fp17, fpucontext->fpr[17]
    stfd    fp18, fpucontext->fpr[18]
    stfd    fp19, fpucontext->fpr[19]
    stfd    fp20, fpucontext->fpr[20]
    stfd    fp21, fpucontext->fpr[21]
    stfd    fp22, fpucontext->fpr[22]
    stfd    fp23, fpucontext->fpr[23]
    stfd    fp24, fpucontext->fpr[24]
    stfd    fp25, fpucontext->fpr[25]
    stfd    fp26, fpucontext->fpr[26]
    stfd    fp27, fpucontext->fpr[27]
    stfd    fp28, fpucontext->fpr[28]
    stfd    fp29, fpucontext->fpr[29]
    stfd    fp30, fpucontext->fpr[30]
    stfd    fp31, fpucontext->fpr[31]

    mffs    f0
    stfd    f0,     fpucontext->fpscr_pad
    lfd     fp0,  fpucontext->fpr[0]

    mfspr   r3, HID2
    rlwinm. r3, r3, 3, 31, 31
    bc      12, 2, _return

    psq_st  f0, OSContext.psf[0](fpucontext), 0, 0
    psq_st  f1, OSContext.psf[1](fpucontext), 0, 0
    psq_st  f2, OSContext.psf[2](fpucontext), 0, 0
    psq_st  f3, OSContext.psf[3](fpucontext), 0, 0
    psq_st  f4, OSContext.psf[4](fpucontext), 0, 0
    psq_st  f5, OSContext.psf[5](fpucontext), 0, 0
    psq_st  f6, OSContext.psf[6](fpucontext), 0, 0
    psq_st  f7, OSContext.psf[7](fpucontext), 0, 0
    psq_st  f8, OSContext.psf[8](fpucontext), 0, 0
    psq_st  f9, OSContext.psf[9](fpucontext), 0, 0
    psq_st  f10, OSContext.psf[10](fpucontext), 0, 0
    psq_st  f11, OSContext.psf[11](fpucontext), 0, 0
    psq_st  f12, OSContext.psf[12](fpucontext), 0, 0
    psq_st  f13, OSContext.psf[13](fpucontext), 0, 0
    psq_st  f14, OSContext.psf[14](fpucontext), 0, 0
    psq_st  f15, OSContext.psf[15](fpucontext), 0, 0
    psq_st  f16, OSContext.psf[16](fpucontext), 0, 0
    psq_st  f17, OSContext.psf[17](fpucontext), 0, 0
    psq_st  f18, OSContext.psf[18](fpucontext), 0, 0
    psq_st  f19, OSContext.psf[19](fpucontext), 0, 0
    psq_st  f20, OSContext.psf[20](fpucontext), 0, 0
    psq_st  f21, OSContext.psf[21](fpucontext), 0, 0
    psq_st  f22, OSContext.psf[22](fpucontext), 0, 0
    psq_st  f23, OSContext.psf[23](fpucontext), 0, 0
    psq_st  f24, OSContext.psf[24](fpucontext), 0, 0
    psq_st  f25, OSContext.psf[25](fpucontext), 0, 0
    psq_st  f26, OSContext.psf[26](fpucontext), 0, 0
    psq_st  f27, OSContext.psf[27](fpucontext), 0, 0
    psq_st  f28, OSContext.psf[28](fpucontext), 0, 0
    psq_st  f29, OSContext.psf[29](fpucontext), 0, 0
    psq_st  f30, OSContext.psf[30](fpucontext), 0, 0
    psq_st  f31, OSContext.psf[31](fpucontext), 0, 0

_return:
    blr
#endif // __MWERKS__
}

asm void OSLoadFPUContext(register OSContext* fpucontext) {
#ifdef __MWERKS__
    nofralloc
    addi    r4, fpucontext, 0
    b       __OSLoadFPUContext
#endif // __MWERKS__
}

asm void OSSaveFPUContext(register OSContext* fpucontext) {
#ifdef __MWERKS__
    nofralloc
    addi    r5, fpucontext, 0
    b       __OSSaveFPUContext
#endif // __MWERKS__
}

asm void OSSetCurrentContext(register OSContext* context) {
#ifdef __MWERKS__
    nofralloc

    addis   r4, r0, OS_CACHED_REGION_PREFIX

    stw     context, OS_ADDR_CURRENT_CONTEXT(r4)

    clrlwi  r5, context, 2
    stw     r5, OS_ADDR_CURRENT_CONTEXT_REAL(r4)

    lwz     r5, OS_ADDR_CURRENT_FPU_CONTEXT(r4)
    cmpw    r5, context
    bne     _disableFPU

    lwz     r6, context->srr1
    ori     r6, r6, 0x2000
    stw     r6, context->srr1
    mfmsr   r6
    ori     r6, r6, 2
    mtmsr   r6
    blr

_disableFPU:
    lwz     r6, context->srr1
    rlwinm  r6, r6, 0, 19, 17
    stw     r6, context->srr1
    mfmsr   r6
    rlwinm  r6, r6, 0, 19, 17
    ori     r6, r6, 2
    mtmsr   r6
    isync
    blr
#endif // __MWERKS__
}

OSContext* OSGetCurrentContext() {
    return (OSContext*)__OSCurrentContext;;
}

asm u32 OSSaveContext(register OSContext* context) {
#ifdef __MWERKS__
    nofralloc

    stmw    r13, context->gpr[13]
    mfspr   r0, GQR1
    stw     r0, context->gqr[1]
    mfspr   r0, GQR2
    stw     r0, context->gqr[2]
    mfspr   r0, GQR3
    stw     r0, context->gqr[3]
    mfspr   r0, GQR4
    stw     r0, context->gqr[4]
    mfspr   r0, GQR5
    stw     r0, context->gqr[5]
    mfspr   r0, GQR6
    stw     r0, context->gqr[6]
    mfspr   r0, GQR7
    stw     r0, context->gqr[7]
    mfcr    r0
    stw     r0, context->cr
    mflr    r0
    stw     r0, context->lr
    stw     r0, context->srr0
    mfmsr   r0
    stw     r0, context->srr1
    mfctr   r0
    stw     r0, context->ctr
    mfxer   r0
    stw     r0, context->xer
    stw     r1, context->gpr[1]
    stw     r2, context->gpr[2]
    li      r0, 0x1
    stw     r0, context->gpr[3]

    li      r3, 0
    blr
#endif // __MWERKS__
}

asm void OSLoadContext(register OSContext* context) {
#ifdef __MWERKS__
    nofralloc

    lis     r4, __RAS_OSDisableInterrupts_begin@ha
    lwz     r6, context->srr0
    addi    r5, r4,__RAS_OSDisableInterrupts_begin@l
    cmplw   r6, r5
    ble     _notInRAS
    lis     r4, __RAS_OSDisableInterrupts_end@ha
    addi    r0, r4,__RAS_OSDisableInterrupts_end@l
    cmplw   r6, r0
    bge     _notInRAS
    stw     r5, context->srr0

_notInRAS:
    lwz     r0, context->gpr[0]
    lwz     r1, context->gpr[1]
    lwz     r2, context->gpr[2]

    lhz     r4, context->state
    rlwinm. r5, r4, 0, 30, 30
    beq     notexc
    rlwinm  r4, r4, 0, 31, 29
    sth     r4, context->state
    lmw     r5, context->gpr[5]
    b       misc

notexc:
    lmw    r13, context->gpr[13]
    misc:

    lwz     r4, context->gqr[1]
    mtspr   GQR1, r4
    lwz     r4, context->gqr[2]
    mtspr   GQR2, r4
    lwz     r4, context->gqr[3]
    mtspr   GQR3, r4
    lwz     r4, context->gqr[4]
    mtspr   GQR4, r4
    lwz     r4, context->gqr[5]
    mtspr   GQR5, r4
    lwz     r4, context->gqr[6]
    mtspr   GQR6, r4
    lwz     r4, context->gqr[7]
    mtspr   GQR7, r4

    lwz     r4, context->cr
    mtcr    r4
    lwz     r4, context->lr
    mtlr    r4
    lwz     r4, context->ctr
    mtctr   r4
    lwz     r4, context->xer
    mtxer   r4

    mfmsr   r4
    rlwinm  r4, r4, 0, 17, 15
    rlwinm  r4, r4, 0, 31, 29
    mtmsr   r4

    lwz     r4, context->srr0
    mtsrr0  r4
    lwz     r4, context->srr1
    mtsrr1  r4

    lwz     r4, context->gpr[4]
    lwz     r3, context->gpr[3]

    rfi
#endif // __MWERKS__
}

asm u32 OSGetStackPointer() {
#ifdef __MWERKS__
    nofralloc
    mr  r3, r1
    blr
#endif // __MWERKS__
}

asm u32 OSSwitchStack(register u32 newsp) {
#ifdef __MWERKS__
    nofralloc
    mr  r5, r1
    mr  r1, newsp
    mr  r3, r5
    blr
#endif // __MWERKS__
}

asm int OSSwitchFiber(register u32 pc, register u32 newsp) {
#ifdef __MWERKS__
    nofralloc
    mflr    r0
    mr      r5, r1
    stwu    r5, -8(newsp)
    mr      r1, newsp
    stw     r0, 4(r5)
    mtlr    pc
    blrl
    lwz     r5, 0(r1)
    lwz     r0, 4(r5)
    mtlr    r0
    mr      r1, r5
    blr
#endif // __MWERKS__
}

asm void OSSwitchFiberEx(u32 r3, u32 r4, u32 r5, u32 r6, register void* pc, register void* newsp) {
#ifdef __MWERKS__
    nofralloc

    mflr    r0

    mr      r9, r1
    stwu    r9, -8(newsp)

    mr      r1, newsp
    stw     r0, 4(r9)

    mtlr    pc
    blrl


    lwz     r5, 0(r1)
    lwz     r0, 4(r5)
    mtlr    r0
    mr      r1, r5
    blr
#endif // __MWERKS__
}

void OSClearContext(OSContext* context) {
    context->mode = 0;
    context->state = 0;
    if (context == __OSFPUContext) {
        __OSFPUContext = NULL;
    }
}

asm void OSInitContext(register OSContext* context, register u32 pc, register u32 newsp) {
#ifdef __MWERKS__
    nofralloc

    stw     pc,  OSContext.srr0(context)
    stw     newsp,  OSContext.gpr[1](context)
    li      r11, 0
    ori     r11, r11, 0x00008000 | 0x00000020 | 0x00000010 | 0x00000002 | 0x00001000
    stw     r11, OSContext.srr1(context)
    li      r0,  0x0
    stw     r0,  OSContext.cr(context)
    stw     r0,  OSContext.xer(context)


    stw     r2,  OSContext.gpr[2](context)
    stw     r13, OSContext.gpr[13](context)

    stw     r0,  OSContext.gpr[3](context)
    stw     r0,  OSContext.gpr[4](context)
    stw     r0,  OSContext.gpr[5](context)
    stw     r0,  OSContext.gpr[6](context)
    stw     r0,  OSContext.gpr[7](context)
    stw     r0,  OSContext.gpr[8](context)
    stw     r0,  OSContext.gpr[9](context)
    stw     r0,  OSContext.gpr[10](context)
    stw     r0,  OSContext.gpr[11](context)
    stw     r0,  OSContext.gpr[12](context)

    stw     r0,  OSContext.gpr[14](context)
    stw     r0,  OSContext.gpr[15](context)
    stw     r0,  OSContext.gpr[16](context)
    stw     r0,  OSContext.gpr[17](context)
    stw     r0,  OSContext.gpr[18](context)
    stw     r0,  OSContext.gpr[19](context)
    stw     r0,  OSContext.gpr[20](context)
    stw     r0,  OSContext.gpr[21](context)
    stw     r0,  OSContext.gpr[22](context)
    stw     r0,  OSContext.gpr[23](context)
    stw     r0,  OSContext.gpr[24](context)
    stw     r0,  OSContext.gpr[25](context)
    stw     r0,  OSContext.gpr[26](context)
    stw     r0,  OSContext.gpr[27](context)
    stw     r0,  OSContext.gpr[28](context)
    stw     r0,  OSContext.gpr[29](context)
    stw     r0,  OSContext.gpr[30](context)
    stw     r0,  OSContext.gpr[31](context)

    stw     r0,  OSContext.gqr[0](context)
    stw     r0,  OSContext.gqr[1](context)
    stw     r0,  OSContext.gqr[2](context)
    stw     r0,  OSContext.gqr[3](context)
    stw     r0,  OSContext.gqr[4](context)
    stw     r0,  OSContext.gqr[5](context)
    stw     r0,  OSContext.gqr[6](context)
    stw     r0,  OSContext.gqr[7](context)

    b       OSClearContext
#endif // __MWERKS__
}

void OSDumpContext(OSContext* context) {
    u32 i;
    u32* sp;

    OSReport("------------------------- Context 0x%08x -------------------------\n", context);

    for (i = 0; i < 16; i++) {
        OSReport("r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n", i,
                 context->gpr[i], context->gpr[i], i + 16, context->gpr[i + 16],
                 context->gpr[i + 16]);
    }

    OSReport("LR   = 0x%08x                   CR   = 0x%08x\n", context->lr, context->cr);
    OSReport("SRR0 = 0x%08x                   SRR1 = 0x%08x\n", context->srr0, context->srr1);

    OSReport("\nGQRs----------\n");
    for (i = 0; i < 4; i++) {
        OSReport("gqr%d = 0x%08x \t gqr%d = 0x%08x\n", i, context->gqr[i], i + 4, context->gqr[i + 4]);
    }

    if (context->state & OS_CONTEXT_STATE_FPSAVED) {
        BOOL enabled = OSDisableInterrupts();
        
        OSContext*  currCtx = OSGetCurrentContext();
        OSContext   temp;

        OSClearContext(&temp);
        OSSetCurrentContext(&temp);

        OSReport("\n\nFPRs----------\n");
        for (i = 0; i < 32; i += 2) {
            OSReport("fr%d \t= %d \t fr%d \t= %d\n", i, (u32)context->fpr[i], i + 1, (u32)context->fpr[i + 1]);
        }

        OSReport("\n\nPSFs----------\n");
        for (i = 0; i < 32; i += 2) {
            OSReport("ps%d \t= 0x%x \t ps%d \t= 0x%x\n", i, (u32)context->psf[i], i+1, (u32)context->psf[i + 1]);
        }

        OSClearContext(&temp);
        OSSetCurrentContext(currCtx);
        OSRestoreInterrupts(enabled);
    }

    OSReport("\nAddress:      Back Chain    LR Save\n");
    for (i = 0, sp = (u32*)context->gpr[1]; sp != NULL && sp != (u32*)0xFFFFFFFF && i++ < 16; sp = (u32*)*sp) {
        OSReport("0x%08x:   0x%08x    0x%08x\n", sp, *sp, sp[1]);
    }
}

static asm void OSSwitchFPUContext(register u8 err, register OSContext* context) {
#ifdef __MWERKS__
    nofralloc
    mfmsr   r5
    ori     r5, r5, 0x2000
    mtmsr   r5
    isync
    lwz     r5, OSContext.srr1(context)
    ori     r5, r5, 0x2000
    mtsrr1  r5
    addis   r3, r0, OS_CACHED_REGION_PREFIX
    lwz     r5, OS_ADDR_CURRENT_FPU_CONTEXT(r3) 
    stw     context, OS_ADDR_CURRENT_FPU_CONTEXT(r3)
    cmpw    r5, r4
    beq     _restoreAndExit
    cmpwi   r5, 0x0
    beq     _loadNewFPUContext
    bl      __OSSaveFPUContext

_loadNewFPUContext:
    bl      __OSLoadFPUContext

_restoreAndExit:
    lwz     r3, OSContext.cr(context)
    mtcr    r3
    lwz     r3, OSContext.lr(context)
    mtlr    r3
    lwz     r3, OSContext.srr0(context)
    mtsrr0  r3
    lwz     r3, OSContext.ctr(context)
    mtctr   r3
    lwz     r3, OSContext.xer(context)
    mtxer   r3
    lhz     r3, context->state
    rlwinm  r3, r3, 0, 31, 29
    sth     r3, context->state
    lwz     r5, OSContext.gpr[5](context)
    lwz     r3, OSContext.gpr[3](context)
    lwz     r4, OSContext.gpr[4](context)
    rfi
#endif // __MWERKS__
}

void __OSContextInit() {
    __OSSetExceptionHandler(OS_EXCEPTION_FLOATING_POINT, OSSwitchFPUContext);
    __OSFPUContext = NULL;
    DBPrintf("FPU-unavailable handler installed\n");
}

asm void OSFillFPUContext(register OSContext* context) {
#ifdef __MWERKS__
    nofralloc

    mfmsr   r5
    ori     r5, r5, 0x2000
    mtmsr   r5
    isync

    stfd    fp0,  context->fpr[0]
    stfd    fp1,  context->fpr[1]
    stfd    fp2,  context->fpr[2]
    stfd    fp3,  context->fpr[3]
    stfd    fp4,  context->fpr[4]
    stfd    fp5,  context->fpr[5]
    stfd    fp6,  context->fpr[6]
    stfd    fp7,  context->fpr[7]
    stfd    fp8,  context->fpr[8]
    stfd    fp9,  context->fpr[9]
    stfd    fp10, context->fpr[10]
    stfd    fp11, context->fpr[11]
    stfd    fp12, context->fpr[12]
    stfd    fp13, context->fpr[13]
    stfd    fp14, context->fpr[14]
    stfd    fp15, context->fpr[15]
    stfd    fp16, context->fpr[16]
    stfd    fp17, context->fpr[17]
    stfd    fp18, context->fpr[18]
    stfd    fp19, context->fpr[19]
    stfd    fp20, context->fpr[20]
    stfd    fp21, context->fpr[21]
    stfd    fp22, context->fpr[22]
    stfd    fp23, context->fpr[23]
    stfd    fp24, context->fpr[24]
    stfd    fp25, context->fpr[25]
    stfd    fp26, context->fpr[26]
    stfd    fp27, context->fpr[27]
    stfd    fp28, context->fpr[28]
    stfd    fp29, context->fpr[29]
    stfd    fp30, context->fpr[30]
    stfd    fp31, context->fpr[31]

    mffs    fp0
    stfd    fp0,  OSContext.fpscr_pad(context)

    lfd     fp0,  context->fpr[0]

    mfspr   r5, HID2
    rlwinm. r5, r5, 3, 31, 31
    bc      12, 2, _return

    psq_st  fp0, OSContext.psf[0](context), 0, 0
    psq_st  fp1, OSContext.psf[1](context), 0, 0
    psq_st  fp2, OSContext.psf[2](context), 0, 0
    psq_st  fp3, OSContext.psf[3](context), 0, 0
    psq_st  fp4, OSContext.psf[4](context), 0, 0
    psq_st  fp5, OSContext.psf[5](context), 0, 0
    psq_st  fp6, OSContext.psf[6](context), 0, 0
    psq_st  fp7, OSContext.psf[7](context), 0, 0
    psq_st  fp8, OSContext.psf[8](context), 0, 0
    psq_st  fp9, OSContext.psf[9](context), 0, 0
    psq_st  fp10, OSContext.psf[10](context), 0, 0
    psq_st  fp11, OSContext.psf[11](context), 0, 0
    psq_st  fp12, OSContext.psf[12](context), 0, 0
    psq_st  fp13, OSContext.psf[13](context), 0, 0
    psq_st  fp14, OSContext.psf[14](context), 0, 0
    psq_st  fp15, OSContext.psf[15](context), 0, 0
    psq_st  fp16, OSContext.psf[16](context), 0, 0
    psq_st  fp17, OSContext.psf[17](context), 0, 0
    psq_st  fp18, OSContext.psf[18](context), 0, 0
    psq_st  fp19, OSContext.psf[19](context), 0, 0
    psq_st  fp20, OSContext.psf[20](context), 0, 0
    psq_st  fp21, OSContext.psf[21](context), 0, 0
    psq_st  fp22, OSContext.psf[22](context), 0, 0
    psq_st  fp23, OSContext.psf[23](context), 0, 0
    psq_st  fp24, OSContext.psf[24](context), 0, 0
    psq_st  fp25, OSContext.psf[25](context), 0, 0
    psq_st  fp26, OSContext.psf[26](context), 0, 0
    psq_st  fp27, OSContext.psf[27](context), 0, 0
    psq_st  fp28, OSContext.psf[28](context), 0, 0
    psq_st  fp29, OSContext.psf[29](context), 0, 0
    psq_st  fp30, OSContext.psf[30](context), 0, 0
    psq_st  fp31, OSContext.psf[31](context), 0, 0
_return:
    blr
#endif // __MWERKS__
}
