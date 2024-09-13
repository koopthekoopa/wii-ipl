#ifndef REVOLUTION_OS_H
#define REVOLUTION_OS_H

#include <stdarg.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s64 OSTime;
typedef u32 OSTick;

#define OS_CONSOLE_MASK         0xF0000000
#define OS_CONSOLE_MASK_RVL     0x00000000
#define OS_CONSOLE_MASK_EMU     0x10000000
#define OS_CONSOLE_MASK_TDEV    0x20000000
#define OS_CONSOLE_RVL_PP_1     0x00000011
#define OS_CONSOLE_RVL_PP_2_1   0x00000012
#define OS_CONSOLE_RVL_PP_2_2   0x00000020
#define OS_CONSOLE_RVL_EMU      0x10000008
#define OS_CONSOLE_NDEV_1_0     0x10000010
#define OS_CONSOLE_NDEV_1_1     0x10000011
#define OS_CONSOLE_NDEV_1_2     0x10000012
#define OS_CONSOLE_NDEV_2_0     0x10000020
#define OS_CONSOLE_NDEV_2_1     0x10000021
#define OS_CONSOLE_RETAIL       0x00000021

#define OS_CACHED_REGION_PREFIX 0x8000
#define OS_UNCACHED_REGION_PREFIX 0xC000
#define OS_PHYSICAL_MASK 0x3FFF

#define OS_BASE_CACHED (OS_CACHED_REGION_PREFIX << 16)
#define OS_BASE_UNCACHED (OS_UNCACHED_REGION_PREFIX << 16)

#define OSPhysicalToCached(paddr)       ((void*)((u32)(paddr)  +  OS_BASE_CACHED))
#define OSPhysicalToUncached(paddr)     ((void*)((u32)(paddr)  +  OS_BASE_UNCACHED))
#define OSCachedToPhysical(caddr)       ((u32)  ((u8*)(caddr)  -  OS_BASE_CACHED))
#define OSUncachedToPhysical(ucaddr)    ((u32)  ((u8*)(ucaddr) -  OS_BASE_UNCACHED))
#define OSCachedToUncached(caddr)       ((void*)((u8*)(caddr)  + (OS_BASE_UNCACHED - OS_BASE_CACHED)))
#define OSUncachedToCached(ucaddr)      ((void*)((u8*)(ucaddr) - (OS_BASE_UNCACHED - OS_BASE_CACHED)))

u32 __OSBusClock        : OS_BASE_CACHED | 0x000000F8;
u32 __OSCoreClock       : OS_BASE_CACHED | 0x000000FC;

#define OS_BUS_CLOCK        __OSBusClock
#define OS_CORE_CLOCK       __OSCoreClock
#define OS_TIMER_CLOCK      (OS_BUS_CLOCK / 4)

#define OSTicksToCycles(ticks)          (((ticks) * ((OS_CORE_CLOCK * 2) / OS_TIMER_CLOCK)) / 2)
#define OSTicksToSeconds(ticks)         ((ticks) / OS_TIMER_CLOCK)
#define OSTicksToMilliseconds(ticks)    ((ticks) / (OS_TIMER_CLOCK / 1000))
#define OSTicksToMicroseconds(ticks)    (((ticks) * 8) / (OS_TIMER_CLOCK / 125000))
#define OSTicksToNanoseconds(ticks)     (((ticks) * 8000) / (OS_TIMER_CLOCK / 125000))

#define OSSecondsToTicks(s)             ((s) * OS_TIMER_CLOCK) 
#define OSMillisecondsToTicks(ms)       ((ms) * (OS_TIMER_CLOCK / 1000))
#define OSMicrosecondsToTicks(us)       (((us) * (OS_TIMER_CLOCK / 125000)) / 8)
#define OSNanosecondsToTicks(ns)        (((ns) * (OS_TIMER_CLOCK / 125000)) / 8000)

#define OSDiffTick(tick1, tick0)        ((s32)(tick1) - (s32)(tick0))

#define OSSleepSeconds(sec)             OSSleepTicks(OSSecondsToTicks((OSTime)s))
#define OSSleepMilliseconds(ms)         OSSleepTicks(OSMillisecondsToTicks((OSTime)ms))
#define OSSleepMicroseconds(us)         OSSleepTicks(OSMicrosecondsToTicks((OSTime)us))
#define OSSleepNanoseconds(ns)          OSSleepTicks(OSNanosecondsToTicks((OSTime)ns))

void    OSShutdownSystem();

void    OSReport(const char* msg, ...);
void    OSVReport(const char* msg, va_list list);

OSTick  OSGetTick();
void    OSSleepTicks(OSTime ticks);

BOOL    OSDisableInterrupts();
BOOL    OSRestoreInterrupts(BOOL old);

void    OSReturnToMenu();



BOOL __OSSyncSram();

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


