#ifndef REVOLUTION_OS_COND_H
#define REVOLUTION_OS_COND_H

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/os/OSThread.h>

void    OSInitCond(OSCond* cond);
void    OSWaitCond(OSCond* cond, OSMutex* mutex);

void    OSSignalCond(OSCond* cond);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_COND_H
