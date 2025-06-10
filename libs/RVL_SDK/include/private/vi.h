#ifndef PRIVATE_VI_H
#define PRIVATE_VI_H

#include <revolution/types.h>

void    __VISetRGBModeImm();
void    __VIResetSIIdle();

void    __VIGetCurrentPosition(s16* x, s16* y);

#endif // PRIVATE_VI_H
