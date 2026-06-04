#include <private/wd.h>

#include <private/ios.h>
#include <private/ipc.h>

#include <revolution/os.h>

struct WDi_Work_ wdifWork = {-1, 0, 0};

struct WDi_Work_* WDi_GetWork() {
    return &wdifWork;
}

s32 WDi_Ioctlv(s32 cmd, u32 readCount, u32 writeCount, IOSIoVector* vec) {
    s32 fd;
    if (WDi_Work->IOSFd < 0) {
        return WD_INTERNAL_ERR_INVALID_FD;
    }
    fd = WDi_Work->IOSFd;
    return IOS_Ioctlv(fd, cmd, readCount, writeCount, vec);
}

s32 WDi_SetupHeap(u32 size) {
    u8* lo = IPCGetBufferLo();

    if (WDi_Work->IOSHeap == -1) {
        u8* hi = IPCGetBufferHi();
        if ((lo + size) > hi) {
            return IPC_RESULT_ALLOC_FAILED;
        }

        wdifWork.IOSHeap = iosCreateHeap(lo, size);
        if (wdifWork.IOSHeap < 0) {
            return wdifWork.IOSHeap;
        }
        IPCSetBufferLo((void*)((u32)lo + size));
    }

    return WD_INTERNAL_ERR_OK;
}

s32 WDi_CleanupHeap() {
    return WD_INTERNAL_ERR_OK;
}
