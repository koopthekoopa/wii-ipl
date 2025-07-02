

#ifndef REVOLUTION_OS_MEMORY_H
#define REVOLUTION_OS_MEMORY_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

u32     OSGetPhysicalMem1Size();
u32     OSGetPhysicalMem2Size();

u32     OSGetConsoleSimulatedMem1Size();
u32     OSGetConsoleSimulatedMem2Size();

void    OSProtectRange(u32 chan, void *addr, u32 nBytes, u32 control);

#define OSIsMEM1Region(addr) (((u32)(addr) & 0x30000000) == 0)
#define OSIsMEM2Region(addr) (((u32)(addr) & 0x30000000) == 0x10000000)

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_MEMORY_H
