#ifndef PRIVATE_IOS_TYPES_H
#define PRIVATE_IOS_TYPES_H

#include <revolution/types.h>
#include <revolution/os/OSThread.h>

typedef s32 IOSError;
typedef s32 IOSFd;
typedef s32 IOSHeapId;

#define IOS_REQUEST_MAX 48

typedef IOSError (*IOSIpcCb)(IOSError, void*);

typedef struct IOSIoVector {
    u8 *base;   // 0x00
    u32 length; // 0x04
} IOSIoVector;

typedef struct IOSResourceOpen {
    u8* path;       // 0x00
    u32 flags;      // 0x04
    u32 ownerId;    // 0x08
    u16 groudId;    // 0x0C
} IOSResourceOpen;

typedef struct IOSResourceRead {
    u8* outPtr; // 0x00
    u32 outLen; // 0x04
} IOSResourceRead;

typedef struct IOSResourceWrite {
    u8* inPtr;  // 0x00
    u32 inLen;  // 0x04
} IOSResourceWrite;

typedef struct IOSResourceSeek {
    s32 offset; // 0x00
    u32 whence; // 0x04
} IOSResourceSeek;

typedef struct IOSResourceIoctl {
    u32 cmd;    // 0x00
    u8* inPtr;  // 0x04
    u32 inLen;  // 0x08
    u8* outPtr; // 0x0C
    u32 outLen; // 0x10
} IOSResourceIoctl;

typedef struct IOSResourceIoctlv {
    u32             cmd;        // 0x00
    u32             readCount;  // 0x04
    u32             writeCount; // 0x08
    IOSIoVector*    vector;     // 0x0C
} IOSResourceIoctlv;

typedef struct IOSResourceRequest {
    u32 cmd;    // 0x00
    s32 status; // 0x04
    u32 handle; // 0x08
    union {
        IOSResourceOpen open;
        IOSResourceRead read;
        IOSResourceWrite write;
        IOSResourceSeek seek;
        IOSResourceIoctl ioctl;
        IOSResourceIoctlv ioctlv;
    } args;     // 0x0C
} IOSResourceRequest;

typedef struct IOSRpcRequest {
    IOSResourceRequest  request;            // 0x00

    IOSIpcCb            callback  ALIGN32;  // 0x20
    void*               callback_arg;       // 0x24

    u32                 relaunch_flag;      // 0x28
    OSThreadQueue       thread_queue;       // 0x2C
} IOSRpcRequest;

typedef struct IOSResponseRequest {
    u32                 rcount;                 // 0x00
    u32                 wcount;                 // 0x04

    u32                 rptr;                   // 0x08
    u32                 wptr;                   // 0x0C

    IOSResourceRequest* buf[IOS_REQUEST_MAX];   // 0x10
} IOSResponseRequest;

#endif // PRIVATE_IOS_TYPES_H
