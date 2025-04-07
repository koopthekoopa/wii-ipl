#include <revolution/os.h>
#include <private/os.h>

#include <revolution/nwc24.h>
#include <private/nwc24.h>

void __OSInitNet() {
    NWC24Err ret;
    OSIOSRev iosRev;

    __OSGetIOSRev(&iosRev);

    if (iosRev.major <= 4 || iosRev.major == 9) {
        return;
    }

    ret = NWC24iPrepareShutdown();

    if (ret != NWC24_OK) {
        if (ret < NWC24_OK) {
            OSReport("Failed to register network shutdown function. %d\n", ret);
        }
        ret = NWC24SuspendScheduler();
        if (ret < NWC24_OK) {
            OSReport("Failed to suspend the WiiConnect24 scheduler. %d\n", ret);
        }
    }

    if (!__OSInIPL) {
        ret = NWC24iSynchronizeRtcCounter(FALSE);
        if (ret != NWC24_OK) {
            OSReport("Failed to synchronize time with network resource managers. %d\n", ret);
        }
    }
}

NWC24Err __OSSyncTimeWithNetRM() {
    return NWC24iSynchronizeRtcCounter(FALSE);
}

DECOMP_FORCE_ACTIVE(OSNet_c, "NWC24iPrepareShutdown");
DECOMP_FORCE_ACTIVE(OSNet_c, "/dev/net/kd/request");
DECOMP_FORCE_ACTIVE(OSNet_c, "NWC24SuspendScheduler");
DECOMP_FORCE_ACTIVE(OSNet_c, "NWC24ResumeScheduler");
DECOMP_FORCE_ACTIVE(OSNet_c, "NWC24iRequestShutdown");
DECOMP_FORCE_ACTIVE(OSNet_c, "NWC24Shutdown_: Give up!\n"); // Give up!
DECOMP_FORCE_ACTIVE(OSNet_c, "NWC24iSetRtcCounter_");
DECOMP_FORCE_ACTIVE(OSNet_c, "/dev/net/kd/time");
