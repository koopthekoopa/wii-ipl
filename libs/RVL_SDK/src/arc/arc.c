#include <revolution.h>

#include <revolution/arc.h>

#include <ctype.h>

#define ARC_MAX_PATH    128

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

#define IS_ENTRY_DIR(fstStart, i)       ((((fstStart)[i].isDirAndStringOff & 0xFF000000) == 0) ? FALSE : TRUE)
#define FILE_STRING_OFF(fstStart, i)    ((fstStart)[i].isDirAndStringOff & 0x00FFFFFF)

static BOOL ARCGetCurrentDir(ARCHandle* handle, char* path, u32 maxlen);

static BOOL isSame(const char* path, const char* string) {
    while (*string != 0) {
        if (tolower(*path++) != tolower(*string++)) {
            return FALSE;
        }
    }
    if ((*path == '/') || (*path == 0)) {
        return TRUE;
    }
    return FALSE;
}

static u32 myStrncpy(char* dest, char* src, u32 maxlen) {
    u32 i = maxlen;
    while (i > 0 && *src != 0) {
        *dest++ = *src++;
        i--;
    }
    return (maxlen - i);
}

BOOL ARCInitHandle(void* arcStart, ARCHandle* handle) {
    ARCHeader* header = (ARCHeader*)arcStart;
    FSTEntry* FSTEntries;

    OSAssertMsg(header->magic == ARC_MAGIC, "ARCInitHandle: bad archive format", 74);

    handle->archiveStartAddr    = arcStart;

    FSTEntries                  = (FSTEntry*)((u32)arcStart + header->fstStart);
    handle->FSTStart            = FSTEntries;

    handle->fileStart           = (void*)((u32)arcStart + header->fileStart);
    handle->entryNum            = FSTEntries[0].dir.next;
    
    handle->FSTStringStart      = (char*)&FSTEntries[handle->entryNum];
    handle->FSTLength           = header->fstSize;
    
    handle->currDir             = 0;
    
    return TRUE;
}

BOOL ARCOpen(ARCHandle* handle, const char* fileName, ARCFileInfo* file) {
    s32 entryNum;
    char currentDir[ARC_MAX_PATH];
    FSTEntry* FSTEntries = (FSTEntry*)handle->FSTStart;

    // Find entry number
    entryNum = ARCConvertPathToEntrynum(handle, fileName);
    if (entryNum < 0) {
        // Abort if not found
        ARCGetCurrentDir(handle, currentDir, ARC_MAX_PATH);
        OSReport("Warning: ARCOpen(): file '%s' was not found under %s in the archive.\n", fileName, currentDir);
        return FALSE;
    }

    // If entry number was not a file, abort
    if (entryNum < 0 || IS_ENTRY_DIR(FSTEntries, entryNum)) {
        return FALSE;
    } 

    // Otherwise, prepare for read.
    file->handle = handle;
    file->startOffset = FSTEntries[entryNum].file.position;
    file->length = FSTEntries[entryNum].file.length;

    return TRUE;
}

BOOL ARCFastOpen(ARCHandle* handle, s32 entryNum, ARCFileInfo* file) {
    FSTEntry* FSTEntries = (FSTEntry*)handle->FSTStart;

    // If entry was not found or was not a file, abort
    if (entryNum < 0 || entryNum >= handle->entryNum || IS_ENTRY_DIR(FSTEntries, entryNum)) {
        return FALSE;
    }

    // Otherwise, prepare for read.
    file->handle = handle;
    file->startOffset = FSTEntries[entryNum].file.position;
    file->length = FSTEntries[entryNum].file.length;

    return TRUE;
}

s32 ARCConvertPathToEntrynum(ARCHandle* handle, const char* path) {
    const char* ptrPath;

    BOOL isDir;
    s32  pathLen, dirLookAt, i;

    FSTEntry* FSTEntries;

    dirLookAt = handle->currDir;
    FSTEntries = (FSTEntry*)handle->FSTStart;

    while (TRUE) {
        // End of path? Done!
        if (*path == 0) {
            return dirLookAt;
        } 
        // Ignore initial slash.
        else if (*path == '/') {
            dirLookAt = 0;
            path++;
            continue;
        }
        // Special cases
        else if (*path == '.') {
            if (*(path + 1) == '.') {
                // Found `../`? Seek to parent.
                if (*(path + 2) == '/') {
                    dirLookAt = FSTEntries[dirLookAt].dir.parent;
                    path += 3;
                    continue;
                }
                // If the input path was literally just `../`, then return the parent.
                else if (*(path+2) == 0) {
                    return FSTEntries[dirLookAt].dir.parent;
                }
            }
            // "." directory does nothing
            else if (*(path+1) == '/') {
                path += 2;
                continue;
            }
            // Ignore trailing dot
            else if (*(path+1) == 0) {
                return dirLookAt;
            }
        }
        // The directory is not special, isolate the path!
        for (ptrPath = path; *ptrPath != 0 && *ptrPath != '/'; ptrPath++) {}
        
        isDir   = *ptrPath == 0 ? FALSE : TRUE;
        pathLen = ptrPath - path;
        ptrPath = path;

        for (i = dirLookAt+1; i < FSTEntries[dirLookAt].dir.next; i = IS_ENTRY_DIR(FSTEntries, i) ? FSTEntries[i].dir.next : i+1) {
            char* name;
loop_back:
            // Skip directories
            if (IS_ENTRY_DIR(FSTEntries, i) == FALSE && isDir == TRUE) {
                continue;
            }

            // Skip empty entries
            name = handle->FSTStringStart + FILE_STRING_OFF(FSTEntries, i);
            if (*name == '.' && *(name+1) == 0) {
                i++;
                goto loop_back;
            }

            // Advance to next file in hierarchy
            if (isSame(ptrPath, name) == TRUE) {
                goto next_in_hier;
            }
        }
        return -1;

next_in_hier:
        // Path was truncated? There is nowhere else to go.
        if (!isDir) {
            return i;
        }
        dirLookAt = i;
        path += pathLen + 1;
    }
}

#pragma push
#pragma force_active on
BOOL ARCEntrynumIsDir(ARCHandle* handle, s32 entryNum) {
    return IS_ENTRY_DIR((FSTEntry*)handle->FSTStart, entryNum);
}
#pragma pop

static u32 entryToPath(ARCHandle* handle, u32 entry, char* path, u32 maxlen) {
    char*       name;
    u32         loc;
    FSTEntry*   FSTEntries = (FSTEntry*)handle->FSTStart;

    if (entry == 0) {
        return 0;
    }

    name = handle->FSTStringStart + FILE_STRING_OFF(FSTEntries, entry);
    loc = entryToPath(handle, FSTEntries[entry].dir.parent, path, maxlen);
    
    if (loc == maxlen) {
        return loc;
    }

    *(path + loc++) = '/';
    loc += myStrncpy(path + loc, name, maxlen - loc);
    
    return loc;
}

static BOOL ARCConvertEntrynumToPath(ARCHandle* handle, s32 entryNum, char* path, u32 maxlen) {
    u32 loc;
    FSTEntry* FSTEntries = (FSTEntry*)handle->FSTStart;

    loc = entryToPath(handle, entryNum, path, maxlen);

    if (loc == maxlen) {
        path[maxlen-1] = 0;
        return FALSE;
    }

    if (IS_ENTRY_DIR(FSTEntries, entryNum)) {
        if (loc == maxlen-1) {
            path[loc] = 0;
            return FALSE;
        }
        path[loc++] = '/';
    }
    path[loc] = 0;
    
    return TRUE;
}

static BOOL ARCGetCurrentDir(ARCHandle* handle, char* path, u32 maxlen) {
    return ARCConvertEntrynumToPath(handle, handle->currDir, path, maxlen);
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

    if (entry < 0 || IS_ENTRY_DIR(FSTEntries, entry) == FALSE) {
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

    if (entry < 0 || IS_ENTRY_DIR(FSTEntries, entry) == FALSE) {
        return FALSE;
    }

    dir->handle = handle;
    dir->entryNum = entry;
    dir->location = entry+1;
    dir->next = FSTEntries[entry].dir.next;
    
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
    if (loc <= dir->entryNum || dir->next <= loc) {
        return FALSE;
    }

    dirent->handle = handle;
    dirent->entryNum = loc;
    dirent->isDir = IS_ENTRY_DIR(FSTEntries, loc);
    dirent->name = handle->FSTStringStart + FILE_STRING_OFF(FSTEntries, loc);

    if (dirent->name[0] == '.' && dirent->name[1] == 0) {
        loc++;
        goto retry;
    }

    dir->location = IS_ENTRY_DIR(FSTEntries, loc) ? FSTEntries[loc].dir.next : (loc+1);
    
    return TRUE;
}

BOOL ARCCloseDir(ARCDir* dir) {
    // stub
    return TRUE;
}
