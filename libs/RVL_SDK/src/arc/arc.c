#include <revolution.h>

#include <revolution/arc.h>

#include <ctype.h>

typedef struct FSTEntry {
    u32 isDirAndStringOff;  // 0x00
    u32 parentOrPosition;   // 0x04
    u32 nextEntryOrLength;  // 0x08
} FSTEntry;

#define entryIsDir(fstStart, i)     (((fstStart[i].isDirAndStringOff & 0xFF000000) == 0) ? FALSE : TRUE)
#define stringOff(fstStart, i)        (fstStart[i].isDirAndStringOff & 0x00FFFFFF)
#define parentDir(fstStart, i)        (fstStart[i].parentOrPosition)
#define nextDir(fstStart, i)          (fstStart[i].nextEntryOrLength)
#define filePosition(fstStart, i)     (fstStart[i].parentOrPosition)
#define fileLength(fstStart, i)       (fstStart[i].nextEntryOrLength)

BOOL ARCInitHandle(void* arcStart, ARCHandle* handle) {
    FSTEntry* FSTEntries;
    ARCHeader* header = (ARCHeader*)arcStart;

    OSAssertMsg(header->magic == ARC_MAGIC, "ARCInitHandle: bad archive format", 74);

    handle->archiveStartAddr    = arcStart;
    handle->FSTStart            = FSTEntries = (void*)((u32)arcStart + header->fstStart);
    handle->fileStart           = (void*)((u32)arcStart + header->fileStart);
    handle->entryNum            = nextDir(FSTEntries, 0);
    handle->FSTStringStart      = (char*)&(FSTEntries[handle->entryNum]);
    handle->FSTLength           = (u32)header->fstSize;
    handle->currDir             = 0;
    
    return TRUE;
}

BOOL ARCOpen(ARCHandle* handle, const char* fileName, ARCFileInfo* file) {
    s32 entrynum;
    char currentDir[128];
    FSTEntry* FSTEntries = (FSTEntry*)handle->FSTStart;
    entrynum = ARCConvertPathToEntrynum(handle, fileName);

    if (entrynum < 0) {
        ARCGetCurrentDir(handle, currentDir, 128);
        OSReport("Warning: ARCOpen(): file '%s' was not found under %s in the archive.\n", fileName, currentDir);
        return FALSE;
    }

    if ((entrynum < 0) || entryIsDir(FSTEntries, entrynum)) {
        return FALSE;
    } 

    file->handle = handle;
    file->startOffset = filePosition(FSTEntries, entrynum);
    file->length = fileLength(FSTEntries, entrynum);

    return TRUE;
}

BOOL ARCFastOpen(ARCHandle* handle, s32 entrynum, ARCFileInfo* file) {
    FSTEntry* FSTEntries = (FSTEntry*)handle->FSTStart;

    if ((entrynum < 0) || (entrynum >= handle->entryNum) || entryIsDir(FSTEntries, entrynum)) {
        return FALSE;
    }

    file->handle = handle;
    file->startOffset = filePosition(FSTEntries, entrynum);
    file->length = fileLength(FSTEntries, entrynum);
    return TRUE;
}

static BOOL isSame(const char* path, const char* string) {
    while (*string != '\0') {
        if (tolower(*path++) != tolower(*string++)) {
            return FALSE;
        }
    }

    if ((*path == '/') || (*path == '\0')) {
        return TRUE;
    }

    return FALSE;
}

s32 ARCConvertPathToEntrynum(ARCHandle* handle, const char* pathPtr) {
    const char* ptr;
    char*       stringPtr;
    BOOL        isDir;
    s32         length, dirLookAt, i;
    
    const char* origPathPtr = pathPtr;
    
    FSTEntry* FSTEntries;

    dirLookAt = handle->currDir;
    FSTEntries = (FSTEntry*)handle->FSTStart;

    while (TRUE) {
        if (*pathPtr == '\0') {
            return (s32)dirLookAt;
        } 
        else if (*pathPtr == '/') {
            dirLookAt = 0;
            pathPtr++;
            continue;
        }
        else if (*pathPtr == '.') {
            if (*(pathPtr+1) == '.') {
                if (*(pathPtr+2) == '/') {
                    dirLookAt = parentDir(FSTEntries, dirLookAt);
                    pathPtr += 3;
                    continue;
                }
                else if (*(pathPtr+2) == '\0') {
                    return (s32)parentDir(FSTEntries, dirLookAt);
                }
            }
            else if (*(pathPtr+1) == '/') {
                pathPtr += 2;
                continue;
            }
            else if (*(pathPtr+1) == '\0') {
                return (s32)dirLookAt;
            }
        }

        for (ptr = pathPtr; (*ptr != '\0') && (*ptr != '/'); ptr++) {}
        
        isDir = (*ptr == '\0')? FALSE : TRUE;
        length = (s32)(ptr - pathPtr);
        ptr = pathPtr;

        for (i = dirLookAt+1; i < nextDir(FSTEntries, dirLookAt); i = entryIsDir(FSTEntries, i) ? nextDir(FSTEntries, i) : (i+1)) {
dot:
            if ((entryIsDir(FSTEntries, i) == FALSE) && (isDir == TRUE)) {
                continue;
            }

            stringPtr = handle->FSTStringStart + stringOff(FSTEntries, i);

            if (*stringPtr == '.' && *(stringPtr+1) == '\0') {
                i++;
                goto dot;
            }

            if (isSame(ptr, stringPtr) == TRUE) {
                goto next_hier;
            }
        }

        return -1;

next_hier:
        if (!isDir) {
            return (s32)i;
        }

        dirLookAt = i;
        pathPtr += length + 1;
    }
}

static u32 myStrncpy(char* dest, char* src, u32 maxlen) {
    u32 i = maxlen;

    while ((i > 0) && (*src != 0)) {
        *dest++ = *src++;
        i--;
    }
    
    return (maxlen - i);
}

// Force this function to link (it never does)
#pragma push
#pragma force_active on

BOOL ARCEntrynumIsDir(ARCHandle* handle, s32 entrynum) {
    FSTEntry* FSTEntries = (FSTEntry*)handle->FSTStart;
    return entryIsDir(FSTEntries, entrynum);
}

#pragma pop

static u32 entryToPath(ARCHandle* handle, u32 entry, char* path, u32 maxlen) {
    char* name;
    u32 loc;
    FSTEntry* FSTEntries = (FSTEntry*)handle->FSTStart;

    if (entry == 0) {
        return 0;
    }

    name = handle->FSTStringStart + stringOff(FSTEntries, entry);
    loc = entryToPath(handle, parentDir(FSTEntries, entry), path, maxlen);
    
    if (loc == maxlen) {
        return loc;
    }

    *(path + loc++) = '/';
    loc += myStrncpy(path + loc, name, maxlen - loc);
    
    return loc;
}

static BOOL ARCConvertEntrynumToPath(ARCHandle* handle, s32 entrynum, char* path, u32 maxlen) {
    u32 loc;
    FSTEntry* FSTEntries = (FSTEntry*)handle->FSTStart;

    loc = entryToPath(handle, (u32)entrynum, path, maxlen);

    if (loc == maxlen) {
        path[maxlen - 1] = '\0';
        return FALSE;
    }

    if (entryIsDir(FSTEntries, entrynum)) {
        if (loc == maxlen - 1) {
            path[loc] = '\0';
            return FALSE;
        }

        path[loc++] = '/';
    }
    
    path[loc] = '\0';
    
    return TRUE;
}

static BOOL ARCGetCurrentDir(ARCHandle* handle, char* path, u32 maxlen) {
    return ARCConvertEntrynumToPath(handle, (s32)handle->currDir, path, maxlen);
}

void* ARCGetStartAddrInMem(ARCFileInfo* file) {
    ARCHandle* handle = file->handle;
    return (void*)((u32)handle->archiveStartAddr + file->startOffset);
}

u32 ARCGetStartOffset(ARCFileInfo* file) {
    return file->startOffset;
}

u32 ARCGetLength(ARCFileInfo* file) {
    return file->length;
}

BOOL ARCClose(ARCFileInfo* file) {
    // stub
    return TRUE;
}

BOOL ARCChangeDir(ARCHandle* handle, const char* dirName) {
    s32 entry;   
    FSTEntry* FSTEntries;

    entry = ARCConvertPathToEntrynum(handle, dirName);
    FSTEntries = (FSTEntry*)handle->FSTStart;

    if ((entry < 0) || (entryIsDir(FSTEntries, entry) == FALSE)) {
        return FALSE;
    }

    handle->currDir = (u32)entry;
    
    return TRUE;
}

BOOL ARCOpenDir(ARCHandle* handle, const char* dirName, ARCDir* dir) {
    s32         entry;
    FSTEntry*   FSTEntries;

    entry = ARCConvertPathToEntrynum(handle, dirName);
    FSTEntries = (FSTEntry*)handle->FSTStart;

    if ((entry < 0) || (entryIsDir(FSTEntries, entry) == FALSE)) {
        return FALSE;
    }

    dir->handle = handle;
    dir->entryNum = (u32)entry;
    dir->location = (u32)entry + 1;
    dir->next = nextDir(FSTEntries, entry);
    
    return TRUE;
}

BOOL ARCReadDir(ARCDir* dir, ARCDirEntry* dirent) {
    u32 loc;
    FSTEntry* FSTEntries;
    ARCHandle* handle;

    handle = dir->handle;
    FSTEntries = (FSTEntry*)handle->FSTStart;
    loc = dir->location;
retry:
    if ((loc <= dir->entryNum) || (dir->next <= loc)) {
        return FALSE;
    }

    dirent->handle = handle;
    dirent->entryNum = loc;
    dirent->isDir = entryIsDir(FSTEntries, loc);
    dirent->name = handle->FSTStringStart + stringOff(FSTEntries, loc);

    if (dirent->name[0] == '.' && dirent->name[1] == '\0') {
        loc++;
        goto retry;
    }

    dir->location = entryIsDir(FSTEntries, loc) ? nextDir(FSTEntries, loc) : (loc+1);
    
    return TRUE;
}

BOOL ARCCloseDir(ARCDir* dir) {
    // stub
    return TRUE;
}


