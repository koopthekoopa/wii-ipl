#include <revolution/dvd.h>
#include <private/dvd.h>

#include <revolution/os.h>
#include <revolution/os/OSBootInfo.h>

#include <ctype.h>
#include <stddef.h>

// Few functions are unused. Make sure that they link.
#pragma force_active on

extern u32  __DVDLayoutFormat;

typedef struct FSTEntry {
    u32 isDirAndStringOff;  // 0x00
    union {
        struct {
            u32 parent;     // 0x04
            u32 next;       // 0x08
        } dir;
        struct {
            u32 position;   // 0x04
            u32 length;     // 0x08
        } file;
    };
} FSTEntry;

static OSBootInfo*  BootInfo;

static FSTEntry*    FstStart;
static char*        FstStringStart;

static u32          MaxEntryNum;

static u32          currentDirectory = 0;

OSThreadQueue       __DVDThreadQueue;

u32                 __DVDLongFileNameFlag = TRUE;

static void cbForReadAsync(s32 result, DVDCommandBlock* block);
static void cbForReadSync(s32 result, DVDCommandBlock* block);

#define IS_ENTRY_DIR(fstStart, i)       ((((fstStart)[i].isDirAndStringOff & 0xFF000000) == 0) ? FALSE : TRUE)
#define FILE_STRING_OFF(fstStart, i)      ((fstStart)[i].isDirAndStringOff & 0x00FFFFFF)

static BOOL DVDGetCurrentDir(char* path, u32 maxlen);

void __DVDFSInit() {
    BootInfo = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
    FstStart = (FSTEntry*)BootInfo->FSTLocation;

    if (FstStart != NULL) {
        MaxEntryNum = FstStart[0].dir.next;
        FstStringStart = (char*)&FstStart[MaxEntryNum];
    }
}

static BOOL isSame(const char* path, const char* str) {
    while (*str != '\0') {
        if (tolower(*path++) != tolower(*str++)) {
            return FALSE;
        }
    }

    if (*path == '/' || *path == '\0') {
        return TRUE;
    }

    return FALSE;
}

s32 DVDConvertPathToEntrynum(const char* pathPtr) {
    const char* ptrPath;
    char*       stringPtr;

    BOOL isDir;
    s32  pathLen, dirLookAt, i;

    const char* origPathPtr = pathPtr;
    const char* hasExtensionStart;
    
    BOOL isInvalid, hasExtension;

    dirLookAt = currentDirectory;

    while (TRUE) {
        if (*pathPtr == '\0') {
            return dirLookAt;
        } 
        else if (*pathPtr == '/') {
            dirLookAt = 0;
            pathPtr++;
            continue;
        }
        else if (*pathPtr == '.') {
            if (*(pathPtr + 1) == '.') {
                if (*(pathPtr + 2) == '/') {
                    dirLookAt = FstStart[dirLookAt].dir.parent;
                    pathPtr += 3;
                    continue;
                }
                else if (*(pathPtr + 2) == '\0') {
                    return FstStart[dirLookAt].dir.parent;
                }
            }
            else if (*(pathPtr + 1) == '/') {
                pathPtr += 2;
                continue;
            }
            else if (*(pathPtr + 1) == '\0') {
                return dirLookAt;
            }
        }

        if (__DVDLongFileNameFlag == FALSE) {
            hasExtension = FALSE;
            isInvalid = FALSE;

            for (ptrPath = pathPtr; *ptrPath != '\0' && *ptrPath != '/'; ptrPath++) {
                if (*ptrPath == '.') {
                    if (ptrPath - pathPtr > 8 || hasExtension == TRUE) {
                        isInvalid = TRUE;
                        break;
                    }

                    hasExtension = TRUE;
                    hasExtensionStart = ptrPath + 1;

                } 
                else if (*ptrPath == ' ') {
                    isInvalid = TRUE;
                }
            }

            if (hasExtension == TRUE && ptrPath - hasExtensionStart > 3) {
                isInvalid = TRUE;
            }

            // Yeah I wonder how soon the restriction was finally patched out (or was it even patched out at ALL)
            OSAssertVMsg(!isInvalid, 443, "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n", origPathPtr);
        }
        else {
            for (ptrPath = pathPtr; (*ptrPath != '\0') && (*ptrPath != '/'); ptrPath++) {}
        }

        isDir = (*ptrPath == '\0') ? FALSE : TRUE;
        pathLen = (u32)(ptrPath - pathPtr);

        ptrPath = pathPtr;

        for (i = dirLookAt+1; i < FstStart[dirLookAt].dir.next; i = IS_ENTRY_DIR(FstStart, i) ? FstStart[i].dir.next : (i + 1)) {
            if (IS_ENTRY_DIR(FstStart, i) == FALSE && isDir == TRUE) {
                continue;
            }

            stringPtr = FstStringStart + FILE_STRING_OFF(FstStart, i);

            if (isSame(ptrPath, stringPtr) == TRUE) {
                goto next_in_hier;
            }
        }

        return -1;

next_in_hier:
        if (!isDir) {
            return i;
        }

        dirLookAt = i;
        pathPtr += pathLen + 1;
    }
}

BOOL DVDEntrynumIsDir(s32 entry) {
	return IS_ENTRY_DIR(FstStart, entry);
}

BOOL DVDFastOpen(s32 entry, DVDFileInfo* fileInfo) {
    if (entry < 0 || entry >= MaxEntryNum || IS_ENTRY_DIR(FstStart, entry)) {
        return FALSE;
    }

    fileInfo->startAddr = FstStart[entry].file.position >> __DVDLayoutFormat;
    fileInfo->length = FstStart[entry].file.length;
    fileInfo->callback = (DVDCallback)NULL;
    fileInfo->cb.state = DVD_STATE_IDLE;

    return TRUE;
}

BOOL DVDOpen(const char* fileName, DVDFileInfo* fileInfo) {
    s32 entry;
    char currentDir[128];

    entry = DVDConvertPathToEntrynum(fileName);

    if (entry < 0) {
        DVDGetCurrentDir(currentDir, sizeof(currentDir));
        OSReport("Warning: DVDOpen(): file '%s' was not found under %s.\n", fileName, currentDir);
        return FALSE;
    }

    if (IS_ENTRY_DIR(FstStart, entry)) {
        return FALSE;
    }

    fileInfo->startAddr = FstStart[entry].file.position >> __DVDLayoutFormat;
    fileInfo->length = FstStart[entry].file.length;
    fileInfo->callback = (DVDCallback)NULL;
    fileInfo->cb.state = DVD_STATE_IDLE;

    return TRUE;
}

BOOL DVDClose(DVDFileInfo* fileInfo) {
    DVDCancel(&fileInfo->cb);
    return TRUE;
}

static u32 myStrncpy(char* dest, char* src, u32 maxlen) {
    u32 i = maxlen;

    while (i > 0 && *src != 0) {
        *dest++ = *src++;
        i--;
    }

    return (maxlen - i);
}

u32 entryToPath(u32 entry, char* path, u32 maxlen) {
    char* name;
    u32 loc;

    if (entry == 0) {
        return 0;
    }

    name = FstStringStart + FILE_STRING_OFF(FstStart, entry);
    loc = entryToPath(FstStart[entry].dir.parent , path, maxlen);

    if (loc == maxlen) {
        return loc;
    }

    *(path + loc++) = '/';
    loc += myStrncpy(path + loc, name, maxlen - loc);
    return loc;
}

static BOOL DVDConvertEntrynumToPath(s32 entry, char* path, u32 maxlen) {
    u32 loc = entryToPath((u32)entry, path, maxlen);

    if (loc == maxlen) {
        path[maxlen - 1] = '\0';
        return FALSE;
    }

    if (IS_ENTRY_DIR(FstStart, entry)) {
        if (loc == maxlen - 1) {
            path[loc] = '\0';
            return FALSE;
        }

        path[loc++] = '/';
    }

    path[loc] = '\0';

    return TRUE;
}

BOOL DVDGetCurrentDir(char* path, u32 maxlen) {
    return DVDConvertEntrynumToPath((s32)currentDirectory, path, maxlen);
}

BOOL DVDReadAsyncPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, DVDCallback callback, s32 prio) {
    OSAssertMsg(offset >= 0 && offset <= fileInfo->length, "DVDReadAsync(): specified area is out of the file  ", 823);
    OSAssertMsg((offset + length) >= 0 && (offset + length) < fileInfo->length + 32, "DVDReadAsync(): specified area is out of the file  ", 829);

    fileInfo->callback = callback;
    DVDReadAbsAsyncPrio(&fileInfo->cb, addr, length, (u32)(fileInfo->startAddr + (offset >> 2)), cbForReadAsync, prio);

    return TRUE;
}

static void cbForReadAsync(s32 result, DVDCommandBlock* block) {
    DVDFileInfo* fileInfo = (DVDFileInfo*)((char*)block - offsetof(DVDFileInfo, cb));

    if (fileInfo->callback) {
        (fileInfo->callback)(result, fileInfo);
    }
}

s32 DVDReadPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, s32 prio) {
    DVDCommandBlock* block;
    BOOL result;
    BOOL enabled;
    s32 state;
    s32 retVal;

    OSAssertMsg(offset >= 0 && offset <= fileInfo->length, "DVDRead(): specified area is out of the file  ", 893);
    OSAssertMsg((offset + length) >= 0 && (offset + length) < fileInfo->length + 32, "DVDRead(): specified area is out of the file  ", 899);

    block = &fileInfo->cb;
    result = DVDReadAbsAsyncPrio(block, addr, length, (u32)(fileInfo->startAddr + (offset >> 2)), cbForReadSync, prio);
    
    if (result == FALSE) {
        return -1;
    }

    enabled = OSDisableInterrupts();

    while (TRUE) {
        state = ((DVDCommandBlock*)block)->state;

        if (state == DVD_STATE_IDLE) {
            retVal = block->transferredSize;
            break;
        }

        if (state == DVD_STATE_FATAL) {
            retVal = DVD_RESULT_FATAL;
            break;
        }

        if (state == DVD_STATE_CANCELED) {
            retVal = DVD_RESULT_CANCELED;
            break;
        }

        OSSleepThread(&__DVDThreadQueue);
    }

    OSRestoreInterrupts(enabled);
    return retVal;
}

static void cbForReadSync(s32 result, DVDCommandBlock* block) {
    OSWakeupThread(&__DVDThreadQueue);
}

BOOL DVDOpenDir(const char* dirName, DVDDir* dir) {
    s32 entry;
    char currentDir[128];

    entry = DVDConvertPathToEntrynum(dirName);

    if (entry < 0) {
        DVDGetCurrentDir(currentDir, sizeof(currentDir));
        OSReport("Warning: DVDOpenDir(): file '%s' was not found under %s.\n", dirName, currentDir);
        return FALSE;
    }

    if (!IS_ENTRY_DIR(FstStart, entry)) {
        return FALSE;
    }

    dir->entryNum = entry;
    dir->location = entry + 1;
    dir->next = FstStart[entry].dir.next;

    return TRUE;
}

BOOL DVDReadDir(DVDDir* dir, DVDDirEntry* dirent) {
    u32 loc = dir->location;

    if ((loc <= dir->entryNum) || (dir->next <= loc)) {
        return FALSE;
    }

    dirent->entryNum = loc;
    dirent->isDir = IS_ENTRY_DIR(FstStart, loc);
    dirent->name = FstStringStart + FILE_STRING_OFF(FstStart, loc);
    dir->location = IS_ENTRY_DIR(FstStart, loc) ? FstStart[loc].dir.next : (loc + 1);

    return TRUE;
}

BOOL DVDCloseDir(DVDDir* dir) {
    return TRUE;
}

void* DVDGetFSTLocation() {
    return BootInfo->FSTLocation;
}
