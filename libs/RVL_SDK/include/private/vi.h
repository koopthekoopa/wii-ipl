#ifndef PRIVATE_VI_H
#define PRIVATE_VI_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void    __VISetRGBModeImm();
void    __VIResetSIIdle();

void    __VIGetCurrentPosition(s16* x, s16* y);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_VI_H
