#include "BS2/BS2.h"
#include "BS2/BS2Update.h"
#include "config.h"

#include <private/dvd.h>
#include <private/nand.h>
#include <private/os.h>
#include <private/vi.h>

#include <private/ios.h>
#include <private/ipc.h>

#include <revolution/os/OSBootInfo.h>

#include <private/es.h>

#include <string.h>

#include <__ppc_eabi_linker.h>

#include "titledb.h"

#pragma sym on

u8 TicketViewsBuf[OSRoundUp32B(sizeof(ESTicketView) * 64)] ALIGN32;
static ESTicketView* pTicketView = (ESTicketView*)&TicketViewsBuf;
static DVDDiskID lbl_810ADF60 ALIGN32;
OSBootInfo2 bi2 ALIGN32;
static DVDAppLoaderHeader AppLoaderHdr ALIGN32;
OSBootInfo3 bi3 ALIGN32;
static u8 GameTOCBuf[OSRoundUp32B(sizeof(DVDGameTOC))] ALIGN32;
static DVDDriveInfo DriveInfo ALIGN32;
static DVDDiskID DiskID ALIGN32;
static DVDPartitionParams PartitionParams ALIGN32;
NANDCommandBlock BS2NandBlock;
NANDFileInfo BS2CacheFileInfo;
static DVDCommandBlock lbl_8108BF60;
static u8 PartitionInfoBuf[OSRoundUp32B(sizeof(DVDPartitionInfo) * 256)] ALIGN32;
DVDCommandBlock Block;

BS2State State = BS2_STT_BEGIN;
static volatile u32 lbl_81698A0C = 0;
static u32 lbl_81698A10 = 0;
static void* lbl_81698A14 = 0;
static u32 lbl_81698A18 = 0;
static MEMAllocator* lbl_81698A1C = 0;
BOOL StartingGame = FALSE;
static u32 lbl_81698A24 = 0;
static u32 lbl_81698A28 = 0;
static u32 lbl_81698A2C = 0;
static u32 lbl_81698A30 = 0;
BOOL FatalErrorFlag = FALSE;
BOOL RetryErrorFlag = FALSE;
BOOL UpdateErrorFlag = FALSE;
BOOL AbortFlag = FALSE;
static volatile int lbl_81698A44 = 0;
static volatile int lbl_81698A48 = 0;
static volatile int lbl_81698A4C = 0;
static u32 lbl_81698A50 = 0;
static u32 lbl_81698A54 = 0;
static u32 lbl_81698A58 = 0;
static u32 lbl_81698A5C = 0;
static u64 lbl_81698A60 = 0;
static u64 lbl_81698A68 = 0;
static u64 lbl_81698A70 = 0;
static u32 lbl_81698A78 = 0;
static ESTicketView* lbl_81698A7C = 0;
static u32 lbl_81698A80 = 0;
static u32 lbl_81698A84 = 0;
static u32 lbl_81698A88 = 0;
static u32 lbl_81698A8C = 0;
static DVDPartitionInfo* lbl_81698A90 = 0;
static u32 lbl_81698A94 = 0;
static DVDPartitionInfo* lbl_81698A98 = 0;
static DVDGameTOC* lbl_81698A9C = 0;
static DVDGameTOC* lbl_81698AA0 = 0;
static u32 lbl_81698AA8 = 0;
static u32 lbl_81698AAC = 0;
static u32 lbl_81698AB0 = 0;
static u32 lbl_81698AB4 = 0;
static u32 lbl_81698AB8 = 0;
static u32 lbl_81698ABC = 0;
static u32 lbl_81698AC0 = 0;
static u32 lbl_81698AC4 = 0;
static u32 lbl_81698AC8 = 0;
static u32 lbl_81698ACC = 0;
static u32 lbl_81698AD0 = 0;
static u32 lbl_81698AD4 = 0;
static u32 lbl_81698AD8 = 0;
static volatile u32 lbl_81698ADC = 0;
static volatile u32 lbl_81698AE0 = 0;
static u32* lbl_81698AE4 = 0;
static u32 lbl_81698AE8 = 0;
static u32 lbl_81698AEC = 0;
static u32 lbl_81698AF0 = 0;

void BS2Report(const char* msg, ...) {
#ifdef ENABLE_BS2_REPORT
    va_list marker;
    va_start(marker, msg);
    OSVReport(msg, marker);
    va_end(marker);
#endif
}

void BS2NANDCallback(s32 result) {
    if (lbl_81698A4C) {
        lbl_81698A4C = 0;
    }

    if (result < NAND_RESULT_OK) {
        OSReport("Failed to access boot cache file\n");
        BS2BootFromCache = FALSE;
        BS2BootCaching = FALSE;
        lbl_81698A44 = 1;
        State = BS2_STT_2;
    }
}

void BS2DVDCallback(s32 result, DVDCommandBlock* block) {
    if (lbl_81698A0C) {
        lbl_81698A0C = 0;
        lbl_81698AE0 += lbl_81698ADC;
        if (result < DVD_RESULT_OK) {
            *lbl_81698AE4 = 0;
        }
    }

    if (State == BS2_STT_3 && result == 1) {
        State = BS2_STT_NO_DISK;
    }

    if ((State == BS2_STT_RVL_GAME || State == BS2_STT_GC_GAME || State == BS2_STT_UPDATE_DISK || State == BS2_STT_DATA_DISK) && result == 1) {
        BS2CancelUpdate();
        State = BS2_STT_NO_DISK;
    }

    if (State == BS2_STT_DIRTY_DISK || State == BS2_STT_63) {
        if (result == 1) {
            BS2CancelUpdate();
            State = BS2_STT_NO_DISK;
        } else {
            if (DVDLowGetCoverRegister() >> 2 & 1) {
                BS2CancelUpdate();
                if (AbortFlag == FALSE) {
                    State = BS2_STT_COVER_CLOSED;
                }
            }
        }
    }

    if ((State == BS2_STT_NO_DISK || State == BS2_STT_COVER_OPEN) && result == 2) {
        DVDLowMaskCoverInterrupt();
        State = BS2_STT_COVER_CLOSED;
    }
    if (State == BS2_STT_UPDATE_DISK && BS2UpdateState() == 2) {
        State = BS2_STT_RUNNING_UPDATE;
    }
}

void BS2RestartStateMachine() {
    BOOL old;
    u32 rtcFlags;

    __OSGetRTCFlags(&rtcFlags);
    __OSClearRTCFlags();

    old = OSDisableInterrupts();

    BS2Report("[BS2RestartStateMachine]\n");

    if ((rtcFlags & 1) || (rtcFlags & 2)) {
        BS2BootFromCache = FALSE;
        BS2BootCaching = TRUE;
    }

    lbl_81698A24 = 1;

    OSRestoreInterrupts(old);
}

void BS2AbortStateMachine() {
    BOOL enabled = OSDisableInterrupts();

    BS2Report("[BS2AbortStateMachine]\n");

    lbl_81698A24 = 0;

    if (State == BS2_STT_64) {
        OSRestoreInterrupts(enabled);
    } else if (State == BS2_STT_BEGIN || State == BS2_STT_1 || State == BS2_STT_2 || State == BS2_STT_4 || State == BS2_STT_6 || State == BS2_STT_8 ||
               State == BS2_STT_10) {
        State = BS2_STT_64;
        OSRestoreInterrupts(enabled);
    } else if (State == BS2_STT_NO_DISK || State == BS2_STT_COVER_OPEN || State == BS2_STT_55 || State == BS2_STT_WRONG_DISK || State == BS2_STT_66 ||
               State == BS2_STT_67 || State == BS2_STT_68 || State == BS2_STT_FATAL_ERROR || State == BS2_STT_UPDATE_FAILED ||
               State == BS2_STT_DIRTY_DISK) {
        OSRestoreInterrupts(enabled);
    } else {
        *lbl_81698AE4 = 0;
        lbl_81698AE0 = 0;
        lbl_81698ADC = 0;
        if (State == BS2_STT_3 || State == BS2_STT_5 || State == BS2_STT_7 || State == BS2_STT_9) {
            State = BS2_STT_62;
        } else {
            if (lbl_81698A4C != 0) {
                lbl_81698A50 = 1;
            }
            State = BS2_STT_60;
            DVDCancelAsync(&Block, NULL);
        }
        AbortFlag = 1;
        OSRestoreInterrupts(enabled);
    }
    return;
}

void BS2SetBannerBuffer(void* banner, u32 bannerSize) {
    lbl_81698A14 = banner;
    lbl_81698AD8 = bannerSize;
}

void BS2SetMemAllocator(MEMAllocator* allocator) {
    lbl_81698A1C = allocator;
}

BOOL BS2IsBannerAvailable() {
    return lbl_81698A18;
}

void* BS2GetBannerBufferAddr() {
    return lbl_81698A14;
}

u32 BS2GetBannerBufferLength() {
    return lbl_81698AD8;
}

BOOL BS2IsDiagDisc() {
    OSBootInfo* bi = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
    if (bi->DVDDiskID.gameName[0] == '0' || bi->DVDDiskID.gameName[0] == '1') {
        return TRUE;
    } else {
        return FALSE;
    }
}

asm void Run() {
    // clang-format off
#ifdef __MWERKS__
    nofralloc

    mtctr r5
    mtlr r3

    // da regisers
    li  r0, 0
    li  r2, 0
    li  r3, 0
    li  r5, 0
    li  r7, 0
    li  r8, 0
    li  r9, 0
    li  r10, 0
    li  r11, 0
    li  r12, 0
    li  r13, 0
    li  r14, 0
    li  r15, 0
    li  r16, 0
    li  r17, 0
    li  r18, 0
    li  r19, 0
    li  r20, 0
    li  r21, 0
    li  r22, 0
    li  r23, 0
    li  r24, 0
    li  r25, 0
    li  r26, 0
    li  r27, 0
    li  r28, 0
    li  r29, 0
    li  r30, 0
    li  r31, 0

    // da stack
    lis r1, _stack_addr@h
    ori r1, r1, _stack_addr@l
    
    li r6, 0
    b loop_back
loop:
    dcbz r4, r0
    dcbf r4, r0
    addi r4, r4, 32
    bdnz loop
    b exit_out
exit_out:
    li r4, 0
    blr

loop_back:
    b loop
#endif // __MWERKS__
    // clang-format on
}

BOOL BS2GetLockedTitles(ESTitleId* lockedTitles, u32* count) {
    int i;

    if (State != BS2_STT_DATA_DISK && State != BS2_STT_RVL_GAME) {
        return FALSE;
    }

    if (!lockedTitles) {
        *count = 0;

        lbl_81698A98 = (DVDPartitionInfo*)&PartitionInfoBuf[0];
        for (i = 0; i < lbl_81698AA0->numGamePartitions; i++) {
            BS2Report("gamePartition ... 0x%08X\n", lbl_81698A98->gamePartition);
            BS2Report("type          ... 0x%08X\n", lbl_81698A98->type);

            if ((lbl_81698A98->type & 0xFF000000) != 0) {
                BS2Report("count++\n");
                (*count)++;
            }

            lbl_81698A98++;
        }

        lbl_81698A98 = (DVDPartitionInfo*)&PartitionInfoBuf[32];
        for (i = 0; i < lbl_81698A9C->numGamePartitions; i++) {
            BS2Report("gamePartition ... 0x%08X\n", lbl_81698A98->gamePartition);
            BS2Report("type          ... 0x%08X\n", lbl_81698A98->type);

            if ((lbl_81698A98->type & 0xFF000000)) {
                BS2Report("count++\n");
                (*count)++;
            }

            lbl_81698A98++;
        }

        return TRUE;
    } else {
        if (*count != 0) {
            int curCount = *count;
            lbl_81698A98 = (DVDPartitionInfo*)&PartitionInfoBuf[0];
            for (i = 0; i < lbl_81698AA0->numGamePartitions; i++) {
                if (curCount == 0) {
                    return TRUE;
                }

                if ((lbl_81698A98->type & 0xFF000000)) {
                    curCount--;
                    *lockedTitles++ = ((ESTitleId)TITLE_TYPE_DISC << 32) | ES_TITLE_CODE(lbl_81698A98->type);
                }

                lbl_81698A98++;
            }

            lbl_81698A98 = (DVDPartitionInfo*)&PartitionInfoBuf[32];
            for (i = 0; i < lbl_81698A9C->numGamePartitions; i++) {
                if (curCount == 0) {
                    return TRUE;
                }

                if ((lbl_81698A98->type & 0xFF000000)) {
                    curCount--;
                    *lockedTitles++ = ((ESTitleId)TITLE_TYPE_DISC << 32) | ES_TITLE_CODE(lbl_81698A98->type);
                }

                lbl_81698A98++;
            }
        }
    }

    return TRUE;
}

BOOL BS2IsTitleAvailable(ESTitleId titleId) {
    int i;

    if (State != BS2_STT_DATA_DISK && State != BS2_STT_RVL_GAME) {
        return FALSE;
    }

    lbl_81698A98 = (DVDPartitionInfo*)&PartitionInfoBuf[0];
    for (i = 0; i < lbl_81698AA0->numGamePartitions; i++) {
        if (lbl_81698A98->type == (u32)titleId) {
            return TRUE;
        }

        lbl_81698A98++;
    }

    lbl_81698A98 = (DVDPartitionInfo*)&PartitionInfoBuf[32];
    for (i = 0; i < lbl_81698A9C->numGamePartitions; i++) {
        if (lbl_81698A98->type == (u32)titleId) {
            return TRUE;
        }

        lbl_81698A98++;
    }

    return FALSE;
}

s32 BS2GetTicketFromNand(ESTitleId titleId, ESTicketView* ticketView) {
    u32 num;
    s32 bestTikIdx;

    // Get ticket count
    ESError err = ES_GetTicketViews(titleId, NULL, &num);
    if (err != ES_ERR_OK) {
        OSReport("ES_GetTicketViews%d failed: %d\n", 1, err);
        return err;
    }

    // Verify count
    if (num == 0) {
        OSReport("No ticket for disc.  Please import a ticket.\n");
        return -1;
    }

    if (num > 64) {
        OSReport("Internal error: Too many tickets\n");
        return -1;
    }

    // Get ticket
    err = ES_GetTicketViews(titleId, pTicketView, &num);
    if (err != ES_ERR_OK) {
        OSReport("ES_GetTicketViews%d failed: %d\n", 2, err);
        return err;
    }

    BS2Report("Found %d tickets in NAND\n", num);

    // Find the best available ticket.
    bestTikIdx = __OSGetValidTicketIndex(pTicketView, num);

    if (bestTikIdx < 0 || bestTikIdx > (num - 1)) {
        OSReport("Failed to get best ticket.\n");
        return -1;
    }

    // Copy the found ticket.
    memcpy(ticketView, &pTicketView[bestTikIdx], sizeof(ESTicketView));
    DCStoreRange(ticketView, sizeof(ESTicketView));

exit:
    return num;
}

BOOL BS2StartLoadingTitle(ESTitleId titleId, ESTicketView* ticketView) {
    int i;
    if (State != BS2_STT_DATA_DISK && State != BS2_STT_RVL_GAME) {
        return FALSE;
    }

    lbl_81698A30 = 1;
    lbl_81698A7C = ticketView;

    lbl_81698A98 = (DVDPartitionInfo*)&PartitionInfoBuf[0];
    for (i = 0; i < lbl_81698AA0->numGamePartitions; i++) {
        if (lbl_81698A98->type == (ESTitleCode)titleId) {
            lbl_81698A90 = lbl_81698A98;
            if (BS2BootFromCache) {
                State = BS2_STT_8;
            } else {
                State = BS2_STT_LOCKED_DISK;
            }
            BS2BootFromCache = FALSE;
            BS2BootCaching = FALSE;
            return TRUE;
        }
        lbl_81698A98++;
    }

    lbl_81698A98 = (DVDPartitionInfo*)&PartitionInfoBuf[32];
    for (i = 0; i < lbl_81698A9C->numGamePartitions; i++) {
        if (lbl_81698A98->type == (ESTitleCode)titleId) {
            lbl_81698A90 = lbl_81698A98;
            if (BS2BootFromCache) {
                State = BS2_STT_8;
            } else {
                State = BS2_STT_LOCKED_DISK;
            }
            BS2BootFromCache = FALSE;
            BS2BootCaching = FALSE;
            return TRUE;
        }
        lbl_81698A98++;
    }

    return FALSE;
}

static void callback(u32 intType) {
    lbl_81698A54 = intType;
}

// ES reimplementation
// Borrowed from old versions of the SDK.

#define ES_WORK_AREA_SIZE 256
#define ES_VEC_AREA_SIZE 32
#define ES_WORK u8 __esWork[ES_WORK_AREA_SIZE] ALIGN32
#define ES_VECTOR u8 __vecWork[ES_VEC_AREA_SIZE] ALIGN32
#define ES_WORK_AT(x) ((u8*)__esWork + x)

#define ES_VECTOR_ADDR ((IOSIoVector*)ES_WORK_AT(0x00))

enum {
    ES_IOCTL_LAUNCH_TITLE = 8,
    ES_IOCTL_GET_TICKET_VIEWS = 18,
    ES_IOCTL_GET_TICKET_VIEWS_WITH_COUNT = 19,
};

static ESError _ES_InitLib(IOSFd* __esFd) {
    IOSFd err;

    err = ES_ERR_OK;

    *__esFd = IOS_Open("/dev/es", 0);
    if (*__esFd < ES_ERR_OK) {
        err = *__esFd;
    }

exit:
    return err;
}

static ESError _ES_GetTicketViews(IOSFd* __esFd, ESTitleId titleId, ESTicketView* ticketViews, u32* numTicketViews) {
    ES_WORK;
    ES_VECTOR;

    ESError err = ES_ERR_OK;

    IOSIoVector* vec = (IOSIoVector*)__vecWork;

    ESTitleId* pTitleId = (ESTitleId*)ES_WORK_AT(0x00);
    u32* pNumTicketViews = (u32*)ES_WORK_AT(0x20);

    if (*__esFd < 0 || !numTicketViews) {
        err = ES_ERR_INVALID;
        goto exit;
    }

    if (!((u32)ticketViews % 32 == 0)) {
        err = ES_ERR_INVALID;
        goto exit;
    }

    *pTitleId = titleId;

    if (!ticketViews) {
        vec[0].base = (u8*)pTitleId;
        vec[0].length = sizeof(*pTitleId);
        vec[1].base = (u8*)pNumTicketViews;
        vec[1].length = sizeof(*pNumTicketViews);

        err = IOS_Ioctlv(*__esFd, ES_IOCTL_GET_TICKET_VIEWS, 1, 1, vec);
        if (err == IPC_RESULT_OK) {
            *numTicketViews = *pNumTicketViews;
        }
        goto exit;
    } else if (*numTicketViews == 0) {
        err = ES_ERR_INVALID;
        goto exit;
    } else {
        *pNumTicketViews = *numTicketViews;

        vec[0].base = (u8*)pTitleId;
        vec[0].length = sizeof(*pTitleId);
        vec[1].base = (u8*)pNumTicketViews;
        vec[1].length = sizeof(*pNumTicketViews);
        vec[2].base = (u8*)ticketViews;
        vec[2].length = *numTicketViews * sizeof(*ticketViews);

        err = IOS_Ioctlv(*__esFd, ES_IOCTL_GET_TICKET_VIEWS_WITH_COUNT, 2, 1, vec);
        goto exit;
    }

exit:
    return err;
}

static ESError _ES_LaunchTitle(IOSFd* __esFd, ESTitleId titleId, ESTicketView* ticket) {  // inlined
    ES_WORK;
    ES_VECTOR;

    ESError err = ES_ERR_OK;

    IOSIoVector* vec = (IOSIoVector*)__vecWork;

    ESTitleId* pTitleId = (ESTitleId*)ES_WORK_AT(0x00);

    if (*__esFd < 0) {
        err = ES_ERR_INVALID;
        goto exit;
    }

    if (!((u32)ticket % 32 == 0)) {
        err = ES_ERR_INVALID;
        goto exit;
    }

    *pTitleId = titleId;

    vec[0].base = (u8*)pTitleId;
    vec[0].length = sizeof(*pTitleId);
    vec[1].base = (u8*)ticket;
    vec[1].length = sizeof(*ticket);

    err = IOS_IoctlvReboot(*__esFd, ES_IOCTL_LAUNCH_TITLE, 2, 0, vec);

exit:
    return err;
}

static void BS2Reboot() {
    IOSFd esFd = -1;
    s32 err;
    OSStateFlags stateFlags;
    ESTicketView ticket;
    u32 ticketCount;

    err = ISFS_OpenLibEx();
    if (err != ISFS_ERROR_OK) {
        OSReport("ISFS_OpenLibEx failed: %d\n", err);
        return;
    }

    BS2Report("\nISFS_OpenLibEx successful\n");

    __OSReadStateFlags(&stateFlags);

    stateFlags.lastAppType = 0;
    stateFlags.shutdownType = OS_STATE_FLAGS_SHUTDOWN_RETURN_MENU;
    stateFlags.discState = OS_STATE_FLAGS_DISC_CHANGED;

    __OSWriteStateFlags(&stateFlags);

    err = _ES_InitLib(&esFd);
    if (err != ES_ERR_OK) {
        OSReport("ES_InitLib failed: %d\n", err);
        return;
    }
    BS2Report("ES_InitLib: %d\n", err);

    err = _ES_GetTicketViews(&esFd, SYSMENU_TITLE_ID, NULL, &ticketCount);
    if (err != ES_ERR_OK) {
        OSReport("ES_GetTicketViews failed: %d\n", err);
        return;
    }
    BS2Report("ES_GetTicketViews: %d\n", err);

    if (ticketCount != 1) {
        OSReport("Error: Should only have 1 ticket for System Menu\n");
        // more like a warning instead of an error
    }

    err = _ES_GetTicketViews(&esFd, SYSMENU_TITLE_ID, &ticket, &ticketCount);
    if (err != ES_ERR_OK) {
        OSReport("ES_GetTicketViews failed: %d\n", err);
        return;
    }
    BS2Report("ES_GetTicketViews: %d\n", err);

    err = _ES_LaunchTitle(&esFd, SYSMENU_TITLE_ID, &ticket);
    if (err != ES_ERR_OK) {
        OSReport("ES_LaunchTitle failed: %d\n", err);
        return;
    }
    BS2Report("ES_LaunchTitle: %d\n", err);

    while (TRUE) {
    }
}
