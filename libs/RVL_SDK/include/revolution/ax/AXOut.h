#ifndef REVOLUTION_AX_OUT_H
#define REVOLUTION_AX_OUT_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define AX_STREAM_SIZE_RMT 40
#define AX_RMT_MAX 4

typedef void (*AXOutCallback)(void);
typedef void (*AXExceedCallback)(u32 cycles);

AXOutCallback   AXRegisterCallback(AXOutCallback callback);

s32             AXRmtGetSamplesLeft();
s32             AXRmtGetSamples(s32 chan, s16* out, s32 num);
s32             AXRmtAdvancePtr(s32 num);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AX_OUT_H
