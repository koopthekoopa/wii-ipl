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
    BS2_STT_BEGIN = 0,
    BS2_STT_1,
    BS2_STT_2,
    BS2_STT_3,
    BS2_STT_4,
    BS2_STT_5,
    BS2_STT_6,
    BS2_STT_7,
    BS2_STT_8,
    BS2_STT_9,

    BS2_STT_10,
    BS2_STT_11,
    BS2_STT_12,
    BS2_STT_13,
    BS2_STT_14,
    BS2_STT_15,
    BS2_STT_16,
    BS2_STT_17,
    BS2_STT_18,
    BS2_STT_19,

    BS2_STT_20,
    BS2_STT_21,
    BS2_STT_22,
    BS2_STT_23,
    BS2_STT_24,
    BS2_STT_25,
    BS2_STT_26,
    BS2_STT_27,
    BS2_STT_28,
    BS2_STT_29,

    BS2_STT_30,
    BS2_STT_31,
    BS2_STT_32,
    BS2_STT_RUN_UPDATE,
    BS2_STT_RUNNING_UPDATE,
    BS2_STT_35,
    BS2_STT_36,
    BS2_STT_37,
    BS2_STT_38,
    BS2_STT_39,

    BS2_STT_40,
    BS2_STT_41,
    BS2_STT_42,
    BS2_STT_43,
    BS2_STT_44,
    BS2_STT_45,
    BS2_STT_46,
    BS2_STT_47,
    BS2_STT_48,
    BS2_STT_START_GAME,
    BS2_STT_START_GC_GAME,

    BS2_STT_COVER_CLOSED,
    BS2_STT_NO_DISK,
    BS2_STT_COVER_OPEN,
    BS2_STT_54,
    BS2_STT_55,
    BS2_STT_WRONG_DISK,
    BS2_STT_FATAL_ERROR,
    BS2_STT_UPDATE_FAILED,
    BS2_STT_DIRTY_DISK,

    BS2_STT_60,
    BS2_STT_61,
    BS2_STT_62,
    BS2_STT_63,
    BS2_STT_64,
    BS2_STT_RESET_SYSTEM,
    BS2_STT_66,
    BS2_STT_67,
    BS2_STT_68,
    BS2_STT_DATA_DISK,

    BS2_STT_LOCKED_DISK,
    BS2_STT_71,
    BS2_STT_START_LOCKED_DISK,
    BS2_STT_73,
    BS2_STT_74,
    BS2_STT_75,
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

extern OSBootInfo2  bi2;
extern OSBootInfo3  bi3;

extern vu32         BS2LastMode;

extern vBOOL        BS2BootFromCache;
extern vBOOL        BS2BootCaching;

extern vBOOL        BS2DriveReset;
extern vBOOL        BS2WaitSpinup;
extern vBOOL        BS2NoDisk;

extern BOOL         BS2ReturnToMenu;
extern BOOL         BS2ReturnToIdle;
extern BOOL         BS2ReturnToDataManager;
extern BOOL         BS2ReturnArgs;
extern BOOL         BS2LaunchTitle;;

extern u32          BS2BootType;

BS2State    BS2Tick();

void        BS2Init();

void        BS2Report(const char* msg, ...);
void        BS2ScreenReport(GXColor fg, GXColor bg, const char* msg);

static inline void BS2ScreenReportNoColor(const char* msg) {
    static GXColor BS2ScreenReportFG = (GXColor){255,255,255,255};
    static GXColor BS2ScreenReportBG = (GXColor){0,0,0,0};
    BS2ScreenReport(BS2ScreenReportFG, BS2ScreenReportBG, msg);
}

u32         BS2GetBootType();

u32         BS2GetLaunchCode();
ESTitleId   BS2GetLaunchTitle();

u32         BS2GetArgc();
char**      BS2GetArgv();

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
