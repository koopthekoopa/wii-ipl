#ifndef PRIVATE_OS_IPC_H
#define PRIVATE_OS_IPC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void*   __OSGetIPCBufferHi();
void*   __OSGetIPCBufferLo();

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_OS_IPC_H
