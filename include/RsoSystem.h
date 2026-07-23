#ifndef IPL_RSO_SYSTEM_H
#define IPL_RSO_SYSTEM_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef IS_IPL_RSO_LIB
#define IPLRSO_FUNC __declspec(export)
#else
#define IPLRSO_FUNC
#endif

enum {
    IPL_RSO_ANIM_TYPE_FORWARD = 0,
    IPL_RSO_ANIM_TYPE_BACKWARD,
    IPL_RSO_ANIM_TYPE_LOOP,
    IPL_RSO_ANIM_TYPE_ALTERNATE
};

IPLRSO_FUNC BOOL IplRso_IsFirstCall();

IPLRSO_FUNC void IplRso_GetExBufData(void* exBuf);
IPLRSO_FUNC void IplRso_SetExBufData(void* exBuf);

IPLRSO_FUNC void IplRso_GetTitleDataPath(char* path);

IPLRSO_FUNC BOOL IplRso_IsStartAnimFinished();

IPLRSO_FUNC void IplRso_AnimStart(int idx);
IPLRSO_FUNC void IplRso_AnimRestart(int idx);
IPLRSO_FUNC void IplRso_AnimStop(int idx);
IPLRSO_FUNC BOOL IplRso_AnimIsPlaying(int idx);
IPLRSO_FUNC void IplRso_AnimSetMaxFrame(int idx, f32 frame);
IPLRSO_FUNC void IplRso_AnimSetMinFrame(int idx, f32 frame);
IPLRSO_FUNC void IplRso_AnimSetCurrentFrame(int idx, f32 frame);
IPLRSO_FUNC void IplRso_AnimSetType(int idx, int type);
IPLRSO_FUNC void IplRso_AnimInitFrame(int idx, f32 startFrame);
IPLRSO_FUNC f32 IplRso_AnimGetMaxFrame(int idx);
IPLRSO_FUNC f32 IplRso_AnimGetMinFrame(int idx);
IPLRSO_FUNC f32 IplRso_AnimGetCurrentFrame(int idx);
IPLRSO_FUNC int IplRso_AnimGetType(int idx);

IPLRSO_FUNC void* IplRso_AllocFromExHeap(u32 size, int align);
IPLRSO_FUNC void IplRso_FreeToExHeap(void* buffer);
IPLRSO_FUNC u32 IplRso_GetAllocatableSizeForExHeap();

IPLRSO_FUNC void IplRso_DebugSetPollInterval(u32 val);

#ifdef __cplusplus
}
#endif

#undef IPLRSO_FUNC

#endif  // IPL_RSO_SYSTEM_H
