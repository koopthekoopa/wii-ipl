#ifndef PRIVATE_AX_OUT_H
#define PRIVATE_AX_OUT_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

u32     __AXOutNewFrame();
void    __AXOutAiCallback();
void    __AXOutInitDSP();

void    __AXOutInit(u32 mode);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_AX_OUT_H
