#ifndef REVOLUTION_ARC_H
#define REVOLUTION_ARC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u32     magic;
    int     fstStart;
    int     fstSize;
    int     fileStart;
    int     pad[4];
} ARCHeader;

typedef struct {
    void*   archiveStartAddr;   // 0x0
    void*   FSTStart;           // 0x4
    void*   fileStart;          // 0x8
    u32     entryNum;           // 0xC
    char*   FSTStringStart;     // 0x10
    u32     FSTLength;          // 0x14
    u32     currDir;            // 0x18
} ARCHandle;

typedef struct {
    ARCHandle*  handle;         // 0x00
    u32         startOffset;    // 0x04
    u32         length;         // 0x08
} ARCFileInfo;

typedef struct {
    ARCHandle*  handle;         // 0x00
    u32         entryNum;       // 0x04
    u32         location;       // 0x08
    u32         next;           // 0x0C
} ARCDir;

typedef struct  {
    ARCHandle*  handle;         // 0x00
    u32         entryNum;       // 0x04
    BOOL        isDir;          // 0x08
    char*       name;           // 0x10
} ARCDirEntry;

#define ARC_MAGIC   0x55AA382D

BOOL    ARCInitHandle(void* buffer, ARCHandle* pHandle);

BOOL    ARCFastOpen(ARCHandle* handle, s32 entrynum, ARCFileInfo* info);

s32     ARCConvertPathToEntrynum(ARCHandle* handle, const char* path);

void*   ARCGetStartAddrInMem(ARCFileInfo* info);
s32     ARCGetStartOffset(ARCFileInfo* info);

u32     ARCGetLength(ARCFileInfo* info);
BOOL    ARCClose(ARCFileInfo* info);

BOOL    ARCChangeDir(ARCHandle* info, const char* path);
BOOL    ARCOpenDir(ARCHandle* info, const char* path, ARCDir* dir);
BOOL    ARCReadDir(ARCDir* dir, ARCDirEntry* entry);
BOOL    ARCCloseDir(ARCDir* dir);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_ARC_H


