#ifndef REVOLUTION_OS_H
#define REVOLUTION_OS_H

#ifdef __cplusplus
extern "C" {
#endif

typedef s64 OSTime;
typedef u32 OSTick;

u32 __OSBusClock    : 0x800000F8;
u32 __OSCoreClock   : 0x800000FC;

#define OS_BUS_CLOCK    __OSBusClock
#define OS_CORE_CLOCK   __OSCoreClock
#define OS_TIMER_CLOCK  (OS_BUS_CLOCK / 4)

void    OSShutdownSystem();

void    OSReport(const char* msg, ...);

void    OSSleepTicks(OSTime ticks);

#define OSTicksToCycles(ticks)          (((ticks) * ((OS_CORE_CLOCK * 2) / OS_TIMER_CLOCK)) / 2)
#define OSTicksToSeconds(ticks)         ((ticks) / OS_TIMER_CLOCK)
#define OSTicksToMilliseconds(ticks)    ((ticks) / (OS_TIMER_CLOCK / 1000))
#define OSTicksToMicroseconds(ticks)    (((ticks) * 8) / (OS_TIMER_CLOCK / 125000))
#define OSTicksToNanoseconds(ticks)     (((ticks) * 8000) / (OS_TIMER_CLOCK / 125000))

#define OSSecondsToTicks(s)             ((s) * OS_TIMER_CLOCK) 
#define OSMillisecondsToTicks(ms)       ((ms) * (OS_TIMER_CLOCK / 1000))
#define OSMicrosecondsToTicks(us)       (((us) * (OS_TIMER_CLOCK / 125000)) / 8)
#define OSNanosecondsToTicks(ns)        (((ns) * (OS_TIMER_CLOCK / 125000)) / 8000)

#define OSSleepSeconds(sec)         OSSleepTicks(OSSecondsToTicks((OSTime)s))
#define OSSleepMilliseconds(ms)     OSSleepTicks(OSMillisecondsToTicks((OSTime)ms))
#define OSSleepMicroseconds(us)     OSSleepTicks(OSMicrosecondsToTicks((OSTime)us))
#define OSSleepNanoseconds(ns)      OSSleepTicks(OSNanosecondsToTicks((OSTime)ns))

#include <revolution/os/OSAlarm.h>
#include <revolution/os/OSFastCast.h>
#include <revolution/os/OSContext.h>
#include <revolution/os/OSCache.h>
#include <revolution/os/OSMutex.h>
#include <revolution/os/OSThread.h>
#include <revolution/os/OSMessage.h>
#include <revolution/os/OSResetSW.h>

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_H


