#ifndef REVOLUTION_AXFX_HOOKS_H
#define REVOLUTION_AXFX_HOOKS_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void*   (*AXFXAllocHook)(u32);
typedef void    (*AXFXFreeHook)(void*);

void    AXFXSetHooks(AXFXAllocHook alloc, AXFXFreeHook free);
void    AXFXGetHooks(AXFXAllocHook* alloc, AXFXFreeHook* free);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_HOOKS_H
