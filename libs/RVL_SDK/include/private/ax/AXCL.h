#ifndef PRIVATE_AX_CL_H
#define PRIVATE_AX_CL_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

// Command list can hold up to 64 commands
#define AX_CL_MAX_CMD 64
// Each command takes up two bytes
#define AX_CL_SIZE (AX_CL_MAX_CMD * sizeof(u16))

extern u32  __AXClMode;

void    __AXClInit();

u32     __AXGetCommandListCycles();
void*   __AXGetCommandListAddress();

void    __AXWriteToCommandList(u16 cmd);

void    __AXNextFrame(void* surround, void* lr, void* rmt);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_AX_CL_H
