#ifndef PRIVATE_NWC24_IPC_H
#define PRIVATE_NWC24_IPC_H

#include <revolution/types.h>
#include <private/ipc/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

NWC24Err    NWC24iOpenResourceManager(const char* funcName, const char* path, s32* pFd, u32 flags);
#define     NWC24OpenResourceManager(path, pFd, flags) NWC24iOpenResourceManager(__FUNCTION__, path, pFd, flags)
NWC24Err    NWC24iCloseResourceManager(const char* funcName, s32 fd);
#define     NWC24CloseResourceManager(fd) NWC24iCloseResourceManager(__FUNCTION__, fd)

NWC24Err    NWC24iIoctlResourceManager(const char* funcName, s32 fd, s32 cmd, void* input, u32 input_bytes, void* output, u32 output_bytes);
#define     NWC24IoctlResourceManager(fd, cmd, input, input_bytes, output, output_bytes) NWC24iIoctlResourceManager(__FUNCTION__, fd, cmd, input, input_bytes, output, output_bytes)
NWC24Err    NWC24iIoctlResourceManagerAsync(const char* funcName, s32 fd, s32 cmd, void* input, u32 input_bytes, void* output, u32 output_bytes, s32* ret);
#define     NWC24IoctlResourceManagerAsync(fd, cmd, input, input_bytes, output, output_bytes, ret) NWC24iIoctlResourceManagerAsync(__FUNCTION__, fd, cmd, input, input_bytes, output, output_bytes, ret)

BOOL        NWC24iIsAsyncRequestPending();
#define     NWC24IsAsyncRequestPending() NWC24iIsAsyncRequestPending()

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_IPC_H
