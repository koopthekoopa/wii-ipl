#include <revolution/base/PPCArch.h>

#include <revolution/os.h>
#include <revolution/os/OSBootInfo.h>
#include <private/os.h>
#include <private/hollywood.h>

#include <revolution/dvd.h>
#include <private/dvd.h>

#include <revolution/sc.h>

#include <private/exi.h>

#include <private/si.h>

#include <private/db.h>

#include <private/ipc.h>

#include <revolution/verdefs.h>

#include <TRK_Hollywood_Revolution.h>
#include <__ppc_eabi_linker.h>

#include <string.h>

SDKDefineVersion(OS, "Apr 20 2010", "11:20:43");


/* Linker generated */
extern u8                       __ArenaHi[];
extern u8                       __ArenaLo[];

OSExecParams                    __OSRebootParams;

OSTime                          __OSStartTime;

static OSBootInfo* volatile     BootInfo;

static u32*                     BI2DebugFlag;
static u32                      BI2DebugFlagHolder;

static char                     GameNameBuffer[4+1];

static f64                      ZeroF;
static f32                      ZeroPS[2];

static DVDDriveInfo             DriveInfo;
static DVDCommandBlock          DriveBlock;

__OSExceptionHandler*           OSExceptionTable;

extern u32                      __PADSpec;

extern u32                      __DVDLongFileNameFlag;

static BOOL                     AreWeInitialized;

BOOL                            __OSIsGcam;
BOOL                            __OSInNandBoot, __OSInIPL;

void __OSEVStart();
void __OSEVEnd();
#define __OSEVSize ((u32)__OSEVEnd - (u32)__OSEVStart)
void __OSEVSetNumber();

void __DBVECTOR();

void __OSDBINTSTART();
void __OSDBINTEND();
#define __OSDBINTSIZE ((u32)__OSDBINTEND - (u32)__OSDBINTSTART)

void __OSDBJUMPSTART();
void __OSDBJUMPEND();
#define __OSDBJUMPSIZE ((u32)__OSDBJUMPEND - (u32)__OSDBJUMPSTART)

void OSDefaultExceptionHandler(u8 type, register OSContext* context);

#define OSArenaSize()       ((u32)OSGetArenaHi() - (u32)OSGetArenaLo())
#define OSMEM2ArenaSize()   ((u32)OSGetMEM2ArenaHi() - (u32)OSGetMEM2ArenaLo())

asm void __OSFPRInit() {
#ifdef __MWERKS__
    nofralloc

    mfmsr   r3
    ori     r3, r3, MSR_FP
    mtmsr   r3

    mfspr   r3, HID2
    rlwinm. r3, r3, 3, 31, 31
    beq     skipPairedSingleInit

    lis     r3, ZeroPS@ha
    addi    r3, r3, ZeroPS@l

    psq_l   fp0, 0(r3), 0, 0

    ps_mr   fp1, fp0
    ps_mr   fp2, fp0
    ps_mr   fp3, fp0
    ps_mr   fp4, fp0
    ps_mr   fp5, fp0
    ps_mr   fp6, fp0
    ps_mr   fp7, fp0
    ps_mr   fp8, fp0
    ps_mr   fp9, fp0
    ps_mr   fp10, fp0
    ps_mr   fp11, fp0
    ps_mr   fp12, fp0
    ps_mr   fp13, fp0
    ps_mr   fp14, fp0
    ps_mr   fp15, fp0
    ps_mr   fp16, fp0
    ps_mr   fp17, fp0
    ps_mr   fp18, fp0
    ps_mr   fp19, fp0
    ps_mr   fp20, fp0
    ps_mr   fp21, fp0
    ps_mr   fp22, fp0
    ps_mr   fp23, fp0
    ps_mr   fp24, fp0
    ps_mr   fp25, fp0
    ps_mr   fp26, fp0
    ps_mr   fp27, fp0
    ps_mr   fp28, fp0
    ps_mr   fp29, fp0
    ps_mr   fp30, fp0
    ps_mr   fp31, fp0

skipPairedSingleInit:
    lfd     fp0, ZeroF
    fmr     fp1, fp0
    fmr     fp2, fp0
    fmr     fp3, fp0
    fmr     fp4, fp0
    fmr     fp5, fp0
    fmr     fp6, fp0
    fmr     fp7, fp0
    fmr     fp8, fp0
    fmr     fp9, fp0
    fmr     fp10, fp0
    fmr     fp11, fp0
    fmr     fp12, fp0
    fmr     fp13, fp0
    fmr     fp14, fp0
    fmr     fp15, fp0
    fmr     fp16, fp0
    fmr     fp17, fp0
    fmr     fp18, fp0
    fmr     fp19, fp0
    fmr     fp20, fp0
    fmr     fp21, fp0
    fmr     fp22, fp0
    fmr     fp23, fp0
    fmr     fp24, fp0
    fmr     fp25, fp0
    fmr     fp26, fp0
    fmr     fp27, fp0
    fmr     fp28, fp0
    fmr     fp29, fp0
    fmr     fp30, fp0
    fmr     fp31, fp0

    mtfsf   0xFF, fp0

    blr
#endif // __MWERKS__
}

u32 __OSGetHollywoodRev() {
    return *(u32*)OSPhysicalToCached(OS_ADDR_HOLLYWOOD_REVISION);
}

void __OSGetIOSRev(OSIOSRev* rev) {
    u32 iosVer, iosBuild;
    // Read form RAM
    iosVer = *(u32*)OSPhysicalToUncached(OS_ADDR_IOS_REVISION);
    iosBuild = *(u32*)OSPhysicalToUncached(OS_ADDR_IOS_BUILD_DATE);

    // Sort
    rev->reserved = ((iosVer >> 24) & 0xFF);
    rev->major = ((iosVer >> 16) & 0xFF);
    rev->minor = ((iosVer >> 8) & 0xFF);
    rev->micro = (iosVer & 0xFF);

    rev->month = (((iosBuild >> 20) & 0xF) * 10 + ((iosBuild >> 16) & 0xF));
    rev->date = (((iosBuild >> 12) & 0xF) * 10 + ((iosBuild >> 8) & 0xF));
    rev->year = (((iosBuild >> 4) & 0xF) * 10 + (iosBuild & 0xF) + 2000);
}

u32 OSGetConsoleType() {
    u32 hwRev;
    u32 gddrSize;

    OSBootInfo* bootInfo = (OSBootInfo*)BootInfo;
    if (bootInfo == NULL || bootInfo->consoleType == 0) {
        return OS_CONSOLE_UNK;
    }

    hwRev = __OSGetHollywoodRev();

    if (__OSDeviceCode & DVD_DEVICE_CODE) {
        switch (__OSDeviceCode & ~DVD_DEVICE_CODE) {
            // Retail and prototype boards
            case 0x0002:
            case 0x0003:
            case 0x0203: {
                switch (hwRev) {
                    case HOLLYWOOD_ES_1_0:
                        return OS_CONSOLE_RVL_PP_0;
                    case HOLLYWOOD_ES_1_1:
                        return OS_CONSOLE_RVL_PP_1;
                    case HOLLYWOOD_ES_1_2:
                        return OS_CONSOLE_RVL_PP_2_1;
                    case HOLLYWOOD_ES_2_0:
                        return OS_CONSOLE_RVL_PP_2_2;
                    case HOLLYWOOD_ES_2_1:
                        return OS_CONSOLE_RETAIL;
                }

                if (hwRev > HOLLYWOOD_ES_2_1) {
                    return OS_CONSOLE_RETAIL;
                }
            }
            // Development boards
            case 0x0202:
            case 0x0201: {
                switch (hwRev) {
                    case HOLLYWOOD_ES_1_0:
                        return OS_CONSOLE_NDEV_1_0;
                    case HOLLYWOOD_ES_1_1:
                        return OS_CONSOLE_NDEV_1_1;
                    case HOLLYWOOD_ES_1_2:
                        return OS_CONSOLE_NDEV_1_2;
                    case HOLLYWOOD_ES_2_0:
                        return OS_CONSOLE_NDEV_2_0;
                    case HOLLYWOOD_ES_2_1:
                        return OS_CONSOLE_NDEV_2_1;
                }
                if (hwRev > HOLLYWOOD_ES_2_1) {
                    return OS_CONSOLE_NDEV_2_1;
                }
            }
            // Revolution Arcade
            case 0x0300: {
                return OS_CONSOLE_RETAIL_RVA;
            }
            default: {
                break;
            }
        }
    }

    gddrSize = OSGetPhysicalMem2Size();
    // 0x4000000 = 64 MB
    switch (hwRev) {
        case HOLLYWOOD_ES_1_0: {
            if (gddrSize == 0x4000000) {
                return OS_CONSOLE_RVL_PP_0;
            }
            else {
                return OS_CONSOLE_NDEV_1_0;
            }
        }
        case HOLLYWOOD_ES_1_1:
            if (gddrSize == 0x4000000) {
                return OS_CONSOLE_RVL_PP_1;
            }
            else {
                return OS_CONSOLE_NDEV_1_1;
            }

        case HOLLYWOOD_ES_1_2:
            if (gddrSize == 0x4000000) {
                return OS_CONSOLE_RVL_PP_2_1;
            }
            else {
                return OS_CONSOLE_NDEV_1_2;
            }

        case HOLLYWOOD_ES_2_0:
            if (gddrSize == 0x4000000) {
                return OS_CONSOLE_RVL_PP_2_2;
            }
            else {
                return OS_CONSOLE_NDEV_2_0;
            }

        case HOLLYWOOD_ES_2_1:
            if (gddrSize == 0x4000000) {
                return OS_CONSOLE_RETAIL;
            }
            else {
                return OS_CONSOLE_NDEV_2_1;
            }
    }

    if (hwRev > HOLLYWOOD_ES_2_1) {
        if (gddrSize == 0x4000000) {
            return OS_CONSOLE_RETAIL;
        }
        else {
            return OS_CONSOLE_NDEV_2_1;
        }
    }

    return BootInfo->consoleType;
}

static void MemClear(void *base, u32 size) {
    void* lastBase = (size > 0x40000) ? (void*)((u32)base + (size - 0x40000)) : base;
    DCZeroRange(base, size);
    DCFlushRange(lastBase, 0x40000);
}

static void ClearArena() NO_INLINE {
    if (!((OSGetResetCode() >> 31) & 1)) {
        MemClear(OSGetArenaLo(), OSArenaSize());
    }
    else {
        if (__OSRebootParams.regionStart == NULL || !OSIsMEM1Region(__OSRebootParams.regionStart)) {
            MemClear(OSGetArenaLo(), OSArenaSize());
        }
        else {
            if (OSGetArenaLo() < __OSRebootParams.regionStart) {
                if (OSGetArenaHi() <= __OSRebootParams.regionStart) {
                    MemClear(OSGetArenaLo(), OSArenaSize());
                }
                else {
                    MemClear(OSGetArenaLo(), (u32)__OSRebootParams.regionStart - (u32)OSGetArenaLo());
                
                    if (OSGetArenaHi() > __OSRebootParams.regionEnd) {
                        MemClear(__OSRebootParams.regionEnd, (u32)OSGetArenaHi() - (u32)__OSRebootParams.regionEnd);
                    }
                }
            }
        }
    }
}

static void ClearMEM2Arena() NO_INLINE {
    if (!((OSGetResetCode() >> 31) & 1)) {
        MemClear(OSGetMEM2ArenaLo(), OSMEM2ArenaSize());
    }
    else {
        if (__OSRebootParams.regionStart == NULL || !OSIsMEM2Region(__OSRebootParams.regionStart)) {
            MemClear(OSGetMEM2ArenaLo(), OSMEM2ArenaSize());
        }
        else {
            if (OSGetMEM2ArenaLo() < __OSRebootParams.regionStart) {
                if (OSGetMEM2ArenaHi() <= __OSRebootParams.regionStart) {
                    MemClear(OSGetMEM2ArenaLo(), OSMEM2ArenaSize());
                }
                else {
                    MemClear(OSGetMEM2ArenaLo(), (u32)__OSRebootParams.regionStart - (u32)OSGetMEM2ArenaLo());

                    if (OSGetMEM2ArenaHi() > __OSRebootParams.regionEnd) {
                        MemClear(__OSRebootParams.regionEnd, (u32)OSGetMEM2ArenaHi() - (u32)__OSRebootParams.regionEnd);
                    }
                }
            }
        }
    }
}

void InquiryCallback(s32 res, DVDCommandBlock *block) {
    switch (block->state) {
        case DVD_COMMAND_STATE_IDLE: {
            __OSDeviceCode = DriveInfo.deviceCode | DVD_DEVICE_CODE;
            break;
        }
        default: {
            __OSDeviceCode = (1<<0);
            break;
        }
    }
}

static void ReportOSInfo() {
    u32 consoleType;
    u32 sysMemSize;
    OSIOSRev ios;

    // Print header
    OSReport("\nRevolution OS\n");
    OSReport("Kernel built : %s %s\n", "Apr 20 2010", "11:20:43");

    // Print console type.
    OSReport("Console Type : ");

    consoleType = OSGetConsoleType();

    switch (consoleType & OS_CONSOLE_MASK) {
        case OS_CONSOLE_MASK_RVL: {
            switch (consoleType) {
                case OS_CONSOLE_RVL_PP_1: {
                    OSReport("Pre-production board 1\n");
                    break;
                }
                case OS_CONSOLE_RVL_PP_2_1: {
                    OSReport("Pre-production board 2-1\n");
                    break;
                }
                case OS_CONSOLE_RVL_PP_2_2: {
                    OSReport("Pre-production board 2-2\n");
                    break;
                }
                case OS_CONSOLE_RETAIL_RVA: {
                    OSReport("RVA 1\n");
                    break;
                }
                default: {
                    OSReport("Retail %d\n", consoleType);
                    break;
                }
            }
            break;
        }
        case OS_CONSOLE_MASK_DEV: {
            switch (consoleType) {
                case OS_CONSOLE_NDEV_2_1: {
                    OSReport("NDEV 2.1\n");
                    break;
                }
                case OS_CONSOLE_NDEV_2_0: {
                    OSReport("NDEV 2.0\n");
                    break;
                }
                case OS_CONSOLE_NDEV_1_2: {
                    OSReport("NDEV 1.2\n");
                    break;
                }
                case OS_CONSOLE_NDEV_1_1: {
                    OSReport("NDEV 1.1\n");
                    break;
                }
                case OS_CONSOLE_NDEV_1_0: {
                    OSReport("NDEV 1.0\n");
                    break;
                }
                case OS_CONSOLE_RVL_EMU: {
                    OSReport("Revolution Emulator\n");
                    break;
                }
                default: {
                    OSReport("Emulation platform (%08x)\n", consoleType);
                    break;
                }
            }
            break;
        }
        case OS_CONSOLE_TDEV_EMU: {
            OSReport("TDEV-based emulation HW%d\n", (consoleType & ~OS_CONSOLE_MASK) - 3);
            break;
        }
        default: {
            OSReport("%08x\n", consoleType);
            break;
        }
    }

    // Print IOS revision
    __OSGetIOSRev(&ios);
    OSReport("Firmware     : %d.%d.%d ", ios.major, ios.minor, ios.micro);
    OSReport("(%d/%d/%d)\n",             ios.month, ios.date, ios.year);

    // Print total available memory
    sysMemSize = (OSGetConsoleSimulatedMem1Size() + OSGetConsoleSimulatedMem2Size());
    OSReport("Memory %d MB\n", sysMemSize / (1024 * 1024));

    // Print available memory of the arenas
    OSReport("MEM1 Arena : 0x%x - 0x%x\n", OSGetMEM1ArenaLo(), OSGetMEM1ArenaHi());
    OSReport("MEM2 Arena : 0x%x - 0x%x\n", OSGetMEM2ArenaLo(), OSGetMEM2ArenaHi());
}

static void CheckTargets() {
    switch (*(u8*)OSPhysicalToCached(OS_ADDR_BOOT_PROGRAM_TARGET)) {
        case 0x80: {
            break;
        }
        case 0x81: {
            OSReport("OS ERROR: boot program is not for RVL target. Please use correct boot program.\n");
            OSPanic(__FILE__, 1138, "Failed to run app");
            break;
        }
        default: {
            break;
        }
    }

    switch (*(u8*)OSPhysicalToCached(OS_ADDR_APP_LOADER_TARGET)) {
        case 0x80: {
            break;
        }
        case 0x81: {
            OSReport("OS ERROR: apploader[D].img is not for RVL target. Please use correct apploader[D].img.\n");
            OSPanic(__FILE__, 1156, "Failed to run app");
            break;
        }
        default: {
            break;
        }
    }
}

static void DisableWriteGatherPipe() {
    u32 hid2 = PPCMfhid2();
    CLEAR_FLAG(hid2, HID2_WPE);
    PPCMthid2(hid2);
}

void OSInit() {
    void* bi2StartAddr;
    void* arenaAddr;

    volatile OSExecParams* params = (volatile OSExecParams*)&__OSRebootParams;

    if (AreWeInitialized == FALSE) {
        BOOL enabled;
        AreWeInitialized = TRUE;

        // Setup starting time
        __OSStartTime = __OSGetSystemTime();

        enabled = OSDisableInterrupts();

        // Get restart parameters
        __OSGetExecParams(&__OSRebootParams);

        /// Setup PPC stuff
        // MTMMCRs
        PPCMtmmcr0(MMCR0_PMC1_HOLD | MMCR0_PMC2_HOLD);
        PPCMtmmcr1(MMCR1_PMC3_HOLD | MMCR1_PMC4_HOLD);

        // MTPMC
        PPCMtpmc1(0);
        PPCMtpmc2(0);
        PPCMtpmc3(0);
        PPCMtpmc4(0);
    
        // HID 4
        PPCMthid4(HID4_H4A | HID4_SBE | HID4_PS1_CTL | (1 << 23) /*hmmm*/ | HID4_L2_CCFI);

        // Other PPC stuff
        PPCDisableSpeculation();
        PPCSetFpNonIEEEMode();

        // Setup boot information
        BootInfo = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
        BI2DebugFlag = NULL;
        __DVDLongFileNameFlag = FALSE;

        bi2StartAddr = *(void**)OSPhysicalToCached(OS_ADDR_BOOT_INFO_2);

        // Get debug information from Boot Information
        if (bi2StartAddr != NULL) {
            BI2DebugFlag = (u32*)((u32)bi2StartAddr + BI2_OFFSET_DEBUGFLAG);
            __PADSpec = *(u32*)((u32)bi2StartAddr + BI2_OFFSET_PADSPEC);

            *(u8*)OSPhysicalToCached(OS_ADDR_BI2_DEBUG_FLAG)    = *BI2DebugFlag;
            *(u8*)OSPhysicalToCached(OS_ADDR_BI2_PAD_SPEC)      = __PADSpec;
        }
        else {
            if (((OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO))->arenaHi != NULL) {
                BI2DebugFlagHolder = *(u8*)OSPhysicalToCached(OS_ADDR_BI2_DEBUG_FLAG);
                BI2DebugFlag = &BI2DebugFlagHolder;
                __PADSpec = *(u8*)OSPhysicalToCached(OS_ADDR_BI2_PAD_SPEC);
            }
        }

        __DVDLongFileNameFlag = TRUE;

        arenaAddr = RAMReadPtr(OSPhysicalToCached(OS_ADDR_AVAILABLE_MEM1_START));

        if (arenaAddr == NULL) {
            if (OSIsMEM1Region(__ArenaLo)) {
                void* tmp = BootInfo->arenaLo;
                arenaAddr = tmp == NULL ? __ArenaLo : tmp;

                if (BootInfo->arenaLo == NULL && BI2DebugFlag && *BI2DebugFlag < 2) {
                    arenaAddr = (void*)OSRoundUp32B(_stack_addr);
                }
            }
            else {
                arenaAddr = (void*)0x80004000;
            }
        }

        OSSetMEM1ArenaLo(arenaAddr);

        arenaAddr = RAMReadPtr(OSPhysicalToCached(OS_ADDR_AVAILABLE_MEM1_END));

        if (arenaAddr == NULL) {
            void* tmp = BootInfo->arenaHi;
            arenaAddr = tmp == NULL ? __ArenaHi : tmp;
        }

        OSSetMEM1ArenaHi(arenaAddr);

        arenaAddr = RAMReadPtr(OSPhysicalToCached(OS_ADDR_AVAILABLE_MEM2_START));

        if (arenaAddr != NULL) {
            if (OSIsMEM2Region(__ArenaLo)) {
                arenaAddr = __ArenaLo;

                if (BI2DebugFlag && *BI2DebugFlag < 2) {
                    arenaAddr = (void*)OSRoundUp32B(_stack_addr);
                }
            }
            else {
                if ((u32)arenaAddr >= 0x90000000 && (u32)arenaAddr < 0x90000800) {
                    arenaAddr = (void*)0x90000800;
                }
            }

            OSSetMEM2ArenaLo(arenaAddr);
        }

        arenaAddr = RAMReadPtr(OSPhysicalToCached(OS_ADDR_AVAILABLE_MEM2_END));

        if (arenaAddr != NULL) {
            OSSetMEM2ArenaHi(arenaAddr);
        }

        __OSInitIPCBuffer();
        OSExceptionInit();
        __OSInitSystemCall();
        __OSInitAlarm();
        __OSModuleInit();
        __OSInterruptInit();
        __OSContextInit();
        __OSCacheInit();
        EXIInit();
        SIInit();
        __OSInitSram();
        __OSThreadInit();
        __OSInitAudioSystem();
        DisableWriteGatherPipe();

        if (!__OSInIPL) {
            __OSInitMemoryProtection();
        }

        ReportOSInfo();
        OSRegisterVersion(__OSVersion);

        if (BI2DebugFlag && *BI2DebugFlag >= 2) {
            EnableMetroTRKInterrupts();
        }

        if (!__OSInNandBoot && !__OSInReboot) {
            ClearArena();
            ClearMEM2Arena();
        }

        OSEnableInterrupts();
        IPCCltInit();

        if (!__OSInNandBoot && !__OSInReboot) {
            __OSInitSTM();

            SCInit();

            while (SCCheckStatus() == 1) {}

            __OSInitNet();
        }

        if (!__OSInIPL) {
            CheckTargets();
            DVDInit();

            if (__OSIsGcam) {
                __OSDeviceCode = (u16)(DVD_DEVICE_CODE | (1<<12));
            }
            else if (!__OSDeviceCode) {
                DCInvalidateRange(&DriveInfo, sizeof(DriveInfo));
                DVDInquiryAsync(&DriveBlock, &DriveInfo, InquiryCallback);
            }
        }

        if (!__OSInIPL && !__OSInNandBoot) {
            __OSInitPlayTime();
        }

        if (!__OSInIPL && !__OSInNandBoot && !__OSInReboot) {
            __OSStartPlayRecord();
        }
    }
}

static u32 __OSExceptionLocations[] = {
    0x100,
    0x200,
    0x300,
    0x400,
    0x500,
    0x600,
    0x700,
    0x800,
    0x900,
    0xC00,
    0xD00,
    0xF00,
    0x1300,
    0x1400,
    0x1700
};

void OSExceptionInit() {
    __OSException excep;

    u32*  opCodeAddr = (u32*)__OSEVSetNumber;
    u32   oldOpCode = *opCodeAddr;

    u8*   handlerStart = (u8*)__OSEVStart;
    u32   handlerSize = __OSEVSize;

    void* destAddr = (void*)OSPhysicalToCached(OS_ADDR_DB_INTEGRATOR_HOOK);

    if (*(u32*)destAddr == 0) {
        DBPrintf("Installing OSDBIntegrator\n");
        memcpy(destAddr, (void*)__OSDBINTSTART, __OSDBINTSIZE);
        DCFlushRangeNoSync(destAddr, __OSDBINTSIZE);
        __sync();
        ICInvalidateRange(destAddr, __OSDBINTSIZE);
    }

    for (excep = 0; excep < OS_ERROR_MAX; excep++) {
        if (BI2DebugFlag && *BI2DebugFlag >= 2 && __DBIsExceptionMarked(excep)) {
            DBPrintf(">>> OSINIT: exception %d commandeered by TRK\n", excep);
            continue;
        }

        *opCodeAddr = oldOpCode | excep;

        if (__DBIsExceptionMarked(excep)) {
            DBPrintf(">>> OSINIT: exception %d vectored to debugger\n", excep);
            memcpy((void*)__DBVECTOR, (void*)__OSDBJUMPSTART, __OSDBJUMPSIZE);
        }
        else {
            u32* ops = (u32*)__DBVECTOR;
            int cb;

            // Clear jump with NOP opcodes
            for (cb = 0; cb < __OSDBJUMPSIZE; cb += 4) {
                *ops++ = 0x60000000;
            }
        }

        destAddr = (void*)OSPhysicalToCached(__OSExceptionLocations[excep]);
        memcpy(destAddr, handlerStart, handlerSize);
        DCFlushRangeNoSync(destAddr, handlerSize);
        __sync();
        ICInvalidateRange(destAddr, handlerSize);
    }

    OSExceptionTable = OSPhysicalToCached(OS_ADDR_EXCEPTION_TABLE);

    for (excep = 0; excep < OS_ERROR_MAX; excep++) {
        __OSSetExceptionHandler(excep, OSDefaultExceptionHandler);
    }

    *opCodeAddr = oldOpCode;
    DBPrintf("Exceptions initialized...\n");
}

static asm void __OSDBIntegrator() {
#ifdef __MWERKS__
    nofralloc

entry __OSDBINTSTART
    li      r5, OS_ADDR_DB_INTERFACE

    mflr    r3
    stw     r3, DB_EXCEPTIONOFFSET_HOOKLR(r5)
    lwz     r3, DB_EXCEPTIONOFFSET_HOOK(r5)

    oris    r3, r3, OS_CACHED_REGION_PREFIX
    mtlr    r3
    li      r3, MSR_IR | MSR_DR
    mtmsr   r3

    blr
entry __OSDBINTEND
#endif // __MWERKS__
}

static asm void __OSDBJump() {
 #ifdef __MWERKS__
    nofralloc
entry __OSDBJUMPSTART
    bla OS_ADDR_DB_INTEGRATOR_HOOK
entry __OSDBJUMPEND
#endif // __MWERKS__
}

__OSExceptionHandler __OSSetExceptionHandler(__OSException ex, __OSExceptionHandler handler) {
    __OSExceptionHandler cur;
    cur = OSExceptionTable[ex];
    OSExceptionTable[ex] = handler;
    return cur;
}

__OSExceptionHandler __OSGetExceptionHandler(__OSException ex) {
    return OSExceptionTable[ex];
}

static asm void OSExceptionVector() {
#ifdef __MWERKS__
    nofralloc
entry __OSEVStart
    mtsprg 0, r4
    lwz     r4, OS_ADDR_CURRENT_CONTEXT_REAL
    stw     r3, OSContext.gpr[3](r4)
    mfsprg  r3, 0
    stw     r3, OSContext.gpr[4](r4)
    stw     r5, OSContext.gpr[5](r4)
    lhz     r3, OSContext.state(r4)
    ori     r3, r3, 2
    sth     r3, OSContext.state(r4)
    mfcr    r3
    stw     r3, OSContext.cr(r4)
    mflr    r3
    stw     r3, OSContext.lr(r4)
    mfctr   r3
    stw     r3, OSContext.ctr(r4)
    mfxer   r3
    stw     r3, OSContext.xer(r4)
    mfsrr0  r3
    stw     r3, OSContext.srr0(r4)
    mfsrr1  r3
    stw     r3, OSContext.srr1(r4)
    mr r5,  r3

entry __DBVECTOR
    nop

    mfmsr   r3
    ori     r3, r3, (MSR_IR | MSR_DR)
    mtsrr1  r3

entry __OSEVSetNumber
    addi    r3, 0, 0

    lwz     r4, OS_ADDR_CURRENT_CONTEXT
    rlwinm. r5, r5, 0, 30, 30
    bne     recover
    addis   r5, 0, OSDefaultExceptionHandler@ha
    addi    r5, r5, OSDefaultExceptionHandler@l
    mtsrr0  r5
    rfi

recover:
    rlwinm  r5, r3, 2, 22, 29
    lwz     r5, 0x3000(r5)
    mtsrr0  r5

    rfi

entry __OSEVEnd
    nop
#endif // __MWERKS__
}

asm void OSDefaultExceptionHandler(u8 type, register OSContext* context) {
#ifdef __MWERKS__
    nofralloc

    stw     r0, context->gpr[0]
    stw     r1, context->gpr[1]
    stw     r2, context->gpr[2]
    stmw    r6, context->gpr[6]

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

    mfdsisr r5
    mfdar   r6

    stwu    r1, -8(r1)
    b       __OSUnhandledException
#endif // __MWERKS__
}

void __OSPSInit() {
    PPCMthid2(PPCMfhid2() | HID2_LSQE | HID2_PSE);
    ICFlashInvalidate();
    __sync();

#ifdef __MWERKS__
    asm {
        li r3, 0
        mtspr GQR0, r3
        mtspr GQR1, r3
        mtspr GQR2, r3
        mtspr GQR3, r3
        mtspr GQR4, r3
        mtspr GQR5, r3
        mtspr GQR6, r3
        mtspr GQR7, r3
    }
#endif // __MWERKS__
}

u32 __OSGetDIConfig() {
    return DI_READ_REG(DI_CONFIG) & 0b11111111;
}

void OSRegisterVersion(const char *id) {
    OSReport("%s\n", id);
}

static const char* AppGameNameForSysMenu = "HAEA";

const char* OSGetAppGamename() {
    const char* appNameSrc = (char*)OSPhysicalToCached(OS_ADDR_BOOT_PART_TYPE);

    if (__OSInIPL) {
        appNameSrc = AppGameNameForSysMenu;
    }
    else if ((*appNameSrc < '0') || ('9' < *appNameSrc && *appNameSrc < 'A') || ('Z' < *appNameSrc)) {
        appNameSrc = (char*)OSPhysicalToCached(OS_ADDR_CURRENT_APP_NAME);
    }

    // Copy app name to buffer (along with a null)
    GameNameBuffer[0] = *appNameSrc++;
    GameNameBuffer[1] = *appNameSrc++;
    GameNameBuffer[2] = *appNameSrc++;
    GameNameBuffer[3] = *appNameSrc;
    GameNameBuffer[4] = 0x00;
    return GameNameBuffer;
}

u8 OSGetAppType() {
    if (__OSInIPL) {
        return 0x40;
    }
    return *((u8*)OSPhysicalToCached(OS_ADDR_CURRENT_APP_TYPE));
}
