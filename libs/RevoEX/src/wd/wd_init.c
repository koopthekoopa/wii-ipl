#include <private/wd.h>

#include <private/ios.h>

#include <revolution/os.h>

#include <string.h>

s32 WD_Startup(u32 flags) {
    s32 result;

    BOOL enabled = OSDisableInterrupts();

    if (!(WDi_Work->IOSFd < 0)) {
        result = WD_INTERNAL_ERR_ALREADY_INITIALIZED;
    } else {
        if (!WDi_Work->initialized) {
            memset(WDi_Work, 0, WDi_WorkSize);
            WDi_Work->initialized = TRUE;
            WDi_Work->IOSHeap = -1;
        }
        WDi_Work->IOSFd = IOS_Open("/dev/net/wd/command", flags | 0x10000);
        if (WDi_Work->IOSFd < 0) {
            result = WDi_Work->IOSFd;
        } else {
            result = WDi_SetupHeap(0x1000);
        }
    }

    OSRestoreInterrupts(enabled);
    return result;
}

s32 WD_Cleanup() {
    BOOL enabled = OSDisableInterrupts();

    s32 result = IOS_Close(WDi_Work->IOSFd);
    if (result >= 0) {
        WDi_Work->IOSFd = -1;
        result = WDi_CleanupHeap();  // always OK.
    }

    OSRestoreInterrupts(enabled);
    return result;
}
