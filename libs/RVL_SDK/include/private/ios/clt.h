#ifndef PRIVATE_IOS_CLT_H
#define PRIVATE_IOS_CLT_H

#include <private/ios/types.h>

typedef struct IOSIoVector {
    u8* base;   // 0x00
    u32 length; // 0x04
} IOSIoVector;

typedef IOSError (*IOSIpcCb)(IOSError ret, void *context);

IOSError    IOS_Open(const char *path, u32 flags);

IOSError    IOS_Ioctlv(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vector);
IOSError    IOS_IoctlvAsync(IOSFd fd, s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vector, IOSIpcCb cb, void* cbArg);

IOSError    IOS_Ioctl(IOSFd fd, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen);
IOSError    IOS_IoctlAsync(IOSFd fd, s32 cmd, void* input, u32 inputLen, void* output, u32 outputLen, IOSIpcCb cb, void* cbArg);


#endif // PRIVATE_IOS_CLT_H
