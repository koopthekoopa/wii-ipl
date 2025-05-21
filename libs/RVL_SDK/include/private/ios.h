#ifndef PRIVATE_IOS_H
#define PRIVATE_IOS_H

#include <private/ios/types.h>

/* Clt */

IOSError    IOS_OpenAsync(const char* pPath, u32 flags, IOSIpcCb callback, void* callback_arg);
IOSError    IOS_Open(const char* path, u32 flags);

IOSError    IOS_CloseAsync(IOSFd fd, IOSIpcCb callback, void* callbackArg);
IOSError    IOS_Close(IOSFd fd);

IOSError    IOS_ReadAsync(IOSFd fd, void* buf, u32 len, IOSIpcCb callback, void* callbackArg);
IOSError    IOS_Read(IOSFd fd, void* buf, u32 len);

IOSError    IOS_WriteAsync(IOSFd fd, void* buf, u32 len, IOSIpcCb callback, void* callbackArg);
IOSError    IOS_Write(IOSFd fd, void* buf, u32 len);

IOSError    IOS_SeekAsync(IOSFd fd, s32 offset, u32 whence, IOSIpcCb callback, void* callbackArg);
IOSError    IOS_Seek(IOSFd fd, s32 offset, u32 whence);

IOSError    IOS_IoctlAsync(IOSFd fd, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen, IOSIpcCb callback, void* callbackArg);
IOSError    IOS_Ioctl(IOSFd fd, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen);

IOSError    IOS_IoctlvAsync(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vect, IOSIpcCb callback, void* callbackArg);
IOSError    IOS_Ioctlv(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vect);
IOSError    IOS_IoctlvReboot(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vect);

/* Heap */

IOSHeapId   iosCreateHeap(void* ptr, u32 size);
IOSError    iosDestroyHeap(IOSHeapId id);

void*       iosAlloc(IOSHeapId id, u32 size);
void*       iosAllocAligned(IOSHeapId id, u32 size, u32 alignment);

IOSError    iosFree(IOSHeapId id, void* ptr);

#endif // PRIVATE_IPC_PRIVATE_IOS_HH
