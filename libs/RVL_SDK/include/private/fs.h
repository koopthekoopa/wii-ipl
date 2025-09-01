#ifndef PRIVATE_FS_H
#define PRIVATE_FS_H

#include <revolution/types.h>

#include <private/ios/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define FS_MAX_PATH     64
#define FS_MAX_DIR_PATH 12

typedef s32 ISFSError;
typedef void (*ISFSCallback) (ISFSError, void*);

enum {
    ISFS_ERROR_OK              = 0,

    ISFS_ERROR_INVALID         = -101,
    ISFS_ERROR_ACCESS          = -102,
    ISFS_ERROR_CORRUPT         = -103,
    ISFS_ERROR_NOTREADY        = -104,
    ISFS_ERROR_EXISTS          = -105,
    ISFS_ERROR_NOEXISTS        = -106,
    ISFS_ERROR_MAXFILES        = -107,
    ISFS_ERROR_MAXBLOCKS       = -108,
    ISFS_ERROR_MAXFD           = -109,
    ISFS_ERROR_MAXDEPTH        = -110,
    ISFS_ERROR_OPENFD          = -111,
    ISFS_ERROR_BADBLOCK        = -112,
    ISFS_ERROR_ECC             = -113,
    ISFS_ERROR_ECC_CRIT        = -114,
    ISFS_ERROR_NOTEMPTY        = -115,
    ISFS_ERROR_AUTHENTICATION  = -116,
    ISFS_ERROR_UNKNOWN         = -117,
    ISFS_ERROR_BUSY            = -118,
    ISFS_ERROR_SHUTDOWN        = -119
};

enum {
    ISFS_ACCESS_NONE = 0,
    ISFS_ACCESS_READ = (1 << 0),
    ISFS_ACCESS_WRITE = (1 << 1),
    ISFS_ACCESS_RW = ISFS_ACCESS_READ | ISFS_ACCESS_WRITE
};

enum {
    ISFS_SEEK_BEG = 0,
    ISFS_SEEK_CUR,
    ISFS_SEEK_END,
};

typedef struct ISFSStats {
    u32 blockSize;      // 0x00

    u32 freeBlocks;     // 0x04
    u32 usedBlocks;     // 0x08

    u32 badBlocks;      // 0x0C
    u32 reservedBlocks; // 0x10

    u32 freeInodes;     // 0x14
    u32 usedInodes;     // 0x18
} ISFSStats;

typedef struct ISFSFileStats {
    u32 size;   // 0x00
    u32 offset; // 0x04
} ISFSFileStats;

typedef struct ISFSPathAttrArgs {
    u32 ownerId;            // 0x00
    u16 groupId;            // 0x04

    u8  path[FS_MAX_PATH];  // 0x06

    u8  ownerAccess;        // 0x46
    u8  groupAccess;        // 0x47
    u8  othersAccess;       // 0x48

    u8  attr;               // 0x49
} ISFSPathAttrArgs;

typedef struct ISFSPathsArgs {
    u8 path1[FS_MAX_PATH];  // 0x00
    u8 path2[FS_MAX_PATH];  // 0x40
} ISFSPathsArgs;

ISFSError   ISFS_OpenLib();
ISFSError   ISFS_OpenLibEx();

ISFSError   ISFS_CloseLib();

ISFSError   ISFS_GetStats(ISFSStats* stats);

ISFSError   ISFS_CreateDir(const char* dirName, u32 dirAttr, u32 ownerAcc, u32 groupAcc, u32 othersAcc);
ISFSError   ISFS_CreateDirAsync(const char* dirName, u32 dirAttr, u32 ownerAcc, u32 groupAcc, u32 othersAcc, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_ReadDir(const char* dirName, char* nameList, u32* num);
ISFSError   ISFS_ReadDirAsync(const char* dirName, char* nameList, u32* num, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_SetAttr(const char* fileName, u32 ownerId, u16 groupId, u32 attr, u32 ownerAcc, u32 groupAcc, u32 othersAcc);
ISFSError   ISFS_SetAttrAsync(const char* fileName, u32 ownerId, u16 groupId, u32 attr, u32 ownerAcc, u32 groupAcc, u32 othersAcc, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_GetAttr(const char* fileName, u32* ownerId, u16* groupId, u32* attr, u32* ownerAcc, u32* groupAcc, u32* othersAcc);
ISFSError   ISFS_GetAttrAsync(const char* fileName, u32* ownerId, u16* groupId, u32* attr, u32* ownerAcc, u32* groupAcc, u32* othersAcc, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_Delete(const char* fileName);
ISFSError   ISFS_DeleteAsync(const char* fileName, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_Rename(const char* oldName, const char* newName);
ISFSError   ISFS_RenameAsync(const char* oldName, const char* newName, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_GetUsage(const char* dirName, u32* blocks, u32* iNodes);

ISFSError   ISFS_CreateFile(const char* fileName, u32 fileAttr, u32 ownerAcc, u32 groupAcc, u32 othersAcc);
ISFSError   ISFS_CreateFileAsync(const char* fileName, u32 fileAttr, u32 ownerAcc, u32 groupAcc, u32 othersAcc, ISFSCallback callback, void* callbackArg);

IOSFd       ISFS_Open(const char* fileName, u32 access);
IOSFd       ISFS_OpenAsync(const char* fileName, u32 access, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_GetFileStats(IOSFd fd, ISFSFileStats* stats);
ISFSError   ISFS_GetFileStatsAsync(IOSFd fd, ISFSFileStats* stats, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_Seek(IOSFd fd, s32 offset, u32 whence);
ISFSError   ISFS_SeekAsync(IOSFd fd, s32 offset, u32 whence, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_Read(s32 fd, u8* buffer, u32 bufferLen);
ISFSError   ISFS_ReadAsync(IOSFd fd, u8* buffer, u32 size, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_Write(IOSFd fd, const char* buffer, u32 size);
ISFSError   ISFS_WriteAsync(IOSFd fd, const char* buffer, u32 size, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_Close(IOSFd fd);
ISFSError   ISFS_CloseAsync(IOSFd fd, ISFSCallback callback, void* callbackArg);

ISFSError   ISFS_ShutdownAsync(ISFSCallback callback, void* callbackArg);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_FS_H
