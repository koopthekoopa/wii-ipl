#include <revolution/verdefs.h>

SDKDefineVersion(VI, "Apr 20 2010", "11:20:54");

#include <private/vi.h>
#include <revolution/vi.h>

#include <revolution/sc.h>

#include <private/gx.h>
#include <revolution/gx.h>

#include <private/os.h>
#include <revolution/os.h>

#include <private/si.h>

#include <private/dvd.h>

#include <private/hollywood.h>
#include <private/reg_fields.h>

typedef struct {
    u8 equ;
    u16 acv;
    u16 prbOdd;
    u16 prbEven;
    u16 psbOdd;
    u16 psbEven;
    u8 bs1;
    u8 bs2;
    u8 bs3;
    u8 bs4;
    u16 be1;
    u16 be2;
    u16 be3;
    u16 be4;
    u16 nhlines;
    u16 hlw;
    u8 hsy;
    u8 hcs;
    u8 hce;
    u8 hbe640;
    u16 hbs640;
    u8 hbeCCIR656;
    u16 hbsCCIR656;
} VITiming;

typedef struct {
    u16 DispPosX;
    u16 DispPosY;
    u16 DispSizeX;
    u16 DispSizeY;
    u16 AdjustedDispPosX;
    u16 AdjustedDispPosY;
    u16 AdjustedDispSizeY;
    u16 AdjustedPanPosY;
    u16 AdjustedPanSizeY;
    u16 FBSizeX;
    u16 FBSizeY;
    u16 PanPosX;
    u16 PanPosY;
    u16 PanSizeX;
    u16 PanSizeY;
    VIXFBMode FBMode;
    u32 nonInter;
    u32 tv;
    u8 wordPerLine;
    u8 std;
    u8 wpl;
    u32 bufAddr;
    u32 tfbb;
    u32 bfbb;
    u8 xof;
    BOOL black;
    BOOL threeD;
    u32 rbufAddr;
    u32 rtfbb;
    u32 rbfbb;
    VITiming* timing;
} SomeVIStruct;

enum {
    DIMMING_STATE_OFF = 0,
    DIMMING_STATE_ON,
};

static BOOL IsInitialized = FALSE;
static volatile s32 vsync_timing_err_cnt = 0;
static volatile BOOL vsync_timing_test_flag = 0;
static volatile BOOL __VIDimming_All_Clear = 0;
static volatile u32 THD_TIME_TO_DIMMING = 0;
static volatile u32 NEW_TIME_TO_DIMMING = 0;
static volatile u32 THD_TIME_TO_DVD_STOP = 0;
static volatile u32 _gIdleCount_dimming = 0;
static volatile u32 _gIdleCount_dvd = 0;
static volatile s32 __VIDimmingState = DIMMING_STATE_OFF;
static void (*PositionCallback)(s16, s16) = NULL;
static s16 displayOffsetH = 0;
static s16 displayOffsetV = 0;
static volatile u32 changeMode = 0;
static volatile u64 changed = 0;
static volatile u32 shdwChangeMode = 0;
static volatile u64 shdwChanged = 0;
static u32 FBSet = FALSE;
static VITiming* timingExtra = NULL;
static volatile u32 retraceCount;
static volatile u32 flushFlag;
static volatile u32 flushFlag3in1;
static volatile BOOL __VIDimmingFlag_Enable;
static volatile BOOL __VIDVDStopFlag_Enable;
static volatile s32 g_current_time_to_dim;
static volatile BOOL __VIDimmingFlag_RF_IDLE;
static volatile BOOL __VIDimmingFlag_SI_IDLE;
static OSThreadQueue retraceQueue;
static void (*PreCB)(u32);
static void (*PostCB)(u32);
static u32 encoderType;
static VITiming* CurrTiming;
static u32 CurrTvMode;
static u32 NextBufAddr;
static u32 CurrBufAddr;

static u16 regs[59];
static volatile BOOL __VIDimmingFlag_DEV_IDLE[10];
static SomeVIStruct HorVer;
static volatile u16 shdwRegs[59];

#define MARK_CHANGED(index) (changed |= (u64)1 << (63 - (index)))

static VITiming timing[11] = {{6, 240, 24, 25, 3, 2, 12, 13, 12, 13, 520, 519, 520, 519, 525, 429, 64, 71, 105, 162, 373, 122, 412},
                              {6, 240, 24, 24, 4, 4, 12, 12, 12, 12, 520, 520, 520, 520, 526, 429, 64, 71, 105, 162, 373, 122, 412},
                              {5, 287, 35, 36, 1, 0, 13, 12, 11, 10, 619, 618, 617, 620, 625, 432, 64, 75, 106, 172, 380, 133, 420},
                              {5, 287, 33, 33, 2, 2, 13, 11, 13, 11, 619, 621, 619, 621, 624, 432, 64, 75, 106, 172, 380, 133, 420},
                              {6, 240, 24, 25, 3, 2, 16, 15, 14, 13, 518, 517, 516, 519, 525, 429, 64, 78, 112, 162, 373, 122, 412},
                              {6, 240, 24, 24, 4, 4, 16, 14, 16, 14, 518, 520, 518, 520, 526, 429, 64, 78, 112, 162, 373, 122, 412},
                              {12, 480, 48, 48, 6, 6, 24, 24, 24, 24, 1038, 1038, 1038, 1038, 1050, 429, 64, 71, 105, 162, 373, 122, 412},
                              {12, 480, 44, 44, 10, 10, 24, 24, 24, 24, 1038, 1038, 1038, 1038, 1050, 429, 64, 71, 105, 168, 379, 122, 412},
                              {6, 241, 24, 25, 1, 0, 12, 13, 12, 13, 520, 519, 520, 519, 525, 429, 64, 71, 105, 159, 370, 122, 412},
                              {12, 480, 48, 48, 6, 6, 24, 24, 24, 24, 1038, 1038, 1038, 1038, 1050, 429, 64, 71, 105, 180, 391, 122, 412},
                              {10, 576, 62, 62, 6, 6, 20, 20, 20, 20, 1240, 1240, 1240, 1240, 1250, 432, 64, 75, 106, 172, 380, 122, 412}};

static u16 taps[25] = {0x01F0, 0x01DC, 0x01AE, 0x0174, 0x0129, 0x00DB, 0x008E, 0x0046, 0x000C, 0x00E2, 0x00CB, 0x00C0, 0x00C4,
                       0x00CF, 0x00DE, 0x00EC, 0x00FC, 0x0008, 0x000F, 0x0013, 0x0013, 0x000F, 0x000C, 0x0008, 0x0001};

GXRenderModeObj GXPal528Prog = {VI_TVMODE_PAL_PROG,
                                640,
                                528,
                                528,
                                40,
                                23,
                                640,
                                528,
                                VI_XFBMODE_SF,
                                0,
                                0,
                                {6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6},
                                {0, 0, 21, 22, 21, 0, 0}};

GXRenderModeObj GXPal528ProgSoft = {VI_TVMODE_PAL_PROG,
                                    640,
                                    528,
                                    528,
                                    40,
                                    23,
                                    640,
                                    528,
                                    VI_XFBMODE_SF,
                                    0,
                                    0,
                                    {6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6},
                                    {8, 8, 10, 12, 10, 8, 8}};

GXRenderModeObj GXPal524ProgAa = {VI_TVMODE_PAL_PROG,
                                  640,
                                  264,
                                  524,
                                  40,
                                  23,
                                  640,
                                  524,
                                  VI_XFBMODE_SF,
                                  0,
                                  1,
                                  {3, 2, 9, 6, 3, 10, 3, 2, 9, 6, 3, 10, 9, 2, 3, 6, 9, 10, 9, 2, 3, 6, 9, 10},
                                  {4, 8, 12, 16, 12, 8, 4}};

static u32 getCurrentFieldEvenOdd();
VITiming* __VISetExtraTiming(VITiming* t);
void __VIEnableRawPositionInterrupt(s16 x, s16 y, void (*callback)(s16, s16));
void (*__VIDisableRawPositionInterrupt())(s16, s16);
void __VIDisplayPositionToXY(u32 hct, u32 vct, s16* x, s16* y);
void __VISetLatchMode(u32 mode);
BOOL __VIGetLatch0Position(s16* px, s16* py);
BOOL __VIGetLatch1Position(s16* px, s16* py);
BOOL __VIGetLatchPosition(u32 port, s16* px, s16* py);
static void GetCurrentDisplayPosition(u32* hct, u32* vct);
static BOOL OnShutdown(BOOL final, u32 type);

static OSShutdownFunctionInfo ShutdownFunctionInfo = {OnShutdown, 127, NULL, NULL};

static u32 getEncoderType() {
    return 1;
}

static BOOL OnShutdown(BOOL final, u32 type) {
    BOOL result;
    static BOOL first = TRUE;
    static u32 count;

    if (final == FALSE) {
        switch (type) {
            case 3:
            case 1:
            case 2: {
                if (first) {
                    VISetRGBModeImm();
                    VIFlush();
                    count = retraceCount;
                    first = FALSE;
                    result = FALSE;
                } else {
                    if (count == retraceCount) {
                        result = FALSE;
                    } else {
                        result = TRUE;
                    }
                }
                break;
            }
            case 4:
            case 0:
            case 6:
            case 5: {
                result = TRUE;
                break;
            }
        }
    } else {
        result = TRUE;
    }

    return result;
}

static s32 cntlzd(u64 bit) {
    u32 hi;
    u32 lo;
    s32 value;

    hi = bit >> 32;
    lo = bit & 0xFFFFFFFF;
    value = __cntlzw(hi);
    if (value < 32) {
        return value;
    }
    return __cntlzw(lo) + 32;
}

static BOOL VISetRegs() {
    s32 regIndex;

    if (shdwChangeMode != 1 || getCurrentFieldEvenOdd() != 0) {
        while (shdwChanged != 0) {
            regIndex = cntlzd(shdwChanged);
            __VIRegs[regIndex] = shdwRegs[regIndex];
            shdwChanged &= ~((u64)1 << (63 - regIndex));
        }

        shdwChangeMode = 0;
        CurrTiming = HorVer.timing;
        CurrTvMode = HorVer.tv;
        CurrBufAddr = NextBufAddr;
        return TRUE;
    }

    return FALSE;
}

static void __VIRetraceHandler(__OSInterrupt unused, OSContext* context) {
#if DEBUG
    static u32 dbgCount;
#endif

    OSContext exceptionContext;
    u16 reg;
    u32 inter = 0;
    u32 value;
    static u32 old_dtvStatus = 999;
    static u32 old_tvtype = 999;
    u32 dtvStatus = 0;
    u32 tvtype = 0;
    static BOOL __VIDimmingFlag_Enable_old = TRUE;
    static BOOL __VIDVDStopFlag_Enable_old = TRUE;
    u32 i;
    static BOOL DimmingON_Pending = FALSE;
    static BOOL DimmingOFF_Pending = FALSE;

    reg = __VIRegs[VI_DISPLAY_INTERRUPT_0];
    if (reg & 0x8000) {
        __VIRegs[VI_DISPLAY_INTERRUPT_0] = reg & ~0x8000;
        inter |= 1;
    }
    reg = __VIRegs[VI_DISPLAY_INTERRUPT_1];
    if (reg & 0x8000) {
        __VIRegs[VI_DISPLAY_INTERRUPT_1] = reg & ~0x8000;
        inter |= 2;
    }
    reg = __VIRegs[VI_DISPLAY_INTERRUPT_2];
    if (reg & 0x8000) {
        __VIRegs[VI_DISPLAY_INTERRUPT_2] = reg & ~0x8000;
        inter |= 4;
    }
    reg = __VIRegs[VI_DISPLAY_INTERRUPT_3];
    if (reg & 0x8000) {
        __VIRegs[VI_DISPLAY_INTERRUPT_3] = reg & ~0x8000;
        inter |= 8;
    }
    reg = __VIRegs[VI_DISPLAY_INTERRUPT_3];

    if ((inter & 4) || (inter & 8)) {
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);

        if (PositionCallback) {
            s16 x, y;
            __VIGetCurrentPosition(&x, &y);
            PositionCallback(x, y);
        }

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
        return;
    }

    if (inter == 0) {
        ASSERTLINE(1350, FALSE);
    }

    retraceCount++;
    OSClearContext(&exceptionContext);
    OSSetCurrentContext(&exceptionContext);

    if (PreCB) {
        PreCB(retraceCount);
    }

    if (vsync_timing_test_flag) {
        u32 hct, vct;
        GetCurrentDisplayPosition(&hct, &vct);
        if (vct != 1) {
            if (vct != CurrTiming->nhlines / 2 + 1) {
                vsync_timing_err_cnt++;
            }
        }
    }

    if (flushFlag) {
#if DEBUG
        dbgCount = 0;
#endif
        if (VISetRegs()) {
            flushFlag = FALSE;
            SIRefreshSamplingRate();
        }
    }

    dtvStatus = VIGetDTVStatus();
    if (dtvStatus != old_dtvStatus) {
        __VISetYUVSEL(dtvStatus);
    }

    old_dtvStatus = dtvStatus;
    tvtype = VIGetTvFormat();
    if (tvtype != (u32)old_tvtype) {
        if (tvtype == VI_EURGB60) {
            __VISetFilter4EURGB60(TRUE);
        } else {
            __VISetFilter4EURGB60(FALSE);
        }
        switch (tvtype) {
            case VI_PAL: {
                switch (g_current_time_to_dim) {
                    case VI_DM_10M: {
                        NEW_TIME_TO_DIMMING = 30000;
                        break;
                    }
                    case VI_DM_15M: {
                        NEW_TIME_TO_DIMMING = 45000;
                        break;
                    }
                    default: {
                        NEW_TIME_TO_DIMMING = 15000;
                        break;
                    }
                }
                THD_TIME_TO_DVD_STOP = 90000;
                break;
            }
            default: {
                switch (g_current_time_to_dim) {
                    case VI_DM_10M: {
                        NEW_TIME_TO_DIMMING = 36000;
                        break;
                    }
                    case VI_DM_15M: {
                        NEW_TIME_TO_DIMMING = 54000;
                        break;
                    }
                    default: {
                        NEW_TIME_TO_DIMMING = 18000;
                        break;
                    }
                }
                THD_TIME_TO_DVD_STOP = 108000;
                break;
            }
        }

        _gIdleCount_dimming = 0;
        _gIdleCount_dvd = 0;
    }
    old_tvtype = tvtype;

    if (flushFlag3in1) {
        while (Vdac_Flag_Changed) {
            value = (u32)__cntlzw(Vdac_Flag_Changed);
            value = (u32)(1 << (31 - value));

            switch (value) {
                case 1: {
                    __VISetCGMS();
                    break;
                }
                case 2: {
                    __VISetWSS();
                    break;
                }
                case 4: {
                    __VISetClosedCaption();
                    break;
                }
                case 8: {
                    __VISetMacrovision();
                    break;
                }
                case 0x10: {
                    __VISetGamma();
                    break;
                }
                case 0x20: {
                    __VISetTrapFilter();
                    break;
                }
                case 0x40: {
                    __VISetRGBOverDrive();
                    break;
                }
                case 0x80: {
                    __VISetRGBModeImm();
                    break;
                }
            }

            Vdac_Flag_Changed &= ~value;
        }

        flushFlag3in1 = FALSE;
    }
#if DEBUG
    else if (changed) {
        dbgCount++;
        if (dbgCount > 60) {
            OSReport("Warning: VIFlush() was not called for 60 frames although VI settings were changed\n");
            dbgCount = 0;
        }
    }
#endif

    if (PostCB) {
        OSClearContext(&exceptionContext);
        PostCB(retraceCount);
    }

    OSWakeupThread(&retraceQueue);
    OSClearContext(&exceptionContext);
    OSSetCurrentContext(context);

    /* DIMMING LOGIC */

    if (__VIDimming_All_Clear == TRUE && (__OSSetVIForceDimming(0, 0, 0) == TRUE)) {
        __VIDimming_All_Clear = FALSE;
        _gIdleCount_dimming = 0;
    }

    for (i = 0; i < ARRAY_LENGTH(__VIDimmingFlag_DEV_IDLE); i++) {
        if (!__VIDimmingFlag_DEV_IDLE[i]) {
            __VIDimmingFlag_DEV_IDLE[0] = FALSE;
            break;
        }
    }

    if (__VIDimmingFlag_RF_IDLE && __VIDimmingFlag_SI_IDLE && __VIDimmingFlag_DEV_IDLE[0]) {
        if (__VIDimmingFlag_Enable == TRUE && _gIdleCount_dimming < -1) {
            _gIdleCount_dimming++;
        }
        if (__VIDVDStopFlag_Enable == TRUE && _gIdleCount_dvd < -1) {
            _gIdleCount_dvd++;
        }
    } else {
        if (_gIdleCount_dimming >= THD_TIME_TO_DIMMING) {
            DimmingOFF_Pending = TRUE;
        }
        if (_gIdleCount_dvd >= THD_TIME_TO_DVD_STOP) {
            __DVDRestartMotor();
        }
        _gIdleCount_dimming = 0;
        _gIdleCount_dvd = 0;
        THD_TIME_TO_DIMMING = NEW_TIME_TO_DIMMING;
    }

    if (__VIDimmingFlag_Enable_old != __VIDimmingFlag_Enable) {
        if (!__VIDimmingFlag_Enable && _gIdleCount_dimming >= THD_TIME_TO_DIMMING) {
            DimmingOFF_Pending = TRUE;
        }
        _gIdleCount_dimming = 0;
        THD_TIME_TO_DIMMING = NEW_TIME_TO_DIMMING;
    }
    if (_gIdleCount_dimming == THD_TIME_TO_DIMMING) {
        DimmingON_Pending = TRUE;
    }
    if (DimmingOFF_Pending && __OSSetVIForceDimming(0, 2, 2) == TRUE) {
        DimmingOFF_Pending = FALSE;
        __VIDimmingState = DIMMING_STATE_OFF;
    }
    if (DimmingON_Pending && __OSSetVIForceDimming(1, 2, 2) == TRUE) {
        DimmingON_Pending = FALSE;
        __VIDimmingState = DIMMING_STATE_ON;
    }
    if (__VIDVDStopFlag_Enable_old != __VIDVDStopFlag_Enable) {
        if (!__VIDVDStopFlag_Enable && _gIdleCount_dvd >= THD_TIME_TO_DVD_STOP) {
            __DVDRestartMotor();
        }
        _gIdleCount_dvd = 0;
    }
    if (_gIdleCount_dvd == THD_TIME_TO_DVD_STOP) {
        __DVDStopMotorAsync(&__DVDStopMotorCommandBlock, NULL);
    }
    __VIDimmingFlag_RF_IDLE = TRUE;
    __VIDimmingFlag_SI_IDLE = TRUE;

    for (i = 0; i < ARRAY_LENGTH(__VIDimmingFlag_DEV_IDLE); i++) {
        __VIDimmingFlag_DEV_IDLE[i] = TRUE;
    }

    __VIDimmingFlag_Enable_old = __VIDimmingFlag_Enable;
    __VIDVDStopFlag_Enable_old = __VIDVDStopFlag_Enable;

    if (NEW_TIME_TO_DIMMING > _gIdleCount_dimming && __VIDimmingState == DIMMING_STATE_OFF) {
        THD_TIME_TO_DIMMING = NEW_TIME_TO_DIMMING;
    }
}

VIRetraceCallback VISetPreRetraceCallback(VIRetraceCallback cb) {
    BOOL enabled;
    VIRetraceCallback oldcb;

    oldcb = PreCB;
    enabled = OSDisableInterrupts();
    PreCB = cb;
    OSRestoreInterrupts(enabled);
    return oldcb;
}

VIRetraceCallback VISetPostRetraceCallback(VIRetraceCallback cb) {
    BOOL enabled;
    VIRetraceCallback oldcb;

    oldcb = PostCB;
    enabled = OSDisableInterrupts();
    PostCB = cb;
    OSRestoreInterrupts(enabled);
    return oldcb;
}

VITiming* __VISetExtraTiming(VITiming* t) {
    VITiming* old = timingExtra;

    timingExtra = t;
    return old;
}

static VITiming* getTiming(VITVMode mode) {
    switch (mode) {
        case VI_TVMODE_NTSC_INT: {
            return timing;
        }
        case VI_TVMODE_NTSC_DS: {
            return &timing[1];
        }
        case VI_TVMODE_PAL_INT: {
            return &timing[2];
        }
        case VI_TVMODE_PAL_DS: {
            return &timing[3];
        }
        case VI_TVMODE_EURGB60_INT: {
            return timing;
        }
        case VI_TVMODE_EURGB60_DS: {
            return &timing[1];
        }
        case VI_TVMODE_MPAL_INT: {
            return &timing[4];
        }
        case VI_TVMODE_MPAL_DS: {
            return &timing[5];
        }
        case VI_TVMODE_NTSC_PROG:
        case VI_TVMODE_MPAL_PROG:
        case VI_TVMODE_EURGB60_PROG: {
            return &timing[6];
        }
        case 3: {
            return &timing[7];
        }
        case VI_TVMODE_DEBUG_PAL_INT: {
            return &timing[2];
        }
        case VI_TVMODE_DEBUG_PAL_DS: {
            return &timing[3];
        }
        case 24: {
            return &timing[8];
        }
        case 26: {
            return &timing[9];
        }
        case VI_TVMODE_PAL_PROG: {
            return &timing[10];
        }
        case 28:
        case 29:
        case 30:
        case 34: {
            return timingExtra;
        }
        default: {
            return NULL;
        }
    }
}

void __VIInit(VITVMode mode) {
    VITiming* tm;
    u32 nonInter;
    u32 tv;
    u32 tvForReg;
    volatile u32 a;
    u16 hct;
    u16 vct;

    nonInter = mode & 3;
    tv = (u32)mode >> 2;
    *(u32*)OSPhysicalToCached(OS_ADDR_TV_VIDEO_FORMAT) = tv;

    tm = getTiming(mode);
    __VIRegs[VI_DISPLAY_CONFIG] = 2;

    // why?
    for (a = 0; a < 1000; a++) {
    }

    // Setup the VI registers
    __VIRegs[VI_DISPLAY_CONFIG] = 0;
    __VIRegs[VI_HORIZONTAL_TIME0 + 1] = (u32)tm->hlw;
    __VIRegs[VI_HORIZONTAL_TIME0] = tm->hce | (tm->hcs << 8);
    __VIRegs[VI_HORIZONTAL_TIME1 + 1] = tm->hsy | ((tm->hbe640 & 0x1FF) << 7);
    __VIRegs[VI_HORIZONTAL_TIME1] = (tm->hbe640 >> 9) | ((tm->hbs640) << 1);
    if (encoderType == 0) {
        __VIRegs[VI_HBE_BORDER] = tm->hbeCCIR656 | 0x8000;
        __VIRegs[VI_HBS_BORDER] = (u32)tm->hbsCCIR656;
    }
    __VIRegs[VI_VERTICAL_TIME] = (u32)tm->equ;
    __VIRegs[VI_VERTICAL_TIME_ODD_FIELD + 1] = (u32)(tm->prbOdd + (tm->acv * 2) - 2);
    __VIRegs[VI_VERTICAL_TIME_ODD_FIELD] = (u32)(tm->psbOdd + 2);
    __VIRegs[VI_VERTICAL_TIME_EVEN_FIELD + 1] = (u32)(tm->prbEven + (tm->acv * 2) - 2);
    __VIRegs[VI_VERTICAL_TIME_EVEN_FIELD] = (u32)(tm->psbEven + 2);
    __VIRegs[VI_BURST_BLANK_ODD_FIELD + 1] = tm->bs1 | (tm->be1 << 5);
    __VIRegs[VI_BURST_BLANK_ODD_FIELD] = tm->bs3 | (tm->be3 << 5);
    __VIRegs[VI_BURST_BLANK_EVEN_FIELD + 1] = tm->bs2 | (tm->be2 << 5);
    __VIRegs[VI_BURST_BLANK_EVEN_FIELD] = tm->bs4 | (tm->be4 << 5);
    __VIRegs[VI_SCALE_WIDTH] = 10280;
    __VIRegs[VI_DISPLAY_INTERRUPT_1 + 1] = 1;
    __VIRegs[VI_DISPLAY_INTERRUPT_1] = 0x1001;
    hct = tm->hlw + 1;
    vct = (tm->nhlines / 2) + 1;
    __VIRegs[VI_DISPLAY_INTERRUPT_0 + 1] = (u16)(u32)hct;
    __VIRegs[VI_DISPLAY_INTERRUPT_0] = vct | 0x1000;

    // what is the point of this??
    switch (tv) {
        case VI_PAL:
        case VI_MPAL:
        case VI_DEBUG: {
            tvForReg = tv;
            break;
        }
        default: {
            tvForReg = VI_NTSC;
        }
    }

    if (nonInter == VI_INTERLACE || nonInter == VI_NON_INTERLACE) {
        __VIRegs[VI_DISPLAY_CONFIG] = ((nonInter & 1) << 2) | 1 | (tvForReg << 8);
        __VIRegs[VI_CLOCK_SELECT] = 0;
        return;
    }

    __VIRegs[VI_DISPLAY_CONFIG] = (tvForReg << 8) | 5;
    __VIRegs[VI_CLOCK_SELECT] = 1;
}

#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define CLAMP(val, min, max) ((val) > (max) ? (max) : (val) < (min) ? (min) : (val))

static void AdjustPosition(u16 acv) {
    s32 coeff;
    s32 frac;

    HorVer.AdjustedDispPosX = CLAMP((s16)HorVer.DispPosX + displayOffsetH, 0, 720 - HorVer.DispSizeX);
    coeff = (HorVer.FBMode == VI_XFBMODE_SF) ? 2 : 1;
    frac = HorVer.DispPosY & 1;
    HorVer.AdjustedDispPosY = MAX((s16)HorVer.DispPosY + displayOffsetV, frac);
    HorVer.AdjustedDispSizeY = HorVer.DispSizeY + MIN((s16)HorVer.DispPosY + displayOffsetV - frac, 0) -
                               MAX((s16)HorVer.DispPosY + (s16)HorVer.DispSizeY + displayOffsetV - (((s16)acv * 2) - frac), 0);
    HorVer.AdjustedPanPosY = HorVer.PanPosY - (MIN((s16)HorVer.DispPosY + displayOffsetV - frac, 0) / coeff);
    HorVer.AdjustedPanSizeY = HorVer.PanSizeY + (MIN((s16)HorVer.DispPosY + displayOffsetV - frac, 0) / coeff) -
                              (MAX((s16)HorVer.DispPosY + (s16)HorVer.DispSizeY + displayOffsetV - (((s16)acv * 2) - frac), 0) / coeff);
}

static void ImportAdjustingValues() {
    displayOffsetH = SCGetDisplayOffsetH();
    displayOffsetV = 0;
}

void VIInit() {
    u16 dspCfg;
    u32 value;
    u32 tv;
    u32 tvInBootrom;

    if (IsInitialized) {
        return;
    }

    OSRegisterVersion(GetVersion(VI));
    IsInitialized = TRUE;

    if (!(__VIRegs[VI_DISPLAY_CONFIG] & 1)) {
        __VIInit(VI_TVMODE_NTSC_INT);
    }

    retraceCount = 0;
    changed = 0;
    shdwChanged = 0;
    changeMode = 0;
    shdwChangeMode = 0;
    flushFlag = FALSE;
    flushFlag3in1 = FALSE;

    __VIRegs[VI_FILTER_TABLE_0 + 1] = taps[0] | ((taps[1] & 0x3F) << 10);
    __VIRegs[VI_FILTER_TABLE_0] = (taps[1] >> 6) | (taps[2] << 4);
    __VIRegs[VI_FILTER_TABLE_1 + 1] = taps[3] | ((taps[4] & 0x3F) << 10);
    __VIRegs[VI_FILTER_TABLE_1] = (taps[4] >> 6) | (taps[5] << 4);
    __VIRegs[VI_FILTER_TABLE_2 + 1] = taps[6] | ((taps[7] & 0x3F) << 10);
    __VIRegs[VI_FILTER_TABLE_2] = (taps[7] >> 6) | (taps[8] << 4);
    __VIRegs[VI_FILTER_TABLE_3 + 1] = taps[9] | (taps[10] << 8);
    __VIRegs[VI_FILTER_TABLE_3] = taps[11] | (taps[12] << 8);
    __VIRegs[VI_FILTER_TABLE_4 + 1] = taps[13] | (taps[14] << 8);
    __VIRegs[VI_FILTER_TABLE_4] = taps[15] | (taps[16] << 8);
    __VIRegs[VI_FILTER_TABLE_5 + 1] = taps[17] | (taps[18] << 8);
    __VIRegs[VI_FILTER_TABLE_5] = taps[19] | (taps[20] << 8);
    __VIRegs[VI_FILTER_TABLE_6 + 1] = taps[21] | (taps[22] << 8);
    __VIRegs[VI_FILTER_TABLE_6] = taps[23] | (taps[24] << 8);
    __VIRegs[VI_PAN_SIZE_X] = 0x280;
    ImportAdjustingValues();

    tvInBootrom = *(u32*)OSPhysicalToCached(OS_ADDR_TV_VIDEO_FORMAT);
    dspCfg = __VIRegs[VI_DISPLAY_CONFIG];
    HorVer.nonInter = VIGetScanMode();
    HorVer.tv = ((u32)dspCfg & 0x300) >> 8;

    if (tvInBootrom == VI_EURGB60 || (tvInBootrom == VI_PAL && HorVer.tv == VI_NTSC)) {
        HorVer.tv = VI_EURGB60;
    }

    tv = (HorVer.tv == VI_DEBUG) ? 0 : HorVer.tv;
    HorVer.timing = getTiming((tv << 2) + HorVer.nonInter);
    regs[VI_DISPLAY_CONFIG] = dspCfg;

    CurrTiming = HorVer.timing;
    CurrTvMode = HorVer.tv;

    HorVer.DispSizeX = 640;
    HorVer.DispSizeY = CurrTiming->acv * 2;
    HorVer.DispPosX = (720 - HorVer.DispSizeX) / 2;
    HorVer.DispPosY = 0;
    AdjustPosition(CurrTiming->acv);
    HorVer.FBSizeX = 640;
    HorVer.FBSizeY = CurrTiming->acv * 2;
    HorVer.PanPosX = 0;
    HorVer.PanPosY = 0;
    HorVer.PanSizeX = 640;
    HorVer.PanSizeY = CurrTiming->acv * 2;
    HorVer.FBMode = 0;

    HorVer.wordPerLine = 40;
    HorVer.std = 40;
    HorVer.wpl = 40;
    HorVer.xof = 0;
    HorVer.black = 1;
    HorVer.threeD = 0;
    OSInitThreadQueue(&retraceQueue);
    value = __VIRegs[VI_DISPLAY_INTERRUPT_0];
    value &= ~0x8000;
#if !DEBUG
    value = (u16)value;
#endif
    __VIRegs[VI_DISPLAY_INTERRUPT_0] = value;
    value = __VIRegs[VI_DISPLAY_INTERRUPT_1];
    value = value & ~0x8000;
#if !DEBUG
    value = (u16)value;
#endif
    __VIRegs[VI_DISPLAY_INTERRUPT_1] = value;

    PreCB = NULL;
    PostCB = NULL;

    __OSSetInterruptHandler(__OS_INTERRUPT_PI_VI, __VIRetraceHandler);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_VI);

    OSRegisterShutdownFunction(&ShutdownFunctionInfo);

    switch (VIGetTvFormat()) {
        case VI_PAL: {
            THD_TIME_TO_DIMMING = 15000;
            NEW_TIME_TO_DIMMING = 15000;
            THD_TIME_TO_DVD_STOP = 90000;
            break;
        }
        default: {
            THD_TIME_TO_DIMMING = 18000;
            NEW_TIME_TO_DIMMING = 18000;
            THD_TIME_TO_DVD_STOP = 108000;
            break;
        }
    }

    _gIdleCount_dimming = 0;
    _gIdleCount_dvd = 0;

    g_current_time_to_dim = VI_DM_DEFAULT;

    __VIDimming_All_Clear = TRUE;
    __VIDimmingState = DIMMING_STATE_OFF;

    VIEnableDimming(TRUE);
    VIEnableDVDStopMotor(FALSE);

    __VISetRevolutionModeSimple();
}

void VIWaitForRetrace() {
    BOOL enabled;
    u32 count;

    enabled = OSDisableInterrupts();
    count = retraceCount;
    do {
        OSSleepThread(&retraceQueue);
    } while (count == retraceCount);
    OSRestoreInterrupts(enabled);
}

static void setInterruptRegs(VITiming* tm) {
#if DEBUG
    u16 vct, hct;
#else
    u16 hct, vct;
#endif
    u16 borrow;

    vct = tm->nhlines / 2;
    borrow = tm->nhlines % 2;
    hct = borrow ? tm->hlw : 0;
    vct++;
    hct++;
    regs[VI_DISPLAY_INTERRUPT_0 + 1] = (u16)(u32)hct;
    MARK_CHANGED(VI_DISPLAY_INTERRUPT_0 + 1);
    regs[VI_DISPLAY_INTERRUPT_0] = vct | 0x1000;
    MARK_CHANGED(VI_DISPLAY_INTERRUPT_0);

    (void)vct;  // fixes regalloc
}

static void setPicConfig(u16 fbSizeX, VIXFBMode xfbMode, u16 panPosX, u16 panSizeX, u8* wordPerLine, u8* std, u8* wpl, u8* xof) {
    *wordPerLine = (fbSizeX + 15) / 16;
    *std = (xfbMode == VI_XFBMODE_SF) ? *wordPerLine : (u8)(*wordPerLine * 2);
    *xof = panPosX % 16;
    *wpl = (*xof + panSizeX + 15) / 16;
    regs[VI_SCALE_WIDTH] = *std | (*wpl << 8);
    MARK_CHANGED(VI_SCALE_WIDTH);
}

static void setBBIntervalRegs(VITiming* tm) {
    u16 val;

    val = tm->bs1 | (tm->be1 << 5);
    regs[VI_BURST_BLANK_ODD_FIELD + 1] = val;
    MARK_CHANGED(VI_BURST_BLANK_ODD_FIELD + 1);

    val = tm->bs3 | (tm->be3 << 5);
    regs[VI_BURST_BLANK_ODD_FIELD] = val;
    MARK_CHANGED(VI_BURST_BLANK_ODD_FIELD);

    val = tm->bs2 | (tm->be2 << 5);
    regs[VI_BURST_BLANK_EVEN_FIELD + 1] = val;
    MARK_CHANGED(VI_BURST_BLANK_EVEN_FIELD + 1);

    val = tm->bs4 | (tm->be4 << 5);
    regs[VI_BURST_BLANK_EVEN_FIELD] = val;
    MARK_CHANGED(VI_BURST_BLANK_EVEN_FIELD);
}

static void setScalingRegs(u16 panSizeX, u16 dispSizeX, BOOL threeD) {
    u32 scale;

    panSizeX = threeD ? (panSizeX << 1) : panSizeX;
    if (panSizeX < dispSizeX) {
        scale = (u32)(dispSizeX + (panSizeX << 8) - 1) / dispSizeX;
        regs[VI_SCALE_WIDTH + 1] = scale | 0x1000;
        MARK_CHANGED(VI_SCALE_WIDTH + 1);
        regs[VI_PAN_SIZE_X] = (u32)panSizeX;
        MARK_CHANGED(VI_PAN_SIZE_X);
    } else {
        regs[VI_SCALE_WIDTH + 1] = 0x100;
        MARK_CHANGED(VI_SCALE_WIDTH + 1);
    }
}

static void calcFbbs(u32 bufAddr, u16 panPosX, u16 panPosY, u8 wordPerLine, VIXFBMode xfbMode, u16 dispPosY, u32* tfbb, u32* bfbb) {
    u32 bytesPerLine;
    u32 xoffInWords;

    xoffInWords = (u32)panPosX / 16;
    bytesPerLine = wordPerLine * 32;
    *tfbb = bufAddr + (xoffInWords << 5) + (bytesPerLine * panPosY);
    *bfbb = (xfbMode == VI_XFBMODE_SF) ? *tfbb : *tfbb + bytesPerLine;
    if (dispPosY % 2 == 1) {
        u32 tmp;
        tmp = *tfbb;
        *tfbb = *bfbb;
        *bfbb = tmp;
    }
    *tfbb &= 0x3FFFFFFF;
    *bfbb &= 0x3FFFFFFF;
}

static void setFbbRegs(SomeVIStruct* HorVer, u32* tfbb, u32* bfbb, u32* rtfbb, u32* rbfbb) {
    u32 shifted;

    calcFbbs(HorVer->bufAddr, HorVer->PanPosX, HorVer->AdjustedPanPosY, HorVer->wordPerLine, HorVer->FBMode, HorVer->AdjustedDispPosY, tfbb, bfbb);
    if (HorVer->threeD) {
        calcFbbs(HorVer->rbufAddr, HorVer->PanPosX, HorVer->AdjustedPanPosY, HorVer->wordPerLine, HorVer->FBMode, HorVer->AdjustedDispPosY, rtfbb,
                 rbfbb);
    }

    if (*tfbb < 0x01000000U && *bfbb < 0x01000000U && *rtfbb < 0x01000000U && *rbfbb < 0x01000000U) {
        shifted = FALSE;
    } else {
        shifted = TRUE;
    }

    if (shifted) {
        *tfbb >>= 5;
        *bfbb >>= 5;
        *rtfbb >>= 5;
        *rbfbb >>= 5;
    }

    regs[VI_TOP_FIELD_BASE_L + 1] = *tfbb & 0xFFFF;
    MARK_CHANGED(VI_TOP_FIELD_BASE_L + 1);
    regs[VI_TOP_FIELD_BASE_L] = (shifted << 12) | ((*tfbb >> 16) | (HorVer->xof << 8));
    MARK_CHANGED(VI_TOP_FIELD_BASE_L);
    regs[VI_BOTTOM_FIELD_BASE_L + 1] = *bfbb & 0xFFFF;
    MARK_CHANGED(VI_BOTTOM_FIELD_BASE_L + 1);
    regs[VI_BOTTOM_FIELD_BASE_L] = (*bfbb >> 16);
    MARK_CHANGED(VI_BOTTOM_FIELD_BASE_L);

    if (HorVer->threeD) {
        regs[VI_TOP_FIELD_BASE_R + 1] = *rtfbb & 0xFFFF;
        MARK_CHANGED(VI_TOP_FIELD_BASE_R + 1);
        regs[VI_TOP_FIELD_BASE_R] = *rtfbb >> 16;
        MARK_CHANGED(VI_TOP_FIELD_BASE_R);
        regs[VI_BOTTOM_FIELD_BASE_R + 1] = *rbfbb & 0xFFFF;
        MARK_CHANGED(VI_BOTTOM_FIELD_BASE_R + 1);
        regs[VI_BOTTOM_FIELD_BASE_R] = *rbfbb >> 16;
        MARK_CHANGED(VI_BOTTOM_FIELD_BASE_R);
    }
}

static void setHorizontalRegs(VITiming* tm, u16 dispPosX, u16 dispSizeX) {
    u32 hbe;
    u32 hbs;
    u32 hbeLo;
    u32 hbeHi;

    regs[VI_HORIZONTAL_TIME0 + 1] = (u16)(u32)tm->hlw;
    MARK_CHANGED(VI_HORIZONTAL_TIME0 + 1);
    regs[VI_HORIZONTAL_TIME0] = tm->hce | (tm->hcs << 8);
    MARK_CHANGED(VI_HORIZONTAL_TIME0);
    if (HorVer.tv == 8) {
        hbe = tm->hbe640 + 172;
        hbs = tm->hbs640;
    } else {
        hbe = tm->hbe640 - 40 + dispPosX;
        hbs = tm->hbs640 + 40 + dispPosX - (720 - dispSizeX);
    }
    hbeLo = hbe & 0x1FF;
    hbeHi = hbe >> 9;
    regs[VI_HORIZONTAL_TIME1 + 1] = tm->hsy | (hbeLo << 7);
    MARK_CHANGED(VI_HORIZONTAL_TIME1 + 1);
    regs[VI_HORIZONTAL_TIME1] = hbeHi | (hbs * 2);
    MARK_CHANGED(VI_HORIZONTAL_TIME1);
}

static void setVerticalRegs(u16 dispPosY, u16 dispSizeY, u8 equ, u16 acv, u16 prbOdd, u16 prbEven, u16 psbOdd, u16 psbEven, BOOL black) {
    u16 actualPrbOdd;
    u16 actualPrbEven;
    u16 actualPsbOdd;
    u16 actualPsbEven;
    u16 actualAcv;
    u16 c;
    u16 d;

    if (HorVer.nonInter == 2 || HorVer.nonInter == 3) {
        c = 1;
        d = 2;
    } else {
        c = 2;
        d = 1;
    }

    if ((dispPosY % 2) == 0) {
        actualPrbOdd = prbOdd + (d * dispPosY);
        actualPsbOdd = psbOdd + (d * (((c * acv) - dispSizeY) - dispPosY));
        actualPrbEven = prbEven + (d * dispPosY);
        actualPsbEven = psbEven + (d * (((c * acv) - dispSizeY) - dispPosY));
    } else {
        actualPrbOdd = prbEven + (d * dispPosY);
        actualPsbOdd = psbEven + (d * (((c * acv) - dispSizeY) - dispPosY));
        actualPrbEven = prbOdd + (d * dispPosY);
        actualPsbEven = psbOdd + (d * (((c * acv) - dispSizeY) - dispPosY));
    }

    actualAcv = dispSizeY / c;

    if (black) {
        actualPrbOdd += 2 * actualAcv - 2;
        actualPsbOdd += 2;
        actualPrbEven += 2 * actualAcv - 2;
        actualPsbEven += 2;
        actualAcv = 0;
    }

    regs[VI_VERTICAL_TIME] = equ | (actualAcv << 4);
    MARK_CHANGED(VI_VERTICAL_TIME);
    regs[VI_VERTICAL_TIME_ODD_FIELD + 1] = (u16)(u32)actualPrbOdd;
    MARK_CHANGED(VI_VERTICAL_TIME_ODD_FIELD + 1);
    regs[VI_VERTICAL_TIME_ODD_FIELD] = (u16)(u32)actualPsbOdd;
    MARK_CHANGED(VI_VERTICAL_TIME_ODD_FIELD);
    regs[VI_VERTICAL_TIME_EVEN_FIELD + 1] = (u16)(u32)actualPrbEven;
    MARK_CHANGED(VI_VERTICAL_TIME_EVEN_FIELD + 1);
    regs[VI_VERTICAL_TIME_EVEN_FIELD] = (u16)(u32)actualPsbEven;
    MARK_CHANGED(VI_VERTICAL_TIME_EVEN_FIELD);
}

static void PrintDebugPalCaution() {
    static u32 message;

    if (message == FALSE) {
        message = TRUE;
        OSReport("***************************************\n");
        OSReport(" ! ! ! C A U T I O N ! ! !             \n");
        OSReport("This TV format \"DEBUG_PAL\" is only for \n");
        OSReport("temporary solution until PAL DAC board \n");
        OSReport("is available. Please do NOT use this   \n");
        OSReport("mode in real games!!!                  \n");
        OSReport("***************************************\n");
    }
}

void VIConfigure(const GXRenderModeObj* rm) {
    VITiming* tm;
    u32 regDspCfg;
    u32 regClksel;
    BOOL enabled;
    u32 newNonInter;
    u32 tvInBootrom;
    u32 tvInGame;

    enabled = OSDisableInterrupts();
    newNonInter = rm->viTVmode & 3;

    if (HorVer.nonInter != newNonInter) {
        changeMode = 1;
        HorVer.nonInter = newNonInter;
    }

#ifdef DEBUG
    if (rm->viHeight & 1) {
        OSHaltLine(2617, "VIConfigure(): Odd number(%d) is specified to viHeight\n", rm->viHeight);
    }
#endif

#ifdef DEBUG
    if ((rm->xFBmode == VI_XFBMODE_DF || newNonInter == VI_TVMODE_NTSC_PROG || newNonInter == 3) && rm->xfbHeight != rm->viHeight) {
        OSHaltLine(2624, "VIConfigure(): xfbHeight(%d) is not equal to viHeight(%d) when DF XFB mode or progressive mode is specified\n",
                   rm->xfbHeight, rm->viHeight);
    }

    if ((rm->xFBmode == VI_XFBMODE_SF && newNonInter != VI_TVMODE_NTSC_PROG && newNonInter != 3) && rm->viHeight != rm->xfbHeight * 2) {
        OSHaltLine(2632, "VIConfigure(): xfbHeight(%d) is not as twice as viHeight(%d) when SF XFB mode is specified\n", rm->xfbHeight, rm->viHeight);
    }
#endif

    tvInGame = (u32)rm->viTVmode >> 2;
    tvInBootrom = *(u32*)OSPhysicalToCached(OS_ADDR_TV_VIDEO_FORMAT);

    if (tvInGame == VI_DEBUG_PAL) {
        PrintDebugPalCaution();
    }

    if ((tvInBootrom != VI_PAL && tvInBootrom != VI_EURGB60 && (tvInGame == VI_PAL || tvInGame == VI_EURGB60)) ||
        ((tvInBootrom == VI_PAL || tvInBootrom == VI_EURGB60) && tvInGame != VI_PAL && tvInGame != VI_EURGB60)) {
        OSPanic(__FILE__, 2647, "VIConfigure(): Tried to change mode from (%d) to (%d), which is forbidden\n", tvInBootrom, tvInGame);
    }

    if ((tvInGame == VI_NTSC) || (tvInGame == VI_MPAL)) {
        HorVer.tv = tvInBootrom;
    } else {
        HorVer.tv = tvInGame;
    }

    HorVer.DispPosX = rm->viXOrigin;
    HorVer.DispPosY = (HorVer.nonInter == 1) ? (u16)(rm->viYOrigin * 2) : rm->viYOrigin;
    HorVer.DispSizeX = rm->viWidth;
    HorVer.FBSizeX = rm->fbWidth;
    HorVer.FBSizeY = rm->xfbHeight;
    HorVer.FBMode = rm->xFBmode;
    HorVer.PanSizeX = HorVer.FBSizeX;
    HorVer.PanSizeY = HorVer.FBSizeY;
    HorVer.PanPosX = 0;
    HorVer.PanPosY = 0;
    HorVer.DispSizeY = (HorVer.nonInter == 2)           ? HorVer.PanSizeY :
                       (HorVer.nonInter == 3)           ? HorVer.PanSizeY :
                       (HorVer.FBMode == VI_XFBMODE_SF) ? (u16)(HorVer.PanSizeY * 2) :
                                                          HorVer.PanSizeY;
    HorVer.threeD = (HorVer.nonInter == 3) ? TRUE : FALSE;

    tm = getTiming((HorVer.tv << 2) + HorVer.nonInter);
    HorVer.timing = tm;

    AdjustPosition(tm->acv);

#ifdef DEBUG
    if (rm->viXOrigin > tm->hlw + 40 - tm->hbe640) {
        OSHaltLine(2694, "VIConfigure(): viXOrigin(%d) cannot be greater than %d in this TV mode\n", rm->viXOrigin, tm->hlw + 40 - tm->hbe640);
    }
    if (rm->viXOrigin + rm->viWidth < 680 - tm->hbs640) {
        OSHaltLine(2699, "VIConfigure(): viXOrigin + viWidth (%d) cannot be less than %d in this TV mode\n", rm->viXOrigin + rm->viWidth,
                   680 - tm->hbs640);
    }
#endif

    setInterruptRegs(tm);

    regDspCfg = regs[VI_DISPLAY_CONFIG];
    regClksel = regs[VI_CLOCK_SELECT];
    if (HorVer.nonInter == VI_PROGRESSIVE || HorVer.nonInter == 3) {
        regDspCfg = (((u32)(regDspCfg)) & ~0x00000004) | (((u32)(1)) << 2);
        if (HorVer.tv == 8) {
            regClksel = (((u32)(regClksel)) & ~0x00000001) | 0;
        } else {
            regClksel = (((u32)(regClksel)) & ~0x00000001) | (((u32)(1)) << 0);
        }
    } else {
        OLD_GX_SET_REG_FIELD(regDspCfg, 1, 2, HorVer.nonInter & 1);
        regClksel = (((u32)(regClksel)) & ~0x00000001);
    }

    OLD_GX_SET_REG_FIELD(regDspCfg, 1, 3, HorVer.threeD);

    if ((HorVer.tv == VI_PAL) || (HorVer.tv == VI_MPAL) || (HorVer.tv == 3)) {
        OLD_GX_SET_REG_FIELD(regDspCfg, 2, 8, HorVer.tv);
    } else {
        regDspCfg = (((u32)(regDspCfg)) & ~0x00000300);
    }

    regs[VI_DISPLAY_CONFIG] = regDspCfg;
    regs[VI_CLOCK_SELECT] = (u16)regClksel;

    MARK_CHANGED(VI_DISPLAY_CONFIG);
    MARK_CHANGED(VI_CLOCK_SELECT);

    setScalingRegs(HorVer.PanSizeX, HorVer.DispSizeX, HorVer.threeD);
    setHorizontalRegs(tm, HorVer.AdjustedDispPosX, HorVer.DispSizeX);
    setBBIntervalRegs(tm);
    setPicConfig(HorVer.FBSizeX, HorVer.FBMode, HorVer.PanPosX, HorVer.PanSizeX, &HorVer.wordPerLine, &HorVer.std, &HorVer.wpl, &HorVer.xof);
    if (FBSet) {
        setFbbRegs(&HorVer, &HorVer.tfbb, &HorVer.bfbb, &HorVer.rtfbb, &HorVer.rbfbb);
    }
    setVerticalRegs(HorVer.AdjustedDispPosY, HorVer.AdjustedDispSizeY, tm->equ, tm->acv, tm->prbOdd, tm->prbEven, tm->psbOdd, tm->psbEven,
                    HorVer.black);
    OSRestoreInterrupts(enabled);
}

void VIConfigurePan(u16 xOrg, u16 yOrg, u16 width, u16 height) {
    BOOL enabled;
    VITiming* tm;

#if DEBUG
    if ((xOrg & 1)) {
        OSHaltLine(2788, "VIConfigurePan(): Odd number(%d) is specified to xOrg\n", xOrg);
    }
    if (HorVer.FBMode == VI_XFBMODE_DF && (height & 1)) {
        OSHaltLine(2793, "VIConfigurePan(): Odd number(%d) is specified to height when DF XFB mode\n", height);
    }
#endif
    enabled = OSDisableInterrupts();
    HorVer.PanPosX = xOrg;
    HorVer.PanPosY = yOrg;
    HorVer.PanSizeX = width;
    HorVer.PanSizeY = height;
    HorVer.DispSizeY = (HorVer.nonInter == 2)           ? HorVer.PanSizeY :
                       (HorVer.nonInter == 3)           ? HorVer.PanSizeY :
                       (HorVer.FBMode == VI_XFBMODE_SF) ? (u16)(HorVer.PanSizeY * 2) :
                                                          HorVer.PanSizeY;
    tm = HorVer.timing;
    AdjustPosition(tm->acv);
    setScalingRegs(HorVer.PanSizeX, HorVer.DispSizeX, HorVer.threeD);
    setPicConfig(HorVer.FBSizeX, HorVer.FBMode, HorVer.PanPosX, HorVer.PanSizeX, &HorVer.wordPerLine, &HorVer.std, &HorVer.wpl, &HorVer.xof);
    if (FBSet) {
        setFbbRegs(&HorVer, &HorVer.tfbb, &HorVer.bfbb, &HorVer.rtfbb, &HorVer.rbfbb);
    }
    setVerticalRegs(HorVer.AdjustedDispPosY, HorVer.DispSizeY, tm->equ, tm->acv, tm->prbOdd, tm->prbEven, tm->psbOdd, tm->psbEven, HorVer.black);
    OSRestoreInterrupts(enabled);
}

void VIFlush() {
    BOOL enabled;
    s32 regIndex;

    enabled = OSDisableInterrupts();
    shdwChangeMode |= changeMode;
    changeMode = 0;
    shdwChanged |= changed;

    while (changed != 0) {
        regIndex = cntlzd(changed);
        shdwRegs[regIndex] = regs[regIndex];
        changed &= ~((u64)1 << (63 - regIndex));
    }

    flushFlag = 1;
    flushFlag3in1 = 1;
    NextBufAddr = HorVer.bufAddr;
    OSRestoreInterrupts(enabled);
}

void VISetNextFrameBuffer(void* fb) {
    BOOL enabled;

#ifdef DEBUG
    if (!IS_ALIGNED(fb, 32)) {
        OSHaltLine(2886, "VISetNextFrameBuffer(): Frame buffer address(0x%08x) is not 32byte aligned\n", fb);
    }
#endif
    enabled = OSDisableInterrupts();
    HorVer.bufAddr = (u32)fb;
    FBSet = TRUE;
    setFbbRegs(&HorVer, &HorVer.tfbb, &HorVer.bfbb, &HorVer.rtfbb, &HorVer.rbfbb);
    OSRestoreInterrupts(enabled);
}

void* VIGetNextFrameBuffer() {
    return *(void**)(&NextBufAddr);
}

void* VIGetCurrentFrameBuffer() {
    return *(void**)(&CurrBufAddr);
}

void VISetNextRightFrameBuffer(void* fb) {
    BOOL enabled;

#ifdef DEBUG
    if (!IS_ALIGNED(fb, 32)) {
        OSHaltLine(2954, "VISetNextFrameBuffer(): Frame buffer address(0x%08x) is not 32byte aligned\n", fb);
    }
#endif
    enabled = OSDisableInterrupts();
    HorVer.rbufAddr = (u32)fb;
    FBSet = TRUE;
    setFbbRegs(&HorVer, &HorVer.tfbb, &HorVer.bfbb, &HorVer.rtfbb, &HorVer.rbfbb);
    OSRestoreInterrupts(enabled);
}

void VISetBlack(BOOL black) {
    BOOL enabled;
    VITiming* tm;

    enabled = OSDisableInterrupts();
    HorVer.black = black;
    tm = HorVer.timing;
    setVerticalRegs(HorVer.AdjustedDispPosY, HorVer.DispSizeY, tm->equ, tm->acv, tm->prbOdd, tm->prbEven, tm->psbOdd, tm->psbEven, HorVer.black);
    OSRestoreInterrupts(enabled);
}

void VISet3D(BOOL threeD) {
    BOOL enabled;
    u32 reg;

    enabled = OSDisableInterrupts();
    HorVer.threeD = threeD;
    reg = regs[VI_DISPLAY_CONFIG];
    OLD_GX_SET_REG_FIELD(reg, 1, 3, HorVer.threeD);
    regs[VI_DISPLAY_CONFIG] = reg;
    MARK_CHANGED(VI_DISPLAY_CONFIG);
    setScalingRegs(HorVer.PanSizeX, HorVer.DispSizeX, HorVer.threeD);
    OSRestoreInterrupts(enabled);
}

u32 VIGetRetraceCount() {
    return retraceCount;
}

static void GetCurrentDisplayPosition(u32* hct, u32* vct) {
    u32 hcount, vcount0, vcount;
    vcount = __VIRegs[VI_VERTICAL_POSITION] & 0x7FF;

    do {
        vcount0 = vcount;
        hcount = __VIRegs[VI_HORIZONTAL_POSITION] & 0x7FF;
        vcount = __VIRegs[VI_VERTICAL_POSITION] & 0x7FF;
    } while (vcount0 != vcount);

    *hct = hcount;
    *vct = vcount;
}

static u32 getCurrentHalfLine() {
    u32 hcount, vcount;
    GetCurrentDisplayPosition(&hcount, &vcount);

    return ((vcount - 1) << 1) + ((hcount - 1) / CurrTiming->hlw);
}

static u32 getCurrentFieldEvenOdd() {
    return (getCurrentHalfLine() < CurrTiming->nhlines) ? 1 : 0;
}

u32 VIGetNextField() {
    s32 nextField;
    BOOL enabled;
#if !DEBUG
    u8 unused[4];
#endif

    enabled = OSDisableInterrupts();
    nextField = getCurrentFieldEvenOdd() ^ 1;
    OSRestoreInterrupts(enabled);
    return nextField ^ (HorVer.AdjustedDispPosY & 1);
}

u32 VIGetCurrentLine() {
    u32 halfLine;
    VITiming* tm;
    BOOL enabled;

    tm = CurrTiming;
    enabled = OSDisableInterrupts();
    halfLine = getCurrentHalfLine();
    OSRestoreInterrupts(enabled);
    if (halfLine >= tm->nhlines) {
        halfLine -= tm->nhlines;
    }
    return halfLine >> 1U;
}

u32 VIGetTvFormat() {
    u32 format;
    BOOL enabled;

    enabled = OSDisableInterrupts();

    switch (CurrTvMode) {
        case VI_NTSC:
        case VI_DEBUG:
        case 6:
        case 7:
        case 8: {
            format = VI_NTSC;
            break;
        }
        case VI_PAL:
        case VI_DEBUG_PAL: {
            format = VI_PAL;
            break;
        }
        case VI_EURGB60:
        case VI_MPAL: {
            format = CurrTvMode;
            break;
        }
        default: {
            ASSERTLINE(3198, FALSE);
        }
    }

    OSRestoreInterrupts(enabled);
    return format;
}

u32 VIGetScanMode() {
    u32 scanMode;
    BOOL enabled = OSDisableInterrupts();

    if ((u32)(__VIRegs[VI_CLOCK_SELECT] & 1) == 1) {
        scanMode = VI_PROGRESSIVE;
    } else if (!((u32)(__VIRegs[VI_DISPLAY_CONFIG] & (1 << 2)) / 4)) {
        scanMode = VI_INTERLACE;
    } else {
        scanMode = VI_NON_INTERLACE;
    }

    OSRestoreInterrupts(enabled);
    return scanMode;
}

u32 VIGetDTVStatus() {
    u32 dtvStatus;
    BOOL enabled = OSDisableInterrupts();

    dtvStatus = __VIRegs[VI_DTV_STATUS] & 3;
    OSRestoreInterrupts(enabled);
    return dtvStatus & 1;
}

void __VISetAdjustingValues(s16 x, s16 y) {
    BOOL enabled;
    VITiming* tm;

    ASSERTMSGLINE(3283, (y & 1) == 0, "__VISetAdjustValues(): y offset should be an even number");
    enabled = OSDisableInterrupts();
    displayOffsetH = x;
    displayOffsetV = y;
    tm = HorVer.timing;
    AdjustPosition(tm->acv);
    setHorizontalRegs(tm, HorVer.AdjustedDispPosX, HorVer.DispSizeX);
    if (FBSet) {
        setFbbRegs(&HorVer, &HorVer.tfbb, &HorVer.bfbb, &HorVer.rtfbb, &HorVer.rbfbb);
    }
    setVerticalRegs(HorVer.AdjustedDispPosY, HorVer.AdjustedDispSizeY, tm->equ, tm->acv, tm->prbOdd, tm->prbEven, tm->psbOdd, tm->psbEven,
                    HorVer.black);
    OSRestoreInterrupts(enabled);
}

void __VIGetAdjustingValues(s16* x, s16* y) {
    BOOL enabled;

    enabled = OSDisableInterrupts();
    *x = displayOffsetH;
    *y = displayOffsetV;
    OSRestoreInterrupts(enabled);
}

void __VIEnableRawPositionInterrupt(s16 x, s16 y, void (*callback)(s16, s16)) {
    BOOL enabled;
    u32 halfLine;
    u32 halfLineOff;

    enabled = OSDisableInterrupts();
    __VIRegs[VI_DISPLAY_INTERRUPT_2 + 1] = x + 1U;
    __VIRegs[VI_DISPLAY_INTERRUPT_3 + 1] = x + 1U;

    if (HorVer.nonInter == 0) {
        if (y & 1) {
            halfLineOff = CurrTiming->prbEven + ((CurrTiming->equ * 3) + CurrTiming->nhlines);
            __VIRegs[VI_DISPLAY_INTERRUPT_3] = (((halfLineOff / 2) + (y / 2)) + 1) | 0x1000;
        } else {
            halfLineOff = CurrTiming->prbOdd + (CurrTiming->equ * 3);
            __VIRegs[VI_DISPLAY_INTERRUPT_2] = (((halfLineOff / 2) + (y / 2)) + 1) | 0x1000;
        }
    } else if (HorVer.nonInter == 1) {
        ASSERTLINE(3374, (y & 1) == 0);
        halfLine = CurrTiming->prbOdd + ((CurrTiming->equ * 3)) + y;
        __VIRegs[VI_DISPLAY_INTERRUPT_2] = ((halfLine / 2) + 1) | 0x1000;
        __VIRegs[VI_DISPLAY_INTERRUPT_3] = (((halfLine + CurrTiming->nhlines) / 2) + 1) | 0x1000;
    } else if (HorVer.nonInter == 2) {
        halfLine = CurrTiming->prbOdd + ((CurrTiming->equ * 3)) + y;
        __VIRegs[VI_DISPLAY_INTERRUPT_2] = (halfLine + 1) | 0x1000;
        __VIRegs[VI_DISPLAY_INTERRUPT_3] = 0;
    }

    PositionCallback = callback;
    OSRestoreInterrupts(enabled);
}

void (*__VIDisableRawPositionInterrupt())(s16, s16) {
    BOOL enabled;
    void (*old)(s16, s16);

    enabled = OSDisableInterrupts();
    __VIRegs[VI_DISPLAY_INTERRUPT_2] = 0;
    __VIRegs[VI_DISPLAY_INTERRUPT_3] = 0;

    old = PositionCallback;
    PositionCallback = NULL;
    OSRestoreInterrupts(enabled);
    return old;
}

void __VIDisplayPositionToXY(u32 hct, u32 vct, s16* x, s16* y) {
    u32 halfLine = ((vct - 1) << 1) + ((hct - 1) / CurrTiming->hlw);

    if (HorVer.nonInter == VI_INTERLACE) {
        if (halfLine < CurrTiming->nhlines) {
            if (halfLine < CurrTiming->equ * 3 + CurrTiming->prbOdd) {
                *y = -1;
            } else if (halfLine >= CurrTiming->nhlines - CurrTiming->psbOdd) {
                *y = -1;
            } else {
                *y = (s16)((halfLine - CurrTiming->equ * 3 - CurrTiming->prbOdd) & ~1);
            }
        } else {
            halfLine -= CurrTiming->nhlines;

            if (halfLine < CurrTiming->equ * 3 + CurrTiming->prbEven) {
                *y = -1;
            } else if (halfLine >= CurrTiming->nhlines - CurrTiming->psbEven) {
                *y = -1;
            } else {
                *y = (s16)(((halfLine - CurrTiming->equ * 3 - CurrTiming->prbEven) & ~1) + 1);
            }
        }
    } else if (HorVer.nonInter == VI_NON_INTERLACE) {
        if (halfLine >= CurrTiming->nhlines) {
            halfLine -= CurrTiming->nhlines;
        }

        if (halfLine < CurrTiming->equ * 3 + CurrTiming->prbOdd) {
            *y = -1;
        } else if (halfLine >= CurrTiming->nhlines - CurrTiming->psbOdd) {
            *y = -1;
        } else {
            *y = (s16)((halfLine - CurrTiming->equ * 3 - CurrTiming->prbOdd) & ~1);
        }
    } else if (HorVer.nonInter == VI_PROGRESSIVE) {
        if (halfLine < CurrTiming->nhlines) {
            if (halfLine < CurrTiming->equ * 3 + CurrTiming->prbOdd) {
                *y = -1;
            } else if (halfLine >= CurrTiming->nhlines - CurrTiming->psbOdd) {
                *y = -1;
            } else {
                *y = (s16)(halfLine - CurrTiming->equ * 3 - CurrTiming->prbOdd);
            }
        } else {
            halfLine -= CurrTiming->nhlines;

            if (halfLine < CurrTiming->equ * 3 + CurrTiming->prbEven) {
                *y = -1;
            } else if (halfLine >= CurrTiming->nhlines - CurrTiming->psbEven) {
                *y = -1;
            } else {
                *y = (s16)((halfLine - CurrTiming->equ * 3 - CurrTiming->prbEven) & ~1);
            }
        }
    }

    *x = (s16)(hct - 1);
}

void __VIGetCurrentPosition(s16* x, s16* y) {
    u32 hcount, vcount;
    GetCurrentDisplayPosition(&hcount, &vcount);
    __VIDisplayPositionToXY(hcount, vcount, x, y);
}

void __VISetLatchMode(u32 mode) {
    u32 reg;

    reg = __VIRegs[VI_DISPLAY_CONFIG];
    OLD_GX_SET_REG_FIELD(reg, 2, 4, mode);
    OLD_GX_SET_REG_FIELD(reg, 2, 6, mode);
    __VIRegs[VI_DISPLAY_CONFIG] = reg;
}

BOOL __VIGetLatch0Position(s16* px, s16* py) {
    u32 hcount;
    u32 vcount;

    if (((u32)(__VIRegs[VI_DISPLAY_L_INTERRUPT_0] & 0x8000) / 0x8000) != 0) {
        vcount = __VIRegs[VI_DISPLAY_L_INTERRUPT_0] & 0x7FF;
        hcount = __VIRegs[VI_DISPLAY_L_INTERRUPT_0 + 1] & 0x7FF;
        __VIRegs[VI_DISPLAY_L_INTERRUPT_0] = 0;
        __VIRegs[VI_DISPLAY_L_INTERRUPT_0 + 1] = 0;
        __VIDisplayPositionToXY(hcount, vcount, px, py);
        return TRUE;
    }

    *px = *py = -1;
    return FALSE;
}

BOOL __VIGetLatch1Position(s16* px, s16* py) {
    u32 hcount;
    u32 vcount;

    if (((u32)(__VIRegs[VI_DISPLAY_L_INTERRUPT_1] & 0x8000) / 0x8000) != 0) {
        vcount = __VIRegs[VI_DISPLAY_L_INTERRUPT_1] & 0x7FF;
        hcount = __VIRegs[VI_DISPLAY_L_INTERRUPT_1 + 1] & 0x7FF;
        __VIRegs[VI_DISPLAY_L_INTERRUPT_1] = 0;
        __VIRegs[VI_DISPLAY_L_INTERRUPT_1 + 1] = 0;
        __VIDisplayPositionToXY(hcount, vcount, px, py);
        return TRUE;
    }

    *px = *py = -1;
    return FALSE;
}

BOOL __VIGetLatchPosition(u32 port, s16* px, s16* py) {
    return port == 0 ? __VIGetLatch0Position(px, py) : __VIGetLatch1Position(px, py);
}

s32 VIGetVSyncTimingTest() {
    vsync_timing_test_flag = FALSE;
    return vsync_timing_err_cnt;
}

void VISetVSyncTimingTest() {
    vsync_timing_err_cnt = 0;
    vsync_timing_test_flag = TRUE;
}

void __VIDisableDimming() {
}

BOOL __VISetAutoDimming() {
    return TRUE;
}

u32 __VISetDimmingCountLimit(u32 limit) {
    u32 old = THD_TIME_TO_DIMMING;
    THD_TIME_TO_DIMMING = limit;
    return old;
}

u32 __VISetDVDStopMotorCountLimit(u32 limit) {
    u32 old = THD_TIME_TO_DVD_STOP;
    THD_TIME_TO_DVD_STOP = limit;
    return old;
}

s32 VIGetDimmingCount() {
    s32 count;

    if (_gIdleCount_dimming >= THD_TIME_TO_DIMMING) {
        count = 0;
    } else {
        count = THD_TIME_TO_DIMMING - _gIdleCount_dimming;
    }
    return count;
}

s32 VIGetDVDStopMotorCount() {
    s32 count;

    if (_gIdleCount_dvd >= THD_TIME_TO_DVD_STOP) {
        count = 0;
    } else {
        count = THD_TIME_TO_DVD_STOP - _gIdleCount_dvd;
    }
    return count;
}

BOOL VIEnableDimming(BOOL flag) {
    u8 screenSaverMode;
    BOOL old;

    old = __VIDimmingFlag_Enable;
    if (flag == TRUE) {
        screenSaverMode = SCGetScreenSaverMode();
        if (screenSaverMode == SC_SCREEN_SAVER_MODE_OFF) {
            flag = FALSE;
        }
    }
    __VIDimmingFlag_Enable = flag;
    return old;
}

VITimeToDIM VISetTimeToDimming(VITimeToDIM time) {
    VITimeToDIM old = g_current_time_to_dim;
    g_current_time_to_dim = time;
    switch (VIGetTvFormat()) {
        case VI_PAL: {
            switch (g_current_time_to_dim) {
                case VI_DM_10M: {
                    NEW_TIME_TO_DIMMING = 30000;
                    break;
                }
                case VI_DM_15M: {
                    NEW_TIME_TO_DIMMING = 45000;
                    break;
                }
                default: {
                    NEW_TIME_TO_DIMMING = 15000;
                    break;
                }
            }
            break;
        }
        default: {
            switch (g_current_time_to_dim) {
                case VI_DM_10M: {
                    NEW_TIME_TO_DIMMING = 36000;
                    break;
                }
                case VI_DM_15M: {
                    NEW_TIME_TO_DIMMING = 54000;
                    break;
                }
                default: {
                    NEW_TIME_TO_DIMMING = 18000;
                    break;
                }
            }
        }
    }
    return old;
}

BOOL __VIResetDev0Idle();

BOOL VIResetDimmingCount() {
    __VIResetDev0Idle();
#ifndef DEBUG
    return TRUE;
#endif
}

BOOL VIEnableDVDStopMotor(BOOL flag) {
    BOOL old = __VIDVDStopFlag_Enable;
    __VIDVDStopFlag_Enable = flag;
    return old;
}

BOOL __VIResetRFIdle() {
    __VIDimmingFlag_RF_IDLE = FALSE;
    return TRUE;
}

BOOL __VIResetSIIdle() {
    __VIDimmingFlag_SI_IDLE = FALSE;
    return TRUE;
}

BOOL __VIResetDev0Idle() {
    __VIDimmingFlag_DEV_IDLE[0] = FALSE;
    return TRUE;
}

BOOL __VIResetDev1Idle() {
    __VIDimmingFlag_DEV_IDLE[1] = FALSE;
    return TRUE;
}

BOOL __VIResetDev2Idle() {
    __VIDimmingFlag_DEV_IDLE[2] = FALSE;
    return TRUE;
}

BOOL __VIResetDev3Idle() {
    __VIDimmingFlag_DEV_IDLE[3] = FALSE;
    return TRUE;
}

BOOL __VIResetDev4Idle() {
    __VIDimmingFlag_DEV_IDLE[4] = FALSE;
    return TRUE;
}

BOOL __VIResetDev5Idle() {
    __VIDimmingFlag_DEV_IDLE[5] = FALSE;
    return TRUE;
}

BOOL __VIResetDev6Idle() {
    __VIDimmingFlag_DEV_IDLE[6] = FALSE;
    return TRUE;
}

BOOL __VIResetDev7Idle() {
    __VIDimmingFlag_DEV_IDLE[7] = FALSE;
    return TRUE;
}

BOOL __VIResetDev8Idle() {
    __VIDimmingFlag_DEV_IDLE[8] = FALSE;
    return TRUE;
}

BOOL __VIResetDev9Idle() {
    __VIDimmingFlag_DEV_IDLE[9] = FALSE;
    return TRUE;
}
