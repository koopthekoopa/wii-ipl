#ifndef REVOLUTION_OS_BOOT_INFO_H
#define REVOLUTION_OS_BOOT_INFO_H

#include <decomp.h>

#include <revolution/types.h>
#include <revolution/dvd.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSBootInfo {
    DVDDiskID   DVDDiskID;          // 0x00
    
    u32         magic;              // 0x20
    u32         version;            // 0x24
    
    u32         memorySize;         // 0x28
    
    u32         consoleType;        // 0x2C
    
    void*       arenaLo;            // 0x30
    void*       arenaHi;            // 0x34

    void*       FSTLocation;        // 0x38
    u32         FSTMaxLength;       // 0x3C
} OSBootInfo;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_BOOT_INFO_H
