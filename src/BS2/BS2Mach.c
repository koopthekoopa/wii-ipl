#include "BS2/BS2.h"
#include "BS2/BS2Update.h"
#include "config.h"

#include <private/os.h>
#include <private/dvd.h>
#include <private/nand.h>
#include <private/vi.h>

#include <private/es.h>

typedef struct AppLoaderHeader {
    char    date[16];       // 0x00
    u32     entryPoint;     // 0x10
    u32     length;         // 0x14
    u32     trailerSize;    // 0x18
    u8      pad_0x1C[4];
} AppLoaderHeader;

u8                  TicketViewsBuf[OSRoundUp32B(sizeof(ESTicketView) * 64)] ALIGN32;
DVDDiskID           lbl_810ADF60 ALIGN32;
OSBootInfo2         bi2 ALIGN32;
AppLoaderHeader     AppLoaderHdr ALIGN32;
OSBootInfo3         bi3 ALIGN32;
u8                  GameTOCBuf[OSRoundUp32B(sizeof(DVDGameTOC))] ALIGN32;
DVDDriveInfo        DriveInfo ALIGN32;
DVDDiskID           DiskID ALIGN32;
DVDPartitionParams  PartitionParams ALIGN32;
NANDCommandBlock    BS2NandBlock;
NANDFileInfo        BS2CacheFileInfo;
DVDCommandBlock     lbl_8108BF60;
u8                  PartitionInfoBuf[OSRoundUp32B(sizeof(DVDPartitionInfo) * 256)] ALIGN32;
DVDCommandBlock     Block;

BS2State        State = BS2_STT_BEGIN;
vu32            lbl_81698A0C = 0;
u32             lbl_81698A10 = 0;
u32             lbl_81698A14 = 0;
u32             lbl_81698A18 = 0;
u32             lbl_81698A1C = 0;
BOOL            StartingGame = FALSE;
u32             lbl_81698A24 = 0;
u32             lbl_81698A28 = 0;
u32             lbl_81698A2C = 0;
u32             lbl_81698A30 = 0;
BOOL            FatalErrorFlag = FALSE;
BOOL            RetryErrorFlag = FALSE;
BOOL            UpdateErrorFlag = FALSE;
BOOL            AbortFlag = FALSE;
volatile int    lbl_81698A44 = 0;
volatile int    lbl_81698A48 = 0;
volatile int    lbl_81698A4C = 0;
u32             lbl_81698A50 = 0;
u32             lbl_81698A54 = 0;
u32             lbl_81698A58 = 0;
u32             lbl_81698A5C = 0;
u64             lbl_81698A60 = 0;
u64             lbl_81698A68 = 0;
u64             lbl_81698A70 = 0;
u32             lbl_81698A78 = 0;
u32             lbl_81698A7C = 0;
u32             lbl_81698A80 = 0;
u32             lbl_81698A84 = 0;
u32             lbl_81698A88 = 0;
u32             lbl_81698A8C = 0;
u32             lbl_81698A90 = 0;
u32             lbl_81698A94 = 0;
u32             lbl_81698A98 = 0;
u32             lbl_81698A9C = 0;
u64             lbl_81698AA0 = 0;
u32             lbl_81698AA8 = 0;
u32             lbl_81698AAC = 0;
u32             lbl_81698AB0 = 0;
u32             lbl_81698AB4 = 0;
u32             lbl_81698AB8 = 0;
u32             lbl_81698ABC = 0;
u32             lbl_81698AC0 = 0;
u32             lbl_81698AC4 = 0;
u32             lbl_81698AC8 = 0;
u32             lbl_81698ACC = 0;
u32             lbl_81698AD0 = 0;
u32             lbl_81698AD4 = 0;
u32             lbl_81698AD8 = 0;
vu32            lbl_81698ADC = 0;
vu32            lbl_81698AE0 = 0;
u32*            lbl_81698AE4 = 0;
u32             lbl_81698AE8 = 0;
u32             lbl_81698AEC = 0;
u32             lbl_81698AF0 = 0;

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

    if ((State == BS2_STT_START_GAME || State == BS2_STT_START_GC_GAME || State == BS2_STT_RUN_UPDATE || State == BS2_STT_DATA_DISK)
    && result == 1) {
        BS2CancelUpdate();
        State = BS2_STT_NO_DISK;
    }

    if (State == BS2_STT_DIRTY_DISK || State == BS2_STT_63) {
        if (result == 1) {
            BS2CancelUpdate();
            State = BS2_STT_NO_DISK;
        }
        else {
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
    if (State == BS2_STT_RUN_UPDATE && BS2UpdateState() == 2) {
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
