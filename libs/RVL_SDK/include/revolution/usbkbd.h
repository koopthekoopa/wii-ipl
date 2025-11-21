#ifndef REVOLUTION_USB_KBD_H
#define REVOLUTION_USB_KBD_H

#include <revolution/types.h>

typedef s32 USBKBDErr;

enum {
    USB_KBD_ERR_OK = 0,
    USB_KBD_ERR_FATAL = 1,
    USB_KBD_ERR_ALREADY_INIT = 2,
    USB_KBD_ERR_NOT_INIT = 3,
    USB_KBD_ERR_FAIL_INIT = 4,
    USB_KBD_ERR_FAIL_ASYNC_INIT = 6,
};

typedef void (*USBKBDAttachCallback)(void*);
typedef void (*USBKBDDetachCallback)(void*);
typedef void (*USBKBDEventCallback)(void*, char*);
typedef void (*USBKBDCmdLEDCallback)(BOOL success, void *cbarg);

typedef struct USBKBDCmdLED {
    vu32 unk_0x00;
    vu8  unk_0x04;
} USBKBDCmdLED;

typedef struct USBKBDCmdLEDAsync {
    USBKBDCmdLED            base;           // 0x00
    u8                      unk_0x08[0x10];
    USBKBDCmdLEDCallback    cb;             // 0x18
    void*                   cbArg;          // 0x1C
} USBKBDCmdLEDAsync;

USBKBDErr   USBKBDInitialize(USBKBDAttachCallback attachCb, USBKBDDetachCallback detachCb);

USBKBDErr   USBKBDSetLED(u32, u8, USBKBDCmdLED* cmd);
USBKBDErr   USBKBDSetLEDAsync(u32, u8, USBKBDCmdLEDAsync* cmd, USBKBDCmdLEDCallback cb, void* cbArg);

USBKBDErr   USBKBDRegisterEventCallback(USBKBDEventCallback cb);

#endif  // REVOLUTION_USB_KBD_H
