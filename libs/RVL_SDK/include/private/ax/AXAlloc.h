#ifndef PRIVATE_AX_ALLOC_H
#define PRIVATE_AX_ALLOC_H

#include <revolution/ax/AXVPB.h>

#ifdef __cplusplus
extern "C" {
#endif

AXVPB*  __AXGetStackHead(u32 priority);
void    __AXServiceCallbackStack();
void    __AXInitVoiceStacks();
void    __AXAllocInit();
void    __AXPushFreeStack(AXVPB* vpb);
AXVPB*  __AXPopFreeStack();
void    __AXPushCallbackStack(AXVPB* vpb);
AXVPB*  __AXPopCallbackStack();
void    __AXRemoveFromStack(AXVPB* vpb);
void    __AXPushStackHead(AXVPB* vpb, u32 priority);
AXVPB*  __AXPopStackFromBottom(u32 priority);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_AX_ALLOC_H
