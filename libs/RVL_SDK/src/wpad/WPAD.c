#include <private/ipc.h>

#include <revolution/os.h>
#include <private/os.h>

#include <revolution/sc.h>

#include <revolution/wpad.h>
#include <private/wpad.h>

#include <private/wud.h>

#include <private/vi.h>

#include <private/bte/btm_api.h>
#include <private/bte/btm_int.h>

#include <revolution/verdefs.h>

#include <string.h>

#include <private/hollywood.h>

#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))

#define DPD_CONFIG1_SIZE 9
#define DPD_CONFIG2_SIZE 2
#define SPK_CONFIG_SIZE 7

SDKDefineVersion(WPAD, "Apr 20 2010", "11:20:55");

WPADCB  _wpd[WPAD_MAX_CONTROLLERS];
WPADCB* _wpdcb[WPAD_MAX_CONTROLLERS];

u8      __WPADiManageHandlerStack[0x1000] ALIGN32;

s8      _dev_handle_index[WUD_MAX_DEV_ENTRY];
OSAlarm _managerAlarm;

u8          _sleepTime;
u8          _dpdSensitivity;
u8          _sensorBarPos;
u32         _rumble;
u8          _speakerVolume;
u8          _scFlush;
u8          _gametype;
const char* _gamecode;
u8          _chan_active_state[WPAD_MAX_CONTROLLERS];

static u8    _scSetting;
static u8   _shutdown;
static s8   _afhChannel;
static BOOL _initialized;
static int  _recFlag = -1;
static int  _recCnt;
static BOOL _startup;
static u8   _rumbleCnt[WPAD_MAX_CONTROLLERS];
static u8   _extCnt[WPAD_MAX_CONTROLLERS];
static u16  _afhCnt;
static u8   _checkCnt;
static u16  _senseCnt;
static u8   _regShutdown;

static u16  __WPAD_acc_diff_count_threshold = 6;
static u16  __WPAD_dpd_diff_count_threshold = 4;
static u16  __WPAD_acc_hyst_count_threshold = 30;
static u16  __WPAD_dpd_hyst_count_threshold = 30;

static void WPADiConnCallback(WUDDevInfo* devInfo, u8 open);
static void WPADiRecvCallback(UINT8 devHandle, UINT8* pReport, UINT16 len);

static inline void WPADiDisconnect(s32 chan, BOOL sleep);
static void __SendData(s32 chan, WPADCommand command);

BOOL __CanPushCmdQueue(const WPADCommandQueue* pQueue, s8 num);
s8 __GetCmdNumber(const WPADCommandQueue* pQueue);

static void __SetScreenSaverFlag(BOOL disable);
static u8 __GetDpdSensitivity();
static u8 __GetSensorBarPosition();
static u32 __GetMotorMode();
static u8 __ClampSpeakerVolume(u8 volume);
static u8 __GetSpeakerVolume();

u16 _WPADGetStackBufferStatus(s32 chan);
u16 _WPADGetModuleBufferStatus(s32 chan);

static void* noAlloc(u32 size) {
#pragma unused(size)
    DEBUGPrint("No Alloc: Nothing to do!!!\n");
    return NULL;
}

static BOOL noFree(void* pBlock) {
#pragma unused(pBlock)
    DEBUGPrint("No Free: Nothing to do!!!\n");
    return FALSE;
}

extern BOOL __OSIsReturnToIdle;

static BOOL OnShutdown(BOOL final, u32 event) {
    BOOL result = FALSE;
    WUDLibStatus status = WUDGetStatus();

    if (!final) {
        if (status == WUD_LIB_STATUS_3) {
            if (WUDIsBusy()) {
                WUDStopSyncSimple();
                result = FALSE;
            }
            else {
                switch (event) {
                    case OS_SHUTDOWN_FATAL: {
                        DEBUGPrint("Deregister allocators because of fatal error.\n");
                        WPADRegisterAllocator(&noAlloc, &noFree);
                    }
                    case OS_SHUTDOWN_STANDBY:
                    case OS_SHUTDOWN_3: {
                        __WPADShutdown();
                        result = FALSE;
                        break;
                    }
                    case OS_SHUTDOWN_RETURN_MENU: {
                        if (__OSIsReturnToIdle) {
                            __WPADShutdown();
                        }
                        else {
                            __WPADReconnect(TRUE);
                        }
                        result = FALSE;
                        break;
                    }
                    case OS_SHUTDOWN_RESTART_PRIVATE:
                    case OS_SHUTDOWN_RESTART: {
                        __WPADReconnect(TRUE);
                        result = FALSE;
                        break;
                    }
                    case OS_SHUTDOWN_LAUNCH: {
                        __WPADReconnect(TRUE);
                        result = FALSE;
                        break;
                    }
                }
            }
        }
        else if (status == WUD_LIB_STATUS_5) {
            WPADStopSimpleSync();
            result = FALSE;
        }
        else if (status == WUD_LIB_STATUS_4 || status == WUD_LIB_STATUS_1 || status == WUD_LIB_STATUS_2) {
            result = FALSE;
        }
        else if (status == WUD_LIB_STATUS_0) {
            result = TRUE;
        }
    }
    else {
        result = TRUE;
    }

_end:
    return result;
}

static OSShutdownFunctionInfo ShutdownFunctionInfo = {OnShutdown, 127};

static s32 WPADiSendData(s32 chan, WPADCommand command) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    s32 status;
    u8 statusReqBusy;

    enabled = OSDisableInterrupts();
    status = p->status;
    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_OK) {
        enabled = OSDisableInterrupts();
        statusReqBusy = p->statusReqBusy;
        OSRestoreInterrupts(enabled);

        if (statusReqBusy) {
            status = WPAD_ERR_COMMUNICATION_ERROR;
        }
        else {
            __SendData(chan, command);
        }
    }
    else if (status != WPAD_ERR_COMMUNICATION_ERROR && status == WPAD_ERR_TRANSFER) {
        enabled = OSDisableInterrupts();
        p->status = WPAD_ERR_OK;
        OSRestoreInterrupts(enabled);
    }

    if (status == WPAD_ERR_COMMUNICATION_ERROR) {
        if ((s32)OSTicksToSeconds(__OSGetSystemTime() - p->lastReportSendTime) > 1 && _sleepTime != 0) {
            if (!p->unk_0x910) {
                p->lastReportSendTime = __OSGetSystemTime();
                WPADiDisconnect(chan, FALSE);
            }
            else {
                enabled = OSDisableInterrupts();
                p->status = WPAD_ERR_TRANSFER;
                OSRestoreInterrupts(enabled);
            }
        }
    }

    return status;
}

static void WPADiRadioSensitivity(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    u32 two = 2; // some define?
    u16 a;

    a = p->radioSensitivity * 9;
    a += (u16)(p->copyOutCount * 100 / two);
    a /= 10;
    a = MIN(100, a);

    p->radioSensitivity = a;
    p->copyOutCount = 0;

    if (p->radioQuality != WPAD_RADIO_QUALITY_GOOD) {
        if (a > 85) {
            p->radioQuality = WPAD_RADIO_QUALITY_GOOD;
            p->radioQualityOkMs = 0;
        }
        else if (a > 80) {
            p->radioQualityOkMs++;

            if (p->radioQualityOkMs >= 20) {
                p->radioQuality = WPAD_RADIO_QUALITY_GOOD;
                p->radioQualityOkMs = 0;
            }
        }
    }
    else if (a < 75) {
        p->radioQuality = WPAD_RADIO_QUALITY_BAD;
        p->radioQualityOkMs = 0;
    }
    else if (a < 80) {
        p->radioQualityOkMs++;

        if (p->radioQualityOkMs >= 1) {
            p->radioQuality = WPAD_RADIO_QUALITY_BAD;
            p->radioQualityOkMs = 0;
        }
    }
}

static u8 IsButtonChanged(u16 lhs, u16 rhs) {
    return lhs != rhs ? TRUE : FALSE;
}

static u8 IsAnalogChanged(s32 lhs, s32 rhs, s32 threshold) {
    s32 diff = lhs - rhs < 0 ? rhs - lhs : lhs - rhs;
    return diff > threshold ? TRUE : FALSE;
}

static BOOL IsControllerDataChanged(WPADCB* p, void* pLhs, void* pRhs) {
    WPADStatus* pLhsCR = (WPADStatus*)pLhs;
    WPADStatus* pRhsCR = (WPADStatus*)pRhs;
    u8 devMode = p->devMode;
    BOOL analogChanged;
    u8 changed;
    int i;

#define CALC_ANALOG_NOISE_ACC(CHANGED)                                         \
    if (CHANGED) {                                                             \
        p->filterDiffAcc++;                                                    \
                                                                               \
        if (p->filterDiffAcc > __WPAD_acc_diff_count_threshold) {              \
            p->filterDiffAcc = 0;                                              \
            p->filterSameAcc = 0;                                              \
            changed |= TRUE;                                                   \
        }                                                                      \
                                                                               \
    }                                                                          \
    else {                                                                     \
        p->filterSameAcc =                                                     \
            (p->filterSameAcc + 1) % __WPAD_acc_hyst_count_threshold;          \
                                                                               \
        if (p->filterSameAcc == __WPAD_acc_hyst_count_threshold - 1 &&         \
            p->filterDiffAcc > 0) {                                            \
                                                                               \
            p->filterDiffAcc--;                                                \
        }                                                                      \
    }

#define CALC_ANALOG_NOISE_DPD(CHANGED)                                         \
    if (CHANGED) {                                                             \
        p->filterDiffDpd++;                                                    \
                                                                               \
        if (p->filterDiffDpd > __WPAD_dpd_diff_count_threshold) {              \
            p->filterDiffDpd = 0;                                              \
            changed |= TRUE;                                                   \
        }                                                                      \
                                                                               \
    }                                                                          \
    else {                                                                     \
        p->filterSameDpd =                                                     \
            (p->filterSameDpd + 1) % __WPAD_dpd_hyst_count_threshold;          \
                                                                               \
        if (p->filterSameDpd == __WPAD_dpd_hyst_count_threshold - 1 &&         \
            p->filterDiffDpd > 0) {                                            \
                                                                               \
            p->filterDiffDpd--;                                                \
        }                                                                      \
    }

#define CALC_ANALOG_NOISE_EXT(CHANGED)                                         \
    if (CHANGED) {                                                             \
        p->filterDiffExt++;                                                    \
                                                                               \
        if (p->filterDiffExt > __WPAD_acc_diff_count_threshold) {              \
            p->filterDiffExt = 0;                                              \
            p->filterSameExt = 0;                                              \
            changed |= TRUE;                                                   \
        }                                                                      \
                                                                               \
    }                                                                          \
    else {                                                                     \
        p->filterSameExt =                                                     \
            (p->filterSameExt + 1) % __WPAD_acc_hyst_count_threshold;          \
                                                                               \
        if (p->filterSameExt == __WPAD_acc_hyst_count_threshold - 1 &&         \
            p->filterDiffExt > 0) {                                            \
                                                                               \
            p->filterDiffExt--;                                                \
        }                                                                      \
    }

    if (p->dataFormat == WPAD_FMT_CORE_BTN || p->dataFormat == WPAD_FMT_CORE_BTN_ACC || p->dataFormat == WPAD_FMT_CORE_BTN_ACC_DPD) {
        changed = IsButtonChanged(pLhsCR->button, pRhsCR->button);

        if (pLhsCR->err == WPAD_ERR_OK && pRhsCR->err == WPAD_ERR_OK) {
            CALC_ANALOG_NOISE_ACC(IsAnalogChanged(pLhsCR->accX, pRhsCR->accX, 12) |
                                    IsAnalogChanged(pLhsCR->accY, pRhsCR->accY, 12) |
                                    IsAnalogChanged(pLhsCR->accZ, pRhsCR->accZ, 12));

            for (i = 0; i < WPAD_MAX_DPD_OBJECTS; i++) {
                CALC_ANALOG_NOISE_DPD(IsAnalogChanged(pLhsCR->obj[i].x, pRhsCR->obj[i].x, 2) |
                                        IsAnalogChanged(pLhsCR->obj[i].y, pRhsCR->obj[i].y, 2));
            }
        }
    }
    else if (p->dataFormat == WPAD_FMT_FS_BTN || p->dataFormat == WPAD_FMT_FS_BTN_ACC || p->dataFormat == WPAD_FMT_FS_BTN_ACC_DPD) {

        WPADFSStatus* pLhsFS = (WPADFSStatus*)pLhs;
        WPADFSStatus* pRhsFS = (WPADFSStatus*)pRhs;

        changed = IsButtonChanged(pLhsFS->button, pRhsFS->button);

        if (pLhsFS->err == WPAD_ERR_OK && pRhsFS->err == WPAD_ERR_OK) {
            CALC_ANALOG_NOISE_ACC(IsAnalogChanged(pLhsFS->accX, pRhsFS->accX, 12) |
                                IsAnalogChanged(pLhsFS->accY, pRhsFS->accY, 12) |
                                IsAnalogChanged(pLhsFS->accZ, pRhsFS->accZ, 12));

            for (i = 0; i < WPAD_MAX_DPD_OBJECTS; i++) {
                CALC_ANALOG_NOISE_DPD(IsAnalogChanged(pLhsFS->obj[i].x, pRhsFS->obj[i].x, 2) |
                                     IsAnalogChanged(pLhsFS->obj[i].y, pRhsFS->obj[i].y, 2));
            }

            CALC_ANALOG_NOISE_EXT(IsAnalogChanged(pLhsFS->fsAccX, pRhsFS->fsAccX, 12) |
                                IsAnalogChanged(pLhsFS->fsAccY, pRhsFS->fsAccY, 12) |
                                IsAnalogChanged(pLhsFS->fsAccZ, pRhsFS->fsAccZ, 12));

            changed |= IsAnalogChanged(pLhsFS->fsStickX, pRhsFS->fsStickX, 1);
            changed |= IsAnalogChanged(pLhsFS->fsStickY, pRhsFS->fsStickY, 1);
        }
    }
    else {
        if (p->dataFormat == WPAD_FMT_CLASSIC_BTN || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC_DPD) {

            WPADCLStatus* pLhsCL = (WPADCLStatus*)pLhs;
            WPADCLStatus* pRhsCL = (WPADCLStatus*)pRhs;

            s32 leftStickDiv;
            s32 rightStickDiv;
            s32 triggerDiv;
            switch (devMode) {
                case WPAD_DEV_MODE_CLASSIC_REDUCED: {
                    leftStickDiv = 16;
                    rightStickDiv = 32;
                    triggerDiv = 8;
                    break;
                }
                case WPAD_DEV_MODE_CLASSIC_STANDARD: {
                    leftStickDiv = 4;
                    rightStickDiv = 4;
                    triggerDiv = 1;
                    break;
                }
                default: {
                    leftStickDiv = 1;
                    rightStickDiv = 1;
                    triggerDiv = 1;
                    break;
                }
            }

            changed = IsButtonChanged(pLhsCL->button, pRhsCL->button);

            if (pLhsCL->err == WPAD_ERR_OK && pRhsCL->err == WPAD_ERR_OK) {
                CALC_ANALOG_NOISE_ACC(IsAnalogChanged(pLhsCL->accX, pRhsCL->accX, 12) |
                                    IsAnalogChanged(pLhsCL->accY, pRhsCL->accY, 12) |
                                    IsAnalogChanged(pLhsCL->accZ, pRhsCL->accZ, 12));

                for (i = 0; i < WPAD_MAX_DPD_OBJECTS; i++) {
                    CALC_ANALOG_NOISE_DPD(IsAnalogChanged(pLhsCL->obj[i].x, pRhsCL->obj[i].x, 2) |
                                        IsAnalogChanged(pLhsCL->obj[i].y, pRhsCL->obj[i].y, 2));
                }

                changed |= IsButtonChanged(pLhsCL->clButton, pRhsCL->clButton);

                changed |= IsAnalogChanged(pLhsCL->clLStickX / leftStickDiv,
                                           pRhsCL->clLStickX / leftStickDiv, 1);
                changed |= IsAnalogChanged(pLhsCL->clLStickY / leftStickDiv,
                                           pRhsCL->clLStickY / leftStickDiv, 1);

                changed |= IsAnalogChanged(pLhsCL->clRStickX / rightStickDiv,
                                            pRhsCL->clRStickX / rightStickDiv, 1);
                changed |= IsAnalogChanged(pLhsCL->clRStickY / rightStickDiv,
                                            pRhsCL->clRStickY / rightStickDiv, 1);

                changed |= IsAnalogChanged(pLhsCL->clTriggerL / triggerDiv,
                                           pRhsCL->clTriggerL / triggerDiv, 1);
                changed |= IsAnalogChanged(pLhsCL->clTriggerR / triggerDiv,
                                           pRhsCL->clTriggerR / triggerDiv, 1);
            }
        }
        else {
            changed = IsButtonChanged(pLhsCR->button, pRhsCR->button);

            if (pLhsCR->err == WPAD_ERR_OK && pRhsCR->err == WPAD_ERR_OK) {
                CALC_ANALOG_NOISE_ACC(IsAnalogChanged(pLhsCR->accX, pRhsCR->accX, 12) |
                                    IsAnalogChanged(pLhsCR->accY, pRhsCR->accY, 12) |
                                    IsAnalogChanged(pLhsCR->accZ, pRhsCR->accZ, 12));

                for (i = 0; i < WPAD_MAX_DPD_OBJECTS; i++) {
                    CALC_ANALOG_NOISE_DPD(IsAnalogChanged(pLhsCR->obj[i].x, pRhsCR->obj[i].x, 2) |
                                        IsAnalogChanged(pLhsCR->obj[i].y, pRhsCR->obj[i].y, 2));
                }
            }
        }
    }

    return changed;

#undef CALC_ANALOG_NOISE_EXT
#undef CALC_ANALOG_NOISE_ACC
#undef CALC_ANALOG_NOISE_DPD
}

static void CheckButtonCombination(s32 chan) {
    WPADCB* p = _wpdcb[chan];

    s8 pressed = -1;
    BOOL enabled = OSDisableInterrupts();

    u8 rxBufIndex = p->rxBufIndex != 0 ? 0 : 1;
    WPADStatus* pStatus = (WPADStatus*)p->rxBufs[rxBufIndex];

    if ((p->dataFormat == WPAD_FMT_FS_BTN || p->dataFormat == WPAD_FMT_FS_BTN_ACC || p->dataFormat == WPAD_FMT_FS_BTN_ACC_DPD) &&
        (pStatus->button == (WPAD_BUTTON_A | WPAD_BUTTON_B | WPAD_BUTTON_PLUS | WPAD_BUTTON_MINUS))) {

        pressed = 1;
    }

    if ((p->dataFormat == WPAD_FMT_CLASSIC_BTN || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC_DPD)) {

        WPADCLStatus* pStatusCL = (WPADCLStatus*)pStatus;

        if (pStatus->button == (WPAD_BUTTON_A | WPAD_BUTTON_B | WPAD_BUTTON_PLUS | WPAD_BUTTON_MINUS)) {
            pressed = 1;
        }

        if (pStatus->err != WPAD_ERR_OK) {
            pressed = 0;
        }
        else if (pStatusCL->clButton == (WPAD_BUTTON_CL_A | WPAD_BUTTON_CL_B | WPAD_BUTTON_CL_PLUS | WPAD_BUTTON_CL_MINUS)) {
            pressed = 1;
        }
    }

    if (pressed < 0) {
        p->comboHeld = 0;
    }
    else {
        p->comboHeld += pressed;
    }

    OSRestoreInterrupts(enabled);

    if (p->comboHeld > 600) {
        WPADRecalibrate(chan);
    }
}

static void WPADiCheckContInputs(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL changed = FALSE;
    BOOL screenSaver = FALSE;
    BOOL enabled;
    u8 rxBufIndex;
    WPADStatus* pStatus;
    WPADStatus* pStatusMain;

    if (p->status == WPAD_ERR_NO_CONTROLLER) {
        return;
    }

    enabled = OSDisableInterrupts();

    rxBufIndex = p->rxBufIndex != 0 ? 0 : 1;
    pStatus = (WPADStatus*)p->rxBufs[rxBufIndex];

    changed = IsControllerDataChanged(p, pStatus, p->rxBufMain);
    if (changed) {
        memcpy(p->rxBufMain, pStatus, RX_BUFFER_SIZE);
    }

    pStatusMain = (WPADStatus*)p->rxBufMain;
    if (pStatusMain->err != WPAD_ERR_OK) {
        memset(p->rxBufMain, 0, RX_BUFFER_SIZE);
    }

    OSRestoreInterrupts(enabled);

    CheckButtonCombination(chan);

    if (changed) {
        screenSaver = TRUE;
        p->lastControllerDataUpdate = __OSGetSystemTime();
    }
    else if (_sleepTime != 0) {
        s32 time = OSTicksToSeconds(__OSGetSystemTime() - p->lastControllerDataUpdate);
        if (time > _sleepTime * 60) {
            WPADiDisconnect(chan, TRUE);
        }
    }

    __SetScreenSaverFlag(screenSaver);
}

static BOOL WPADiProcessExtCommand(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    WPADCommand command;

    if (p->used) {
        if (WPADiGetCommand(&p->extCmdQueue, &command)) {
            if (command.reportID == RPTID_SET_DATA_REPORT_MODE || p->wpInfo.attach) {

                if (WPADiSendData(chan, command) == WPAD_ERR_OK) {
                    WPADiPopCommand(&p->extCmdQueue);
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

static BOOL WPADiProcessCommand(s32 chan, BOOL prevSuccess) {
    WPADCB* p = _wpdcb[chan];
    WPADCommand command;

    if (p->used) {
        if (WPADiGetCommand(&p->stdCmdQueue, &command) && WPADiSendData(chan, command) == WPAD_ERR_OK) {

            WPADiPopCommand(&p->stdCmdQueue);
            return TRUE;
        }
    }

    return FALSE;
}

static void WPADiContMapTableUpdate() {
    if (!_scFlush || SCCheckStatus() != SC_STATUS_OK) {
        return;
    }

    if (SCSetBtDeviceInfoArray(&_scArray) != TRUE) {
        return;
    }

    SCFlushAsync(NULL);

    _scFlush = FALSE;
}

static void WPADiGetScSettings() {
    if (!_scSetting || SCCheckStatus() != SC_STATUS_OK) {
        return;
    }

    _dpdSensitivity = __GetDpdSensitivity();
    _sensorBarPos = __GetSensorBarPosition();
    _rumble = __GetMotorMode();
    _speakerVolume = __GetSpeakerVolume();

    _scSetting = FALSE;
}

static void WPADiAfh() {
    BOOL enabled;
    u8* pWifiChannel;

    if (_afhCnt != 60000) {
        return;
    }

    pWifiChannel = OSPhysicalToCached(OS_ADDR_WIFI_AFH_CHANNEL);
    DCInvalidateRange(pWifiChannel, sizeof *pWifiChannel);

    DEBUGPrint("Check the update of WiFi using channel\n");

    if (_afhChannel != *pWifiChannel) {
        enabled = OSDisableInterrupts();
        _afhChannel = *pWifiChannel;
        OSRestoreInterrupts(enabled);

        DEBUGPrint("WiFi uses channel = %d\n", *pWifiChannel);
        WUDSetDisableChannel(_afhChannel);
    }
}


static void WPADiRumbleMotor(s32 chan, BOOL prevSuccess) {
    WPADCommand command;

    if (prevSuccess == TRUE || __GetCmdNumber(&_wpdcb[chan]->stdCmdQueue) > 0) {
        _wpdcb[chan]->motorBusy = FALSE;

    }
    else if (_rumbleCnt[chan] == 5) {
        _wpdcb[chan]->motorBusy = FALSE;

        command.reportID = RPTID_SET_RUMBLE;
        command.dataLength = RPT10_SIZE;
        command.dataBuf[RPT10_RUMBLE] = FALSE;
        command.cmdCB = NULL;

        __SendData(chan, command);
    }

    _rumbleCnt[chan] = _wpdcb[chan]->motorBusy ? _rumbleCnt[chan] + 1 : 0;
}

static void __reconnect(BOOL exec) {
    DEBUGPrint("Reconnect Start!!\n");

    BTA_DmSendHciReset();

    OSCancelAlarm(&_managerAlarm);

    WUDSetHidRecvCallback(NULL);
    WUDShutdown(exec);
}
static void WPADiManageHandler(OSAlarm* pAlarm, OSContext* pContext) {
    s32 status = WPADGetStatus();
    s32 chan;
    BOOL success;

    if (status != WPAD_LIB_STATUS_3) {
        if (status == WPAD_LIB_STATUS_2 && !_initialized) {
            _initialized = TRUE;

            WUDSetHidConnCallback(WPADiConnCallback);
            WUDSetHidRecvCallback(WPADiRecvCallback);
                
            _recCnt = 50;
        }

        return;
    }

    if (_recFlag >= 0) {
        if (--_recCnt <= 0) {
            __reconnect(_recFlag);
        }
        return;
    }

    for (chan = WPAD_CHAN0; chan < WPAD_MAX_CONTROLLERS; chan++) {
        success = FALSE;

        if (_extCnt[chan] == 5) {
            success |= WPADiProcessExtCommand(chan);

            if (success) {
                _extCnt[chan] = 0;
            }
        }

        if (!success) {
            success |= WPADiProcessCommand(chan, success);
        }

        if (_wpdcb[chan]->status != WPAD_ERR_NO_CONTROLLER) {
            WPADiRumbleMotor(chan, success);
        }

        if (_checkCnt == 5) {
            WPADiCheckContInputs(chan);
        }

        if (_senseCnt == 10) {
            WPADiRadioSensitivity(chan);
        }

        _extCnt[chan] = _extCnt[chan] == 5 ? _extCnt[chan] : _extCnt[chan] + 1;
    }

    WPADiAfh();

    _senseCnt = _senseCnt == 10 ? 0 : _senseCnt + 1;
    _checkCnt = _checkCnt == 5 ? 0 : _checkCnt + 1;
    _afhCnt = _afhCnt == 60000 ? 0 : _afhCnt + 1;

    WPADiContMapTableUpdate();
    WPADiGetScSettings();

    BTA_HhGetAclQueueInfo();
}

static void WPADiManageHandler0(OSAlarm* pAlarm, OSContext* pContext) {
    OSSwitchFiberEx((u32)pAlarm, (u32)pContext, 0, 0, WPADiManageHandler,
                    __WPADiManageHandlerStack +
                    sizeof(__WPADiManageHandlerStack));
}

static void __ClearControlBlock(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    WPADStatus* pStatus;

    p->rxBufIndex = 0;
    p->wpInfoOut = NULL;

    p->motorRunning = FALSE;

    p->cmdBlkCB = NULL;
    p->extensionCB = NULL;
    p->samplingCB = NULL;

    p->samplingBuf = NULL;
    p->samplingBufIndex = 0;
    p->samplingBufSize = 0;

    p->dataFormat = WPAD_FMT_CORE_BTN;
    p->status = WPAD_ERR_NO_CONTROLLER;
    p->devType = WPAD_DEV_NOT_FOUND;
    p->devMode = WPAD_DEV_MODE_NORMAL;

    p->calibrated = FALSE;
    p->comboHeld = 0;

    p->statusReqBusy = FALSE;

    p->defaultDpdSize = 12;
    p->currentDpdCommand = WPAD_DPD_DISABLE;
    p->pendingDpdCommand = 0;

    p->filterDiffDpd = 0;
    p->filterSameDpd = 0;
    p->filterDiffAcc = 0;
    p->filterSameAcc = 0;
    p->filterDiffExt = 0;
    p->filterSameExt = 0;

    p->lastControllerDataUpdate = __OSGetSystemTime();
    p->lastReportSendTime = __OSGetSystemTime();
    p->unk_0x910 = 0;
    p->unk_0x8C9 = 0;
    p->unk_0x8C4 = 0;
    p->wmReadDataPtr = NULL;
    p->wmReadAddress = 0;
    p->wmReadLength = 0;
    p->wmReadHadError = 0;
    p->devHandle = WUD_DEV_HANDLE_INVALID;
    p->used = FALSE;
    p->handshakeFinished = FALSE;
    p->configIndex = 0;
    p->radioQuality = WPAD_RADIO_QUALITY_BAD;
    p->radioQualityOkMs = 0;
    p->audioFrames = 0;
    p->unk_0x982 = 0;
    p->radioSensitivity = 0;
    p->copyOutCount = 0;
    p->sleeping = TRUE;
    p->getInfoBusy = FALSE;
    p->getInfoCB = NULL;
    p->unk_0x98E = 0;

    memset(&p->wpInfo, 0, sizeof(p->wpInfo));
    memset(&p->wmReadDataBuf, 0, sizeof(p->wmReadDataBuf));

    memset(p->rxBufs, 0, sizeof(p->rxBufs));
    memset(p->rxBufMain, 0, RX_BUFFER_SIZE);

    memset(&p->devConfig, 0, sizeof(WPADDevConfig));
    memset(&p->extConfig, 0, sizeof(WPADExtConfig));
    memset(&p->encryptionKey, 0, sizeof(p->encryptionKey));
    memset(&p->decryptAddTable, 0, sizeof(p->decryptAddTable));
    memset(&p->decryptXorTable, 0, sizeof(p->decryptXorTable));
    memset(&p->gameInfo, 0, sizeof(WPADGameInfo));

    p->unk_0x38[0] = -1;
    p->unk_0x38[1] = -1;

    p->stdCmdQueue.buffer = p->stdCmdQueueList;
    p->stdCmdQueue.capacity = ARRAY_LENGTH(p->stdCmdQueueList);
    p->extCmdQueue.buffer = p->extCmdQueueList;
    p->extCmdQueue.capacity = ARRAY_LENGTH(p->extCmdQueueList);

    WPADiClearQueue(&p->stdCmdQueue);
    WPADiClearQueue(&p->extCmdQueue);

    _extCnt[chan] = 0;

    _wmb[chan].unk_0x00 = 0;
    _wmb[chan].unk_0x04 = 0;
    _wmb[chan].unk_0x08 = 0;
    _wmb[chan].unk_0x0c = 0;
    _wmb[chan].unk_0x10 = NULL;

    _rumbleCnt[chan] = 0;
}

// TODO(kiwi) _wpd should be 32-byte aligned, but doing so breaks this function
static u8 FAKE_ALIGNMENT[0x10];
DECOMP_FORCE_ACTIVE(WPAD_c, _dev_handle_index, FAKE_ALIGNMENT);

void WPADiInitSub() {
    BOOL enabled;
    s32 chan;
    int i;

    WPADSetSensorBarPower(TRUE);

    for (i = 0; i < WUD_MAX_DEV_ENTRY; i++) {
        _dev_handle_index[i] = WUD_DEV_HANDLE_INVALID;
    }

    DEBUGPrint("WPADInit()\n");

    for (chan = 0; chan < WPAD_MAX_CONTROLLERS; chan++) {
        _wpdcb[chan] = &_wpd[chan];
        _chan_active_state[chan] = FALSE;

        _wpdcb[chan]->connectCB = NULL;
        __ClearControlBlock(chan);
        OSInitThreadQueue(&_wpd[chan].threadQueue);

        _extCnt[chan] = 0;
        _rumbleCnt[chan] = 0;
    }

    _sleepTime = 5;
    _gamecode = OSGetAppGamename();
    _gametype = OSGetAppType();
    _dpdSensitivity = __GetDpdSensitivity();
    _sensorBarPos = __GetSensorBarPosition();
    _rumble = __GetMotorMode();
    _speakerVolume = __GetSpeakerVolume();
    _senseCnt = 0;
    _checkCnt = 0;
    _afhCnt = 0;
    _shutdown = FALSE;
    _scFlush = FALSE;
    _scSetting = TRUE;
    _afhChannel = -1;

    OSCreateAlarm(&_managerAlarm);
    OSSetPeriodicAlarm(&_managerAlarm, OSGetTime(), OSMillisecondsToTicks(1), WPADiManageHandler0);

    OSRegisterVersion(__WPADVersion);
}

void WPADInit() {
    _startup = TRUE;

    _recFlag = -1;
    _recCnt = 0;

    if (!_regShutdown) {
        OSRegisterShutdownFunction(&ShutdownFunctionInfo);
        _regShutdown = TRUE;
    }

    if (WUDInit()) {
        _initialized = FALSE;
        WPADiInitSub();
    }
}

void __WPADShutdown() {
    BOOL enabled = OSDisableInterrupts();
    int i;

    if (_shutdown) {
        OSRestoreInterrupts(enabled);
        return;
    }

    _shutdown = TRUE;

    WUDSetVisibility(FALSE, FALSE);

    for (i = WUD_MAX_DEV_ENTRY_FOR_STD + WPAD_CHAN0;
         i < WUD_MAX_DEV_ENTRY_FOR_STD + WPAD_MAX_CONTROLLERS; i++) {
        memset(&_scArray.devices[i], 0, sizeof(SCBtDeviceInfo));
    }

    OSCancelAlarm(&_managerAlarm);

    WUDSetHidRecvCallback(NULL);
    WUDShutdown(FALSE);

    OSRestoreInterrupts(enabled);
}

void __WPADReconnect(BOOL recFlag) {
    BOOL enabled = OSDisableInterrupts();
    int i;

    if (!_startup) {
        OSRestoreInterrupts(enabled);
        return;
    }

    if (_shutdown) {
        OSRestoreInterrupts(enabled);
        return;
    }

    _shutdown = TRUE;

    _recFlag = (recFlag) ? TRUE : FALSE;

    DEBUGPrint("Wait for %d ms until start reconnect!\n", _recCnt);

    OSRestoreInterrupts(enabled);
}

BOOL WPADStartSimpleSync() {
    return WUDStartSyncSimple();
}

BOOL WPADStartFastSimpleSync() {
    return WUDStartFastSyncSimple();
}

BOOL WPADStopSimpleSync() {
    return WUDStopSyncSimple();
}

BOOL WPADStartClearDevice() {
    return WUDStartClearDevice();
}

WPADSyncDeviceCallback WPADSetSimpleSyncCallback(WPADSyncDeviceCallback pCallback) {
    return WUDSetSyncSimpleCallback(pCallback);
}

WPADClearDeviceCallback WPADSetClearDeviceCallback(WPADClearDeviceCallback pCallback) {
    return WUDSetClearDeviceCallback(pCallback);
}

void WPADRegisterAllocator(WPADAllocFunc pAllocFunc, WPADFreeFunc pFreeFunc) {
    WUDRegisterAllocator(pAllocFunc, pFreeFunc);
}

u32 WPADGetWorkMemorySize() {
    return WUDGetAllocatedMemSize();
}

s32 WPADGetStatus() {
    return (s32)WUDGetStatus();
}

void WPADGetAddress(s32 chan, BD_ADDR_PTR pAddr) {
    WPADCB* p = _wpdcb[chan];
    BD_ADDR_PTR pDevAddr;
    BOOL enabled;
    s8 devHandle;

    enabled = OSDisableInterrupts();
    devHandle = p->devHandle;
    OSRestoreInterrupts(enabled);

    pDevAddr = _WUDGetDevAddr(devHandle);

    if (pDevAddr != NULL) {
        WUD_BDCPY(pAddr, pDevAddr);
    }
    else {
        memset(pAddr, 0, BD_ADDR_LEN);
    }
}

u8 WPADGetSensorBarPosition() {
    BOOL enabled = OSDisableInterrupts();
    u8 pos = _sensorBarPos;
    OSRestoreInterrupts(enabled);
    return pos;
}

static void setupCallback(s32 chan, s32 status) {
    WPADCB* p = _wpdcb[chan];

    if (status == WPAD_ERR_NO_CONTROLLER) {
        return;
    }

    if (status == WPAD_ERR_OK) {
        p->handshakeFinished = TRUE;

        if (p->connectCB != NULL) {
            p->connectCB(chan, status);
        }
    }
    else {
        WPADiDisconnect(chan, FALSE);
    }
}

static void abortConnCallback(s32 chan, s32 status) {
    WPADCB* p = _wpdcb[chan];

    if (status != WPAD_ERR_OK) {
        WPADiClearQueue(&p->stdCmdQueue);

        if (status != WPAD_ERR_NO_CONTROLLER) {
            WPADiDisconnect(chan, FALSE);
        }
    }
}

static void firmwareCheckCallback(s32 chan, s32 status) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    u32 address;
    u16 size;
    u8 port;

    if (status == WPAD_ERR_NO_CONTROLLER) {
        return;
    }

    enabled = OSDisableInterrupts();

    p->configIndex = status == WPAD_ERR_OK ? 1 : 0;
    p->status = WPAD_ERR_OK;

    OSRestoreInterrupts(enabled);

    size = status == WPAD_ERR_OK ? 20 : 42;
    address = status == WPAD_ERR_OK ? WM_ADDR_MEM_176C : WM_ADDR_MEM_DEV_CONFIG_0;
    port = 1 << chan;

    DEBUGPrint(" ==>this error means that the firmware is for NDEV %s\n", p->configIndex != 0 ? "2.0" : "2.1 or later");

    WPADiSendSetReportType(&p->stdCmdQueue, WPAD_FMT_CORE_BTN, p->unk_0x98E,
                           &abortConnCallback);

    WPADiSendDPDCSB(&p->stdCmdQueue, FALSE, &abortConnCallback);
    WPADiSendSetPort(&p->stdCmdQueue, port, &abortConnCallback);

    WPADiSendReadData(&p->stdCmdQueue, p->wmReadDataBuf, sizeof(WPADGameInfo), WM_ADDR_MEM_GAME_INFO_0, &abortConnCallback);
    WPADiSendReadData(&p->stdCmdQueue, p->wmReadDataBuf, sizeof(WPADGameInfo), WM_ADDR_MEM_GAME_INFO_1, &abortConnCallback);

    WPADiSendReadData(&p->stdCmdQueue, p->wmReadDataBuf, size, address, &setupCallback);

    WPADiSendGetContStat(&p->stdCmdQueue, NULL, NULL);
}

static s32 WPADiRetrieveChannel(u8 devHandle) {
    BD_ADDR_PTR pAddr;
    s32 i;

    pAddr = _WUDGetDevAddr(devHandle);

    for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
        if (WUD_BDCMP(_scArray.devices[WUD_MAX_DEV_ENTRY_FOR_STD + i].addr, pAddr) != 0) {
            continue;
        }

        if (_chan_active_state[i]) {
            continue;
        }

        _chan_active_state[i] = TRUE;
        return i;
    }

    for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
        if (_chan_active_state[i]) {
            continue;
        }

        _chan_active_state[i] = TRUE;
        WUD_BDCPY(&_scArray.devices[WUD_MAX_DEV_ENTRY_FOR_STD + i].addr, pAddr);
        _scFlush = TRUE;

        return i;
    }

    return WPAD_CHAN_INVALID;
}

static void WPADiConnCallback(WUDDevInfo* devInfo, u8 open) {
    s32 chan;
    WPADCB* p;
    WPADCommand command;
    BOOL remain;
    UINT8 devHandle = devInfo->devHandle;

    if (open) {
        DEBUGPrint("connection is opened\n");

        chan = WPADiRetrieveChannel(devHandle);

        p = _wpdcb[chan];
        _dev_handle_index[devHandle] = chan;

        __ClearControlBlock(chan);

        if (WUD_DEV_NAME_IS_CNT(devInfo->conf.devName)) {
            p->devType = WPAD_DEV_CORE;
        }
        else {
            p->devType = WPAD_DEV_FUTURE;
        }
        p->devHandle = devHandle;
        p->dataFormat = WPAD_FMT_CORE_BTN;
        p->used = TRUE;
        p->status = WPAD_ERR_OK;
        p->radioSensitivity = 100;
        p->sleeping = FALSE;
        p->unk_0x98D = FALSE;

        WPADiSendReadData(&p->stdCmdQueue, p->wmReadDataBuf, 1, WM_ADDR_MEM_1770, firmwareCheckCallback);

        __SetScreenSaverFlag(TRUE);
    }
    else {
        DEBUGPrint("connection is closed\n");

        chan = _dev_handle_index[devHandle];
        _dev_handle_index[devHandle] = WUD_DEV_HANDLE_INVALID;

        if (chan != WUD_DEV_HANDLE_INVALID) {
            p = _wpdcb[chan];
            p->status = WPAD_ERR_NO_CONTROLLER;

            if (p->cmdBlkCB != NULL) {
                p->cmdBlkCB(chan, WPAD_ERR_NO_CONTROLLER);
            }
            else if (_wmb[chan].unk_0x10 != NULL) {
                _wmb[chan].unk_0x10(chan, WPAD_ERR_NO_CONTROLLER);
            }

            do {
                remain = WPADiGetCommand(&p->stdCmdQueue, &command);

                if (remain) {
                    if (command.cmdCB != NULL) {
                        command.cmdCB(chan, WPAD_ERR_NO_CONTROLLER);
                    }

                    WPADiPopCommand(&p->stdCmdQueue);
                }
            } while (remain);

            DEBUGPrint("clean up command queue\n");

            if (p->samplingBuf != NULL) {
                WPADSetAutoSamplingBuf(chan, p->samplingBuf, p->samplingBufSize);
            }

            __ClearControlBlock(chan);
            _chan_active_state[chan] = FALSE;

            if (p->connectCB != NULL) {
                p->connectCB(chan, WPAD_ERR_NO_CONTROLLER);
            }
        }
        else {
            DEBUGPrint("WARNING: disconnection for device handle not assigned to channel.\n");
        }
    }
}

static void WPADiRecvCallback(UINT8 devHandle, UINT8* pReport, UINT16 len) {
    s32 result;
    u8 port = _dev_handle_index[devHandle];

    // @bug Accepts WPAD_MAX_CONTROLLERS
    if (port <= WPAD_MAX_CONTROLLERS) {
        result = WPADiHIDParser(port, pReport);

        if (result != 0) {
            DEBUGPrint("HID Parser reports: %d\n", result);
        }
    }
    else {
        DEBUGPrint("WPADiRecvCallback(): Unknown channel %d\n", port);
    }
}

static s32 WPADiGetStatus(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled = OSDisableInterrupts();

    s32 status = p->status;

    OSRestoreInterrupts(enabled);
    return status;
}

void WPADGetAccGravityUnit(s32 chan, u32 type, WPADAccGravityUnit* pAcc) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled = OSDisableInterrupts();

    if (pAcc != NULL) {
        switch (type) {
            case WPAD_ACC_GRAVITY_UNIT_CORE: {
                pAcc->x = p->devConfig.accX1g - p->devConfig.accX0g;
                pAcc->y = p->devConfig.accY1g - p->devConfig.accY0g;
                pAcc->z = p->devConfig.accZ1g - p->devConfig.accZ0g;
                break;
            }
            case WPAD_ACC_GRAVITY_UNIT_FS: {
                pAcc->x = p->extConfig.u.fs.accX1g - p->extConfig.u.fs.accX0g;
                pAcc->y = p->extConfig.u.fs.accY1g - p->extConfig.u.fs.accY0g;
                pAcc->z = p->extConfig.u.fs.accZ1g - p->extConfig.u.fs.accZ0g;
                break;
            }
        }
    }

    OSRestoreInterrupts(enabled);
}

static void DisconnectCallback(s32 chan, s32 status) {
    WPADCB* p = _wpdcb[chan];

    if (status != WPAD_ERR_NO_CONTROLLER) {
        BTA_HhClose(p->devHandle);
    }
}

static void WPADiDisconnect(s32 chan, BOOL sleep) {
    WPADCB* p = _wpdcb[chan];
    s32 status;
    BOOL enabled;

    status = WPADiGetStatus(chan);
    if (status == WPAD_ERR_NO_CONTROLLER) {
        return;
    }

    if (sleep) {
        enabled = OSDisableInterrupts();

        if (p->sleeping) {
            OSRestoreInterrupts(enabled);
            return;
        }

        p->sleeping = TRUE;

        OSRestoreInterrupts(enabled);
        WPADControlLed(chan, 0, DisconnectCallback);
    }
    else {
        BD_ADDR addr;
        WPADGetAddress(chan, addr);

        btm_remove_acl(addr);
    }
}

void WPADDisconnect(s32 chan) {
    s32 status;

    memset(&_scArray.devices[WUD_MAX_DEV_ENTRY_FOR_STD + chan], 0, sizeof(SCBtDeviceInfo));

    _scFlush = TRUE;

    WPADiDisconnect(chan, TRUE);
}

s32 WPADProbe(s32 chan, u32* pDevType) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    s32 status;

    enabled = OSDisableInterrupts();

    if (pDevType != NULL) {
        *pDevType = p->devType;
    }

    status = p->status;

    if (status != WPAD_ERR_NO_CONTROLLER) {
        if (p->devType == WPAD_DEV_NOT_FOUND) {
            status = WPAD_ERR_NO_CONTROLLER;
        }
        else if (!p->handshakeFinished) {
            status = WPAD_ERR_COMMUNICATION_ERROR;
        }
    }

    OSRestoreInterrupts(enabled);
    return status;
}

WPADSamplingCallback WPADSetSamplingCallback(s32 chan, WPADSamplingCallback pCallback) {
    WPADCB* p;
    BOOL enabled;
    WPADSamplingCallback pOldCallback;

    DEBUGPrint("WPADSetSamplingCallback()\n");

    enabled = OSDisableInterrupts();
    p = _wpdcb[chan];

    pOldCallback = p->samplingCB;
    p->samplingCB = pCallback;

    OSRestoreInterrupts(enabled);
    return pOldCallback;
}

WPADConnectCallback WPADSetConnectCallback(s32 chan, WPADConnectCallback pCallback) {
    WPADCB* p;
    BOOL enabled;
    WPADConnectCallback pOldCallback;

    DEBUGPrint("WPADSetConnectCallback()\n");

    enabled = OSDisableInterrupts();
    p = _wpdcb[chan];

    pOldCallback = p->connectCB;
    p->connectCB = pCallback;

    OSRestoreInterrupts(enabled);
    return pOldCallback;
}

WPADExtensionCallback WPADSetExtensionCallback(s32 chan, WPADExtensionCallback pCallback) {
    WPADCB* p;
    BOOL enabled;
    WPADExtensionCallback pOldCallback;

    DEBUGPrint("WPADSetExtensionCallback()\n");

    enabled = OSDisableInterrupts();
    p = _wpdcb[chan];

    pOldCallback = p->extensionCB;
    p->extensionCB = pCallback;

    OSRestoreInterrupts(enabled);
    return pOldCallback;
}

u32 WPADGetDataFormat(s32 chan) {
    BOOL enabled = OSDisableInterrupts();
    WPADCB* p = _wpdcb[chan];

    u32 format = p->dataFormat;

    OSRestoreInterrupts(enabled);
    return format;
}

s32 WPADSetDataFormat(s32 chan, u32 format) {
    WPADCB* p = _wpdcb[chan];
    s32 status;
    BOOL enabled;
    BOOL handshake;
    u32 currFormat;

    enabled = OSDisableInterrupts();

    handshake = p->handshakeFinished;
    status = p->status;
    currFormat = p->dataFormat;

    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_NO_CONTROLLER) {
        goto _end;
    }

    if (!handshake) {
        status = WPAD_ERR_COMMUNICATION_ERROR;
        goto _end;
    }

    if (currFormat != format) {
        if (!WPADiSendSetReportType(&p->stdCmdQueue, format, p->unk_0x98E, NULL)) {
            status = WPAD_ERR_COMMUNICATION_ERROR;
        }
        else {
            enabled = OSDisableInterrupts();
            p->dataFormat = format;
            OSRestoreInterrupts(enabled);

            status = WPAD_ERR_OK;
        }
    }
    else {
        status = WPAD_ERR_OK;
    }

_end:
    return status;
}

static void __infoCallback(s32 chan, s32 result) {
    WPADCB* p = _wpdcb[chan];

    if (p->getInfoCB != NULL) {
        p->getInfoCB(chan, result);
    }

    p->getInfoCB = NULL;
    p->getInfoBusy = FALSE;
}

s32 WPADGetInfoAsync(s32 chan, WPADInfo* pInfo, WPADCallback pCallback) {
    BOOL handshake;
    s32 status;
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    u8 getInfoBusy;

    enabled = OSDisableInterrupts();

    handshake = p->handshakeFinished;
    status = p->status;
    getInfoBusy = p->getInfoBusy;

    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_NO_CONTROLLER) {
        goto _end;
    }

    if (!handshake || getInfoBusy) {
        status = WPAD_ERR_COMMUNICATION_ERROR;
        goto _end;
    }

    enabled = OSDisableInterrupts();

    p->getInfoBusy = TRUE;
    p->getInfoCB = pCallback;

    OSRestoreInterrupts(enabled);

    if (WPADiSendGetContStat(&p->stdCmdQueue, pInfo, __infoCallback)) {
        status = WPAD_ERR_OK;
        goto _end;
    }

    status = WPAD_ERR_COMMUNICATION_ERROR;

    enabled = OSDisableInterrupts();

    p->getInfoBusy = FALSE;
    p->getInfoCB = NULL;

    OSRestoreInterrupts(enabled);

_end:
    if (status != WPAD_ERR_OK && pCallback != NULL) {
        pCallback(chan, status);
    }

    return status;
}

void WPADControlMotor(s32 chan, u32 command) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled = OSDisableInterrupts();
    s32 status = p->status;

    if (status == WPAD_ERR_NO_CONTROLLER) {
        OSRestoreInterrupts(enabled);
        return;
    }

    if (!_rumble && (command != WPAD_MOTOR_STOP || p->motorRunning != TRUE)) {
        OSRestoreInterrupts(enabled);
        return;
    }

    if (command == WPAD_MOTOR_STOP && p->motorRunning == FALSE ||
        command == WPAD_MOTOR_RUMBLE && p->motorRunning == TRUE) {
        OSRestoreInterrupts(enabled);
        return;
    }

    p->motorRunning = command == WPAD_MOTOR_STOP ? FALSE : TRUE;
    p->motorBusy = TRUE;

    OSRestoreInterrupts(enabled);
}

void WPADEnableMotor(BOOL enable) {
    BOOL enabled = OSDisableInterrupts();
    _rumble = enable;
    OSRestoreInterrupts(enabled);
}

BOOL WPADIsMotorEnabled() {
    BOOL enabled = OSDisableInterrupts();
    BOOL motorEnabled = _rumble;
    OSRestoreInterrupts(enabled);

    return motorEnabled;
}

s32 WPADControlLed(s32 chan, u8 flags, WPADCallback pCallback) {
    WPADCB* p = _wpdcb[chan];
    BOOL success;
    BOOL enabled;
    BOOL handshake;
    s32 status;

    status = WPAD_ERR_OK;

    enabled = OSDisableInterrupts();
    status = p->status;
    handshake = p->handshakeFinished;
    OSRestoreInterrupts(enabled);

    if (status != WPAD_ERR_NO_CONTROLLER) {
        if (!handshake) {
            status = WPAD_ERR_COMMUNICATION_ERROR;
        }
        else {
            success = WPADiSendSetPort(&p->stdCmdQueue, flags, pCallback);
            status = success ? 0 : WPAD_ERR_COMMUNICATION_ERROR;
        }
    }

    if (status != WPAD_ERR_OK && pCallback != NULL) {
        pCallback(chan, status);
    }

    return status;
}

BOOL WPADSaveConfig(WPADSaveCallback pCallback) {
    BOOL success = TRUE;
    BOOL enabled;
    u8 volume;
    u8 mode;

    if (SCCheckStatus() != SC_STATUS_OK) {
        return FALSE;
    }

    enabled = OSDisableInterrupts();
    volume = _speakerVolume;
    mode = _rumble ? SC_WPAD_MOTOR_MODE_ON : SC_WPAD_MOTOR_MODE_OFF;
    OSRestoreInterrupts(enabled);

    success &= SCSetWpadSpeakerVolume(volume);
    success &= SCSetWpadMotorMode(mode);

    if (success) {
        SCFlushAsync(pCallback);
    }
    else if (pCallback != NULL) {
        pCallback(SC_STATUS_FATAL);
    }

    return success;
}

void WPADRead(s32 chan, WPADStatus* pStatus) {
    BOOL enabled = OSDisableInterrupts();
    WPADCB* p = _wpdcb[chan];

    u8 rxBufIndex = p->rxBufIndex != 0 ? 0 : 1;
    WPADStatus* pRxStatus = (WPADStatus*)p->rxBufs[rxBufIndex];

    switch (pRxStatus->err) {
        case WPAD_ERR_OK: {
            if (p->dataFormat == WPAD_FMT_CORE_BTN || p->dataFormat == WPAD_FMT_CORE_BTN_ACC || p->dataFormat == WPAD_FMT_CORE_BTN_ACC_DPD) {
                memcpy(pStatus, pRxStatus, sizeof(WPADStatus));

            }
            else if (p->dataFormat == WPAD_FMT_FS_BTN || p->dataFormat == WPAD_FMT_FS_BTN_ACC || p->dataFormat == WPAD_FMT_FS_BTN_ACC_DPD) {
                memcpy(pStatus, pRxStatus, sizeof(WPADFSStatus));

            }
            else if (p->dataFormat == WPAD_FMT_CLASSIC_BTN || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC_DPD) {
                memcpy(pStatus, pRxStatus, sizeof(WPADCLStatus));

            }
            else {
                memcpy(pStatus, pRxStatus, sizeof(WPADStatusEx));
            }

            break;
        }
        case WPAD_ERR_COMMUNICATION_ERROR:
        case WPAD_ERR_CORRUPTED: {
            memcpy(pStatus, pRxStatus, sizeof(WPADStatus));
            break;
        }
        default: {
            if (p->dataFormat == WPAD_FMT_CORE_BTN || p->dataFormat == WPAD_FMT_CORE_BTN_ACC || p->dataFormat == WPAD_FMT_CORE_BTN_ACC_DPD) {
                memset(pStatus, 0, sizeof(WPADStatus));
            }
            else if (p->dataFormat == WPAD_FMT_FS_BTN || p->dataFormat == WPAD_FMT_FS_BTN_ACC || p->dataFormat == WPAD_FMT_FS_BTN_ACC_DPD) {
                memset(pStatus, 0, sizeof(WPADFSStatus));

            }
            else if (p->dataFormat == WPAD_FMT_CLASSIC_BTN || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC_DPD) {
                memset(pStatus, 0, sizeof(WPADCLStatus));
            }
            else {
                memset(pStatus, 0, sizeof(WPADStatusEx));
            }

            pStatus->err = pRxStatus->err;
            break;
        }
    }

    OSRestoreInterrupts(enabled);
}

void WPADSetAutoSamplingBuf(s32 chan, void* pBuffer, u32 len) {
    WPADCB* p;
    BOOL enabled;
    s8 defaultErr;
    s32 fmtSize;
    int i;

    DEBUGPrint("WPADSetAutoSamplingBuf()\n");

    enabled = OSDisableInterrupts();
    p = _wpdcb[chan];

    defaultErr = p->status == WPAD_ERR_NO_CONTROLLER ? WPAD_ERR_NO_CONTROLLER : WPAD_ERR_INVALID;

    if (p->dataFormat == WPAD_FMT_CORE_BTN || p->dataFormat == WPAD_FMT_CORE_BTN_ACC || p->dataFormat == WPAD_FMT_CORE_BTN_ACC_DPD) {
        fmtSize = sizeof(WPADStatus);
    }
    else if (p->dataFormat == WPAD_FMT_FS_BTN || p->dataFormat == WPAD_FMT_FS_BTN_ACC || p->dataFormat == WPAD_FMT_FS_BTN_ACC_DPD) {
        fmtSize = sizeof(WPADFSStatus);
    }
    else if (p->dataFormat == WPAD_FMT_CLASSIC_BTN || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC_DPD) {
        fmtSize = sizeof(WPADCLStatus);
    }
    else {
        fmtSize = sizeof(WPADStatusEx);
    }

    if (pBuffer != NULL) {
        memset(pBuffer, 0, fmtSize * len);

        for (i = 0; i < len; i++) {
            ((WPADStatus*)((u8*)pBuffer + i * fmtSize))->err = defaultErr;
        }

        p->samplingBufIndex = -1;
        p->samplingBufSize = len;
    }

    p->samplingBuf = pBuffer;

    OSRestoreInterrupts(enabled);
}

u32 WPADGetLatestIndexInBuf(s32 chan) {
    BOOL enabled = OSDisableInterrupts();
    WPADCB* p = _wpdcb[chan];
    u32 index = p->samplingBufIndex;

    OSRestoreInterrupts(enabled);

    if (index == 0xffffffff) {
        return 0;
    }

    return index;
}

void WPADiExcludeButton(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled = OSDisableInterrupts();

    u8 rxBufIndex = p->rxBufIndex != 0 ? 0 : 1;
    void* pRxBuffer = p->rxBufs[rxBufIndex];

    WPADStatus* pStatus;
    WPADCLStatus* pStatusCL;

    pStatus = (WPADStatus*)pRxBuffer;

    if ((pStatus->button & (WPAD_BUTTON_LEFT | WPAD_BUTTON_RIGHT)) == (WPAD_BUTTON_LEFT | WPAD_BUTTON_RIGHT)) {
        pStatus->button &= ~WPAD_BUTTON_RIGHT;
    }

    if ((pStatus->button & (WPAD_BUTTON_UP | WPAD_BUTTON_DOWN)) == (WPAD_BUTTON_UP | WPAD_BUTTON_DOWN)) {
        pStatus->button &= ~WPAD_BUTTON_DOWN;
    }

    if (p->dataFormat == WPAD_FMT_CLASSIC_BTN || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC_DPD) {
        pStatusCL = (WPADCLStatus*)pRxBuffer;

        if ((pStatusCL->clButton & (WPAD_BUTTON_CL_LEFT | WPAD_BUTTON_CL_RIGHT)) == (WPAD_BUTTON_CL_LEFT | WPAD_BUTTON_CL_RIGHT)) {
            pStatusCL->clButton &= ~WPAD_BUTTON_CL_RIGHT;
        }

        if ((pStatusCL->clButton & (WPAD_BUTTON_CL_UP | WPAD_BUTTON_CL_DOWN)) == (WPAD_BUTTON_CL_UP | WPAD_BUTTON_CL_DOWN)) {
            pStatusCL->clButton &= ~WPAD_BUTTON_CL_DOWN;
        }
    }

    OSRestoreInterrupts(enabled);
}

void WPADiCopyOut(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled = OSDisableInterrupts();

    u8 rxBufIndex = p->rxBufIndex != 0 ? 0 : 1;
    WPADStatus* pStatus = (WPADStatus*)p->rxBufs[rxBufIndex];

    if (p->samplingBuf != NULL) {
        if (++p->samplingBufIndex >= p->samplingBufSize) {
            p->samplingBufIndex = 0;
        }

        if (p->dataFormat == WPAD_FMT_CORE_BTN || p->dataFormat == WPAD_FMT_CORE_BTN_ACC || p->dataFormat == WPAD_FMT_CORE_BTN_ACC_DPD) {
            memcpy(&p->samplingBuf[p->samplingBufIndex], pStatus, sizeof(WPADStatus));
        }
        else if (p->dataFormat == WPAD_FMT_FS_BTN || p->dataFormat == WPAD_FMT_FS_BTN_ACC || p->dataFormat == WPAD_FMT_FS_BTN_ACC_DPD) {
            memcpy(&p->samplingBufFS[p->samplingBufIndex], pStatus, !pStatus->err ? sizeof(WPADFSStatus) : sizeof(WPADStatus));
        }
        else if (p->dataFormat == WPAD_FMT_CLASSIC_BTN || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC || p->dataFormat == WPAD_FMT_CLASSIC_BTN_ACC_DPD) {
            memcpy(&p->samplingBufCL[p->samplingBufIndex], pStatus, !pStatus->err ? sizeof(WPADCLStatus) : sizeof(WPADStatus));
        }
        else {
            memcpy(&p->samplingBufEx[p->samplingBufIndex], pStatus, !pStatus->err ? sizeof(WPADStatusEx) : sizeof(WPADStatus));
        }
    }

    if (p->samplingCB != NULL) {
        p->samplingCB(chan);
    }

    p->copyOutCount++;
    OSRestoreInterrupts(enabled);
}

BOOL WPADIsSpeakerEnabled(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled = OSDisableInterrupts();

    BOOL spkEnabled = p->wpInfo.speaker;

    OSRestoreInterrupts(enabled);
    return spkEnabled;
}

s32 WPADControlSpeaker(s32 chan, u32 command, WPADCallback pCallback) {
    WPADCB* p;
    BOOL enabled;
    BOOL spkEnable;
    BOOL handshake;
    s32 status;

    u8 config[SPK_CONFIG_SIZE] = {0x00,
                                  0x00,                             // 4-bit ADPCM
                                  0xD0, 0x07,                   // 3000Hz (little-endian)
                                  WPAD_MAX_SPEAKER_VOLUME / 2 + 1,  // Default volume
                                  0x0C, 0x0E                    // ???
    };

    p = _wpdcb[chan];

    enabled = OSDisableInterrupts();

    spkEnable = p->wpInfo.speaker;
    status = p->status;
    handshake = p->handshakeFinished;

    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_NO_CONTROLLER) {
        goto _end;
    }

    if (!handshake) {
        status = WPAD_ERR_COMMUNICATION_ERROR;
        goto _end;
    }

    if (command == WPAD_SPEAKER_OFF) {
        if (!spkEnable) {
            status = WPAD_ERR_OK;
        }
        else {
            enabled = OSDisableInterrupts();

            if (__CanPushCmdQueue(&p->stdCmdQueue, 5)) {
                WPADiSendMuteSpeaker(&p->stdCmdQueue, TRUE, NULL);

                WPADiSendWriteDataCmd(&p->stdCmdQueue, 0x01, WM_REG_SPEAKER_01, NULL);
                WPADiSendWriteDataCmd(&p->stdCmdQueue, 0x00, WM_REG_SPEAKER_09, NULL);

                WPADiSendEnableSpeaker(&p->stdCmdQueue, FALSE, NULL);

                WPADiSendGetContStat(&p->stdCmdQueue, NULL, pCallback);

                OSRestoreInterrupts(enabled);
                return WPAD_ERR_OK;
            }

            status = WPAD_ERR_COMMUNICATION_ERROR;
            OSRestoreInterrupts(enabled);
        }
    }
    else {
        switch (command) {
        case WPAD_SPEAKER_ON:
        case WPAD_SPEAKER_UNK5: {
            enabled = OSDisableInterrupts();

            if (__CanPushCmdQueue(&p->stdCmdQueue, 7)) {
                WPADiSendEnableSpeaker(&p->stdCmdQueue, TRUE, NULL);
                WPADiSendMuteSpeaker(&p->stdCmdQueue, TRUE, NULL);

                WPADiSendWriteDataCmd(&p->stdCmdQueue, 0x01, WM_REG_SPEAKER_09,
                                      NULL);
                // Sends 0x80 instead of 0x08?
                WPADiSendWriteDataCmd(&p->stdCmdQueue, 0x80, WM_REG_SPEAKER_01,
                                      NULL);

                config[4] = _speakerVolume;

                WPADiSendWriteData(&p->stdCmdQueue, &config, SPK_CONFIG_SIZE,
                                   WM_REG_SPEAKER_01, NULL);

                WPADiSendMuteSpeaker(&p->stdCmdQueue, FALSE, NULL);

                WPADiSendGetContStat(&p->stdCmdQueue, NULL, pCallback);

                OSRestoreInterrupts(enabled);
                return WPAD_ERR_OK;
            }

            status = WPAD_ERR_COMMUNICATION_ERROR;

            OSRestoreInterrupts(enabled);
            break;
        }

        case WPAD_SPEAKER_MUTE: {
            if (!WPADiSendMuteSpeaker(&p->stdCmdQueue, TRUE, pCallback)) {
                status = WPAD_ERR_COMMUNICATION_ERROR;
                break;
            }

            return WPAD_ERR_OK;
        }

        case WPAD_SPEAKER_UNMUTE: {
            if (!WPADiSendMuteSpeaker(&p->stdCmdQueue, FALSE, pCallback)) {
                status = WPAD_ERR_COMMUNICATION_ERROR;
                break;
            }

            return WPAD_ERR_OK;
        }

        case WPAD_SPEAKER_PLAY: {
            if (!WPADiSendWriteDataCmd(&p->stdCmdQueue, 0x01, WM_REG_SPEAKER_08,
                                       pCallback)) {

                status = WPAD_ERR_COMMUNICATION_ERROR;
                break;
            }

            return WPAD_ERR_OK;
        }
        }
    }

_end:
    if (pCallback != NULL) {
        pCallback(chan, status);
    }

    return status;
}

u8 WPADGetSpeakerVolume() {
    BOOL enabled = OSDisableInterrupts();
    u8 volume = _speakerVolume;
    OSRestoreInterrupts(enabled);
    return volume;
}

void WPADSetSpeakerVolume(u8 volume) {
    BOOL enabled = OSDisableInterrupts();
    _speakerVolume = __ClampSpeakerVolume(volume);
    OSRestoreInterrupts(enabled);
}

static BOOL IsBusyStream(s32 chan) {
    BOOL enabled;
    WPADCB* p = _wpdcb[chan];
    u8 radioQuality;
    u32 devType;

    u8 bufferStatus;
    u16 bteBufferStatus;
    u16 btmBufferStatus;

    u8 audioFrames;
    s8 queueSize;
    u8 linkNumber;

    enabled = OSDisableInterrupts();

    radioQuality = p->radioQuality;
    devType = p->devType;
    bufferStatus = WUDGetBufferStatus();

    queueSize = __GetCmdNumber(&p->stdCmdQueue);

    bteBufferStatus = _WPADGetStackBufferStatus(chan);
    btmBufferStatus = _WPADGetModuleBufferStatus(chan);
    audioFrames = p->audioFrames;

    linkNumber = _WUDGetLinkNumber();

    OSRestoreInterrupts(enabled);

    if (radioQuality != WPAD_RADIO_QUALITY_GOOD || btmBufferStatus > 3 ||
        bufferStatus == 10 || bufferStatus >= linkNumber * 2 + 2 ||
        devType == WPAD_DEV_UNKNOWN || queueSize >= 21 || audioFrames >= 1) {

        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL WPADCanSendStreamData(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    BOOL handshake;
    s32 status;

    enabled = OSDisableInterrupts();
    status = p->status;
    handshake = p->handshakeFinished;
    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_NO_CONTROLLER || !handshake || IsBusyStream(chan)) {

        return FALSE;
    } else {
        return TRUE;
    }
}

s32 WPADSendStreamData(s32 chan, void* pData, u16 len) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    BOOL handshake;
    s32 status;

    enabled = OSDisableInterrupts();
    status = p->status;
    handshake = p->handshakeFinished;
    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_NO_CONTROLLER) {
        return WPAD_ERR_NO_CONTROLLER;
    }

    if (!handshake) {
        return WPAD_ERR_COMMUNICATION_ERROR;
    }

    if (IsBusyStream(chan)) {
        return WPAD_ERR_COMMUNICATION_ERROR;
    }

    if (!WPADiSendStreamData(&p->stdCmdQueue, pData, len)) {
        return WPAD_ERR_COMMUNICATION_ERROR;
    }

    enabled = OSDisableInterrupts();
    p->audioFrames++;
    OSRestoreInterrupts(enabled);

    return WPAD_ERR_OK;
}

void WPADSetDpdSensitivity(u8 sensitivity) {
    BOOL enabled = OSDisableInterrupts();
    _dpdSensitivity = sensitivity;
    OSRestoreInterrupts(enabled);
}

u8 WPADGetDpdSensitivity() {
    return _dpdSensitivity;
}

BOOL WPADSetSensorBarPower(BOOL enable) {
    u32 oldReg;
    u32 newReg;
    BOOL enabled;
    BOOL old;

    enabled = OSDisableInterrupts();
    oldReg = ACRReadReg(HW_GPIOB_OUT);

    if (enable) {
        newReg = oldReg | (1 << HW_GPIOB_OUT_SENSOR_BAR);
    } else {
        newReg = oldReg & ~(1 << HW_GPIOB_OUT_SENSOR_BAR);
    }

    ACRWriteReg(HW_GPIOB_OUT, newReg);
    old = oldReg & (1 << HW_GPIOB_OUT_SENSOR_BAR) ? TRUE : FALSE;

    OSRestoreInterrupts(enabled);
    return old;
}

BOOL WPADIsDpdEnabled(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled = OSDisableInterrupts();

    BOOL dpdEnabled = p->wpInfo.dpd;

    OSRestoreInterrupts(enabled);
    return dpdEnabled;
}

static void __dpdCb(s32 chan, s32 result) {
    WPADCB* p = _wpdcb[chan];

    p->currentDpdCommand = p->pendingDpdCommand;
    p->wpInfo.dpd = p->pendingDpdCommand == WPAD_DPD_DISABLE ? 0 : 1;
}

s32 WPADControlDpd(s32 chan, u32 command, WPADCallback pCallback) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    BOOL dpdEnabled;
    BOOL handshake;
    u8 currCmd;
    u8 pendingCmd;
    s32 status;

    static const u8 cfg1[WPAD_MAX_DPD_SENS][DPD_CONFIG1_SIZE] = {
        {0x02, 0x00, 0x00, 0x71, 0x01, 0x00, 0x64, 0x00, 254},
        {0x02, 0x00, 0x00, 0x71, 0x01, 0x00, 0x96, 0x00, 180},
        {0x02, 0x00, 0x00, 0x71, 0x01, 0x00, 0xAA, 0x00, 100},
        {0x02, 0x00, 0x00, 0x71, 0x01, 0x00, 0xC8, 0x00,  54},
        {0x07, 0x00, 0x00, 0x71, 0x01, 0x00, 0x72, 0x00,  32}
    };

    static const u8 cfg2[WPAD_MAX_DPD_SENS][DPD_CONFIG2_SIZE] = {
        {0xFD, 0x05},
        {0xB3, 0x04},
        {0x63, 0x03},
        {0x35, 0x03},
        {0x1F, 0x03}
    };

    enabled = OSDisableInterrupts();

    dpdEnabled = p->wpInfo.dpd;
    currCmd = p->currentDpdCommand;
    pendingCmd = p->pendingDpdCommand;
    status = p->status;
    handshake = p->handshakeFinished;

    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_NO_CONTROLLER) {
        goto _end;
    }

    if (!handshake) {
        status = WPAD_ERR_COMMUNICATION_ERROR;
        goto _end;
    }

    if (command == WPAD_DPD_DISABLE) {
        if (!dpdEnabled) {
            status = WPAD_ERR_OK;
        } else {
            enabled = OSDisableInterrupts();

            if (__CanPushCmdQueue(&p->stdCmdQueue, 3)) {
                p->pendingDpdCommand = command;

                WPADiSendEnableDPD(&p->stdCmdQueue, FALSE, NULL);
                WPADiSendDPDCSB(&p->stdCmdQueue, FALSE, &__dpdCb);

                WPADiSendGetContStat(&p->stdCmdQueue, NULL, pCallback);

                OSRestoreInterrupts(enabled);
                return WPAD_ERR_OK;
            }

            status = WPAD_ERR_COMMUNICATION_ERROR;

            OSRestoreInterrupts(enabled);
        }
    } else if (command != pendingCmd) {
        enabled = OSDisableInterrupts();

        if (__CanPushCmdQueue(&p->stdCmdQueue, 8)) {
            p->pendingDpdCommand = command;

            WPADiSendEnableDPD(&p->stdCmdQueue, TRUE, NULL);
            WPADiSendDPDCSB(&p->stdCmdQueue, TRUE, NULL);

            WPADiSendWriteDataCmd(&p->stdCmdQueue, 0x01, WM_REG_DPD_30, NULL);

            WPADiSendWriteData(&p->stdCmdQueue, cfg1[_dpdSensitivity - 1],
                               DPD_CONFIG1_SIZE, WM_REG_DPD_CONFIG_BLOCK_1,
                               NULL);

            WPADiSendWriteData(&p->stdCmdQueue, cfg2[_dpdSensitivity - 1],
                               DPD_CONFIG2_SIZE, WM_REG_DPD_CONFIG_BLOCK_2,
                               NULL);

            WPADiSendWriteDataCmd(&p->stdCmdQueue, command,
                                  WM_REG_DPD_DATA_FORMAT, NULL);
            WPADiSendWriteDataCmd(&p->stdCmdQueue, 0x08, WM_REG_DPD_30,
                                  &__dpdCb);

            WPADiSendGetContStat(&p->stdCmdQueue, NULL, pCallback);

            OSRestoreInterrupts(enabled);
            return WPAD_ERR_OK;
        }

        status = WPAD_ERR_COMMUNICATION_ERROR;

        OSRestoreInterrupts(enabled);
    }

_end:
    if (pCallback != NULL) {
        pCallback(chan, status);
    }

    return status;
}

static void __SendData(s32 chan, WPADCommand command) {
    BOOL enabled;
    BOOL rumble;
    s8 devHandle;
    WPADCB* p;
    UINT8 reportID;
    BT_HDR* pBuffer;
    u8* pRptData;
    s32 status;
    u8* pCmdData;
    UINT16 len;

    pBuffer = NULL;

    reportID = command.reportID;
    pCmdData = command.dataBuf;
    len = command.dataLength;

    enabled = OSDisableInterrupts();

    p = _wpdcb[chan];
    status = p->status;
    devHandle = p->devHandle;

    if (devHandle < 0) {
        OSRestoreInterrupts(enabled);
        return;
    }

    p->status = WPAD_ERR_COMMUNICATION_ERROR;
    rumble = p->motorRunning & _rumble;

    OSRestoreInterrupts(enabled);

    if (reportID == RPTID_SET_RUMBLE) {
        BOOL enabled = OSDisableInterrupts();

        p->status = status;

        OSRestoreInterrupts(enabled);
    } else if (reportID == RPTID_SEND_SPEAKER_DATA) {
        BOOL enabled = OSDisableInterrupts();

        p->status = status;
        p->audioFrames--;

        OSRestoreInterrupts(enabled);
    } else {
        enabled = OSDisableInterrupts();

        switch (reportID) {
            case RPTID_WRITE_DATA: {
                break;
            }
            case RPTID_READ_DATA: {
                p->wmReadHadError = 0;
                p->wmReadAddress = command.readAddress;
                p->wmReadLength = command.readLength;
                p->wmReadDataPtr = command.dstBuf;
                break;
            }
            case RPTID_REQUEST_STATUS: {
                p->status = status;
                p->wpInfoOut = command.statusReportOut;
                p->statusReqBusy = TRUE;
                break;
            }
            case 0xFF: { // wat
                u32 time;
                memcpy(&time, command.dataBuf, sizeof(u32));
                p->lastReportSendTime = __OSGetSystemTime() + time;
                p->unk_0x910 = 1;
                return;
            }
            default: {
                pCmdData[0] |= (1 << RPT_OUT_FLAG_REQUEST_ACK_RPT);
                break;
            }
        }

        p->cmdBlkCB = command.cmdCB;
        p->lastReportID = reportID;
        p->lastReportSendTime = __OSGetSystemTime() + OSSecondsToTicks(2);
        p->unk_0x910 = 0;

        OSRestoreInterrupts(enabled);
    }

    DEBUGPrint("handle = %d, repid = %02x\n", devHandle, reportID);

    pBuffer = GKI_getbuf((u8)(len + 18));
    pBuffer->len = (u8)(len + 1);
    pBuffer->offset = 10;

    pRptData = (u8*)(pBuffer) + sizeof(BT_HDR) + pBuffer->offset;
    pRptData[0] = reportID;
    memcpy(&pRptData[1], pCmdData, len);

    if (rumble) {
        pRptData[RPT_OUT_FLAGS] |= (1 << RPT_OUT_FLAG_RUMBLE);
    }
    else {
        pRptData[RPT_OUT_FLAGS] &= ~(1 << RPT_OUT_FLAG_RUMBLE);
    }

    BTA_HhSendData((UINT8)devHandle, pBuffer);
}

BOOL WPADiSendSetPort(WPADCommandQueue* pQueue, u8 port, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;

    command.reportID = RPTID_SET_PORT;
    command.dataLength = RPT11_SIZE;
    command.dataBuf[RPT11_LED] = port << 4;
    command.cmdCB = pCallback;

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendSetReportType(WPADCommandQueue* pQueue, s32 format, BOOL unk, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;

    command.reportID = RPTID_SET_DATA_REPORT_MODE;
    command.dataLength = RPT12_SIZE;
    command.dataBuf[RPT12_CONT_REPORT] = unk ? 0 : 4; // Always continuous reporting
    command.cmdCB = pCallback;

    switch (format) {
        case WPAD_FMT_CORE_BTN: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN;
            break;
        }
        case WPAD_FMT_CORE_BTN_ACC: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_ACC;
            break;
        }
        case WPAD_FMT_CORE_BTN_ACC_DPD: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_ACC_DPD12;
            break;
        }
        case WPAD_FMT_FS_BTN: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_EXT8;
            break;
        }
        case WPAD_FMT_FS_BTN_ACC: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_ACC_EXT16;
            break;
        }
        case WPAD_FMT_FS_BTN_ACC_DPD: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_ACC_DPD10_EXT9;
            break;
        }
        case WPAD_FMT_CLASSIC_BTN: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_EXT8;
            break;
        }
        case WPAD_FMT_CLASSIC_BTN_ACC: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_ACC_EXT16;
            break;
        }
        case WPAD_FMT_CLASSIC_BTN_ACC_DPD: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_ACC_DPD10_EXT9;
            break;
        }
        case WPAD_FMT_BTN_ACC_DPD_EXTENDED: {
            command.dataBuf[RPT12_DATA_REPORT_MODE] = RPTID_DATA_BTN_ACC_DPD18_1;
            break;
        }
    }

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendEnableDPD(WPADCommandQueue* pQueue, BOOL enable, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;

    command.reportID = RPTID_ENABLE_DPD;
    command.dataLength = RPT13_SIZE;
    command.dataBuf[RPT13_DPD_ENABLE] = enable ? 4 : 0;
    command.cmdCB = pCallback;

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendEnableSpeaker(WPADCommandQueue* pQueue, BOOL enable, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;

    command.reportID = RPTID_ENABLE_SPEAKER;
    command.dataLength = RPT14_SIZE;
    command.dataBuf[RPT14_SPEAKER_ENABLE] = enable ? 4 : 0;
    command.cmdCB = pCallback;

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendGetContStat(WPADCommandQueue* pQueue, WPADInfo* pInfo, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;

    command.reportID = RPTID_REQUEST_STATUS;
    command.dataLength = RPT15_SIZE;
    command.dataBuf[0] = 0;
    command.cmdCB = pCallback;
    command.statusReportOut = pInfo;

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendWriteDataCmd(WPADCommandQueue* pQueue, u8 cmd, u32 addr, WPADCallback pCallback) {
    return WPADiSendWriteData(pQueue, &cmd, sizeof(u8), addr, pCallback);
}

BOOL WPADiSendWriteData(WPADCommandQueue* pQueue, const void* pSrc, u16 len, u32 addr, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;
    u8 packedLen = len & 31;

    command.reportID = RPTID_WRITE_DATA;
    command.dataLength = RPT16_SIZE;
    command.cmdCB = pCallback;
    memcpy(&command.dataBuf[RPT16_DATA_DST_ADDRESS], &addr, sizeof(u32));
    memcpy(&command.dataBuf[RPT16_DATA_LENGTH], &packedLen, sizeof(u8));
    memcpy(&command.dataBuf[RPT16_DATA], pSrc, len);

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendReadData(WPADCommandQueue* pQueue, void* pDst, u16 len, u32 addr, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;

    command.reportID = RPTID_READ_DATA;
    command.dataLength = RPT17_SIZE;
    command.cmdCB = pCallback;
    memcpy(&command.dataBuf[RPT17_DATA_SRC_ADDRESS], &addr, sizeof(u32));
    memcpy(&command.dataBuf[RPT17_DATA_LENGTH], &len, sizeof(u16));
    command.dstBuf = pDst;
    command.readLength = len;
    command.readAddress = addr;

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendStreamData(WPADCommandQueue* pQueue, const void* pData, u16 len) {
    BOOL success;
    WPADCommand command;
    u8 packedLen = len << 3;

    command.reportID = RPTID_SEND_SPEAKER_DATA;
    command.dataLength = sizeof(command.dataBuf);
    command.dataBuf[RPT18_DATA_LENGTH] = packedLen;
    command.cmdCB = NULL;
    memcpy(&command.dataBuf[RPT18_DATA], pData, len);

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendMuteSpeaker(WPADCommandQueue* pQueue, BOOL mute, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;

    command.reportID = RPTID_MUTE_SPEAKER;
    command.dataLength = RPT19_SIZE;
    command.dataBuf[RPT19_SPEAKER_MUTE] = mute ? 4 : 0;
    command.cmdCB = pCallback;

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL WPADiSendDPDCSB(WPADCommandQueue* pQueue, BOOL enable, WPADCallback pCallback) {
    BOOL success;
    WPADCommand command;

    command.reportID = RPTID_SEND_DPD_CSB;
    command.dataLength = RPT1A_SIZE;
    command.dataBuf[RPT1A_DPD_CSB] = enable ? 4 : 0;
    command.cmdCB = pCallback;

    success = WPADiPushCommand(pQueue, command);
    return success;
}

BOOL __CanPushCmdQueue(const WPADCommandQueue* pQueue, s8 num) {
    s8 queueSize = __GetCmdNumber(pQueue);

    if ((u32)(queueSize + num) <= pQueue->capacity - 1) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

s8 __GetCmdNumber(const WPADCommandQueue* pQueue) {
    BOOL enabled;
    s8 remain;

    enabled = OSDisableInterrupts();

    remain = pQueue->back - pQueue->front;
    if (remain < 0) {
        remain += pQueue->capacity;
    }

    OSRestoreInterrupts(enabled);

    return remain;
}

void WPADiClearQueue(WPADCommandQueue* pQueue) {
    BOOL enabled = OSDisableInterrupts();

    pQueue->front = 0;
    pQueue->back = 0;
    memset(pQueue->buffer, 0, pQueue->capacity * sizeof(WPADCommand));

    OSRestoreInterrupts(enabled);
}

BOOL WPADiPushCommand(WPADCommandQueue* pQueue, WPADCommand command) {
    BOOL enabled = OSDisableInterrupts();

    if (pQueue->capacity - 1 == __GetCmdNumber(pQueue)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    // @bug Useless memset
    memset(&pQueue->buffer[pQueue->back], 0, sizeof(WPADCommand));
    memcpy(&pQueue->buffer[pQueue->back], &command, sizeof(WPADCommand));

    pQueue->back = pQueue->back == pQueue->capacity - 1 ? 0 : pQueue->back + 1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL WPADiGetCommand(const WPADCommandQueue* pQueue, WPADCommand* pCommand) {
    BOOL enabled = OSDisableInterrupts();

    if (__GetCmdNumber(pQueue) == 0) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    memcpy(pCommand, &pQueue->buffer[pQueue->front], sizeof(WPADCommand));

    OSRestoreInterrupts(enabled);
    return TRUE;
}

BOOL WPADiPopCommand(WPADCommandQueue* pQueue) {
    BOOL enabled = OSDisableInterrupts();

    if (__GetCmdNumber(pQueue) == 0) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    memset(&pQueue->buffer[pQueue->front], 0, sizeof(WPADCommand));

    pQueue->front = pQueue->front == pQueue->capacity - 1 ? 0 : pQueue->front + 1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

static void __SetScreenSaverFlag(BOOL disable) {
    if (disable) {
        __VIResetRFIdle();
    }
}

static u8 __GetDpdSensitivity() {
    u8 result = SCGetBtDpdSensibility();

    if (result < WPAD_MIN_DPD_SENS) {
        result = WPAD_MIN_DPD_SENS;
    }

    if (result > WPAD_MAX_DPD_SENS) {
        result = WPAD_MAX_DPD_SENS;
    }

    return result;
}

static u8 __GetSensorBarPosition() {
    // SC_SENSOR_BAR_TOP ? WPAD_SENSOR_BAR_TOP : WPAD_SENSOR_BAR_BOTTOM
    return !!(SCGetWpadSensorBarPosition() == 1);
}

static u32 __GetMotorMode() {
    // SC_MOTOR_ON ? WPAD_MOTOR_ON : WPAD_MOTOR_OFF
    return !!(SCGetWpadMotorMode() == 1);
}

static u8 __ClampSpeakerVolume(u8 volume) {
    u8 result = volume;

    if (volume <= 0) {
        result = 0;
    }

    if (volume >= WPAD_MAX_SPEAKER_VOLUME) {
        result = WPAD_MAX_SPEAKER_VOLUME;
    }

    return result;
}

static u8 __GetSpeakerVolume() {
    u8 volume = SCGetWpadSpeakerVolume();
    return __ClampSpeakerVolume(volume);
}

u16 _WPADGetStackBufferStatus(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    s32 status;
    s8 handle;

    enabled = OSDisableInterrupts();
    status = p->status;
    handle = p->devHandle;
    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_NO_CONTROLLER) {
        return 0;
    }

    return _WUDGetQueuedSize(handle);
}

u16 _WPADGetModuleBufferStatus(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enabled;
    s32 status;
    s8 handle;

    enabled = OSDisableInterrupts();
    status = p->status;
    handle = p->devHandle;
    OSRestoreInterrupts(enabled);

    if (status == WPAD_ERR_NO_CONTROLLER) {
        return 0;
    }

    return _WUDGetNotAckedSize(handle);
}

void WPADRecalibrate(s32 chan) {
    WPADCB* p = _wpdcb[chan];
    BOOL enable = OSDisableInterrupts();

    p->calibrated = FALSE;

    OSRestoreInterrupts(enable);
}
