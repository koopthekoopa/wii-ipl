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

typedef struct RVLBootInfo {
    u32         physicalMem1Size;   // 0x00
    u32         simulatedMem1Size;  // 0x04
    u32         mem1Addr;           // 0x08

    void*       mem1Start;          // 0x0C
    void*       mem1End;            // 0x10
    undefined4  unk_0x14;           // 0x0C

    u32         physicalMem2Size;   // 0x18
    u32         simulatedMem2Size;  // 0x1C
    u32         mem2Addr;           // 0x20

    void*       mem2Start;          // 0x24
    void*       mem2End;            // 0x28
    undefined4  unk_0x2C;

    void*       ipcStart;           // 0x30
    void*       ipcEnd;             // 0x34

    u32         hollywoodRev;       // 0x38
    undefined4  unk_0x3C;

    u32         iosVersion;         // 0x40
    u32         iosBuildDate;       // 0x44
    void*       iosHeapStart;       // 0x48
    void*       iosHeapEnd;         // 0x4C

    undefined4  unk_0x50;
    undefined4  unk_0x54;

    u32         gddrVendorID;       // 0x58
    u8          bootTarget;         // 0x5C
    u8          unk_0x5D;           // 0x5D
    u16         devKitVersion;      // 0x5E

    undefined4  unk_0x60;
    BOOL        gcMode;             // 0x64
} RVLBootInfo;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_BOOT_INFO_H


