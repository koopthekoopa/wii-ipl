#ifndef PRIVATE_IOS_H
#define PRIVATE_IOS_H

#include <private/ios/types.h>

/* Clt */

IOSError    IOS_Open(const char *path, u32 flags);

IOSError    IOS_Ioctlv(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vector);
IOSError    IOS_IoctlvAsync(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vector, IOSIpcCb callback, void* callbackArg);

IOSError    IOS_Ioctl(IOSFd fd, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen);
IOSError    IOS_IoctlAsync(IOSFd fd, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen, IOSIpcCb callback, void* callbackArg);

/* Heap */

IOSHeapId   iosCreateHeap(void *ptr, u32 size);
IOSError    iosDestroyHeap(IOSHeapId id);

void*       iosAlloc(IOSHeapId id, u32 size);
void*       iosAllocAligned(IOSHeapId id, u32 size, u32 alignment);

IOSError    iosFree(IOSHeapId id, void* ptr);

#endif // PRIVATE_IPC_PRIVATE_IOS_HH
