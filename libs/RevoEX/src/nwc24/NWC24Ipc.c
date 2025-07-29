#include <revolution/nwc24.h>
#include <private/nwc24.h>

#include <private/ios.h>
#include <private/ipc.h>

static BOOL NWC24iIsRequestPending = FALSE;

static s32 CallbackAsyncIpc(s32 ret, void* ctxt);

NWC24Err NWC24iOpenResourceManager(const char* funcName, const char* path, s32* pFd, u32 flags) {
    if (pFd == NULL) {
        return NWC24_ERR_INVALID_VALUE;
    }

    *pFd = IOS_Open(path, flags);

    if (*pFd < 0) {
        if (*pFd == IPC_RESULT_NOEXISTS) {
            return NWC24_ERR_INPROGRESS;
        }

        if (*pFd == IPL_RESULT_FULLQUEUE) {
            return NWC24_ERR_BUSY;
        }

        return NWC24_ERR_INTERNAL_IPC;
    }

    return NWC24_OK;
}

NWC24Err NWC24iCloseResourceManager(const char* funcName, s32 fd) {
    s32 err = IOS_Close(fd);
    if (err < IPC_RESULT_OK) {
        return NWC24_ERR_INTERNAL_IPC;
    }

    return NWC24_OK;
}

NWC24Err NWC24iIoctlResourceManager(const char* funcName, s32 fd, s32 cmd, void* input, u32 input_bytes, void* output, u32 output_bytes) {
    s32 err = IOS_Ioctl(fd, cmd, input, input_bytes, output, output_bytes);
    if (err < IPC_RESULT_OK) {
        return NWC24_ERR_INTERNAL_IPC;
    }

    return NWC24_OK;
}

NWC24Err NWC24iIoctlResourceManagerAsync(const char* funcName, s32 fd, s32 cmd, void* input, u32 input_bytes, void* output, u32 output_bytes, s32* ret) {
    s32 err = IOS_IoctlAsync(fd, cmd, input, input_bytes, output, output_bytes, CallbackAsyncIpc, ret);
    if (err < IPC_RESULT_OK) {
        return NWC24_ERR_INTERNAL_IPC;
    }

    NWC24iIsRequestPending = TRUE;
    return NWC24_OK;
}

BOOL NWC24iIsAsyncRequestPending() {
    return NWC24iIsRequestPending;
}

static s32 CallbackAsyncIpc(s32 ret, void* ctxt) {
    if (ctxt != NULL) {
        *(s32*)ctxt = ret;
    }

    NWC24iIsRequestPending = FALSE;
    return IPC_RESULT_OK;
}
