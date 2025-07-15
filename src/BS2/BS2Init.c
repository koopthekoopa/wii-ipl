#include "BS2/BS2.h"

#include <decomp.h>

#include <revolution.h>
#include <revolution/os/OSBootInfo.h>

#include <private/os.h>

#include <revolution/base/PPCArch.h>

#include <private/bus.h>
#include <private/hollywood.h>

#include <string.h>

extern BOOL __OSInIPL;
extern u32 __PADFixBits;

extern void __OSFPRInit();

static asm void ClearOtherBATs() {
#ifdef __MWERKS__
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
#endif // __MWERKS__
}

static void SetConsoleInfo() {
    OSBootInfo* bi = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);

    // Memory
    bi->arenaLo             = NULL;
    bi->memorySize          = *(u32*)OSPhysicalToCached(OS_ADDR_PHYSICAL_MEM1_SIZE);

    // Console type
    bi->consoleType         =  OS_CONSOLE_RETAIL;
    bi->consoleType         += PI_READ_REG(PI_UNIT_INFO) >> PI_UNIT_INFO_TYPE;

    // Simulated memory size
    *(u32*)OSPhysicalToCached(OS_ADDR_SIMULATED_MEMORY_SIZE) = bi->memorySize;

    // MEM1
    *(u32*)OSPhysicalToCached(OS_ADDR_AVAILABLE_MEM1_START) = 0;
    *(u32*)OSPhysicalToCached(OS_ADDR_AVAILABLE_MEM1_END)   = 0;
    
    // BS2 stuff
    *(u8*) OSPhysicalToCached(OS_ADDR_BOOT_PROGRAM_TARGET)  = OS_APP_TYPE_DVD;
    *(u16*)OSPhysicalToCached(OS_ADDR_DEV_KIT_VERSION)      = BS2_VERSION;
}

void BS2Init() {
    // Clear memorys
    memset(OSPhysicalToCached(OS_ADDR_MEMORY_MAP_PART_1), 0, OS_ADDR_MEMORY_MAP_SIZE);
    memset(OSPhysicalToCached(OS_ADDR_MEMORY_MAP_PART_2), 0, OS_ADDR_MEMORY_MAP_SIZE);

    ClearOtherBATs();
    SetConsoleInfo();

    __PADFixBits    = -1;
    __OSInIPL       = TRUE; // Yes, we are in the IPL!
    
    __OSFPRInit();

    PPCMtmmcr0(MMCR0_PMC1_HOLD | MMCR0_PMC2_HOLD);
    PPCMtmmcr1(MMCR1_PMC3_HOLD | MMCR1_PMC4_HOLD);

    PPCMtpmc1(0);
    PPCMtpmc2(0);
    PPCMtpmc3(0);
    PPCMtpmc4(0);
}
