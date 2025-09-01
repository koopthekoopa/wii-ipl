#include <revolution/nwc24.h>
#include <private/nwc24.h>

#include <revolution/os.h>
#include <private/os.h>

#include <revolution/sc.h>

#include <string.h>

#define CHECK_CALLING_STATUS() CheckCallingStatus(__FUNCTION__)

static BOOL nwc24TimeInitialized = FALSE;
static u32 nwc24TimeRtc = 0;
static s64 nwc24TimeDifference = 0;

static s32 nwc24TimeCommonResult[8] ALIGN32;
static s32 nwc24TimeCommonBuffer[8] ALIGN32;
static OSMutex nwc24TimeCommandMutex ALIGN32;

static NWC24Err GetRTC(u32* rtcCounter);
static NWC24Err CheckCallingStatus(const char* user);
static void InitMutex();
static void LockRight();
static void UnlockRight();

// Unused but left over static declaration
void NWC24iStrTime() {
    static u8 buf[128];
}

NWC24Err NWC24iGetUniversalTime(s64* pTime) {
    static s64 whenCached = 0;

    NWC24Err result;

    if (pTime == NULL) {
        nwc24TimeDifference = 0;
        return NWC24_ERR_INVALID_VALUE;
    }

    if (whenCached == 0 ||
        whenCached + OSSecondsToTicks(1) <= __OSGetSystemTime() ||
        nwc24TimeRtc == 0) {

        result = NWC24iGetTimeDifference(&nwc24TimeDifference);
        if (result < 0) {
            return result;
        }

        result = GetRTC(&nwc24TimeRtc);
        if (result != NWC24_OK) {
            return result;
        }

        whenCached = __OSGetSystemTime();
    }

    *pTime = nwc24TimeDifference + nwc24TimeRtc;
    return NWC24_OK;
}

NWC24Err NWC24iGetTimeDifference(s64* pDiff) {
    NWC24Err result;
    NWC24Err resultClose;

    s32 fd;

    result = CHECK_CALLING_STATUS();
    if (result < 0) {
        return result;
    }

    LockRight();
    {
        result = NWC24OpenResourceManager("/dev/net/kd/time", &fd, 0);

        if (result >= 0) {
            result = NWC24IoctlResourceManager(fd, NWC24_IOCTL_GET_TIME_DIFFERENCE,
                                        NULL, 0, &nwc24TimeCommonResult,
                                        sizeof(nwc24TimeCommonResult));

            if (result >= 0) {
                result = *(s32*)(&nwc24TimeCommonResult[0]);

                // Cast is necessary
                if (result == 0 && pDiff != (void*)NULL) {
                    *pDiff = *(s64*)(&nwc24TimeCommonResult[1]);
                }
            }

            resultClose = NWC24CloseResourceManager(fd);
            if (result >= 0) {
                result = resultClose;
            }
        }
    }
    UnlockRight();

    return result;
}

NWC24Err NWC24iSetRtcCounter(u32 rtcCounter, u32 flags) {
    NWC24Err result;
    NWC24Err resultClose;

    s32 fd;

    result = CHECK_CALLING_STATUS();
    if (result < 0) {
        return result;
    }

    LockRight();
    {
        result = NWC24OpenResourceManager("/dev/net/kd/time", &fd, 0);

        if (result >= 0) {
            *(u32*)(&nwc24TimeCommonBuffer[0]) = rtcCounter;
            *(u32*)(&nwc24TimeCommonBuffer[1]) = flags;

            result = NWC24IoctlResourceManager(
                fd, NWC24_IOCTL_SET_RTC_COUNTER, &nwc24TimeCommonBuffer,
                sizeof(nwc24TimeCommonBuffer), &nwc24TimeCommonResult,
                sizeof(nwc24TimeCommonResult));

            if (result >= 0) {
                result = *(s32*)(&nwc24TimeCommonResult[0]);
            }

            resultClose = NWC24CloseResourceManager(fd);
            if (result >= 0) {
                result = resultClose;
            }
        }
    }
    UnlockRight();

    return result;
}

NWC24Err NWC24iSynchronizeRtcCounter(BOOL forceSave) {
    u32 rtcCounter;
    NWC24Err result;

    result = GetRTC(&rtcCounter);
    if (result != NWC24_OK) {
        return result;
    }

    return NWC24iSetRtcCounter(rtcCounter, forceSave ? TRUE : FALSE);
}

static NWC24Err GetRTC(u32* rtcCounter) {
    s64 time;
    u32 bias;
    u32 status;

    do {
        status = SCCheckStatus();

        if (status == SC_STATUS_FATAL) {
            return NWC24_ERR_FATAL;
        }
    } while (status != SC_STATUS_OK);

    bias = SCGetCounterBias();
    time = OSGetTime();
    *rtcCounter = OSTicksToSeconds(time) - bias;
    return NWC24_OK;
}

static NWC24Err CheckCallingStatus(const char* funcName) {
    if (OSGetCurrentThread() == 0) {
        return NWC24_ERR_FATAL;
    }

    return NWC24_OK;
}

static void InitMutex() {
    BOOL enabled = OSDisableInterrupts();

    if (!nwc24TimeInitialized) {
        OSInitMutex(&nwc24TimeCommandMutex);

        memset(&nwc24TimeCommonBuffer, 0, sizeof(nwc24TimeCommonBuffer));
        memset(&nwc24TimeCommonResult, 0, sizeof(nwc24TimeCommonResult));

        nwc24TimeInitialized = TRUE;
    }

    OSRestoreInterrupts(enabled);
}

static void LockRight() {
    if (!nwc24TimeInitialized) {
        InitMutex();
    }

    OSLockMutex(&nwc24TimeCommandMutex);
}

static void UnlockRight() {
    OSUnlockMutex(&nwc24TimeCommandMutex);
}
