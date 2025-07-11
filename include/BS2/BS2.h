#ifndef BS2_H
#define BS2_H

#include <revolution/types.h>

#include <private/es.h>

#include <revolution/nand.h>
#include <revolution/mem/allocator.h>
#include <revolution/gx/GXStruct.h>

#include <private/os/OSBootInfo2.h>
#include <private/os/OSBootInfo3.h>

#include <stdarg.h>
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

extern NANDFileInfo BS2CacheFileInfo;

typedef enum {
    BS2_START = 0,
    BS2_STATE_1,
    BS2_STATE_2,
    BS2_STATE_3,
    BS2_STATE_4,
    BS2_STATE_5,
    BS2_STATE_6,
    BS2_STATE_7,
    BS2_STATE_8,
    BS2_STATE_9,

    BS2_STATE_10,
    BS2_STATE_11,
    BS2_STATE_12,
    BS2_STATE_13,
    BS2_STATE_14,
    BS2_STATE_15,
    BS2_STATE_16,
    BS2_STATE_17,
    BS2_STATE_18,
    BS2_STATE_19,

    BS2_STATE_20,
    BS2_STATE_21,
    BS2_STATE_22,
    BS2_STATE_23,
    BS2_STATE_24,
    BS2_STATE_25,
    BS2_STATE_26,
    BS2_STATE_27,
    BS2_STATE_28,
    BS2_STATE_29,

    BS2_STATE_30,
    BS2_STATE_31,
    BS2_STATE_32,
    BS2_RUN_UPDATE,
    BS2_RUNNING_UPDATE,
    BS2_STATE_35,
    BS2_STATE_36,
    BS2_STATE_37,
    BS2_STATE_38,
    BS2_STATE_39,

    BS2_STATE_40,
    BS2_STATE_41,
    BS2_STATE_42,
    BS2_STATE_43,
    BS2_STATE_44,
    BS2_STATE_45,
    BS2_STATE_46,
    BS2_STATE_47,
    BS2_STATE_48,
    BS2_RUN_APP,
    BS2_RUN_GC_APP,

    BS2_COVER_CLOSED,
    BS2_NO_DISK,
    BS2_COVER_OPEN,
    BS2_STATE_54,
    BS2_STATE_55,
    BS2_WRONG_DISK,
    BS2_FATAL_ERROR,
    BS2_UPDATE_FAILED,
    BS2_DIRTY_DISK,

    BS2_STATE_60,
    BS2_STATE_61,
    BS2_STATE_62,
    BS2_STATE_63,
    BS2_STATE_64,
    BS2_RESTART,
    BS2_STATE_66,
    BS2_STATE_67,
    BS2_STATE_68,
    BS2_DATA_DISK,

    BS2_STATE_70,
    BS2_STATE_71,
    BS2_RUN_LOCKED_APP,
    BS2_STATE_73,
    BS2_STATE_74,
    BS2_STATE_75,

    BS2_MAX_STATE
} BS2State;

enum {
    BS2_BOOT_TYPE_POWER_ON = 0,
    BS2_BOOT_TYPE_RETURN_TO_MENU,
    BS2_BOOT_TYPE_RETURN_TO_DATA_MANAGER,
    BS2_BOOT_TYPE_RETURN_ARGS
};

// Version "1.13"
#define     BS2_MAJOR_VERSION       0x01
#define     BS2_MINOR_VERSION       0x13
#define     BS2_VERSION             0x0113

#define     BS2_DEFAULT_BANNER_SIZE 0x80000

#define     BS2_CACHE_BOOT_SIZE     0xB00000

extern OSBootInfo3  bi3;

BS2State    BS2Tick();

void        BS2Init();

void        BS2Report(const char* format, ...);
void        BS2ScreenReport(GXColor fg, GXColor bg, const char* msg);

static inline void BS2ScreenReportNoColor(const char* msg) {
    static GXColor BS2ScreenReportFG = (GXColor){255,255,255,255};
    static GXColor BS2ScreenReportBG = (GXColor){0,0,0,0};
    BS2ScreenReport(BS2ScreenReportFG, BS2ScreenReportBG, msg);
}

u32         BS2GetBootType();

void        BS2SetMemAllocator(MEMAllocator* allocator);

void        BS2SetStateFlags();

void        BS2StartGame();
void        BS2StartGCGame();

void        BS2SetBannerBuffer(void* pBanner, u32 bannerSize);
void*       BS2GetBannerBufferAddr();
u32         BS2GetBannerBufferLength();

void        BS2RestartStateMachine();
void        BS2AbortStateMachine();

BOOL        BS2CheckParentalControl();
BOOL        BS2IsBannerAvailable();
BOOL        BS2IsDiagDisc();

BOOL        BS2IsTitleAvailable(ESTitleId titleId);
BOOL        BS2GetLockedTitles(ESTitleId* pTitleIds, u32* count);
s32         BS2GetTicketFromNand(ESTitleId titleId, ESTicketView* pTicketView);
BOOL        BS2StartLoadingTitle(ESTitleId titleId, ESTicketView* pTicketView);

#ifdef __cplusplus
}
#endif

#endif // BS2_H
