#ifndef REVOLUTION_WPAD_H
#define REVOLUTION_WPAD_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#define WPAD_MAX_CONTROLLERS    4

#define WPAD_BUTTON_LEFT        (1 << 0)
#define WPAD_BUTTON_RIGHT       (1 << 1)
#define WPAD_BUTTON_DOWN        (1 << 2)
#define WPAD_BUTTON_UP          (1 << 3)
#define WPAD_BUTTON_PLUS        (1 << 4)
#define WPAD_BUTTON_2           (1 << 8)
#define WPAD_BUTTON_1           (1 << 9)
#define WPAD_BUTTON_B           (1 << 10)
#define WPAD_BUTTON_A           (1 << 11)
#define WPAD_BUTTON_MINUS       (1 << 12)
#define WPAD_BUTTON_HOME        (1 << 15)

#define WPAD_ERR_OK              0
#define WPAD_ERR_NO_CONTROLLER  -1
#define WPAD_ERR_BUSY           -2
#define WPAD_ERR_TRANSFER       -3
#define WPAD_ERR_INVALID        -4
#define WPAD_ERR_UNKNOWN        -5
#define WPAD_ERR_BAD_CHANNEL    -6
#define WPAD_ERR_CORRUPTED      -7

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

s32     WPADGetStatus();

void    __WPADReconnect(BOOL reconnect);
void    WPADSetSensorBarPower(BOOL value);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_WPAD_H


