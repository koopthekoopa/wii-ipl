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

    u32             ticketCnt = 1;
    ESTicketView*   tik = views;

    ESTitleId   version = 0x0000000100000003;

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
    state.lastBootApp = 0x84;
    if (BS2BootFromCache) {
        state.lastBootApp |= OS_APP_TYPE_IPL;
    }
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.lastDiscState = 3;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.lastDiscState = 2;
        }
        else {
            state.lastDiscState = 1;
        }
    }
    state.lastShutdown = 2;
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    OSDisableScheduler();

    __OSShutdownDevices(OS_SHUTDOWN_RESTART_PRIVATE);

    __OSHotReset();
}

void OSShutdownSystem() {
    SCIdleModeInfo  idleModeInfo;
    OSIOSRev        iosRev;

    OSStateFlags    state;
    u32             flags;

    memset(&idleModeInfo, 0, sizeof(SCIdleModeInfo));

    SCInit();
    while (SCCheckStatus() == 1) {}

    SCGetIdleMode(&idleModeInfo);

    __OSStopPlayRecord();

    __OSUnRegisterStateEvent();

    __DVDPrepareReset();

    __OSReadStateFlags(&state);
    state.lastBootApp = 0x84;
    if (BS2BootFromCache) {
        state.lastBootApp |= OS_APP_TYPE_IPL;
    }
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.lastDiscState = 3;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.lastDiscState = 2;
        }
        else {
            state.lastDiscState = 1;
        }
    }

    if (idleModeInfo.mode == 1) {
        state.lastShutdown = 5;
    }
    else {
        state.lastShutdown = 1;
    }
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    __OSGetIOSRev(&iosRev);

    if (idleModeInfo.mode == 1) {
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
    SCIdleModeInfo  idleModeInfo;
    OSIOSRev        iosRev;

    OSStateFlags    state;
    u32             flags;

    memset(&idleModeInfo, 0, sizeof(SCIdleModeInfo));

    SCInit();
    while (SCCheckStatus() == 1) {}

    SCGetIdleMode(&idleModeInfo);

    __OSStopPlayRecord();

    __OSUnRegisterStateEvent();

    __DVDPrepareReset();

    __OSReadStateFlags(&state);
    state.lastBootApp = 0x84;
    if (BS2BootFromCache) {
        state.lastBootApp |= OS_APP_TYPE_IPL;
    }
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.lastDiscState = 3;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.lastDiscState = 2;
        }
        else {
            state.lastDiscState = 1;
        }
    }
    __OSGetIOSRev(&iosRev);
    if (idleModeInfo.mode == 1 && iosRev.major != 9) {
        state.lastShutdown = 4;
    }
    else {
        state.lastShutdown = 1;
    }
    __OSClearRTCFlags();
    __OSWriteStateFlags(&state);

    __VISetVolume(0, 0);

    if (idleModeInfo.mode == 1 && iosRev.major != 9) {
        if (state.lastDiscState != 3) {
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
    state.lastBootApp = 0x84;
    if (BS2BootFromCache) {
        state.lastBootApp |= OS_APP_TYPE_IPL;
    }
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.lastDiscState = 3;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.lastDiscState = 2;
        }
        else {
            state.lastDiscState = 1;
        }
    }
    state.lastShutdown = 3;
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
    OSStateFlags    state;
    u32             flags;
    
    __OSReadStateFlags(&state);
    state.lastBootApp = OS_APP_TYPE_CHANNEL;
    if (BS2BootFromCache) {
        state.lastBootApp |= OS_APP_TYPE_IPL;
    }
    state.lastShutdown = 0xFF;
    if (__DVDGetCoverStatus() != DVD_COVER_CLOSED) {
        state.lastDiscState = 3;
    }
    else {
        if (!BS2BootFromCache || (__OSGetRTCFlags(&flags) && flags)) {
            state.lastDiscState = 2;
        }
        else {
            state.lastDiscState = 1;
        }
    }
    __OSWriteStateFlags(&state);
}
