#ifndef REVOLUTION_OS_BOOT_INFO_H
#define REVOLUTION_OS_BOOT_INFO_H

#include <revolution/types.h>
#include <revolution/dvd.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    DVDDiskID   DVDDiskID;
    
    u32         magic;
    u32         version;
    
    u32         memorySize;
    
    u32         consoleType;
    
    void*       arenaLo;
    void*       arenaHi;

    void*       FSTLocation;
    u32         FSTMaxLength;
} OSBootInfo;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_BOOT_INFO_H


