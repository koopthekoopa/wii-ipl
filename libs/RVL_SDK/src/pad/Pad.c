#include <revolution/pad.h>

#include <revolution/os.h>
#include <private/os.h>

#include <private/si.h>
#include <private/vi.h>

#include <string.h>
#include <math.h>

#include <revolution/verdefs.h>

#define PAD_ALL             \
    (                      \
        PAD_BUTTON_LEFT  | \
        PAD_BUTTON_RIGHT | \
        PAD_BUTTON_DOWN  | \
        PAD_BUTTON_UP    | \
        PAD_TRIGGER_Z    | \
        PAD_TRIGGER_R    | \
        PAD_TRIGGER_L    | \
        PAD_BUTTON_A     | \
        PAD_BUTTON_B     | \
        PAD_BUTTON_X     | \
        PAD_BUTTON_Y     | \
        PAD_BUTTON_MENU  | \
        0x2000           | \
        0x0080             \
    )

SDKDefineVersion(PAD, "Apr 20 2010", "11:20:52");

static BOOL OnShutdown(BOOL final, u32 code);

static OSShutdownFunctionInfo ShutdownFunctionInfo = {
    OnShutdown,
    127,
    NULL,
    NULL,
};

extern u32 __PADFixBits;

static s32 ResettingChan = 0x20;
static u32 XPatchBits = PAD_CHAN0_BIT | PAD_CHAN1_BIT | PAD_CHAN2_BIT | PAD_CHAN3_BIT;
static u32 AnalogMode = 0x300;
static u32 Spec = PAD_SPEC_5;

static BOOL Initialized;
static u32 EnabledBits;
static u32 ResettingBits;
static u32 RecalibrateBits;
static u32 WaitingBits;
static u32 CheckingBits;
static u32 PendingBits;
static u32 BarrelBits;

static u32          Type[PAD_MAX_CONTROLLER];
static PADStatus    Origin[PAD_MAX_CONTROLLER];

u32 __PADSpec;

static void PADTypeAndStatusCallback(s32 chan, u32 type);
static void DoReset();
static void PADEnable(s32 chan);
static void PADDisable(s32 chan);
static void PADProbeCallback(s32 chan, u32 error, OSContext *context);
static void UpdateOrigin(s32 chan);
static void PADOriginCallback(s32 chan, u32 error, OSContext *context);
static void PADReceiveCheckCallback(s32 chan, u32 error);
static void SPEC0_MakeStatus(s32 chan, PADStatus *status, u32 data[2]);
static void SPEC1_MakeStatus(s32 chan, PADStatus *status, u32 data[2]);
static s8   ClampS8(s8 var, s8 org);
static u8   ClampU8(u8 var, u8 org);
static void SPEC2_MakeStatus(s32 chan, PADStatus *status, u32 data[2]);

typedef void (*SPECCallback)(s32, PADStatus*, u32*);
static SPECCallback MakeStatus = SPEC2_MakeStatus;

static u32 CmdTypeAndStatus;
static u32 CmdReadOrigin = 0x41000000;
static u32 CmdCalibrate = 0x42000000;
static u32 CmdProbeDevice[PAD_MAX_CONTROLLER];

static void PADEnable(s32 chan) {
    u32 cmd;
    u32 chanBit;
    u32 data[2];

    chanBit = PAD_CHAN0_BIT >> chan;
    EnabledBits |= chanBit;
    SIGetResponse(chan, &data);
    cmd = (AnalogMode | 0x400000);
    SISetCommand(chan, cmd);
    SIEnablePolling(EnabledBits);
}

static void PADDisable(s32 chan) {
    BOOL enabled;
    u32 chanBit;

    enabled = OSDisableInterrupts();
    chanBit = PAD_CHAN0_BIT >> chan;
    SIDisablePolling(chanBit);
    EnabledBits &= ~chanBit;
    WaitingBits &= ~chanBit;
    CheckingBits &= ~chanBit;
    PendingBits &= ~chanBit;
    BarrelBits &= ~chanBit;
    OSSetWirelessID(chan, 0);
    OSRestoreInterrupts(enabled);
}

static void DoReset() {
    u32 chanBit;

    ResettingChan = __cntlzw(ResettingBits);
    if (ResettingChan != 32) {
        chanBit = (PAD_CHAN0_BIT >> ResettingChan);
        ResettingBits &= ~chanBit;
        
        memset(&Origin[ResettingChan], 0, sizeof(PADStatus));
        SIGetTypeAsync(ResettingChan, PADTypeAndStatusCallback);
    }
}

static void UpdateOrigin(s32 chan) {
    PADStatus* origin;
    u32 chanBit = PAD_CHAN0_BIT >> chan;

    origin = &Origin[chan];
    switch (AnalogMode & 0x00000700u) {
        case 0x00000000:
        case 0x00000500:
        case 0x00000600:
        case 0x00000700: {
            origin->triggerLeft &= ~15;
            origin->triggerRight &= ~15;
            origin->analogA &= ~15;
            origin->analogB &= ~15;
            break;
        }
        case 0x00000100: {
            origin->substickX &= ~15;
            origin->substickY &= ~15;
            origin->analogA &= ~15;
            origin->analogB &= ~15;
            break;
        }
        case 0x00000200: {
            origin->substickX &= ~15;
            origin->substickY &= ~15;
            origin->triggerLeft &= ~15;
            origin->triggerRight &= ~15;
            break;
        }
        case 0x00000300: {
            break;
        }
        case 0x00000400: {
            break;
        }
    }

    origin->stickX -= 128;
    origin->stickY -= 128;
    origin->substickX -= 128;
    origin->substickY -= 128;

    if (XPatchBits & chanBit) {
        if (64 < origin->stickX && (SIGetType(chan) & 0xFFFF0000) == SI_GC_CONTROLLER) {
            origin->stickX = 0;
        }
    }
}

static void PADOriginCallback(s32 chan, u32 error, OSContext* context) {
    if (!(error & (SI_ERROR_UNDER_RUN | SI_ERROR_OVER_RUN | SI_ERROR_NO_RESPONSE | SI_ERROR_COLLISION))) {
        UpdateOrigin(ResettingChan);
        PADEnable(ResettingChan);
    }

    DoReset();
}

static void PADOriginUpdateCallback(s32 chan, u32 error, OSContext* context) {
    if (!(EnabledBits & (PAD_CHAN0_BIT >> chan))) {
        return;
    }
    if (!(error & (SI_ERROR_UNDER_RUN | SI_ERROR_OVER_RUN | SI_ERROR_NO_RESPONSE | SI_ERROR_COLLISION))) {
        UpdateOrigin(chan);
    }
    if (error & SI_ERROR_NO_RESPONSE) {
        PADDisable(chan);
    }
}

static void PADProbeCallback(s32 chan, u32 error, OSContext* context) {
    u32 type;

    if (!(error & (SI_ERROR_UNDER_RUN | SI_ERROR_OVER_RUN | SI_ERROR_NO_RESPONSE | SI_ERROR_COLLISION))) {
        PADEnable(ResettingChan);
        WaitingBits |= PAD_CHAN0_BIT >> ResettingChan;
    }

    DoReset();
}

static void PADTypeAndStatusCallback(s32 chan, u32 type) {
    u32 chanBit;
    u32 recalibrate;
    BOOL rc = TRUE;
    u32 error;

    chanBit = PAD_CHAN0_BIT >> ResettingChan;
    error = type & 0xFF;

    recalibrate = RecalibrateBits & chanBit;
    RecalibrateBits &= ~chanBit;

    if (error & (SI_ERROR_UNDER_RUN | SI_ERROR_OVER_RUN | SI_ERROR_NO_RESPONSE | SI_ERROR_COLLISION)) {
        DoReset();
        return;
    }

    type &= ~0xFF;
    Type[ResettingChan] = type;

    if ((type & SI_TYPE_MASK) != SI_TYPE_GC || !(type & SI_GC_STANDARD)) {
        DoReset();
        return;
    }

    if (Spec < PAD_SPEC_2) {
        PADEnable(ResettingChan);
        DoReset();
        return;
    }

    if (!(type & SI_GC_WIRELESS) || (type & SI_WIRELESS_IR)) {
        if (recalibrate) {
            rc = SITransfer(ResettingChan, &CmdCalibrate, 3, &Origin[ResettingChan], 10, PADOriginCallback, 0);
        }
        else {
            rc = SITransfer(ResettingChan, &CmdReadOrigin, 1, &Origin[ResettingChan], 10, PADOriginCallback, 0);
        }
    }
    else if ((type & SI_WIRELESS_FIX_ID) && (type & SI_WIRELESS_CONT_MASK) == SI_WIRELESS_CONT && !(type & SI_WIRELESS_LITE)) {
        if (type & SI_WIRELESS_RECEIVED) {
            rc = SITransfer(ResettingChan, &CmdReadOrigin, 1, &Origin[ResettingChan], 10, PADOriginCallback, 0);
        }
        else {
            rc = SITransfer(ResettingChan, &CmdProbeDevice[ResettingChan], 3, &Origin[ResettingChan], 8, PADProbeCallback, 0);
        }
    }

    if (!rc) {
        PendingBits |= chanBit;
        DoReset();
        return;
    }
}

static void PADReceiveCheckCallback(s32 chan, u32 type) {
    u32 error;
    u32 chanBit;

    chanBit = PAD_CHAN0_BIT >> chan;

    if (EnabledBits & chanBit) {
        error = type & 0xFF;
        type &= ~0xFF;

        WaitingBits &= ~chanBit;
        CheckingBits &= ~chanBit;

        if (!(error &
            (SI_ERROR_UNDER_RUN | SI_ERROR_OVER_RUN | SI_ERROR_NO_RESPONSE | SI_ERROR_COLLISION)) &&
            (type & SI_GC_WIRELESS) && (type & SI_WIRELESS_FIX_ID) && (type & SI_WIRELESS_RECEIVED) &&
            !(type & SI_WIRELESS_IR) && (type & SI_WIRELESS_CONT_MASK) == SI_WIRELESS_CONT &&
            !(type & SI_WIRELESS_LITE)) {
            SITransfer(chan, &CmdReadOrigin, 1, &Origin[chan], 10, PADOriginUpdateCallback, 0);
        }
        else {
            PADDisable(chan);
        }
    }
}

int PADReset(u32 mask) NO_INLINE {
    BOOL enabled;
    u32 disableBits;

    enabled = OSDisableInterrupts();
    mask |= PendingBits;
    PendingBits = 0;
    mask &= ~(WaitingBits | CheckingBits);
    ResettingBits |= mask;
    disableBits = ResettingBits & EnabledBits;
    EnabledBits &= ~mask;
    BarrelBits &= ~mask;

    if (Spec == 4) {
        RecalibrateBits |= mask;
    }

    SIDisablePolling(disableBits);

    if (ResettingChan == 0x20) {
        DoReset();
    }

    OSRestoreInterrupts(enabled);
    return 1;
}

BOOL PADRecalibrate(u32 mask) NO_INLINE {
    BOOL enabled;
    u32 disableBits;

    enabled = OSDisableInterrupts();

    mask |= PendingBits;
    PendingBits = 0;
    mask &= ~(WaitingBits | CheckingBits);
    ResettingBits |= mask;
    disableBits = ResettingBits & EnabledBits;
    EnabledBits &= ~mask;
    BarrelBits &= ~mask;

    if (!(__OSPADButton & 0x40)) {
        RecalibrateBits |= mask;
    }

    SIDisablePolling(disableBits);
    if (ResettingChan == 32)
        DoReset();

    OSRestoreInterrupts(enabled);
    return 1;
}

BOOL PADInit() {
    s32 chan;
    if (Initialized) {
        return 1;
    }
    
    OSRegisterVersion(GetVersion(PAD));

    if (__PADSpec)
        PADSetSpec(__PADSpec);

    Initialized = TRUE;

    if (__PADFixBits != 0) {
        OSTime time = OSGetTime();
        __OSWirelessPadFixMode = (u16)((((time) & 0xffff) +
                                        ((time >> 16) & 0xffff) +
                                        ((time >> 32) & 0xffff) +
                                        ((time >> 48) & 0xffff)) & 0x3fff);
    
        RecalibrateBits = PAD_CHAN0_BIT | PAD_CHAN1_BIT | PAD_CHAN2_BIT | PAD_CHAN3_BIT;
    }

    for (chan = 0; chan < SI_CHAN_MAX; ++chan) {
        CmdProbeDevice[chan] = (0x4D << 24) | (chan << 22) | ((__OSWirelessPadFixMode & 0x3fff) << 8);
    }

    SIRefreshSamplingRate();
    OSRegisterShutdownFunction(&ShutdownFunctionInfo);

    return PADReset(PAD_CHAN0_BIT | PAD_CHAN1_BIT | PAD_CHAN2_BIT | PAD_CHAN3_BIT);
}

void PADSetSpec(u32 spec) {
    __PADSpec = 0;

    switch (spec) {
        case PAD_SPEC_0: {
            MakeStatus = SPEC0_MakeStatus;
            break;
        }
        case PAD_SPEC_1: {
            MakeStatus = SPEC1_MakeStatus;
            break;
        }
        case PAD_SPEC_2:
        case PAD_SPEC_3:
        case PAD_SPEC_4:
        case PAD_SPEC_5: {
            MakeStatus = SPEC2_MakeStatus;
            break;
        }
    }
    Spec = spec;
}

u32 PADRead(PADStatus* status) {
    BOOL enabled;
    s32 chan;
    u32 data[2];
    u32 chanBit;
    u32 sr;
    int chanShift;
    u32 motor;

    enabled = OSDisableInterrupts();
    motor = 0;

    for (chan = 0; chan < 4; chan++, status++) {
        chanBit = PAD_CHAN0_BIT >> chan;
        chanShift = 8 * (SI_CHAN_MAX - 1 - chan);

        if (PendingBits & chanBit) {
            PADReset(0);
            status->err = PAD_ERR_NOT_READY;
            memset(status, 0, offsetof(PADStatus, err));
        }
        else if ((ResettingBits & chanBit) || ResettingChan == chan) {
            status->err = PAD_ERR_NOT_READY;
            memset(status, 0, offsetof(PADStatus, err));
        }
        else if (!(EnabledBits & chanBit)) {
            status->err = PAD_ERR_NO_CONTROLLER;
            memset(status, 0, offsetof(PADStatus, err));
        }
        else if (SIIsChanBusy(chan)) {
            status->err = PAD_ERR_TRANSFER;
            memset(status, 0, offsetof(PADStatus, err));
        }
        else {
            sr = SIGetStatus(chan);
            if (sr & SI_ERROR_NO_RESPONSE) {
                SIGetResponse(chan, data);

                if (WaitingBits & chanBit) {
                    status->err = PAD_ERR_NONE;
                    memset(status, 0, offsetof(PADStatus, err));

                    if (!(CheckingBits & chanBit)) {
                        CheckingBits |= chanBit;
                        SIGetTypeAsync(chan, PADReceiveCheckCallback);
                    }
                }
                else {
                    PADDisable(chan);
                    status->err = PAD_ERR_NO_CONTROLLER;
                    memset(status, 0, offsetof(PADStatus, err));
                }
            }
            else {
                if (!(SIGetType(chan) & SI_GC_NOMOTOR)) {
                    motor |= chanBit;
                }
    
                if (!SIGetResponse(chan, &data)) {
                    status->err = PAD_ERR_TRANSFER;
                    memset(status, 0, offsetof(PADStatus, err));
                }
                else if (data[0] & 0x80000000) {
                    status->err = PAD_ERR_TRANSFER;
                    memset(status, 0, offsetof(PADStatus, err));
                }
                else {
                    MakeStatus(chan, status, data);
    
                    // Check and clear PAD_ORIGIN bit
                    if (status->button & 0x2000) {
                        status->err = PAD_ERR_TRANSFER;
                        memset(status, 0, offsetof(PADStatus, err));
        
                        // Get origin. It is okay if the following transfer fails
                        // since the PAD_ORIGIN bit remains until the read origin
                        // command complete.
                        SITransfer(chan, &CmdReadOrigin, 1, &Origin[chan], 10, PADOriginUpdateCallback, 0);
                    }
                    else {
                        status->err = PAD_ERR_NONE;
        
                        // Clear PAD_INTERFERE bit
                        status->button &= ~0x0080;
                    }
                }
            }
        }
    }

    OSRestoreInterrupts(enabled);
    return motor;
}

static void SPEC0_MakeStatus(s32 chan, PADStatus* status, u32 data[2]) {
    status->button = 0;
    status->button |= ((data[0] >> 16) & 0x0008) ? PAD_BUTTON_A : 0;
    status->button |= ((data[0] >> 16) & 0x0020) ? PAD_BUTTON_B : 0;
    status->button |= ((data[0] >> 16) & 0x0100) ? PAD_BUTTON_X : 0;
    status->button |= ((data[0] >> 16) & 0x0001) ? PAD_BUTTON_Y : 0;
    status->button |= ((data[0] >> 16) & 0x0010) ? PAD_BUTTON_START : 0;

    status->stickX = (s8)(data[1] >> 16);
    status->stickY = (s8)(data[1] >> 24);

    status->substickX = (s8)(data[1]);
    status->substickY = (s8)(data[1] >> 8);

    status->triggerLeft = (u8)(data[0] >> 8);
    status->triggerRight = (u8)data[0];

    status->analogA = 0;
    status->analogB = 0;

    if (170 <= status->triggerLeft) {
        status->button |= PAD_TRIGGER_L;
    }
    if (170 <= status->triggerRight) {
        status->button |= PAD_TRIGGER_R;
    }

    status->stickX -= 128;
    status->stickY -= 128;

    status->substickX -= 128;
    status->substickY -= 128;
}

static void SPEC1_MakeStatus(s32 chan, PADStatus* status, u32 data[2]) {
    status->button = 0;
    status->button |= ((data[0] >> 16) & 0x0080) ? PAD_BUTTON_A : 0;
    status->button |= ((data[0] >> 16) & 0x0100) ? PAD_BUTTON_B : 0;
    status->button |= ((data[0] >> 16) & 0x0020) ? PAD_BUTTON_X : 0;
    status->button |= ((data[0] >> 16) & 0x0010) ? PAD_BUTTON_Y : 0;
    status->button |= ((data[0] >> 16) & 0x0200) ? PAD_BUTTON_START : 0;

    status->stickX = (s8)(data[1] >> 16);
    status->stickY = (s8)(data[1] >> 24);

    status->substickX = (s8)(data[1]);
    status->substickY = (s8)(data[1] >> 8);

    status->triggerLeft = (u8)(data[0] >> 8);
    status->triggerRight = (u8)data[0];

    status->analogA = 0;
    status->analogB = 0;

    if (170 <= status->triggerLeft) {
        status->button |= PAD_TRIGGER_L;
    }
    if (170 <= status->triggerRight) {
        status->button |= PAD_TRIGGER_R;
    }

    status->stickX -= 128;
    status->stickY -= 128;

    status->substickX -= 128;
    status->substickY -= 128;
}

static s8 ClampS8(s8 var, s8 org) {
    if (0 < org) {
        s8 min = (s8)(-128 + org);
        if (var < min) {
            var = min;
        }
    }
    else if (org < 0) {
        s8 max = (s8)(127 + org);
        if (max < var) {
            var = max;
        }
    }
    return var -= org;
}

static u8 ClampU8(u8 var, u8 org) {
    if (var < org) {
        var = org;
    }
    return var -= org;
}

#define SQ(x) ((x)*(x))
static void SPEC2_MakeStatus(s32 chan, PADStatus* status, u32 data[2]) {
    PADStatus* origin;
    static PADStatus pre_status[PAD_MAX_CONTROLLER];

    status->button = (u16)((data[0] >> 16) & PAD_ALL);
    status->stickX = (s8)(data[0] >> 8);
    status->stickY = (s8)(data[0]);

    switch (AnalogMode & 0x00000700) {
        case 0x00000000:
        case 0x00000500:
        case 0x00000600:
        case 0x00000700: {
            status->substickX = (s8)(data[1] >> 24);
            status->substickY = (s8)(data[1] >> 16);
            status->triggerLeft = (u8)(((data[1] >> 12) & 0x0f) << 4);
            status->triggerRight = (u8)(((data[1] >> 8) & 0x0f) << 4);
            status->analogA = (u8)(((data[1] >> 4) & 0x0f) << 4);
            status->analogB = (u8)(((data[1] >> 0) & 0x0f) << 4);
            break;
        }
        case 0x00000100: {
            status->substickX = (s8)(((data[1] >> 28) & 0x0f) << 4);
            status->substickY = (s8)(((data[1] >> 24) & 0x0f) << 4);

            status->triggerLeft = (u8)(data[1] >> 16);
            status->triggerRight = (u8)(data[1] >> 8);

            status->analogA = (u8)(((data[1] >> 4) & 0x0f) << 4);
            status->analogB = (u8)(((data[1] >> 0) & 0x0f) << 4);
            break;
        }
        case 0x00000200: {
            status->substickX = (s8)(((data[1] >> 28) & 0x0f) << 4);
            status->substickY = (s8)(((data[1] >> 24) & 0x0f) << 4);

            status->triggerLeft = (u8)(((data[1] >> 20) & 0x0f) << 4);
            status->triggerRight = (u8)(((data[1] >> 16) & 0x0f) << 4);

            status->analogA = (u8)(data[1] >> 8);
            status->analogB = (u8)(data[1] >> 0);
            break;
        }
        case 0x00000300: {
            status->substickX = (s8)(data[1] >> 24);
            status->substickY = (s8)(data[1] >> 16);

            status->triggerLeft = (u8)(data[1] >> 8);
            status->triggerRight = (u8)(data[1] >> 0);

            status->analogA = 0;
            status->analogB = 0;
            break;
        }
        case 0x00000400: {
            status->substickX = (s8)(data[1] >> 24);
            status->substickY = (s8)(data[1] >> 16);

            status->triggerLeft = 0;
            status->triggerRight = 0;

            status->analogA = (u8)(data[1] >> 8);
            status->analogB = (u8)(data[1] >> 0);
            break;
        }
    }

    status->stickX -= 128;
    status->stickY -= 128;

    status->substickX -= 128;
    status->substickY -= 128;

    if (((Type[chan] & (0xFFFF0000)) == SI_GC_CONTROLLER) && ((status->button & 0x80) ^ 0x80)) {
        BarrelBits |= (PAD_CHAN0_BIT >> chan);
        status->stickX = 0;
        status->stickY = 0;
        status->substickX = 0;
        status->substickY = 0;
        return;
    }
    else {
        BarrelBits &= ~(PAD_CHAN0_BIT >> chan);
    }

    origin = &Origin[chan];

    status->stickX          = ClampS8(status->stickX, origin->stickX);
    status->stickY          = ClampS8(status->stickY, origin->stickY);

    status->substickX       = ClampS8(status->substickX, origin->substickX);
    status->substickY       = ClampS8(status->substickY, origin->substickY);

    status->triggerLeft     = ClampU8(status->triggerLeft, origin->triggerLeft);
    status->triggerRight    = ClampU8(status->triggerRight, origin->triggerRight);

    if (__abs(SQ(status->stickX)        - SQ(pre_status[chan].stickX))          >= 9 
     || __abs(SQ(status->stickY)        - SQ(pre_status[chan].stickY))          >= 9
     || __abs(SQ(status->substickX)     - SQ(pre_status[chan].substickX))       >= 9
     || __abs(SQ(status->substickY)     - SQ(pre_status[chan].substickY))       >= 9
     || __abs(SQ(status->triggerLeft)   - SQ(pre_status[chan].triggerLeft))     >= 9
     || __abs(SQ(status->triggerRight)  - SQ(pre_status[chan].triggerRight))    >= 9
     || status->button != pre_status[chan].button) {
        __VIResetSIIdle();
    }

    memcpy(&pre_status[chan], status, sizeof(PADStatus));
}


BOOL PADSync() {
    return ResettingBits == 0 && (s32)ResettingChan == 32 && !SIBusy();
}

static void (*SamplingCallback)();
PADSamplingCallback PADSetSamplingCallback(PADSamplingCallback callback);

static BOOL OnShutdown(BOOL final, u32 code) {
    BOOL sync;
    static BOOL recalibrated = FALSE;

    if (SamplingCallback)
        PADSetSamplingCallback(NULL);

    if (!final) {
        sync = PADSync();
        if (!recalibrated && sync) {
            recalibrated = PADRecalibrate(PAD_CHAN0_BIT | PAD_CHAN1_BIT | PAD_CHAN2_BIT | PAD_CHAN3_BIT);
            return FALSE;
        }
        return sync;
    }
    else {
        recalibrated = FALSE;
    }

    return TRUE;
}

static void SamplingHandler(__OSInterrupt interrupt, OSContext* context) {
    OSContext exceptionContext;

    if (SamplingCallback) {
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);
        SamplingCallback();
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
}

PADSamplingCallback PADSetSamplingCallback(PADSamplingCallback callback) {
    PADSamplingCallback prev;

    prev = SamplingCallback;
    SamplingCallback = callback;
    if (callback) {
        SIRegisterPollingHandler(SamplingHandler);
    }
    else {
        SIUnregisterPollingHandler(SamplingHandler);
    }

    return prev;
}

BOOL __PADDisableRecalibration(BOOL disable) {
    BOOL enabled;
    BOOL prev;

    enabled = OSDisableInterrupts();
    prev = (__OSPADButton & 0x40) ? TRUE : FALSE;
    __OSPADButton &= ~0x40;
    if (disable) {
        __OSPADButton |= 0x40;
    }

    OSRestoreInterrupts(enabled);
    return prev;
}
