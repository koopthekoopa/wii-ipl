#include <revolution/types.h>

#include <revolution/os.h>
#include <revolution/usbkbd.h>

#include <private/ios.h>
#include <private/ipc.h>

enum {
    USB_KBD_IOCTL_INIT_CALLBACK = 0,
};

enum {
    USB_KBD_STATE_ATTACH = 0,
    USB_KBD_STATE_DETACH = 1,
    USB_KBD_STATE_EVENT = 2,
};

typedef struct _usbKbdAsyncMem {
    u32     state;      // 0x00
    void*   kbd;        // 0x04
    char    modifiers;  // 0x08
    u8      unk_0x09;
    u8      keys[6];    // 0x0A
} usbKbdAsyncMem;

static s32                  usbKbdFd;

static USBKBDAttachCallback usbKbdAttachCb;
static USBKBDDetachCallback usbKbdDetachCb;
static USBKBDEventCallback  usbKbdEventCb;

static u32                  usbKbdIosResult;
static u8                   usbKbdIosResultMem[OSRoundUp32B(sizeof(usbKbdAsyncMem))];

static BOOL                 usbKbdInitialized = FALSE;
static BOOL                 usbKbdAsyncReady = FALSE;

static IOSError usbKbdCallbackHandler(s32 result, void* arg) {
    usbKbdAsyncMem* data = (usbKbdAsyncMem*)arg;

    // Current state
    switch (data->state) {
        case USB_KBD_STATE_ATTACH: {
            if (usbKbdAttachCb != NULL) {
                usbKbdAttachCb(data->kbd);
            }
            break;
        }
        case USB_KBD_STATE_DETACH: {
            if (usbKbdDetachCb != NULL) {
                usbKbdDetachCb(data->kbd);
            }
            break;
        }
        case USB_KBD_STATE_EVENT: {
            if (usbKbdEventCb != NULL) {
                usbKbdEventCb(data->kbd, &data->modifiers);
            }
            break;
        }
    }

    // Loop back
    IOS_IoctlAsync(usbKbdFd, USB_KBD_IOCTL_INIT_CALLBACK, NULL, 0, (void*)usbKbdIosResult, sizeof(usbKbdAsyncMem), usbKbdCallbackHandler, (void*)usbKbdIosResult);
    return IPC_RESULT_OK;
}

USBKBDErr USBKBDInitialize(USBKBDAttachCallback attachCb, USBKBDDetachCallback detachCb) {
    if (usbKbdInitialized) {
        return USB_KBD_ERR_ALREADY_INIT;
    }

    usbKbdFd = IOS_Open("/dev/usb/kbd", 0);
    if (usbKbdFd < 0) {
        return USB_KBD_ERR_FAIL_INIT;
    }

    usbKbdAttachCb = attachCb;
    usbKbdDetachCb = detachCb;
    usbKbdEventCb = NULL;
    usbKbdInitialized = TRUE;
    usbKbdIosResult = (u32)usbKbdIosResultMem;

    if (!usbKbdAsyncReady) {
        if (IOS_IoctlAsync(usbKbdFd, USB_KBD_IOCTL_INIT_CALLBACK, NULL, 0, usbKbdIosResultMem, sizeof(usbKbdAsyncMem), usbKbdCallbackHandler, usbKbdIosResultMem) != IPC_RESULT_OK) {
            return USB_KBD_ERR_FAIL_ASYNC_INIT;
        }
        usbKbdAsyncReady = TRUE;
    }
    else {
        return USB_KBD_ERR_OK;
    }

    return USB_KBD_ERR_OK;
}

USBKBDErr USBKBDSetLED(u32 param_1, u8 param_2, USBKBDCmdLED* cmd) {
    if (usbKbdFd < 0) {
        return USB_KBD_ERR_NOT_INIT;
    }

    cmd->unk_0x04 = param_2;
    cmd->unk_0x00 = param_1;

    return IOS_Write(usbKbdFd, cmd, sizeof(USBKBDCmdLED)) != IPC_RESULT_OK ? USB_KBD_ERR_FATAL : USB_KBD_ERR_OK;
}

static IOSError usbKbdSetLEDHandler(IOSError error, void* arg) {
    USBKBDCmdLEDAsync* cmd = (USBKBDCmdLEDAsync*)arg;

    cmd->cb(error == IPC_RESULT_OK, cmd->cbArg);
    return IPC_RESULT_OK;
}

USBKBDErr USBKBDSetLEDAsync(u32 param_1, u8 param_2, USBKBDCmdLEDAsync* cmd, USBKBDCmdLEDCallback cb, void* cbArg) {
    if (usbKbdFd < 0) {
        return USB_KBD_ERR_NOT_INIT;
    }
    cmd->base.unk_0x00 = param_1;
    cmd->base.unk_0x04 = param_2;
    cmd->cb = cb;
    cmd->cbArg = cbArg;

    return IOS_WriteAsync(usbKbdFd, &cmd->base, sizeof(USBKBDCmdLED), usbKbdSetLEDHandler, cmd) != IPC_RESULT_OK ? USB_KBD_ERR_FATAL : USB_KBD_ERR_OK;
}

USBKBDErr USBKBDRegisterEventCallback(USBKBDEventCallback cb) {
    if (usbKbdInitialized) {
        usbKbdEventCb = cb;
        return USB_KBD_ERR_OK;
    }
    else {
        return USB_KBD_ERR_NOT_INIT;
    }
}
