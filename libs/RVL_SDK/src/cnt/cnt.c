#include <revolution/cnt.h>
#include <revolution/esp.h>
#include <revolution/nand.h>
#include <revolution/dvd.h>

#include <private/nand.h>
#include <private/ipc.h>
#include <private/fs.h>

#include <stdio.h>
#include <string.h>
#include <ctype.h>

DECOMP_FORCE_ACTIVE(cnt_c, "<< RVL_SDK - CNT \trelease build: Apr 20 2010 11:21:37 (0x4199_60831) >>");
DECOMP_FORCE_ACTIVE(cnt_c, "/content%d");
DECOMP_FORCE_ACTIVE(cnt_c, "Warning: CNTInitHandle(): directory '%s' is not found under '/'\n");

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
#define FILE_STRING_OFF(fstStart, i)      ((fstStart)[i].isDirAndStringOff & 0x00FFFFFF)

static BOOL isSame(const char* path, const char* string) {
    while (*string != 0) {
        if (tolower(*path++) != tolower(*string++)) {
            return FALSE;
        }
    }
    if (*path == '/' || *path == 0) {
        return TRUE;
    }
    return FALSE;
}

static s32 __CNTConvertErrorCode(s32 result);

s32 contentConvertPathToEntrynumDVD(CNTHandleDVD* cntHandle, const char* path);

// Some functions escape... well...
#pragma force_active on

CNTError contentInitHandleNAND(u32 contentId, CNTHandleNAND* cntHandle, MEMAllocator* allocator) {
    ARCHeader   arcHeader ALIGN32;
    ARCHandle   arcHandle;

    void*       buffer;
    u32         size;

    s32         fd, ret;

    fd = ESP_OpenContentFile(contentId);
    if (fd < ES_ERR_OK) {
        return __CNTConvertErrorCode(fd);
    }

    ret = ESP_ReadContentFile(fd, &arcHeader, sizeof(ARCHeader));
    if (ret < ES_ERR_OK) {
        return __CNTConvertErrorCode(ret);
    }
    size = OSRoundUp32B(arcHeader.fileStart);

    ret = ESP_SeekContentFile(fd, 0, ES_SEEK_BEG);
    if (ret < ES_ERR_OK) {
        return __CNTConvertErrorCode(ret);
    }

    buffer = MEMAllocFromAllocator(allocator, size);
    if (buffer == NULL) {
        return CNT_RESULT_ALLOC_FAILED;
    }

    ret = ESP_ReadContentFile(fd, buffer, size);
    if (ret < ES_ERR_OK) {
        MEMFreeToAllocator(allocator, buffer);
        return __CNTConvertErrorCode(ret);
    }

    ARCInitHandle(buffer, &arcHandle);

    memcpy(&cntHandle->ArcHandle, &arcHandle, sizeof(arcHandle));
    cntHandle->FileDescriptor = fd;
    cntHandle->allocator = allocator;

    return CNT_RESULT_OK;
}

CNTError contentOpenNAND(CNTHandleNAND* cntHandle, const char* path, CNTFileInfoNAND* cntFileInfo) {
    s32         entryNum;
    CNTError    ret;

    ARCFileInfo arcFile;

    entryNum = ARCConvertPathToEntrynum(&cntHandle->ArcHandle, path);
    if (entryNum < 0) {
        return CNT_RESULT_INVALID;
    }

    if (ARCFastOpen(&cntHandle->ArcHandle, entryNum, &arcFile) == FALSE) {
        return CNT_RESULT_INVALID;
    }

    cntFileInfo->CntHandle = cntHandle;
    cntFileInfo->startOffset = arcFile.startOffset;
    cntFileInfo->length = arcFile.length;
    cntFileInfo->readOffset = 0;

    return CNT_RESULT_OK;
}

s32 contentOpenDVD(CNTHandleDVD* cntHandle, const char* path, CNTFileInfoDVD* cntFileInfo) {
    s32         entryNum;
    CNTError    ret;

    ARCFileInfo arcFile;

    entryNum = contentConvertPathToEntrynumDVD(cntHandle, path);
    if (entryNum < 0) {
        return CNT_RESULT_INVALID;
    }

    if (DVDFastOpen(entryNum, &cntFileInfo->fileInfo) == FALSE) {
        return CNT_RESULT_INVALID;
    }

    cntFileInfo->readOffset = 0;

    return CNT_RESULT_OK;
}

CNTError contentFastOpenNAND(CNTHandleNAND* cntHandle, s32 entryNum, CNTFileInfoNAND* cntFileInfo) {
    CNTError    ret;

    ARCFileInfo arcFile;

    if (ARCFastOpen(&cntHandle->ArcHandle, entryNum, &arcFile) == FALSE) {
        return CNT_RESULT_INVALID;
    }

    cntFileInfo->CntHandle = cntHandle;
    cntFileInfo->startOffset = arcFile.startOffset;
    cntFileInfo->length = arcFile.length;
    cntFileInfo->readOffset = 0;

    return CNT_RESULT_OK;
}

CNTError contentConvertPathToEntrynumNAND(CNTHandleNAND* cntHandle, const char* path) {
    return ARCConvertPathToEntrynum(&cntHandle->ArcHandle, path);
}

s32 contentConvertPathToEntrynumDVD(CNTHandleDVD* cntHandle, const char* path) {
    const char* ptrPath;
    char*       name;

    BOOL isDir;
    s32  pathLen, dirLookAt, i;

    const char* origPathPtr = path;

    FSTEntry*   FSTEntries;
    u32         MaxEntryNum;
    char*       FSTStringStart;

    dirLookAt       = cntHandle->currDir;
    FSTEntries      = DVDGetFSTLocation();
    MaxEntryNum     = FSTEntries[0].dir.next;
    FSTStringStart  = (char*)&(FSTEntries[MaxEntryNum]);

    while (TRUE) {
        // End of path? Done!
        if (*path == 0) {
            return dirLookAt;
        } 
        // Ignore initial slash.
        else if (*path == '/') {
            dirLookAt = cntHandle->rootDir;
            path++;
            continue;
        }
        // Special cases
        else if (*path == '.') {
            if (*(path + 1) == '.') {
                // Found `../`? Seek to parent.
                if (*(path + 2) == '/') {
                    if (dirLookAt == cntHandle->rootDir) {
                        return -1;
                    }
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

        for (ptrPath = path; (*ptrPath != 0) && (*ptrPath != '/'); ptrPath++) {}

        isDir = (*ptrPath == 0) ? FALSE : TRUE;
        pathLen = (u32)(ptrPath - path);

        ptrPath = path;

        for (i = dirLookAt+1; i < FSTEntries[dirLookAt].dir.next; i = IS_ENTRY_DIR(FSTEntries, i) ? FSTEntries[i].dir.next : (i + 1)) {
loop_back:
            if (IS_ENTRY_DIR(FSTEntries, i) == FALSE && isDir == TRUE) {
                continue;
            }

            name = FSTStringStart + FILE_STRING_OFF(FSTEntries, i);

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
        if (!isDir) {
            return i;
        }

        dirLookAt = i;
        path += pathLen + 1;
    }
}

s32 contentGetLengthNAND(CNTFileInfoNAND* cntFileInfo) {
    return cntFileInfo->length;
}

CNTError contentSeekNAND(CNTFileInfoNAND* cntFileInfo, s32 offset, u32 whence) {
    s32 seekOff;
    switch (whence) {
        case CNT_SEEK_BEG: {
            seekOff = offset;
            break;
        }
        case CNT_SEEK_CUR: {
            seekOff = cntFileInfo->readOffset + offset;
            break;
        }
        case CNT_SEEK_END: {
            seekOff = cntFileInfo->length + offset;
            break;
        }
        default: {
            return CNT_RESULT_INVALID;
        }
    }
    if (seekOff < 0 || seekOff > cntFileInfo->length) {
        return CNT_RESULT_INVALID;
    }
    cntFileInfo->readOffset = seekOff;
    return CNT_RESULT_OK;
}

CNTError contentSeekDVD(CNTFileInfoDVD* cntFileInfo, s32 offset, u32 whence) {
    s32 seekOff;
    switch (whence) {
        case CNT_SEEK_BEG: {
            seekOff = offset;
            break;
        }
        case CNT_SEEK_CUR: {
            seekOff = cntFileInfo->readOffset + offset;
            break;
        }
        case CNT_SEEK_END: {
            seekOff = cntFileInfo->fileInfo.length + offset;
            break;
        }
        default: {
            return CNT_RESULT_INVALID;
        }
    }
    if (seekOff < 0 || seekOff > cntFileInfo->fileInfo.length) {
        return CNT_RESULT_INVALID;
    }
    cntFileInfo->readOffset = seekOff;
    return CNT_RESULT_OK;
}

CNTError contentReadNAND(CNTFileInfoNAND* cntFileInfo, void* buffer, u32 length, s32 offset) {
    CNTError    ret;

    s32 curOff = cntFileInfo->readOffset + offset;
    if (curOff < 0 || curOff > cntFileInfo->length) {
        return CNT_RESULT_INVALID;
    }

    ret = ESP_SeekContentFile(cntFileInfo->CntHandle->FileDescriptor, cntFileInfo->startOffset + curOff, ES_SEEK_BEG);
    if (ret < ES_ERR_OK) {
        return __CNTConvertErrorCode(ret);
    }

    ret = ESP_ReadContentFile(cntFileInfo->CntHandle->FileDescriptor, buffer, length);
    return __CNTConvertErrorCode(ret);
}

CNTError contentReadDVD(CNTFileInfoDVD* cntFileInfo, void* buffer, u32 length, s32 offset) {
    s32 readSize;
    readSize = DVDReadPrio(&cntFileInfo->fileInfo, buffer, length, offset + cntFileInfo->readOffset, 2);
    if (readSize >= 0) {
        return readSize;
    }
    else {
        return CNT_RESULT_READ_ERR;
    }
}

CNTError contentCloseNAND(CNTFileInfoNAND* cntFileInfo) {
    // Nothing.
    return CNT_RESULT_OK;
}

CNTError contentCloseDVD(CNTFileInfoDVD* cntFileInfo) {
    // Need to re-cast it...
    return DVDClose(&cntFileInfo->fileInfo) ? CNT_RESULT_OK : (CNTError)CNT_RESULT_CLOSE_ERR;
}

CNTError contentReleaseHandleNAND(CNTHandleNAND* cntFileInfo) {
    ESError ret;
  
    MEMFreeToAllocator(cntFileInfo->allocator,cntFileInfo->ArcHandle.archiveStartAddr);
    ret = ESP_CloseContentFile(cntFileInfo->FileDescriptor);
    return __CNTConvertErrorCode(ret);
}

BOOL contentOpenDirNAND(CNTHandleNAND* cntFileInfo, const char* path, ARCDir* dir) {
    return ARCOpenDir(&cntFileInfo->ArcHandle, path, dir);
}

CNTError __CNTConvertErrorCode(s32 result) {
    int errorMap[] = {
        // ES codes
        ES_ERR_OK,                      CNT_RESULT_OK, 
        -1001,                          CNT_RESULT_UNKNOWN,
        -1002,                          CNT_RESULT_UNKNOWN,
        -1003,                          CNT_RESULT_UNKNOWN,
        -1004,                          CNT_RESULT_UNKNOWN,
        ES_ERR_INVALID_PUB_KEY_TYPE,    CNT_RESULT_UNKNOWN,
        -1006,                          CNT_RESULT_UNKNOWN,
        -1007,                          CNT_RESULT_UNKNOWN,
        -1008,                          CNT_RESULT_UNKNOWN,
        ES_ERR_FILE_READ_FAILED,        CNT_RESULT_UNKNOWN,
        ES_ERR_FILE_WRITE_FAILED,       CNT_RESULT_UNKNOWN,
        -1011,                          CNT_RESULT_UNKNOWN,
        ES_ERR_INVALID_SIGNATURE,       CNT_RESULT_UNKNOWN,
        -1013,                          CNT_RESULT_UNKNOWN,
        -1014,                          CNT_RESULT_UNKNOWN,
        -1015,                          CNT_RESULT_UNKNOWN,
        ES_ERR_TMD_MAXFD,               CNT_RESULT_MAXFD,
        ES_ERR_INVALID,                 CNT_RESULT_INVALID,
        -1018,                          CNT_RESULT_UNKNOWN,
        ES_ERR_INVALID_UNKNOWN,         CNT_RESULT_UNKNOWN,
        ES_ERR_INVALID_DEVICE_ID,       CNT_RESULT_UNKNOWN,
        -1021,                          CNT_RESULT_UNKNOWN,
        ES_ERR_INVALID_CONTENT_HASH,    CNT_RESULT_UNKNOWN,
        -1023,                          CNT_RESULT_UNKNOWN,
        ES_ERR_MEMORY_ERROR,            CNT_RESULT_OUT_OF_MEMORY,
        ES_ERR_NO_TMD_FILE_FOUND,       CNT_RESULT_UNKNOWN,
        ES_ERR_TMD_INVALID_RIGHT,       CNT_RESULT_ACCESS,
        ES_ERR_ISSUER_NOT_FOUND,        CNT_RESULT_UNKNOWN,
        ES_ERR_TICKET_NOT_FOUND,        CNT_RESULT_UNKNOWN,
        ES_ERR_INVALID_TICKET,          CNT_RESULT_UNKNOWN,
        -1030,                          CNT_RESULT_UNKNOWN,
        ES_ERR_INVALID_BOOT2,           CNT_RESULT_UNKNOWN,
        ES_ERR_UNKNOWN_FATAL,           CNT_RESULT_UNKNOWN,
        ES_ERR_TICKET_EXPIRED,          CNT_RESULT_UNKNOWN,
        -1034,                          CNT_RESULT_UNKNOWN,
        ES_ERR_INVALID_TITLE_VER,       CNT_RESULT_UNKNOWN,
        ES_ERR_BAD_SYSMENU_TICKET,      CNT_RESULT_UNKNOWN,
        ES_ERR_BAD_SYSMENU_CONTENTS,    CNT_RESULT_UNKNOWN,
        -1038,                          CNT_RESULT_UNKNOWN,

        // FS codes
        ISFS_ERROR_OK,                  CNT_RESULT_OK,
        ISFS_ERROR_ACCESS,              CNT_RESULT_ACCESS,
        ISFS_ERROR_CORRUPT,             CNT_RESULT_CORRUPT,
        ISFS_ERROR_ECC_CRIT,            CNT_RESULT_ECC_CRIT,
        ISFS_ERROR_EXISTS,              CNT_RESULT_UNKNOWN,
        ISFS_ERROR_AUTHENTICATION,      CNT_RESULT_AUTHENTICATION,
        ISFS_ERROR_INVALID,             CNT_RESULT_INVALID,
        ISFS_ERROR_MAXBLOCKS,           CNT_RESULT_UNKNOWN,
        ISFS_ERROR_MAXFD,               CNT_RESULT_MAXFD,
        ISFS_ERROR_MAXFILES,            CNT_RESULT_UNKNOWN,
        ISFS_ERROR_NOEXISTS,            CNT_RESULT_INVALID,
        ISFS_ERROR_NOTEMPTY,            CNT_RESULT_UNKNOWN,
        ISFS_ERROR_NOTREADY,            CNT_RESULT_UNKNOWN,
        ISFS_ERROR_OPENFD,              CNT_RESULT_UNKNOWN,
        ISFS_ERROR_UNKNOWN,             CNT_RESULT_UNKNOWN,
        ISFS_ERROR_BUSY,                CNT_RESULT_OUT_OF_MEMORY, // ...?
        ISFS_ERROR_SHUTDOWN,            CNT_RESULT_SHUTDOWN,

        // IPC codes
        IPC_RESULT_ACCESS,              CNT_RESULT_ACCESS,
        IPC_RESULT_EXISTS,              CNT_RESULT_UNKNOWN,
        IPC_RESULT_INTR,                CNT_RESULT_UNKNOWN,
        IPC_RESULT_INVALID,             CNT_RESULT_INVALID,
        IPC_RESULT_MAX,                 CNT_RESULT_UNKNOWN,
        IPC_RESULT_NOEXISTS,            CNT_RESULT_INVALID,
        IPC_RESULT_EMPTYQUEUE,          CNT_RESULT_UNKNOWN,
        IPL_RESULT_FULLQUEUE,           CNT_RESULT_OUT_OF_MEMORY,
        IPC_RESULT_UNKNOWN,             CNT_RESULT_UNKNOWN,
        IPC_RESULT_NOTREADY,            CNT_RESULT_UNKNOWN,
        IPC_RESULT_ECC,                 CNT_RESULT_UNKNOWN,
        IPC_RESULT_ECC_CRIT,            CNT_RESULT_ECC_CRIT,
        IPC_RESULT_BADBLOCK,            CNT_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_OBJTYPE,     CNT_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_RNG,         CNT_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_FLAG,        CNT_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_FORMAT,      CNT_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_VERSION,     CNT_RESULT_UNKNOWN,
        IPC_RESULT_INVALID_SIGNATURE,   CNT_RESULT_UNKNOWN,
        IPC_RESULT_VERIFY_FAILED,       CNT_RESULT_UNKNOWN,
        IPC_RESULT_INTERNAL_FAILURE,    CNT_RESULT_UNKNOWN,
        IPC_RESULT_ALLOC_FAILED,        CNT_RESULT_OUT_OF_MEMORY,
        IPC_RESULT_INVALID_SIZE,        CNT_RESULT_UNKNOWN,
    };

    int i = 0;

    if (result >= ISFS_ERROR_OK) {
        return result;
    }

    for (; i < ARRSIZE(errorMap); i += 2) {
        if (errorMap[i] == result) {
            if (result == ISFS_ERROR_ECC_CRIT || result == ISFS_ERROR_AUTHENTICATION || result == ISFS_ERROR_UNKNOWN
            || result == IPC_RESULT_UNKNOWN || result == IPC_RESULT_ECC_CRIT) {
                char buf[128] ALIGN64;
                sprintf(buf, "ES error code: %d", result);
                NANDLoggingAddMessageAsync(NULL, buf);
            }
            return errorMap[i+1];
        }
    }

    OSReport("CAUTION!  Unexpected error code [%d] was found.\n", result); {
        char buf[128] ALIGN64;
        sprintf(buf, "ES unexpected error code: %d", result);
        NANDLoggingAddMessageAsync(NULL, buf);
    }

    return CNT_RESULT_UNKNOWN;
}
