#ifndef PRIVATE_OS_STATE_TM_H
#define PRIVATE_OS_STATE_TM_H

#include <revolution/types.h>

#include <private/ios/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void        __OSRegisterStateEvent();
BOOL        __OSGetResetButtonStateRaw();
IOSError    __OSUnRegisterStateEvent();

BOOL        __OSInitSTM();

void        __OSHotReset();

void        __OSShutdownToSBY();
void        __OSShutdownToIDL();
BOOL        __OSSetVIForceDimming(BOOL enable, u32 shiftY, u32 shiftX);

s32         __OSSetIdleLEDMode(u32 mode);

s32         __OSUnRegisterStateEvent();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_STATE_TM_H
