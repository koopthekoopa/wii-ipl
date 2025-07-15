#include "BS2/BS2.h"
#include "BS2/BS2BringUp.h"
#include "BS2/BS2Update.h"
#include "BS2/sysmenu.h"
#include "config.h"

#include <revolution/os.h>
#include <revolution/os/OSBootInfo.h>
#include <private/os.h>

#include <private/exi.h>
#include <private/euart.h>

#include <revolution/nand.h>
#include <private/nand.h>

#include <revolution/dvd.h>
#include <private/dvd.h>

#include <revolution/esp.h>

#include <revolution/sc.h>

#include <revolution/pad.h>
#include <revolution/mem.h>
#include <revolution/wpad.h>

#include <revolution/vi.h>
#include <private/vi.h>

#include <string.h>
#include <stdio.h>

BOOL    InvalidShutdown = FALSE;
BOOL    ShutdownFromGCFlag = FALSE;

vu32    BS2LastMode = 0;

vBOOL   BS2BootFromCache = FALSE;
vBOOL   BS2BootCaching = TRUE;

vBOOL   BS2DriveReset = FALSE;
vBOOL   BS2WaitSpinup = TRUE;
vBOOL   BS2NoDisk = FALSE;

BOOL    BS2ReturnToMenu = FALSE;
BOOL    BS2ReturnToIdle = FALSE;
BOOL    BS2ReturnToDataManager = FALSE;
BOOL    BS2ReturnArgs = FALSE;
BOOL    BS2LaunchTitle = FALSE;

u32     BS2BootType = BS2_BOOT_TYPE_POWER_ON;

OSNandbootInfo  BS2NandbootInfo ALIGN32 = {0};
MEMAllocator    BS2Allocator = {0};
OSStateFlags    BS2StateFlags = {0};

// @BUG: The location of the arguments starts in the middle of iplNwc24Manager's BSS section, so eventually these will be overwritten.
#define BS2_ARGC    (*(u32*) ((BS2NandbootInfo.args -  sizeof(BS2NandbootInfo.args))      + BS2NandbootInfo.argsOff))
#define BS2_ARGV    ((char**)((BS2NandbootInfo.args - (sizeof(BS2NandbootInfo.args) - 4)) + BS2NandbootInfo.argsOff))

#define BS2_WORK_AREA           0x81200000
#define BS2_WORK_AREA_LENGTH    0xF0000

u32 BS2GetLaunchCode() {
    return BS2NandbootInfo.argValue;
}

u32 BS2GetArgc() {
    return BS2_ARGC;
}

char** BS2GetArgv() {
    if (BS2_ARGC == 0) {
        return NULL;
    }
    else {
        return BS2_ARGV;
    }
}

ESTitleId BS2GetLaunchTitle() {
    return BS2NandbootInfo.prevTitleId;
}

static void* BS2AllocProc(u32 size) {
    return MEMAllocFromAllocator(&BS2Allocator, size);
}

static BOOL BS2FreeProc(void* ptr) {
    MEMFreeToAllocator(&BS2Allocator, ptr);
    return TRUE;
}

u32 BS2GetBootType() {
    return BS2BootType;
}

vBOOL   InvalidSram;
vu32    BS2VideoMode;

static u8 SRAMtoSCLang[9];

// Get some device from EXI.
static void GetSomeDevFromExi() {
    u32 cmd;
    u32 unk0 = 0;
    u32 unk1;

    u32 i;
    
    for (i = 0; i < EXI_CHAN_MAX-1; i++) {
        if (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
            break;
        }
        if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, EXI_FREQ_8MHZ)) {
            EXIUnlock(EXI_CHAN_0);
            break;
        }

        if (i == 0) {
            unk1 = 0;
        }
        else {
            unk1 = 0x100;
        }
        cmd = unk1 | 0xA1000000;

        EXIImm(EXI_CHAN_0, &cmd, sizeof(cmd), EXI_WRITE, NULL);
        EXISync(EXI_CHAN_0);

        EXIImm(EXI_CHAN_0, &unk0, sizeof(unk0), EXI_WRITE, NULL);
        EXISync(EXI_CHAN_0);

        EXIDeselect(EXI_CHAN_0);
        EXIUnlock(EXI_CHAN_0);
    }
}

// Fix up parental controls information
static void FixUpParentalInfo() {
    SCParentalControlsInfo parentalInfo;
    SCGetParentalControl(&parentalInfo);

    if (parentalInfo.org == BI3_PARENTALCONTROL_PEGI_FINLAND) {
        parentalInfo.org = BI3_PARENTALCONTROL_PEGI;

        switch (parentalInfo.ageRating) {
            case 11: {
                parentalInfo.ageRating = 12;
                break;
            }
            case 15: {
                parentalInfo.ageRating = 16;
                break;
            }
            default: {
                break;
            }
        }

        SCSetParentalControl(&parentalInfo);
        SCFlush();
    }
}

// Update permissions of product info file (setting.txt) to make it read only.
static void UpdateProductInfoPerms() {
    NANDStatus status;

    s32 ret = NANDGetStatus("/title/00000001/00000002/data/setting.txt", &status);
    if (ret == NAND_RESULT_OK) {
        if (status.permission != (NAND_PERM_ALL_READ)) {
            status.permission = NAND_PERM_ALL_READ;

            ret = NANDSetStatus("/title/00000001/00000002/data/setting.txt", &status);
            if (ret != NAND_RESULT_OK) {
                OSReport("Failed to set product info file permission! (%d)\n", ret);
            }
        }
    }
    else if (ret == NAND_RESULT_NOEXISTS) {
        OSReport("product info file is not exist\n");
    }
    else {
        OSReport("Fatal error! (%d)\n", ret);
    }
}

// Read then update state flags (state.dat)
// AND then update the boot cache file (cache.dat)
// Would love to seperate them into two different inline functions, but would mess up regalloc.
static void UpdateStateFlagsAndBootCache() {
    OSStateFlags newState;
    u32 i;
    char** argv;

    s32 ret;

    memset(&newState, 0, sizeof(newState));

    ret = __OSReadStateFlags(&BS2StateFlags);
    if (ret == FALSE) {
        InvalidShutdown = TRUE;

        ret = __OSCreateStateFlags();
        if (ret == FALSE) {
            OSReport("Failed to create\n");
        }
    }
    else {
        u32 lastBootApp = BS2StateFlags.lastBootApp;
        if (lastBootApp & OS_APP_TYPE_DVD) {
            switch (lastBootApp & ~(OS_APP_TYPE_IPL | OS_APP_TYPE_DVD)) {
                case 1: {
                    BS2LastMode = 1;
                    break;
                }
                case 2: {
                    BS2LastMode = 2;
                    break;
                }
                case 4: {
                    BS2LastMode = 4;
                    break;
                }
                default:
                case 3: {
                    BS2LastMode = 0;
                    break;
                }
            }
        }
        
        if (BS2StateFlags.lastShutdown == OS_STATE_FLAGS_SHUTDOWN_BAD) {
            InvalidShutdown = TRUE;
        }
        else if (getVISolidClrYCol() == 16
        && (BS2StateFlags.lastShutdown == OS_STATE_FLAGS_SHUTDOWN_RETURN_MENU || BS2StateFlags.lastShutdown == OS_STATE_FLAGS_SHUTDOWN_IDLE)) {
            InvalidShutdown = TRUE;
        }
        else {
            if (BS2StateFlags.lastShutdown == OS_STATE_FLAGS_SHUTDOWN_RETURN_MENU) {
                BS2ReturnToMenu = TRUE;

                if (BS2StateFlags.menuMode == OS_STATE_FLAGS_MENUMODE_DATA_MANAGER) {
                    BS2ReturnToDataManager = TRUE;
                }
                else if (BS2StateFlags.menuMode == OS_STATE_FLAGS_MENUMODE_ARGS) {
                    if (__OSReadNandbootInfo(&BS2NandbootInfo)) {
                        if (BS2NandbootInfo.returnValue == OS_NANDBOOT_RETURN_MENU) {
                            argv = BS2_ARGV;

                            for (i = 0; i < BS2GetArgc(); i++) {
                                argv[i] = (char*)((u8*)&BS2NandbootInfo.args + (u32)argv[i] - sizeof(BS2NandbootInfo.args));
                            }

                            BS2ReturnArgs = TRUE;
                        }
                    }
                }
            }

            if (BS2StateFlags.lastShutdown == OS_STATE_FLAGS_SHUTDOWN_IDLE) {
                BS2ReturnToIdle = TRUE;
            }

            if (BS2StateFlags.lastShutdown == OS_STATE_FLAGS_SHUTDOWN_LAUNCH_TITLE) {
                 if (__OSReadNandbootInfo(&BS2NandbootInfo)) {
                    if (BS2NandbootInfo.returnValue == 8) {
                        argv = BS2_ARGV;

                        for (i = 0; i < BS2GetArgc(); i++) {
                            argv[i] = (char*)((u8*)&BS2NandbootInfo.args + (u32)argv[i] - sizeof(BS2NandbootInfo.args));
                        }

                        BS2LaunchTitle = TRUE;
                    }
                }
            }

            if (BS2StateFlags.lastDiscState == OS_STATE_FLAGS_DISC_IN && (BS2StateFlags.lastBootApp & OS_APP_TYPE_IPL)
            && !BS2NoDisk && (BS2LastMode == 1 || BS2LastMode == 4)) {
                OSReport("Boot from cache\n");
                BS2BootFromCache = TRUE;
                BS2BootCaching = FALSE;
                BS2DriveReset = FALSE;
                BS2WaitSpinup = FALSE;
            }
            else {
                BS2BootFromCache = FALSE;
                BS2BootCaching = TRUE;
            }
            
        }
    }

    newState.lastBootApp = 0;
    newState.lastShutdown = OS_STATE_FLAGS_SHUTDOWN_BAD;
    newState.lastDiscState = OS_STATE_FLAGS_DISC_CHANGED;
    newState.menuMode = OS_STATE_FLAGS_MENUMODE_MENU;

    __OSWriteStateFlags(&newState);

    ret = NANDOpen("/title/00000001/00000002/data/cache.dat", &BS2CacheFileInfo, NAND_ACCESS_RW);
    BS2Report("open boot cache file(%d)\n", ret);

    if (ret == NAND_RESULT_OK) {
        u32 length;
        ret = NANDGetLength(&BS2CacheFileInfo, &length);
        BS2Report("get boot cache file length(%d)\n", ret);

        if (ret == NAND_RESULT_OK) {
            ret = NANDClose(&BS2CacheFileInfo);
            BS2Report("close boot cache file(%d)\n", ret);

            if (ret == NAND_RESULT_OK) {
                // Delete a "corrupted" cache boot file.
                if (length != BS2_CACHE_BOOT_SIZE) {
                    ret = NANDDelete("/title/00000001/00000002/data/cache.dat");
                    BS2Report("delete boot cache file(%d)\n", ret);

                    if (ret == NAND_RESULT_OK) {
                        BS2BootFromCache = FALSE;
                        ret = NAND_RESULT_NOEXISTS; // Tell to create a new file
                        BS2BootCaching = TRUE;
                        BS2WaitSpinup = TRUE;
                    }
                }
            }
        }
        else {
            ret = NANDClose(&BS2CacheFileInfo);
            BS2Report("close boot cache file(%d)\n", ret);
        }
    }

    // Does not exist? Well create it!!
    if (ret == NAND_RESULT_NOEXISTS) {
        NANDCreate("/title/00000001/00000002/data/cache.dat", NAND_PERM_GROUP | NAND_PERM_USER, 0);
        NANDOpen("/title/00000001/00000002/data/cache.dat", &BS2CacheFileInfo, NAND_ACCESS_RW);

        // Write blank data adding up to 0xB00000
        // A pretty interesitng way of doing it.
        
        for (i = 0; i < (BS2_CACHE_BOOT_SIZE / BS2_UPDATE_LENGTH); i++) {
            NANDWrite(&BS2CacheFileInfo, Entries, BS2_UPDATE_LENGTH);
        }

        NANDClose(&BS2CacheFileInfo);
        BS2Report("Created boot cache file.\n");
    }

    // uh
    NANDCreate("/title/00000001/00000002/data/cache.dat", NAND_PERM_GROUP | NAND_PERM_USER, 0);
    // Open cache file for BS2 to use later.
    NANDOpen("/title/00000001/00000002/data/cache.dat", &BS2CacheFileInfo, NAND_ACCESS_RW);
}

// Syncs SRAM to SYSCONF.
static void SyncSramToSysConf() {
    u32 bias;
    u32 rtc;
    OSCalendarTime dateTime;
    OSSram* sram;
    BOOL syncSram = FALSE;
    BOOL writeChanges = FALSE;

    InvalidSram = FALSE;

    // Sync in time
    sram = __OSLockSram();
    if (!__OSCheckSram()) {
        bias = sram->counterBias;

        if (__OSGetRTC(&rtc)) {
            OSTicksToCalendarTime(OSSecondsToTicks((OSTime)(rtc + bias)), &dateTime);
            if (dateTime.year < 2000 || dateTime.year > 2012) {
                bias = 0;
            }
        }
        else {
            bias = 0;
        }

        memset(sram, 0, sizeof(*sram));

        sram->counterBias = bias;
        syncSram = TRUE;
        sram->flags |= 0x1C;

        InvalidSram = TRUE;
    }

    // Flush changes
    __OSUnlockSram(syncSram);
    if (syncSram) {
        while (!__OSSyncSram()) {}
    }

    // Now for SYSCONF
    if (!InvalidSram && BS2LastMode == 2) {
        // Sync SRAM sound mode to SYSCONF
        if (SCGetSoundMode() != SC_SOUND_MODE_SURROUND || OSGetSoundMode() != OS_SOUND_MODE_STEREO) {
            if (OSGetSoundMode() != SCGetSoundMode()) {
                writeChanges = TRUE;
                SCSetSoundMode(OSGetSoundMode());
            }
        }

        // Sync SRAM video mode to SYSCONF
        if (SCGetProductVideoMode() != SC_PRODUCT_VIDEO_PAL) {
            if (OSGetProgressiveMode() != SCGetProgressiveMode()) {
                writeChanges = TRUE;
                SCSetProgressiveMode(OSGetProgressiveMode() == OS_PROGRESSIVE_MODE_ON ?
                                                                                SC_PROGRESSIVE_MODE_ON :
                                                                                SC_PROGRESSIVE_MODE_OFF);
            }
        }
        else {
            // Sync SRAM language to SYSCONF
            if (OSGetLanguage() > 5) {
                writeChanges = TRUE;
                SCSetLanguage(SC_LANG_ENGLISH);
            }
            else {
                if (SRAMtoSCLang[OSGetLanguage()] != SCGetLanguage()) {
                    writeChanges = TRUE;
                    SCSetLanguage(SRAMtoSCLang[OSGetLanguage()]);
                }
            }

            // Sync SRAM EURGB60 to SYSCONF
            if (OSGetEuRgb60Mode() != SCGetEuRgb60Mode()) {
                writeChanges = TRUE;
                SCSetEuRgb60Mode(OSGetEuRgb60Mode() == OS_EURGB60_ON ?
                                                                    SC_EURGB60_MODE_ON :
                                                                    SC_EURGB60_MODE_OFF);
                if (SCGetProgressiveMode() == SC_PROGRESSIVE_MODE_ON && SCGetEuRgb60Mode() == SC_PROGRESSIVE_MODE_OFF) {
                    SCSetProgressiveMode(SC_PROGRESSIVE_MODE_OFF);
                }
            }
        }
    }

    // Now we flush the changes
    if (writeChanges) {
        SCFlush();
    }
}

// Setup video display mode
static void SetupVideo() {
    BS2VideoMode = SCGetProductVideoMode();
    *(u32*)OSPhysicalToCached(OS_ADDR_TV_VIDEO_FORMAT) = BS2VideoMode;

    if (!BS2ReturnToMenu && !BS2ReturnToDataManager) {
        if (SCGetProgressiveMode() == SC_PROGRESSIVE_MODE_ON && VIGetDTVStatus() == VI_DTV_COMPONENT) {
            switch (BS2VideoMode) {
                case VI_PAL:
                case VI_EURGB60: {
                    __VIInit((VITVMode)VI_TVMODE(VI_EURGB60, VI_PROGRESSIVE));
                    break;
                }
                default: {
                    __VIInit((VITVMode)VI_TVMODE(BS2VideoMode, VI_PROGRESSIVE));
                    break;
                }
            }
        }
        else {
            __VIInit((VITVMode)VI_TVMODE(BS2VideoMode, VI_INTERLACE));
        }
    }
    else {
        if (VIGetScanMode() == VI_NON_INTERLACE) {
            if (SCGetProgressiveMode() == SC_PROGRESSIVE_MODE_ON && VIGetDTVStatus() == VI_DTV_COMPONENT) {
                switch (BS2VideoMode) {
                    case VI_PAL:
                    case VI_EURGB60: {
                        __VIInit((VITVMode)VI_TVMODE(VI_EURGB60, VI_PROGRESSIVE));
                        break;
                    }
                    default: {
                        __VIInit((VITVMode)VI_TVMODE(BS2VideoMode, VI_PROGRESSIVE));
                        break;
                    }
                }
            }
            else {
                __VIInit((VITVMode)VI_TVMODE(BS2VideoMode, VI_INTERLACE));
            }
        }
    }

    VIInit();
}

// Sync the current time with RTC
static void SyncTimeWithRTC() {
    u32 rtc;

    if (__OSGetRTC(&rtc)) {
        rtc += SCGetCounterBias();
        __OSSetTime(OSSecondsToTicks((OSTime)rtc));
    }

    __OSSyncTimeWithNetRM();
}

// Sets up "VI1 CFG". In this case, NTSC-J video output.
static void SetupVI1Config() {
    int cfg;
    if (SCGetProductGameRegion() == SC_PRODUCT_GAME_REGION_JP) {
        cfg = 1;
    }
    else {
        cfg = 0;
    }
    setVI1Cfg(cfg);
}

// Check if a title is installed or not
static BOOL HasTitleInstalled(ESTitleId titleId, void* work, u32 workLen) {
    u32 workBufArea = 0;

    u32 tmdSize = 0;
    u32 tmdContentCount;
    u32 tmdHeadNumContents;

    u32 tikCount;

    ESContentId* tmdContents = NULL;
    ESTicketView* ticketView = NULL;
    ESTmdView* tmdView = NULL;

    s32 ret = ESP_InitLib();
    if (ret != ES_ERR_OK) {
        // no 'goto fail'?
        return FALSE;
    }

    /* Check Title ticket */

    // Get ticket count
    ret = ESP_GetTicketViews(titleId, NULL, &tikCount);
    if (ret != ES_ERR_OK || tikCount == 0) {
        goto fail;
    }

    // Setup ticket buffer in work area
    ticketView = (ESTicketView*)((u32)work + workBufArea);
    workBufArea += OSRoundUp32B(tikCount * sizeof(ESTicketView));
    if (workLen < workBufArea) {
        goto fail;
    }

    // Get ticket
    ret = ESP_GetTicketViews(titleId, ticketView, &tikCount);
    if (ret != ES_ERR_OK){
        goto fail;
    }

    // Check if ticket is valid
    if (__OSGetValidTicketIndex(ticketView, tikCount) < 0) {
        goto fail;
    }

    /* Check Contents of Title TMD */

    // Get TMD length
    ret = ESP_GetTmdView(titleId, NULL, &tmdSize);
    if (ret != ES_ERR_OK) {
        goto fail;
    }

    // Setup TMD buffer in work area
    tmdView = (ESTmdView*)((u32)work + workBufArea);
    workBufArea += OSRoundUp32B(tmdSize);
    if (workLen < workBufArea) {
        goto fail;
    }

    // Get TMD
    ret = ESP_GetTmdView(titleId, tmdView, &tmdSize);
    if (ret != ES_ERR_OK) {
        goto fail;
    }

    tmdHeadNumContents = tmdView->head.numContents;

    // Get number of contents
    ret = ESP_ListTitleContentsOnCard(titleId, NULL, &tmdContentCount);
    if (ret != ES_ERR_OK) {
        goto fail;
    }

    tmdContents = (ESContentId*)((u32)work + workBufArea);
    workBufArea += OSRoundUp32B(tmdContentCount * sizeof(ESContentId));
    if (workLen < workBufArea) {
        goto fail;
    }

    // Get content IDs
    ret = ESP_ListTitleContentsOnCard(titleId, tmdContents, &tmdContentCount);
    if (ret != ES_ERR_OK) {
        goto fail;
    }

    // Check if content exists
    {
        int i;
        for (i = 0; i < tmdHeadNumContents; i++) {
            BOOL exists = FALSE;

            if (!(tmdView->contents[i].type & 0x4000)) {
                int j;
                // For each content
                for (j = 0; j < tmdContentCount; j++) {
                    // If the content ID matches, then it exists
                    if (tmdView->contents[i].cid == tmdContents[j]) {
                        exists = TRUE;
                        break;
                    }
                }

                if (!exists) {
                    goto fail;
                }
            }
        }
    }

    return TRUE;

fail:
    return FALSE;
}

#define WAIKIKI_ID 0x7020000

// Get Waikiki Debug Device (sometimes mispelled as Wikiki)
// Seems to be the little dongle for recovery purposes.
static BOOL HasWaikiki() {
    u32 devId;
    bool hasWaikiki = FALSE;

    // Check memory card slot A
    if (EXIGetIDEx(EXI_CHAN_0, EXI_DEV_EXT, &devId)
    && (devId & 0xFFFFFF00) == WAIKIKI_ID) {
        OSReport("WikikiSlot A\n");
        hasWaikiki = TRUE;
    }
    else {
        OSReport("Id0 : %08x\n", devId);
    }

    // Check memory card slot B
    if (EXIGetIDEx(EXI_CHAN_1, EXI_DEV_EXT, &devId)
    && (devId & 0xFFFFFF00) == WAIKIKI_ID) {
        OSReport("WikikiSlot B\n");
        hasWaikiki = TRUE;
    }
    else {
        OSReport("Id1 : %08x\n", devId);
    }

    return hasWaikiki;
}

// Setup console information for IRD Mode
static void SetConsoleInfoForIRD() {
    OSBootInfo* bi = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
    bi->consoleType = OS_CONSOLE_RETAIL;
    bi->consoleType += PI_READ_REG(PI_UNIT_INFO) >> PI_UNIT_INFO_TYPE;
}

// Print "NDEV Boot Program" information. (Including Video type)
static void PrintBootProgramInfo() {
    OSReport("\n--- NDEV BOOT PROGRAM v%X.%02X + ck (PRODUCTION MODE: ", BS2_MAJOR_VERSION, BS2_MINOR_VERSION);
    switch (VIGetTvFormat()) {
        case VI_NTSC: {
            OSReport("NTSC");
            break;
        }
        case VI_PAL: {
            OSReport("PAL");
            break;
        }
        case VI_MPAL: {
            OSReport("MPAL");
            break;
        }
    }
    OSReport(") ---\n");
}

/******************/
/* See BS2Entry.c */
/******************/

void BS2Entry(); /* {
} */

/***************************************/
/* IRD BOOT MODE (aka "recovery mode") */
/***************************************/

#define IRD_MODE_HEAP_SIZE  0x200000

#define LOAD_ICON_FRAMES    4
#define LOAD_ICON_FPS       15
#define LOAD_ICON_LENGTH    (LOAD_ICON_FRAMES * LOAD_ICON_FPS)

static void BS2TickIRD();

static int Tick = -1;

void BS2BootIRD() {
    u8* arenaHi;
    MEMHeapHandle heap;
    MEMAllocator allocator;
    GXColor verBG = {  0,   0,   0,  0 };
    GXColor verFG = { 255, 255, 255, 0 };

    // Setup heap for BS2
    arenaHi = OSGetMEM2ArenaHi();
    heap = MEMCreateExpHeap((void*)(arenaHi-IRD_MODE_HEAP_SIZE), IRD_MODE_HEAP_SIZE);
    if (heap == NULL) {
        OSHalt("MEM2 heap allocation error.\n", 885);
    }

    // Setup allocators for BS2
    OSSetMEM2ArenaHi((void*)(arenaHi-IRD_MODE_HEAP_SIZE));
    MEMInitAllocatorForExpHeap(&allocator, heap, DEFAULT_ALIGN);
    BS2SetMemAllocator(&allocator);

    PrintBootProgramInfo();

    SetConsoleInfoForIRD();
    InitializeUART(0xFFFFFFFF);

    // Print System Menu version
    {
        char* verString;
        char* productArea;

        productArea = OSAllocFromMEM2ArenaLo(32, DEFAULT_ALIGN);
        verString = OSAllocFromMEM2ArenaLo(32, DEFAULT_ALIGN);

        if (SCGetProductAreaString(productArea, 32)) {
            sprintf(verString, "%d.%d(%s)",  SYSMENU_VERSION_MAJOR, SYSMENU_VERSION_MINOR, productArea);
        }
        else {
            /* @BUG Should not include productArea anyway */
            sprintf(verString, "%d.%d(XXX)", SYSMENU_VERSION_MAJOR, SYSMENU_VERSION_MINOR, productArea);
        }

        BS2ScreenReport(verFG, verBG, verString);
    }

    // Main loop
    while (TRUE) {
        BS2TickIRD();
    }
}

static void BS2TickIRD() {
    BS2State state = BS2Tick();
    int i;

    switch (state) {
        case BS2_RUN_APP: {
            // Print information about Disc
            OSBootInfo* bi = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
            OSReport("\n");
            OSReport("  Game Name ... %-4.4s\n", bi->DVDDiskID.gameName);
            OSReport("  Company ..... %-2.2s\n", bi->DVDDiskID.company);
            OSReport("  Disk # ...... %x\n", bi->DVDDiskID.diskNumber);
            OSReport("  Game ver .... %x\n", bi->DVDDiskID.gameVersion);
            OSReport("\n  Banner ...... %s\n", BS2IsBannerAvailable()? "Available" : "Not available");
            OSReport("  PC Check .... %s\n", BS2CheckParentalControl()? "Success" : "Failed");

            // Shutdown video
            VISetBlack(TRUE);
            VIFlush();
            VIWaitForRetrace();

            // Make sure SRAM is up to date
            while (!__OSSyncSram()) {}

            // Launch the game (if it is a diagnostic disc; without IRD_DIAG_RESTRICT_OFF)
#ifndef IRD_DIAG_RESTRICT_OFF
            if (BS2IsDiagDisc())
#endif // IRD_DIAG_RESTRICT_OFF
            {
                BS2StartGame();
            }

            // Unreachable
            OSHalt("", 769);
            
            break;
        }
        case BS2_RUN_GC_APP: {
            // Print information about Disc
            OSBootInfo* bi = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
            OSReport("\n");
            OSReport("  Game Name ... %-4.4s\n", bi->DVDDiskID.gameName);
            OSReport("  Company ..... %-2.2s\n", bi->DVDDiskID.company);
            OSReport("  Disk # ...... %x\n", bi->DVDDiskID.diskNumber);
            OSReport("  Game ver .... %x\n", bi->DVDDiskID.gameVersion);
            OSReport("  Streaming ... %s\n", bi->DVDDiskID.streaming ? "ON" : "OFF");

            if (bi->DVDDiskID.streaming) {
                if (bi->DVDDiskID.streamingBufSize) {
                    OSReport("    Buf size .. %d\n", bi->DVDDiskID.streamingBufSize);
                }
                else {
                    OSReport("    Buf size .. 10(default)\n");
                }
            }

            // Shutdown video
            VISetBlack(TRUE);
            VIFlush();
            VIWaitForRetrace();

            // Make sure SRAM is up to date
            while (!__OSSyncSram()) {}

            // Don't launch game (without IRD_DIAG_RESTRICT_OFF)
#ifdef IRD_DIAG_RESTRICT_OFF
            // Launch the game
            BS2StartGCGame();
#endif // IRD_DIAG_RESTRICT_OFF

            OSHalt("", 795);

            break;
        }
        // Some OSReports
        case BS2_NO_DISK:
        case BS2_COVER_OPEN: {
            OSReport("\rInsert disk ");
            break;
        }
        case BS2_WRONG_DISK: {
            OSReport("\rWrong disk  ");
            break;
        }
        case BS2_DIRTY_DISK: {
            OSReport("\rDirty disk  ");
            break;
        }
        case BS2_FATAL_ERROR: {
            OSReport("\rFatal error occurred  ");
            break;
        }
        case BS2_UPDATE_FAILED: {
            OSReport("\nUpdate failed  ");
            break;
        }
        case BS2_RUN_UPDATE: {
            BS2UpdateEntry* updateEntry;

            // Print list of entries
            OSReport("\n");
            OSReport("Update files:\n");
            updateEntry = BS2GetUpdateEntry();
            for (i = 0; i < BS2GetUpdateEntryNum(); i++) {
                OSReport("  %s\n", updateEntry[i].dataName);
            }

            // Start update!
            BS2StartUpdate();

            // Reset tick for loading animatiom
            Tick = -1;

            break;
        }
        case BS2_RUNNING_UPDATE: {
            if (Tick++ == -1) {
                OSReport("\rUpdating...  ");
            }
            Tick %= LOAD_ICON_LENGTH;
            if ((Tick % LOAD_ICON_FPS) == 0) {
                OSReport("\b%c", "/-\\|"[Tick / LOAD_ICON_FPS]);
            }
            break;
        }
        case BS2_RESTART: {
            OSReport("\rReboot");

            // Reset video
            VISetBlack(TRUE);
            VIFlush();
            VIWaitForRetrace();

            // Make sure SRAM is up to date
            while (!__OSSyncSram()) {}

            // Reset the system
            OSReturnToMenu();

            break;
        }
        case BS2_DATA_DISK: {
            OSReport("\rData disk  ");
            break;
        }
        default: {
            if (Tick++ == -1) {
                OSReport("\rLoading...  ");
            }
            Tick %= LOAD_ICON_LENGTH;
            if ((Tick % LOAD_ICON_FPS) == 0) {
                OSReport("\b%c", "/-\\|"[Tick / LOAD_ICON_FPS]);
            }
            break;
        }
    }

    VIWaitForRetrace();
}

/********************/
/* MAIN ENTRY POINT */
/********************/

static u8 SRAMtoSCLang[9] = {
    SC_LANG_ENGLISH,
    SC_LANG_GERMAN,
    SC_LANG_FRENCH,
    SC_LANG_SPANISH,
    SC_LANG_ITALIAN,
    SC_LANG_DUTCH,
    SC_LANG_SIMP_CHINESE,
    SC_LANG_TRAD_CHINESE,
    SC_LANG_KOREAN
};

#define COMBO (PAD_BUTTON_LEFT \
            | PAD_BUTTON_RIGHT \
            | PAD_BUTTON_UP    \
            | PAD_BUTTON_DOWN)

int main(int argc, char** argv) {
    s32 ret;
    u32 rtc;
    PADStatus pads[PAD_MAX_CONTROLLER];

    // Wait for semaphore to fully initialize.
    while (*(BOOL*)OSPhysicalToUncached(OS_ADDR_SEMAPHORE_BUSY)) {}

    // Init the system.
    BS2Init();
    OSInit();
    GPIOPPCInit();
    DVDInit();
    SCInit();

    GetSomeDevFromExi();

    // Wait for SC to initialize.
    while (SCCheckStatus() == SC_STATUS_BUSY) {}
    if (SCCheckStatus() == SC_STATUS_FATAL) {
        OSReport("SCInit failed!\n");
    }

    FixUpParentalInfo();
    UpdateProductInfoPerms();

    // Check if disc is not in the drive
    if (__DVDGetCoverStatus() != DVD_STATE_WAITING) {
        BS2NoDisk = TRUE;
    }
    else {
        BS2NoDisk = FALSE;
    }

    UpdateStateFlagsAndBootCache();

    setVISolidClrYCol(17);

    // Get BS2 Boot type
    if (BS2ReturnArgs) {
        BS2BootType = BS2_BOOT_TYPE_RETURN_ARGS;
    }
    else if (BS2ReturnToDataManager) {
        BS2BootType = BS2_BOOT_TYPE_RETURN_TO_DATA_MANAGER;
    }
    else if (BS2ReturnToMenu) {
        BS2BootType = BS2_BOOT_TYPE_RETURN_TO_MENU;
    }
    else {
        BS2BootType = BS2_BOOT_TYPE_POWER_ON;
    }

    SyncSramToSysConf();

    // Shutdown from MIOS
    if (*(u32*)OSPhysicalToUncached(OS_ADDR_MIOS_SHUTDOWN_FLAG) == TRUE && BS2LastMode == 2) {
        ShutdownFromGCFlag = TRUE;
    }

    SetupVideo();

    // Setup clock speed
    __OSBusClock = 243000000;
    __OSCoreClock = 729000000;

    SyncTimeWithRTC();

    __OSGetRTCFlags(&rtc);
    __OSClearRTCFlags();

    SetupVI1Config();

    PADInit();

    ret = ES_InitLib();
    if (ret != ES_ERR_OK) {
        OSReport("ES_InitLib failed! %d\n", ret);
    }

    // Shutdown system if requested by GC software
    if (ShutdownFromGCFlag) {
        OSReport("Shutdown system from GC!\n");
        OSShutdownSystem();
    }

    // Shutdown sequence
    // (not an inline function, due to the 'rtc' variable)
    if (!InvalidShutdown) {
        if (BS2StateFlags.lastShutdown == OS_STATE_FLAGS_SHUTDOWN_EJECTDISC && (rtc & 1)) {
            OSReport("EJECT switch was pressed\n");

            if (!BS2NoDisk && BS2StateFlags.lastShutdown != OS_STATE_FLAGS_SHUTDOWN_LAUNCH_TITLE) {
                u8* arenaHi;
                u8* arenaLo;
                MEMHeapHandle heap;
                arenaLo = OSGetMEM2ArenaLo();
                arenaHi = OSGetMEM2ArenaHi();

                // Setup heap
                heap = MEMCreateExpHeap(arenaLo, (u32)arenaHi - (u32)arenaLo);
                if (heap == 0) {
                    OSHalt("MEM2 heap allocation error.\n", 2038);
                }

                // Setup allocators
                OSSetMEM2ArenaLo(arenaHi);
                MEMInitAllocatorForExpHeap(&BS2Allocator, heap, DEFAULT_ALIGN);

                // Eject disc
                EjectDisc();

                // I don't exactly get the point of this.
                // Initialize WPAD... for what?
                WPADRegisterAllocator(BS2AllocProc, BS2FreeProc);
                WPADInit();
                while (WPADGetStatus() != 3) {}

                // Wait until DVD cover is opened.
                while (__DVDGetCoverStatus() != DVD_COVER_OPENED) {}

                // Wait 2 seconds
                {
                    OSTime start = __OSGetSystemTime();
                    while (__OSGetSystemTime() - start < OSMillisecondsToTicks((OSTime)2000)) {}
                }

                // Bye bye!
                OSReport("Shutdown system!\n");
                OSShutdownSystem();

            }
            BS2BootFromCache = FALSE;
            BS2BootCaching = TRUE;
        }
        else if (BS2ReturnToIdle) {
            OSReport("Shift to idle mode\n");
            OSShutdownSystemForBS();
        }
        else if ((rtc & 2) && (BS2StateFlags.lastDiscState == OS_STATE_FLAGS_DISC_NONE || BS2StateFlags.lastShutdown == OS_STATE_FLAGS_SHUTDOWN_LAUNCH_TITLE)) {
            OSReport("Disc in\n");
            BS2DriveReset = TRUE;
            BS2WaitSpinup = TRUE;

            BS2BootFromCache = FALSE;
            BS2BootCaching = TRUE;
        }

        else if (BS2ReturnToMenu || BS2ReturnToDataManager) {
            OSReport("Return to menu\n");
            BS2DriveReset = TRUE;
            BS2WaitSpinup = TRUE;
        }
    }
    else {
        OSReport("Last shutdown sequence is invalid\n");
        BS2DriveReset = TRUE;
        BS2WaitSpinup = TRUE;
    }

    if (!BS2ReturnToMenu && !BS2ReturnToDataManager) {
        __VIInit3in1((VITVMode)VI_TVMODE(BS2VideoMode, VI_INTERLACE));
    }

    // No STDOUT.
    setvbuf(stdout, NULL, _IONBF, 0);

    // DVD library will not automatically throw OSFatals when an error occurs (IPL does that instead)
    DVDSetAutoFatalMessaging(FALSE);

    // Setup shared/test2
    ret = NANDPrivateCreateDir("/shared2/test2", NAND_PERM_ALL_RW, 0);
    if (ret != NAND_RESULT_OK && ret != NAND_RESULT_EXISTS) {
        OSReport("Failed to create dir \"/shared2/test2\".\n");
    }

    // Setup nanderr.log
    NANDLoggingPrepareFile((u8*)BS2_WORK_AREA);

    // Wait for Video
    VIWaitForRetrace();
    VIWaitForRetrace();

    // Read pads for one frame
    PADRead(pads);

    // Launch NAND title from WC24
    // (as an inline function, it causes regswaps)
    if (!InvalidShutdown && BS2LaunchTitle && BS2GetArgc()) {
        OSNandbootInfo* info;
        ESTitleId titleId;
        int i;
        char** argv;

        OSReport("Launch NAND App from WC24\n");

        argv = BS2GetArgv();
        sscanf(argv[0], "%016llx", &titleId); // Get title ID from first argument

        // Print info about title.
        OSReport("Launch    : 0x%016llx\n", titleId);
        OSReport("LaunchCode: %08X\n", BS2GetLaunchCode());
        OSReport("argc      : %d\n", BS2GetArgc() - 1);

        for (i = 1; i < BS2GetArgc(); i ++) {
            OSReport("argv[%d]   : %s\n", i - 1, argv[i]);
        }

        // Clear NANDBOOTINFO by writing blank data
        info = (OSNandbootInfo*)BS2_WORK_AREA;
        memset(info, 0, sizeof(OSNandbootInfo));
        __OSCreateNandbootInfo();

        // If failed to write blank data, delete it instead.
        if (!__OSWriteNandbootInfo(info)) {
            NANDPrivateDelete("/shared2/sys/NANDBOOTINFO");
        }

        // If the title exists, launch it!
        if (HasTitleInstalled(titleId, (void*)BS2_WORK_AREA, BS2_WORK_AREA_LENGTH)) {
            BS2SetStateFlags();
            __OSLaunchTitlevForSystem(titleId, BS2GetLaunchCode(), (const char**)&argv[1]);
        }
        else {
            // Otherwise, good bye!
            OSReport("specified title by WC24 is not installed!\n");
            OSShutdownSystemForBS();
        }
    }

    // Has either Waikiki or Button combo (see COMBO macro)
    if (HasWaikiki() || (pads[3].err == PAD_ERR_NONE && (pads[3].button & COMBO) == COMBO)) {
        BS2BootIRD();
    }
    else {
        BS2Entry();
    }

    // Fin.
    OSHalt("BS2 ERROR >>> SHOULD NEVER REACH HERE", 2175);
}
