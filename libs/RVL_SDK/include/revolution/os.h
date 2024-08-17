#ifndef REVOLUTION_OS_H
#define REVOLUTION_OS_H

#ifdef __cplusplus
extern "C" {
#endif

typedef s64 OSTime;
typedef u32 OSTick;

#include <revolution/os/OSAlarm.h>
#include <revolution/os/OSContext.h>
#include <revolution/os/OSCache.h>
#include <revolution/os/OSMutex.h>
#include <revolution/os/OSThread.h>
#include <revolution/os/OSMessage.h>
#include <revolution/os/OSResetSW.h>

extern void OSShutdownSystem();

void OSReport(const char* msg, ...);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_H


