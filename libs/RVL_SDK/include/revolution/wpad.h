#ifndef REVOLUTION_WPAD_H
#define REVOLUTION_WPAD_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus


typedef void* (*WPADAllocFunc)(u32 size);
typedef BOOL (*WPADFreeFunc)(void* block);

typedef void (*WPADSyncDeviceCallback)(s32 result, s32 num);
typedef void (*WPADClearDeviceCallback)(s32 result);

/* WPAD CHANNEL */

#define WPAD_CHAN0              0
#define WPAD_CHAN1              1
#define WPAD_CHAN2              2
#define WPAD_CHAN3              3

#define WPAD_MAX_CONTROLLERS    4

/* ERRORS */

enum {
    WPAD_ERR_OK = 0,
    WPAD_ERR_NO_CONTROLLER = -1,
    WPAD_ERR_COMMUNICATION_ERROR  = -2,
    WPAD_ERR_TRANSFER = -3,
    WPAD_ERR_INVALID = -4,
    WPAD_ERR_CORRUPTED = -7,

    WPAD_ERR_BUSY = WPAD_ERR_COMMUNICATION_ERROR ,
};

/* DEVICE TYPE */

enum {
    WPAD_DEV_CORE,
    WPAD_DEV_FREESTYLE,
    WPAD_DEV_CLASSIC,

    WPAD_DEV_FUTURE = 251,
    WPAD_DEV_NOT_SUPPORTED = 252,
    WPAD_DEV_NOT_FOUND = 253,
    WPAD_DEV_NULL = 254,
    WPAD_DEV_UNKNOWN = 255,
};

/* WIRELESS REMOTE */

#define WPAD_BUTTON_LEFT        (1 << 0)    // 0x01
#define WPAD_BUTTON_RIGHT       (1 << 1)    // 0x02
#define WPAD_BUTTON_DOWN        (1 << 2)    // 0x04
#define WPAD_BUTTON_UP          (1 << 3)    // 0x08
#define WPAD_BUTTON_PLUS        (1 << 4)    // 0x10
#define WPAD_BUTTON_2           (1 << 8)    // 0x100
#define WPAD_BUTTON_1           (1 << 9)    // 0x200
#define WPAD_BUTTON_B           (1 << 10)   // 0x400
#define WPAD_BUTTON_A           (1 << 11)   // 0x800
#define WPAD_BUTTON_MINUS       (1 << 12)   // 0x1000
#define WPAD_BUTTON_HOME        (1 << 15)   // 0x2000

/* CLASSIC CONTROLLER */

#define WPAD_BUTTON_CL_UP       (1 <<  0)   // 0x01
#define WPAD_BUTTON_CL_LEFT     (1 <<  1)   // 0x02
#define WPAD_BUTTON_CL_ZR       (1 <<  2)   // 0x04
#define WPAD_BUTTON_CL_X        (1 <<  3)   // 0x08
#define WPAD_BUTTON_CL_A        (1 <<  4)   // 0x10
#define WPAD_BUTTON_CL_Y        (1 <<  5)   // 0x20
#define WPAD_BUTTON_CL_B        (1 <<  6)   // 0x40
#define WPAD_BUTTON_CL_ZL       (1 <<  7)   // 0x80
#define WPAD_BUTTON_CL_FULL_R   (1 <<  9)   // 0x200
#define WPAD_BUTTON_CL_PLUS     (1 << 10)   // 0x400
#define WPAD_BUTTON_CL_HOME     (1 << 11)   // 0x800
#define WPAD_BUTTON_CL_MINUS    (1 << 12)   // 0x1000
#define WPAD_BUTTON_CL_FULL_L   (1 << 13)   // 0x2000
#define WPAD_BUTTON_CL_DOWN     (1 << 14)   // 0x4000
#define WPAD_BUTTON_CL_RIGHT    (1 << 15)   // 0x8000

enum {
    WPAD_FMT_CORE_BTN,
    WPAD_FMT_CORE_BTN_ACC,
    WPAD_FMT_CORE_BTN_ACC_DPD,

    WPAD_FMT_FS_BTN,
    WPAD_FMT_FS_BTN_ACC,
    WPAD_FMT_FS_BTN_ACC_DPD,

    WPAD_FMT_CLASSIC_BTN,
    WPAD_FMT_CLASSIC_BTN_ACC,
    WPAD_FMT_CLASSIC_BTN_ACC_DPD,

    WPAD_FMT_BTN_ACC_DPD_EXTENDED,
};

enum {
    WPAD_DEV_MODE_NORMAL,
    WPAD_DEV_MODE_CLASSIC_REDUCED,
    WPAD_DEV_MODE_CLASSIC_EXTENDED,
    WPAD_DEV_MODE_CLASSIC_STANDARD,
};

enum {
    WPAD_MOTOR_STOP,
    WPAD_MOTOR_RUMBLE,
};

enum {
    WPAD_SPEAKER_OFF,
    WPAD_SPEAKER_ON,
    WPAD_SPEAKER_MUTE,
    WPAD_SPEAKER_UNMUTE,
    WPAD_SPEAKER_PLAY,
    WPAD_SPEAKER_UNK5
};

enum {
    WPAD_DPD_DISABLE = 0x00,
    WPAD_DPD_BASIC = 0x01,
    WPAD_DPD_STANDARD = 0x03,
    WPAD_DPD_EXTENDED = 0x05,
};

enum {
    WPAD_SENSOR_BAR_BOTTOM,
    WPAD_SENSOR_BAR_TOP
};

enum {
    WPAD_MOTOR_OFF,
    WPAD_MOTOR_ON
};

enum {
    WPAD_ACC_GRAVITY_UNIT_CORE,
    WPAD_ACC_GRAVITY_UNIT_FS,
};

typedef struct DPDObject {
    s16 x;          // 0x00
    s16 y;          // 0x02
    u16 size;       // 0x04
    u8  traceId;    // 0x06
} DPDObject;

typedef struct WPADStatus {
    u16         button;                     // 0x00
    s16         accX;                       // 0x02
    s16         accY;                       // 0x04
    s16         accZ;                       // 0x06

    DPDObject   obj[WPAD_MAX_CONTROLLERS];  // 0x08

    u8          dev;                        // 0x28
    s8          err;                        // 0x29
} WPADStatus;

typedef struct WPADFSStatus {
    u16 button; // 0x0, 0x2
    s16 accX; // 0x2, 0x2
    s16 accY; // 0x4, 0x2
    s16 accZ; // 0x6, 0x2
    struct DPDObject obj[4]; // 0x8, 0x20
    u8 dev; // 0x28, 0x1
    s8 err; // 0x29, 0x1
    s16 fsAccX; // 0x2A, 0x2
    s16 fsAccY; // 0x2C, 0x2
    s16 fsAccZ; // 0x2E, 0x2
    s8 fsStickX; // 0x30, 0x1
    s8 fsStickY; // 0x31, 0x1
} WPADFSStatus;

typedef struct WPADCLStatus {
    u16         button;                     // 0x00
    s16         accX;                       // 0x02
    s16         accY;                       // 0x04
    s16         accZ;                       // 0x06

    DPDObject   obj[WPAD_MAX_CONTROLLERS];  // 0x08

    u8          dev;                        // 0x28
    s8          err;                        // 0x29

    u16         clButton;                   // 0x2A

    s16         clLStickX;                  // 0x2C
    s16         clLStickY;                  // 0x2E
    s16         clRStickX;                  // 0x30
    s16         clRStickY;                  // 0x32

    u8          clTriggerL;                 // 0x34
    u8          clTriggerR;                 // 0x35
} WPADCLStatus;

typedef struct WPADTRStatus {
    u16 button;                             // 0x00
    s16 accX;                               // 0x02
    s16 accY;                               // 0x04
    s16 accZ;                               // 0x06

    DPDObject obj[WPAD_MAX_CONTROLLERS];    // 0x08

    u8 dev;                                 // 0x28
    s8 err;                                 // 0x29

    u16 trButton;                           // 0x2A
    u8 brake;                               // 0x2C
    u8 mascon;                              // 0x2D
} WPADTRStatus;

typedef struct WPADBLStatus {
    u16 button;                             // 0x00
    s16 accX;                               // 0x02
    s16 accY;                               // 0x04
    s16 accZ;                               // 0x06

    DPDObject obj[WPAD_MAX_CONTROLLERS];    // 0x08

    u8 dev;                                 // 0x28
    s8 err;                                 // 0x29

    u16 press[WPAD_MAX_CONTROLLERS];        // 0x2A
    s8 temp;                                // 0x32
    u8 battery;                             // 0x33
} WPADBLStatus;

typedef struct WPADInfo {
    BOOL    dpd;        // 0x00
    BOOL    speaker;    // 0x04
    BOOL    attach;     // 0x08
    BOOL    lowBat;     // 0x0C
    BOOL    nearempty;  // 0x10

    u8      battery;    // 0x14
    u8      led;        // 0x15
    u8      protocol;   // 0x16
    u8      firmware;   // 0x17
} WPADInfo;

typedef void (*WPADCallback)(s32 chan, s32 result);
typedef void (*WPADSamplingCallback)(s32 chan);
typedef void (*WPADConnectCallback)(s32 chan, s32 result);
typedef void (*WPADExtensionCallback)(s32 chan, s32 dev);
typedef void (*WPADSaveCallback)(int status);

void                    WPADInit();
void                    WPADShutdown();

BOOL                    WPADStartSimpleSync();
BOOL                    WPADStartFastSimpleSync();
BOOL                    WPADStopSimpleSync();
BOOL                    WPADStartClearDevice();

WPADSyncDeviceCallback  WPADSetSimpleSyncCallback(WPADSyncDeviceCallback pCallback);

WPADClearDeviceCallback WPADSetClearDeviceCallback(WPADClearDeviceCallback pCallback);

void                    WPADRegisterAllocator(WPADAllocFunc pAllocFunc, WPADFreeFunc pFreeFunc);
u32                     WPADGetWorkMemorySize();

s32                     WPADGetStatus();
u8                      WPADGetSensorBarPosition();

void                    WPADGetAccGravityUnit(s32 chan, u32 type, s32* acc);

void                    WPADDisconnect(s32 chan);
s32                     WPADProbe(s32 chan, u32* pDevType);

WPADSamplingCallback    WPADSetSamplingCallback(s32 chan, WPADSamplingCallback callback);
WPADConnectCallback     WPADSetConnectCallback(s32 chan, WPADConnectCallback callback);
WPADExtensionCallback   WPADSetExtensionCallback(s32 chan, WPADExtensionCallback callback);

u32                     WPADGetDataFormat(s32 chan);
s32                     WPADSetDataFormat(s32 chan, u32 format);

s32                     WPADGetInfoAsync(s32 chan, WPADInfo* info, WPADCallback callback);

void                    WPADControlMotor(s32 chan, u32 command);
void                    WPADEnableMotor(BOOL enable);
BOOL                    WPADIsMotorEnabled();

BOOL                    WPADSaveConfig(WPADSaveCallback callback);

void                    WPADRead(s32 chan, WPADStatus* status);
void                    WPADSetAutoSamplingBuf(s32 chan, void* buffer, u32 len);

BOOL                    WPADIsSpeakerEnabled(s32 chan);
s32                     WPADControlSpeaker(s32 chan, u32 command, WPADCallback callback);
u8                      WPADGetSpeakerVolume();
void                    WPADSetSpeakerVolume(u8 volume);

BOOL                    WPADCanSendStreamData(s32 chan);
s32                     WPADSendStreamData(s32 chan, void* data, u16 len);

u8                      WPADGetDpdSensitivity();
BOOL                    WPADSetSensorBarPower(BOOL enable);
BOOL                    WPADIsDpdEnabled(s32 chan);
s32                     WPADControlDpd(s32 chan, u32 command, WPADCallback callback);

void                    WPADRecalibrate(s32 chan);

s32                     WPADReadFaceData(s32 chan, void* dst, u16 size, u16 src, WPADCallback cb);
s32                     WPADWriteFaceData(s32 chan, void *dst, u16 size, u16 src, WPADCallback cb);

void                    __WPADReconnect(BOOL reconnect);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_WPAD_H
