#ifndef PRIVATE_FS_H
#define PRIVATE_FS_H

#include <revolution/types.h>

#include <private/ios/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define FS_MAX_PATH     64
#define FS_MAX_DIR_PATH 12

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
    ISFS_ERROR_HMAC            = -116,
    ISFS_ERROR_UNKNOWN         = -117,
    ISFS_ERROR_BUSY            = -118,
    ISFS_ERROR_SHUTDOWN        = -119
};

typedef struct ISFSStats {
    u32 blockSize;
    u32 freeBlocks;
    u32 occupiedBlcocks;
    u32 badBlocks;
    u32 reservedBlocks;
    u32 freeInodes;
    u32 occupedInodes;
} ISFSStats;

typedef struct ISFSFileStats {
    u32 size;
    u32 offset;
} ISFSFileStats;

typedef struct ISFSPathAttrArgs {
    u32 ownerId;
    u16 groupId;
    u8  path[FS_MAX_PATH];
    u8  ownerAccess;
    u8  groupAccess;
    u8  othersAccess;
    u8  attr;
} ISFSPathAttrArgs;

typedef struct ISFSPathsArgs {
    u8 path1[FS_MAX_PATH];
    u8 path2[FS_MAX_PATH];
} ISFSPathsArgs;

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_FS_H
