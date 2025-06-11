#ifndef PRIVATE_USB_H
#define PRIVATE_USB_H

#include <revolution/types.h>

#include <private/ios/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*USBCallback)(IOSError result, void* arg);
typedef void (*USBIsoCallback)(IOSError err, void* unkIsoArg, void* cbArg);

IOSError    IUSB_OpenLib();
IOSError    IUSB_CloseLib();

IOSError    IUSB_OpenDeviceIds(const char* interface, u16 vid, u16 pid, IOSError* resultOut);

IOSError    IUSB_CloseDeviceAsync(s32 fd, USBCallback callback, void* callbackArg);

IOSError    IUSB_ReadIntrMsgAsync(s32 fd, u32 endpoint, u32 length, void* buffer, USBCallback callback, void* callbackArg);
IOSError    IUSB_ReadBlkMsgAsync(s32 fd, u32 endpoint, u32 length, void* buffer, USBCallback callback, void* callbackArg);

IOSError    IUSB_WriteBlkMsgAsync(s32 fd, u32 endpoint, u32 length, const void* buffer, USBCallback callback, void* callbackArg);
IOSError    IUSB_WriteCtrlMsgAsync(s32 fd, u8 requestType, u8 request, u16 value, u16 index, u16 length, void* buffer, USBCallback callback, void* callbackArg);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_USB_H
