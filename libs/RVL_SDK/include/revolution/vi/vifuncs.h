#ifndef REVOLUTION_VI_FUNCTIONS_H
#define REVOLUTION_VI_FUNCTIONS_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void VIWaitForRetrace();
void VISetBlack(BOOL setBlack);
void VIFlush();
u32  VIGetTvFormat();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_VI_FUNCTIONS_H


