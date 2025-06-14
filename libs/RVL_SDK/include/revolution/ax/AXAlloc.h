#ifndef REVOLUTION_AX_ALLOC_H
#define REVOLUTION_AX_ALLOC_H

#include <revolution/ax/AXVPB.h>

#ifdef __cplusplus
extern "C" {
#endif

#define AX_PRIORITY_FREE 0
#define AX_PRIORITY_MIN 1
#define AX_PRIORITY_MAX 31

void    AXFreeVoice(AXVPB* p);
AXVPB*  AXAcquireVoice(u32 priority, AXVoiceCallback callback, u32 userContext);
void    AXSetVoicePriority(AXVPB* p, u32 priority);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AX_ALLOC_H
