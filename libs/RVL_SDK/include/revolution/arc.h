#ifndef REVOLUTION_ARC_H
#define REVOLUTION_ARC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct ARCHeader {
    unsigned int    magic;      // 0x00
    int             fstStart;   // 0x04
    int             fstSize;    // 0x08
    int             fileStart;  // 0x0C
    int             pad[4];     // 0x10
} ARCHeader;

typedef struct ARCHandle {
    void*   archiveStartAddr;   // 0x00
    void*   FSTStart;           // 0x04
    void*   fileStart;          // 0x08
    u32     entryNum;           // 0x0C
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
    char*       name;           // 0x0C
} ARCDirEntry;

#define ARC_MAGIC   0x55AA382D

BOOL    ARCInitHandle(void* buffer, ARCHandle* pHandle);

BOOL    ARCOpen(ARCHandle* handle, const char* path, ARCFileInfo* info);
BOOL    ARCFastOpen(ARCHandle* handle, s32 entryNum, ARCFileInfo* info);

s32     ARCConvertPathToEntrynum(ARCHandle* handle, const char* path);

void*   ARCGetStartAddrInMem(ARCFileInfo* info);
u32     ARCGetStartOffset(ARCFileInfo* info);

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


