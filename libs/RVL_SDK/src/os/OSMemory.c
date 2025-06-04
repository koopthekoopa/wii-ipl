#include <revolution/os.h>
#include <private/os.h>

#include <private/hollywood.h>

static BOOL OnShutdown(BOOL final, u32 event);

static OSShutdownFunctionInfo ShutdownFunctionInfo = {
    OnShutdown, 0x7F, NULL, NULL,
};

u32 OSGetPhysicalMem1Size() {
    return *(u32*)OSPhysicalToCached(OS_ADDR_PHYSICAL_MEM1_SIZE);
}

u32 OSGetPhysicalMem2Size() {
    return *(u32*)OSPhysicalToCached(OS_ADDR_PHYSICAL_MEM2_SIZE);
}

u32 OSGetConsoleSimulatedMem1Size() {
    return *(u32*)OSPhysicalToCached(OS_ADDR_SIMULATED_MEM1_SIZE);
}

u32 OSGetConsoleSimulatedMem2Size() {
    return *(u32*)OSPhysicalToCached(OS_ADDR_SIMULATED_MEM2_SIZE);
}

static BOOL OnShutdown(BOOL final, u32 event) {
    if (final != FALSE) {
        MEM_WRITE_REG(MEM_MARR_CONTROL, 0b11111111);
        __OSMaskInterrupts(OS_INTERRUPTMASK_MEM_RESET);
    }

    return TRUE;
}

void MEMIntrruptHandler(__OSInterrupt interrupt, OSContext *context) {
    u32 addr, cause;
    cause = MEM_READ_REG(MEM_INT_STAT);
    addr = (((u32)(MEM_READ_REG(MEM_INT_ADDRH) & 0b0000001111111111) << 16) | MEM_READ_REG(MEM_INT_ADDRL));
    MEM_WRITE_REG(MEM_INT_CLR, 0);

    if (__OSErrorTable[OS_EXCEPTION_MEMORY_PROTECTION]) {
        __OSErrorTable[OS_EXCEPTION_MEMORY_PROTECTION](OS_EXCEPTION_MEMORY_PROTECTION, context, cause, addr);
        return;
    }

    __OSUnhandledException(OS_EXCEPTION_MEMORY_PROTECTION, context, cause, addr);
}

void OSProtectRange(u32 chan, void *addr, u32 nBytes, u32 control) {
    BOOL enabled;
    u32 start, end;
    u16 reg;

    if (chan >= 4) {
        return;
    }

    control &= 3;
    end = (u32)addr + nBytes;
    start = ROUNDDOWN((u32)addr, 1 << 10);
    end = ROUNDUP(end, 1 << 10);
    DCFlushRange((void*)start, end - start);

    enabled = OSDisableInterrupts();
    __OSMaskInterrupts(0x80000000 /* OS_INTERRUPTMASK_MEM_0 */ >> (chan));

    MEM_WRITE_REG(MEM_MARR0_START + 4 * chan, (start >> 10));
    __MEMRegs[(MEM_MARR0_END>>1) + 2 * chan] = (end >> 10); // todo: make it use MEM_WRITE_REG

    reg = MEM_READ_REG(MEM_MARR_CONTROL);
    reg &= ~(3 << 2 * chan);
    reg |= control << 2 * chan;
    MEM_WRITE_REG(MEM_MARR_CONTROL, reg);

    if (control != 3) {
        __OSUnmaskInterrupts(0x80000000 /* OS_INTERRUPTMASK_MEM_0 */ >> (chan));
    }

    OSRestoreInterrupts(enabled);
}

static asm void ConfigMEM1_24MB() {
#ifdef __MWERKS__
    nofralloc
    addi r7, r0, 0

    addis   r4,r0,0x00000002@ha
    addi    r4,r4,0x00000002@l
    addis   r3,r0,0x800001ff@ha
    addi    r3,r3,0x800001ff@l

    addis   r6,r0,0x01000002@ha
    addi    r6,r6,0x01000002@l
    addis   r5,r0,0x810000ff@ha
    addi    r5,r5,0x810000ff@l

    isync

    mtspr   DBAT0U,r7
    mtspr   DBAT0L,r4
    mtspr   DBAT0U,r3
    isync

    mtspr   IBAT0U,r7
    mtspr   IBAT0L,r4
    mtspr   IBAT0U,r3
    isync

    mtspr   DBAT2U,r7
    mtspr   DBAT2L,r6
    mtspr   DBAT2U,r5
    isync

    mtspr   IBAT2U,r7
    mtspr   IBAT2L,r6
    mtspr   IBAT2U,r5
    isync

    mfmsr   r3
    ori     r3, r3, 0x30
    mtsrr1  r3

    mflr r3
    mtsrr0 r3
        rfi
#endif // __MWERKS__
}

static asm void ConfigMEM1_48MB() {
#ifdef __MWERKS__
    nofralloc

    addi    r7,r0, 0

    addis   r4,r0,0x00000002@ha
    addi    r4,r4,0x00000002@l
    addis   r3,r0,0x800003ff@ha
    addi    r3,r3,0x800003ff@l

    addis   r6,r0,0x02000002@ha
    addi    r6,r6,0x02000002@l
    addis   r5,r0,0x820001ff@ha
    addi    r5,r5,0x820001ff@l

    isync

    mtspr   DBAT0U,r7
    mtspr   DBAT0L,r4
    mtspr   DBAT0U,r3
    isync

    mtspr   IBAT0U,r7
    mtspr   IBAT0L,r4
    mtspr   IBAT0U,r3
    isync

    mtspr   DBAT2U,r7
    mtspr   DBAT2L,r6
    mtspr   DBAT2U,r5
    isync

    mtspr   IBAT2U,r7
    mtspr   IBAT2L,r6
    mtspr   IBAT2U,r5
    isync

    mfmsr   r3
    ori     r3, r3, 0x30
    mtsrr1  r3

    mflr    r3
    mtsrr0  r3
        rfi
#endif // __MWERKS__
}

static asm void ConfigMEM2_52MB() {
#ifdef __MWERKS__
    nofralloc

    addi    r7, r0, 0

    addis   r4,r0,0x10000002@ha
    addi    r4,r4,0x10000002@l
    addis   r3,r0,0x900003ff@ha
    addi    r3,r3,0x900003ff@l

    addis   r6,r0,0x1000002a@ha
    addi    r6,r6,0x1000002a@l
    addis   r5,r0,0xD00007ff@ha
    addi    r5,r5,0xD00007ff@l

    isync

    mtspr   DBAT4U,r7
    mtspr   DBAT4L,r4
    mtspr   DBAT4U,r3
    isync

    mtspr   IBAT4U,r7
    mtspr   IBAT4L,r4
    mtspr   IBAT4U,r3

    isync

    mtspr   DBAT5U,r7
    mtspr   DBAT5L,r6
    mtspr   DBAT5U,r5
    isync

    mtspr   IBAT5U,r7
    mtspr   IBAT5L,r7
    isync

    addis   r4,r0,0x12000002@ha
    addi    r4,r4,0x12000002@l
    addis   r3,r0,0x920001ff@ha
    addi    r3,r3,0x920001ff@l

    addis   r6,r0,0x13000002@ha
    addi    r6,r6,0x13000002@l
    addis   r5,r0,0x9300007f@ha
    addi    r5,r5,0x9300007f@l

    isync

    mtspr   DBAT6U,r7
    mtspr   DBAT6L,r4
    mtspr   DBAT6U,r3
    isync

    mtspr   IBAT6U,r7
    mtspr   IBAT6L,r4
    mtspr   IBAT6U,r3

    isync

    mtspr   DBAT7U,r7
    mtspr   DBAT7L,r6
    mtspr   DBAT7U,r5
    isync

    mtspr   IBAT7U,r7
    mtspr   IBAT7L,r6
    mtspr   IBAT7U,r5

    isync

    mfmsr   r3
    ori     r3, r3, 0x30
    mtsrr1  r3

    mflr    r3
    mtsrr0  r3
        rfi
#endif // __MWERKS__
}

static asm void ConfigMEM2_56MB() {
#ifdef __MWERKS__
    nofralloc

    addi    r7,r0, 0

    addis   r4,r0,0x10000002@ha
    addi    r4,r4,0x10000002@l
    addis   r3,r0,0x900003ff@ha
    addi    r3,r3,0x900003ff@l

    addis   r6,r0,0x1000002a@ha
    addi    r6,r6,0x1000002a@l
    addis   r5,r0,0xD00007ff@ha
    addi    r5,r5,0xD00007ff@l

    isync

    mtspr   DBAT4U,r7
    mtspr   DBAT4L,r4
    mtspr   DBAT4U,r3
    isync

    mtspr   IBAT4U,r7
    mtspr   IBAT4L,r4
    mtspr   IBAT4U,r3

    isync

    mtspr   DBAT5U,r7
    mtspr   DBAT5L,r6
    mtspr   DBAT5U,r5
    isync

    mtspr   IBAT5U,r7
    mtspr   IBAT5L,r7
    isync

    addis   r4,r0,0x12000002@ha
    addi    r4,r4,0x12000002@l
    addis   r3,r0,0x920001ff@ha
    addi    r3,r3,0x920001ff@l

    addis   r6,r0,0x13000002@ha
    addi    r6,r6,0x13000002@l
    addis   r5,r0,0x930000ff@ha
    addi    r5,r5,0x930000ff@l

    isync

    mtspr   DBAT6U,r7
    mtspr   DBAT6L,r4
    mtspr   DBAT6U,r3
    isync

    mtspr   IBAT6U,r7
    mtspr   IBAT6L,r4
    mtspr   IBAT6U,r3

    isync

    mtspr   DBAT7U,r7
    mtspr   DBAT7L,r6
    mtspr   DBAT7U,r5
    isync

    mtspr   IBAT7U,r7
    mtspr   IBAT7L,r6
    mtspr   IBAT7U,r5

    isync

    mfmsr   r3
    ori     r3, r3, 0x30
    mtsrr1  r3

    mflr    r3
    mtsrr0  r3
        rfi
#endif // __MWERKS__
}

static asm void ConfigMEM2_64MB() {
#ifdef __MWERKS__
    nofralloc

    addi    r7,r0,0x0000

    addis   r4,r0,0x10000002@ha
    addi    r4,r4,0x10000002@l
    addis   r3,r0,0x900007ff@ha
    addi    r3,r3,0x900007ff@l

    addis   r6,r0,0x1000002a@ha
    addi    r6,r6,0x1000002a@l
    addis   r5,r0,0xD00007ff@ha
    addi    r5,r5,0xD00007ff@l

    isync

    mtspr   DBAT4U,r7
    mtspr   DBAT4L,r4
    mtspr   DBAT4U,r3
    isync

    mtspr   IBAT4U,r7
    mtspr   IBAT4L,r4
    mtspr   IBAT4U,r3

    isync

    mtspr   DBAT5U,r7
    mtspr   DBAT5L,r6
    mtspr   DBAT5U,r5
    isync

    mtspr   IBAT5U,r7
    mtspr   IBAT5L,r7
    isync

    mtspr   IBAT6U,r7
    mtspr   IBAT6L,r7
    isync

    mtspr   IBAT7U,r7
    mtspr   IBAT7L,r7
    isync

    mtspr   DBAT6U,r7
    mtspr   DBAT6L,r7
    isync

    mtspr   DBAT7U,r7
    mtspr   DBAT7L,r7
    isync

    mfmsr   r3
    ori     r3, r3, 0x30
    mtsrr1  r3

    mflr    r3
    mtsrr0  r3
        rfi
#endif // __MWERKS__
}

static asm void ConfigMEM2_112MB() {
#ifdef __MWERKS__
    nofralloc

    addi    r7, r0, 0

    addis   r4,r0,0x10000002@ha
    addi    r4,r4,0x10000002@l
    addis   r3,r0,0x900007ff@ha
    addi    r3,r3,0x900007ff@l

    addis   r6,r0,0x1000002a@ha
    addi    r6,r6,0x1000002a@l
    addis   r5,r0,0xD0000fff@ha
    addi    r5,r5,0xD0000fff@l

    isync

    mtspr   DBAT4U,r7
    mtspr   DBAT4L,r4
    mtspr   DBAT4U,r3
    isync

    mtspr   IBAT4U,r7
    mtspr   IBAT4L,r4
    mtspr   IBAT4U,r3

    isync

    mtspr   DBAT5U,r7
    mtspr   DBAT5L,r6
    mtspr   DBAT5U,r5
    isync

    mtspr   IBAT5U,r7
    mtspr   IBAT5L,r7
    isync

    addis   r4,r0,0x14000002@ha
    addi    r4,r4,0x14000002@l
    addis   r3,r0,0x940003ff@ha
    addi    r3,r3,0x940003ff@l

    addis   r6,r0,0x16000002@ha
    addi    r6,r6,0x16000002@l
    addis   r5,r0,0x960001ff@ha
    addi    r5,r5,0x960001ff@l

    isync

    mtspr   DBAT6U,r7
    mtspr   DBAT6L,r4
    mtspr   DBAT6U,r3
    isync

    mtspr   IBAT6U,r7
    mtspr   IBAT6L,r4
    mtspr   IBAT6U,r3
    isync

    mtspr   DBAT7U,r7
    mtspr   DBAT7L,r6
    mtspr   DBAT7U,r5
    isync

    mtspr   IBAT7U,r7
    mtspr   IBAT7L,r6
    mtspr   IBAT7U,r5

    isync

    mfmsr   r3
    ori     r3, r3, 0x30
    mtsrr1  r3

    mflr    r3
    mtsrr0  r3
        rfi
#endif // __MWERKS__
}

static asm void ConfigMEM2_128MB() {
#ifdef __MWERKS__
    nofralloc

    addi    r7, r0, 0

    addis   r4,r0,0x10000002@ha
    addi    r4,r4,0x10000002@l
    addis   r3,r0,0x90000fff@ha
    addi    r3,r3,0x90000fff@l

    addis   r6,r0,0x1000002a@ha
    addi    r6,r6,0x1000002a@l
    addis   r5,r0,0xD0000fff@ha
    addi    r5,r5,0xD0000fff@l

    isync

    mtspr   DBAT4U,r7
    mtspr   DBAT4L,r4
    mtspr   DBAT4U,r3
    isync

    mtspr   IBAT4U,r7
    mtspr   IBAT4L,r4
    mtspr   IBAT4U,r3

    isync

    mtspr   DBAT5U,r7
    mtspr   DBAT5L,r6
    mtspr   DBAT5U,r5
    isync

    mtspr   IBAT5U,r7
    mtspr   IBAT5L,r7
    isync

    mtspr   IBAT6U,r7
    mtspr   IBAT6L,r7
    isync

    mtspr   IBAT7U,r7
    mtspr   IBAT7L,r7
    isync

    mtspr   DBAT6U,r7
    mtspr   DBAT6L,r7
    isync

    mtspr   DBAT7U,r7
    mtspr   DBAT7L,r7
    isync

    mfmsr   r3
    ori     r3, r3, 0x30
    mtsrr1  r3

    mflr    r3
    mtsrr0  r3
        rfi
#endif // __MWERKS__
}

static asm void ConfigMEM_ES1_0() {
#ifdef __MWERKS__
    nofralloc

    addi    r7, r0, 0

    addis   r4,r0,0x00000002@ha
    addi    r4,r4,0x00000002@l
    addis   r3,r0,0x80000fff@ha
    addi    r3,r3,0x80000fff@l

    isync

    mtspr   DBAT0U,r7
    mtspr   DBAT0L,r4
    mtspr   DBAT0U,r3
    isync

    mtspr   IBAT0U,r7
    mtspr   IBAT0L,r4
    mtspr   IBAT0U,r3
    isync

    mfmsr   r3
    ori     r3, r3, 0x30
    mtsrr1  r3

    mflr    r3
    mtsrr0  r3
        rfi
#endif // __MWERKS__
}

static asm void RealMode(register u32 addr) {
#ifdef __MWERKS__
    nofralloc

    clrlwi r3, r3, 2
    mtsrr0 addr
    mfmsr r3
    rlwinm r3, r3, 0, 28, 25
    mtsrr1 r3
        rfi
#endif // __MWERKS__
}

static void BATConfig() {
    u32 size1, size2, prot;

    if (*(u32*)OSPhysicalToCached(OS_ADDR_HOLLYWOOD_REVISION) == HOLLYWOOD_ES_1_0) {
        if ((u32*)OSGetPhysicalMem1Size == 0 /* what */) {
            RealMode((u32)ConfigMEM_ES1_0);
            return;
        }
    }

    size1 = OSGetConsoleSimulatedMem1Size();

    if (size1 < OSGetPhysicalMem1Size() && size1 == 0x01800000) {
        DCInvalidateRange((void*)0x81800000, 0x01800000);
        MEM_WRITE_REG(MEM_CONFIG, (1<<1));
    }

    if (size1 <= 0x01800000) {
        RealMode((u32)ConfigMEM1_24MB);
    }
    else if (size1 <= 0x03000000) {
        RealMode((u32)ConfigMEM1_48MB);
    }

    size2 = OSGetConsoleSimulatedMem2Size();
    prot = *(u32*)OSPhysicalToCached(0x3120);

    if (size2 <= 0x04000000) {
        if (prot <= 0x93400000) {
            RealMode((u32)ConfigMEM2_52MB);
        }
        else if (prot <= 0x93800000) {
            RealMode((u32)ConfigMEM2_56MB);
        }
        else {
            RealMode((u32)ConfigMEM2_64MB);
        }
    }
    else if (size2 <= 0x08000000) {
        if (prot <= 0x97000000) {
            RealMode((u32)ConfigMEM2_112MB);
        }
        else {
            RealMode((u32)ConfigMEM2_128MB);
        }
    }
}

void __OSInitMemoryProtection() {
    BOOL enabled = OSDisableInterrupts();
    MEM_WRITE_REG(MEM_INT_CLR, 0);
    MEM_WRITE_REG(MEM_MARR_CONTROL, 0b11111111);
    __OSMaskInterrupts(OS_INTERRUPTMASK_MEM_RESET);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_0, MEMIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_1, MEMIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_2, MEMIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_3, MEMIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_MEM_ADDRESS, MEMIntrruptHandler);
    OSRegisterShutdownFunction(&ShutdownFunctionInfo);
    BATConfig();
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_MEM_ADDRESS);
    OSRestoreInterrupts(enabled);
}
