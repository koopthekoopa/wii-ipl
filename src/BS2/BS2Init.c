#include "BS2/BS2.h"

#include <decomp.h>

#include <revolution.h>
#include <revolution/base/PPCArch.h>
#include <revolution/os/OSBootInfo.h>
#include <private/flipper.h>

#include <string.h>

extern BOOL __OSInIPL;
extern u32 __PADFixBits;

extern void __OSFPRInit();

/**
 * @note Address: 0x8137AEA4 (4.3U)
 * @note Size: 0x38
 */
static asm void ClearOtherBATs() {
    nofralloc

    isync

    li      r4, 0

    mtdbatl 2, r4
    mtdbatu 2, r4
    mtdbatl 3, r4
    mtdbatu 3, r4
    mtibatl 1, r4
    mtibatu 1, r4
    mtibatl 2, r4
    mtibatu 2, r4
    mtibatl 3, r4
    mtibatu 3, r4

    isync

    blr
}

static void SetConsoleInfo() {
    OSBootInfo*  bi     = (OSBootInfo*)OSPhysicalToCached(BS2_BOOTINFO_ADDR);
    RVLBootInfo* rvlBi  = (RVLBootInfo*)OSPhysicalToCached(BS2_RVL_BOOTINFO_ADDR);

    // Memory
    bi->arenaLo             = NULL;
    bi->memorySize          = rvlBi->physicalMem1Size;

    // Console type
    bi->consoleType         = OS_CONSOLE_RETAIL;
    bi->consoleType         += PI_REG(0x2C) >> 0x1C;

    *(u32*)(OS_BASE_CACHED + 0x00F0) = bi->memorySize;

    // Main Memory
    rvlBi->mem1Start        = NULL;
    rvlBi->mem1End          = NULL;
    
    // BS2 stuff
    rvlBi->bootTarget       = 0x80;
    rvlBi->devKitVersion    = BS2_VERSION;
}

/**
 * @note Address: 0x8137AEDC (4.3U)
 * @note Size: 0xD8
 */
void BS2Init() {
    memset(OSPhysicalToCached(0x00000000), 0, 0x100);
    memset(OSPhysicalToCached(0x00003000), 0, 0x100);

    ClearOtherBATs();
    SetConsoleInfo();

    __PADFixBits    = -1;
    __OSInIPL       = TRUE;
    
    __OSFPRInit();

    PPCMtmmcr0(0);
    PPCMtmmcr1(0);

    PPCMtpmc1(0);
    PPCMtpmc2(0);
    PPCMtpmc3(0);
    PPCMtpmc4(0);
}


