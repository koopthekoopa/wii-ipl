#ifndef REVOLUTION_OS_H
#define REVOLUTION_OS_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/os/OSMemMap.h>

#include <revolution/os/OSTime.h>

#define OS_CONSOLE_MASK                 (0xF000 << 16)
#define OS_CONSOLE_MASK_RVL             (0x0000 << 16)
#define OS_CONSOLE_MASK_DEV             (0x1000 << 16)
#define OS_CONSOLE_MASK_TDEV            (0x2000 << 16)

#define OS_CONSOLE_RVL_PP_0             (OS_CONSOLE_MASK_RVL + 0x0010)
#define OS_CONSOLE_RVL_PP_1             (OS_CONSOLE_MASK_RVL + 0x0011)
#define OS_CONSOLE_RVL_PP_2_1           (OS_CONSOLE_MASK_RVL + 0x0012)
#define OS_CONSOLE_RVL_PP_2_2           (OS_CONSOLE_MASK_RVL + 0x0020)
#define OS_CONSOLE_RETAIL               (OS_CONSOLE_MASK_RVL + 0x0021)
#define OS_CONSOLE_RETAIL_RVA           (OS_CONSOLE_MASK_RVL + 0x0100)

#define OS_CONSOLE_UNK                  (OS_CONSOLE_MASK_DEV + 0x0002)
#define OS_CONSOLE_RVL_EMU              (OS_CONSOLE_MASK_DEV + 0x0008)
#define OS_CONSOLE_NDEV_1_0             (OS_CONSOLE_MASK_DEV + 0x0010)
#define OS_CONSOLE_NDEV_1_1             (OS_CONSOLE_MASK_DEV + 0x0011)
#define OS_CONSOLE_NDEV_1_2             (OS_CONSOLE_MASK_DEV + 0x0012)
#define OS_CONSOLE_NDEV_2_0             (OS_CONSOLE_MASK_DEV + 0x0020)
#define OS_CONSOLE_NDEV_2_1             (OS_CONSOLE_MASK_DEV + 0x0021)

#define OS_CONSOLE_TDEV_EMU             (OS_CONSOLE_MASK_TDEV + 0x0000)

#define OS_CACHED_REGION_PREFIX         0x8000
#define OS_UNCACHED_REGION_PREFIX       0xC000
#define OS_PHYSICAL_MASK                0x3FFF

#define OS_BASE_CACHED                  (OS_CACHED_REGION_PREFIX << 16)
#define OS_BASE_UNCACHED                (OS_UNCACHED_REGION_PREFIX << 16)

#define OSPhysicalToCached(paddr)       ((void*)((u32)(paddr)  +  OS_BASE_CACHED))
#define OSPhysicalToUncached(paddr)     ((void*)((u32)(paddr)  +  OS_BASE_UNCACHED))
#define OSCachedToPhysical(caddr)       ((u32)  ((u8*)(caddr)  -  OS_BASE_CACHED))
#define OSUncachedToPhysical(ucaddr)    ((u32)  ((u8*)(ucaddr) -  OS_BASE_UNCACHED))
#define OSCachedToUncached(caddr)       ((void*)((u8*)(caddr)  + (OS_BASE_UNCACHED - OS_BASE_CACHED)))
#define OSUncachedToCached(ucaddr)      ((void*)((u8*)(ucaddr) - (OS_BASE_UNCACHED - OS_BASE_CACHED)))

#define OSRoundUp32B(x)                 ROUNDUP((unsigned long)(x), 32)
#define OSRoundDown32B(x)               ROUNDDOWN((unsigned long)(x), 32)

u32     __OSBusClock                    ADDRESS(OS_BASE_CACHED + OS_ADDR_BUS_CLOCK_SPEED);
u32     __OSCoreClock                   ADDRESS(OS_BASE_CACHED + OS_ADDR_CPU_CLOCK_SPEED);

#define OS_BUS_CLOCK                    __OSBusClock
#define OS_CORE_CLOCK                   __OSCoreClock
#define OS_TIMER_CLOCK                  (OS_BUS_CLOCK / 4)

#define OSTicksToCycles(ticks)          (((ticks) *        ((OS_CORE_CLOCK * 2) / OS_TIMER_CLOCK)) / 2)
#define OSTicksToSeconds(ticks)         ((ticks)  /          OS_TIMER_CLOCK)
#define OSTicksToMilliseconds(ticks)    ((ticks)  /         (OS_TIMER_CLOCK     / 1000))
#define OSTicksToMicroseconds(ticks)    (((ticks) * 8)    / (OS_TIMER_CLOCK     / 125000))
#define OSTicksToNanoseconds(ticks)     (((ticks) * 8000) / (OS_TIMER_CLOCK     / 125000))

#define OSSecondsToTicks(s)             ((s)   *  OS_TIMER_CLOCK) 
#define OSMillisecondsToTicks(ms)       ((ms)  * (OS_TIMER_CLOCK / 1000))
#define OSMicrosecondsToTicks(us)       (((us) * (OS_TIMER_CLOCK / 125000)) / 8)
#define OSNanosecondsToTicks(ns)        (((ns) * (OS_TIMER_CLOCK / 125000)) / 8000)

#define OSDiffTick(tick1, tick0)        ((s32)(tick1) - (s32)(tick0))

#define OSSleepSeconds(sec)             OSSleepTicks(OSSecondsToTicks((OSTime)s))
#define OSSleepMilliseconds(ms)         OSSleepTicks(OSMillisecondsToTicks((OSTime)ms))
#define OSSleepMicroseconds(us)         OSSleepTicks(OSMicrosecondsToTicks((OSTime)us))
#define OSSleepNanoseconds(ns)          OSSleepTicks(OSNanosecondsToTicks((OSTime)ns))

void    OSInit();

u8      OSGetAppType();
u32     OSGetConsoleType();

#include <revolution/os/OSAlarm.h>
#include <revolution/os/OSAlloc.h>
#include <revolution/os/OSArena.h>
#include <revolution/os/OSMemory.h>
#include <revolution/os/OSCache.h>
#include <revolution/os/OSContext.h>
#include <revolution/os/OSError.h>
#include <revolution/os/OSException.h>
#include <revolution/os/OSFastCast.h>
#include <revolution/os/OSL2.h>
#include <revolution/os/OSInterrupt.h>
#include <revolution/os/OSMutex.h>
#include <revolution/os/OSThread.h>
#include <revolution/os/OSRtc.h>
#include <revolution/os/OSSemaphore.h>
#include <revolution/os/OSMessage.h>
#include <revolution/os/OSUtf.h>

#include <revolution/os/OSReset.h>
#include <revolution/os/OSResetSW.h>
#include <revolution/os/OSFont.h>

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_H
