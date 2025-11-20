#include <revolution/os.h>
#include <private/os.h>

#include <revolution/dvd.h>
#include <private/dvd.h>

#include <private/es.h>

#include <revolution/sc.h>

#include <string.h>

static ESTicketView     viewsBuf[64] ALIGN32;
static ESTicketView*    views = (ESTicketView*)viewsBuf;

extern BOOL BS2BootFromCache;
extern BOOL __OSIsReturnToIdle;

void __VISetVolume(u8 volumeL, u8 volumeR);
void __VISetRGBModeImm();

#define LAUNCHER_ID 0x0000000100000002

void __OSLaunchMenu() {
    int i;
    s32 ret;

    u32 ticketCnt = 1;
    ESTicketView* tik = views;

    ESTitleId version = 0x0000000100000003;

    ret = ES_InitLib();
    if (ret != ES_ERR_OK) {
        return;
    }

    ret = ES_GetTicketViews(LAUNCHER_ID, NULL, &ticketCnt);
    if (ticketCnt != 1 || ret != ES_ERR_OK) {
        return;
    }

    ret = ES_GetTicketViews(LAUNCHER_ID, tik, &ticketCnt);
    if (ret != ES_ERR_OK) {
        return;
    }

    ret = ES_LaunchTitle(LAUNCHER_ID, tik);
    if (ret != ES_ERR_OK) {
        return;
    }

    while (TRUE) {}
}

void OSRebootSystem() {
    OSStateFlags state;
    u32 flags;

    __OSStopPlayRecord();

    __OSUnRegisterStateEvent();

    __DVDPrepareReset();

    __OSReadStateFlags(&state);
    state.lastAppType = OS_APP_TYPE_84;
    if (BS2BootFromCache) {
        state.lastAppType |= OS_APP_TYPE_IPL;
    }
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.discState = OS_STATE_FLAGS_DISC_NONE;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.discState = OS_STATE_FLAGS_DISC_CHANGED;
        }
        else {
            state.discState = OS_STATE_FLAGS_DISC_IN;
        }
    }
    state.shutdownType = OS_STATE_FLAGS_DISC_CHANGED;
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    OSDisableScheduler();

    __OSShutdownDevices(OS_SHUTDOWN_RESTART_PRIVATE);

    __OSHotReset();
}

void OSShutdownSystem() {
    SCIdleModeInfo idleModeInfo;
    OSIOSRev iosRev;

    OSStateFlags state;
    u32 flags;

    memset(&idleModeInfo, 0, sizeof(SCIdleModeInfo));

    SCInit();
    while (SCCheckStatus() == SC_STATUS_BUSY) {}

    SCGetIdleMode(&idleModeInfo);

    __OSStopPlayRecord();

    __OSUnRegisterStateEvent();

    __DVDPrepareReset();

    // Write state flags

    __OSReadStateFlags(&state);

    // Last app type
    state.lastAppType = OS_APP_TYPE_84;
    if (BS2BootFromCache) {
        state.lastAppType |= OS_APP_TYPE_IPL;
    }

    // Disc state
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.discState = OS_STATE_FLAGS_DISC_NONE;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.discState = OS_STATE_FLAGS_DISC_CHANGED;
        }
        else {
            state.discState = OS_STATE_FLAGS_DISC_IN;
        }
    }

    // Shutdown type
    if (idleModeInfo.standby == SC_IDLE_MODE_STANDBY_ON) {
        state.shutdownType = OS_STATE_FLAGS_SHUTDOWN_IDLE;
    }
    else {
        state.shutdownType = OS_STATE_FLAGS_SHUTDOWN_POWER_OFF;
    }
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    __OSGetIOSRev(&iosRev);

    if (idleModeInfo.standby == SC_IDLE_MODE_STANDBY_ON) {
        __OSIsReturnToIdle = TRUE;

        OSDisableScheduler();
        __OSShutdownDevices(OS_SHUTDOWN_RETURN_MENU);
        OSEnableScheduler();
        __OSLaunchMenu();
    }
    else {
        OSDisableScheduler();
        __OSShutdownDevices(OS_SHUTDOWN_STANDBY);
        __OSShutdownToSBY();
    }
}

void OSShutdownSystemForBS() {
    SCIdleModeInfo idleModeInfo;
    OSIOSRev iosRev;

    OSStateFlags state;
    u32 flags;

    memset(&idleModeInfo, 0, sizeof(SCIdleModeInfo));

    SCInit();
    while (SCCheckStatus() == SC_STATUS_BUSY) {}

    SCGetIdleMode(&idleModeInfo);

    __OSStopPlayRecord();

    __OSUnRegisterStateEvent();

    __DVDPrepareReset();

    __OSReadStateFlags(&state);
    state.lastAppType = OS_APP_TYPE_84;
    if (BS2BootFromCache) {
        state.lastAppType |= OS_APP_TYPE_IPL;
    }
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.discState = OS_STATE_FLAGS_DISC_NONE;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.discState = OS_STATE_FLAGS_DISC_CHANGED;
        }
        else {
            state.discState = OS_STATE_FLAGS_DISC_IN;
        }
    }
    __OSGetIOSRev(&iosRev);
    if (idleModeInfo.standby == SC_IDLE_MODE_STANDBY_ON && iosRev.major != 9) {
        state.shutdownType = OS_STATE_FLAGS_SHUTDOWN_LAUNCH_TITLE;
    }
    else {
        state.shutdownType = OS_STATE_FLAGS_SHUTDOWN_POWER_OFF;
    }
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    __VISetVolume(0, 0);

    if (idleModeInfo.standby == SC_IDLE_MODE_STANDBY_ON && iosRev.major != 9) {
        if (state.discState != OS_STATE_FLAGS_DISC_NONE) {
            __DVDResetWithNoSpinup();
        }

        __OSSetIdleLEDMode(idleModeInfo.led);

        OSDisableScheduler();
        __OSShutdownDevices(3);
        __OSShutdownToIDL();
    }
    else {
        OSDisableScheduler();
        __OSShutdownDevices(OS_SHUTDOWN_STANDBY);
        __OSShutdownToSBY();
    }
}

void OSReturnToMenu() {
    OSStateFlags state;
    u32 flags;

    __OSStopPlayRecord();

    __OSUnRegisterStateEvent();

    __DVDPrepareReset();

    __OSReadStateFlags(&state);
    state.lastAppType = OS_APP_TYPE_84;
    if (BS2BootFromCache) {
        state.lastAppType |= OS_APP_TYPE_IPL;
    }
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.discState = OS_STATE_FLAGS_DISC_NONE;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.discState = OS_STATE_FLAGS_DISC_CHANGED;
        }
        else {
            state.discState = OS_STATE_FLAGS_DISC_IN;
        }
    }
    state.shutdownType = OS_STATE_FLAGS_DISC_NONE;
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    OSDisableScheduler();
    __OSShutdownDevices(OS_SHUTDOWN_RETURN_MENU);
    OSEnableScheduler();

    __OSLaunchMenu();

    OSDisableScheduler();

    __VISetRGBModeImm();

    __OSHotReset();

    OSHalt("OSReturnToMenu(): Falied to boot system menu.\n", 446);
}

void BS2SetStateFlags() {
    OSStateFlags state;
    u32 flags;
    
    __OSReadStateFlags(&state);
    state.lastAppType = OS_APP_TYPE_CHANNEL;
    if (BS2BootFromCache) {
        state.lastAppType |= OS_APP_TYPE_IPL;
    }
    state.shutdownType = OS_STATE_FLAGS_SHUTDOWN_BAD;
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.discState = OS_STATE_FLAGS_DISC_NONE;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.discState = OS_STATE_FLAGS_DISC_CHANGED;
        }
        else {
            state.discState = OS_STATE_FLAGS_DISC_IN;
        }
    }
    __OSWriteStateFlags(&state);
}
