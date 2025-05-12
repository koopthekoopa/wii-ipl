#include <revolution.h>

#include <private/ipc.h>

#include <private/ios.h>

#include <private/fs.h>

#include <string.h>
#include <stddef.h>

static IOSFd        __fsFd = -1;
static u32          __fsInitialized = FALSE;

static char*        __devfs = NULL;

static IOSHeapId    hId;

static s32          _asynCnt = 0;

enum {
    ISFS_CB_STATE_NONE = 0,
    ISFS_CB_STATE_GET_STATS,
    ISFS_CB_STATE_READ_DIR,
    ISFS_CB_STATE_GET_ATTR,
    ISFS_CB_STATE_GET_USAGE,
    ISFS_CB_STATE_GET_FILE_STATS
};

enum {
    ISFS_IOCTL_GET_STATS        = 2,
    ISFS_IOCTL_CREATE_DIR       = 3,
    ISFS_IOCTL_READ_DIR         = 4,
    ISFS_IOCTL_SET_ATTR         = 5,
    ISFS_IOCTL_GET_ATTR         = 6,
    ISFS_IOCTL_DELETE_PATH      = 7,
    ISFS_IOCTL_RENAME_PATH      = 8,
    ISFS_IOCTL_CREATE_FILE      = 9,
    ISFS_IOCTL_GET_FILE_STATS   = 11,
    ISFS_IOCTLV_GET_USAGE       = 12,
    ISFS_IOCTL_SHUTDOWN_FS      = 13
};

typedef struct FS_GetAttr {
    u32* ownerId;   // 0x00
    u16* groupId;   // 0x04
    u32* attr;      // 0x08
    u32* ownerAcc;  // 0x0C
    u32* groupAcc;  // 0x10
    u32* othersAcc; // 0x14
} FS_GetAttr;

typedef struct FS_GetUsage {
    u32* blocks;    // 0x00
    u32* iNodes;    // 0x04
} FS_GetUsage;

typedef struct FS_Callback {
    u8              ioBuf[0x100] ALIGN32;   // 0x00
    ISFSCallback    callback;               // 0x100
    void*           callbackArg;            // 0x104
    u32             func;                   // 0x108

    union {
        ISFSStats*      stats;
        ISFSFileStats*  fstats;

        u32*            num;

        FS_GetAttr      getAttr;
        FS_GetUsage     getUsage;
    } args;                                 // 0x10C
} FS_Callback;

#define FS_HEAP_BLOCK   16
#define FS_HEAP_SIZE    ((FS_HEAP_BLOCK+1) * OSRoundUp32B(sizeof(FS_Callback)))

#define FS_ALLOC(p)     iosAllocAligned(hId, sizeof(*p), DEFAULT_ALIGN)
#define FS_FREE(p)      if (p != NULL) { iosFree(hId, p); }

ISFSError ISFS_OpenLib() {
    ISFSError       ret = ISFS_ERROR_OK;

    static void*    lo = NULL;
    static void*    hi = NULL;

    FS_Callback*    __fsCtxt = NULL;

    if (!__fsInitialized) {
        lo = IPCGetBufferLo();
        hi = IPCGetBufferHi();
    }

    __devfs = (char*)OSRoundUp32B(lo);
    if (!__fsInitialized && ((u32)__devfs + OSRoundUp32B(FS_MAX_PATH)) > (u32)hi) {
        OSReport("APP ERROR: Not enough IPC arena\n");
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    strcpy(__devfs, "/dev/fs");
    __fsFd = IOS_Open(__devfs, IPC_ACCESS_NONE);

    if (__fsFd < IPC_RESULT_OK) {
        ret = __fsFd;
        goto out;
    }

    __fsCtxt = (FS_Callback*)__devfs;

    if (!__fsInitialized && ((u32)__fsCtxt + FS_HEAP_SIZE) > (u32)hi) {
        OSReport("APP ERROR: Not enough IPC arena\n");
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    if (!__fsInitialized) {
        IPCSetBufferLo((void*)((u32)__fsCtxt + FS_HEAP_SIZE));
        __fsInitialized = TRUE;
    }

    hId = iosCreateHeap(__fsCtxt, FS_HEAP_SIZE);

    if (hId < 0) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

out:
    return ret;
}

ISFSError ISFS_OpenLibEx() {
    __fsInitialized = FALSE;
    return ISFS_OpenLib();
}

ISFSError ISFS_CloseLib() {
    ISFSError ret = ISFS_ERROR_OK;

    if (__fsFd < 0) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    IOS_Close(__fsFd);
    __fsFd = -1;

    ret = iosDestroyHeap(hId);

out:
    return ret;
}

static IOSError _FSGetStatsCb(IOSError result, void* isfsCallbackArg) {
    FS_Callback* _context = (FS_Callback*)isfsCallbackArg;

    if (result == IPC_RESULT_OK) {
        memcpy(_context->args.stats, _context->ioBuf, sizeof(*_context->args.stats));
    }

    return IPC_RESULT_OK;
}

static IOSError _FSReadDirCb(IOSError result, void* isfsCallbackArg) {
    FS_Callback* _context = (FS_Callback*)isfsCallbackArg;

    if (result == IPC_RESULT_OK) {
        u8* ptr;
        IOSIoVector* vec = (IOSIoVector*)_context->ioBuf;
        ptr = (u8*)OSRoundUp32B((u8*)&vec[4]);
        ptr = (u8*)OSRoundUp32B(ptr + FS_MAX_PATH);
        *_context->args.num = *(u32*)ptr;
    }

    return ISFS_ERROR_OK;
}

static IOSError _FSGetAttrCb(IOSError result, void* isfsCallbackArg) {
    if (result == IPC_RESULT_OK) {
        FS_Callback*        _context = (FS_Callback*)isfsCallbackArg;
        ISFSPathAttrArgs*   pathAttrArgs = (ISFSPathAttrArgs*)OSRoundUp32B(_context->ioBuf + FS_MAX_PATH);
    
        *_context->args.getAttr.ownerId     = pathAttrArgs->ownerId;
        *_context->args.getAttr.groupId     = pathAttrArgs->groupId;
        *_context->args.getAttr.attr        = pathAttrArgs->attr; 
        *_context->args.getAttr.ownerAcc    = pathAttrArgs->ownerAccess;
        *_context->args.getAttr.groupAcc    = pathAttrArgs->groupAccess;
        *_context->args.getAttr.othersAcc   = pathAttrArgs->othersAccess;
    }

    return IPC_RESULT_OK;
}

static IOSError _FSGetUsageCb(IOSError result, void* isfsCallbackArg) {
    FS_Callback* _context = (FS_Callback*)isfsCallbackArg;

    if (result == IPC_RESULT_OK) {
        u8* ptr;
        IOSIoVector* vec = (IOSIoVector*)_context->ioBuf;
        ptr = (u8*)OSRoundUp32B((u8*)&vec[4]);
        ptr = (u8*)OSRoundUp32B(ptr + FS_MAX_PATH);
        *_context->args.getUsage.blocks = *(u32*)ptr;
        ptr = (u8*)OSRoundUp32B(ptr + sizeof(u32));
        *_context->args.getUsage.iNodes = *(u32*)ptr;
    }

    return IPC_RESULT_OK;
}

static IOSError _FSGetFileStatsCb(IOSError result, void* isfsCallbackArg) {
    FS_Callback* _context = (FS_Callback*)isfsCallbackArg;

    if (result == IPC_RESULT_OK) {
        memcpy(_context->args.fstats, _context->ioBuf, sizeof(*_context->args.fstats));
    }

    return IPC_RESULT_OK;
}

IOSError _isfsFuncCb(IOSError result, void* isfsCallbackArg) {
    FS_Callback*    _context = (FS_Callback*)isfsCallbackArg;
    ISFSError       ret = result;

    if (ret >= IPC_RESULT_OK) {
        switch (_context->func) {
            case ISFS_CB_STATE_GET_STATS: {
                _FSGetStatsCb(result, isfsCallbackArg);
                break;
            }
            case ISFS_CB_STATE_READ_DIR: {
                _FSReadDirCb(result, isfsCallbackArg);
                break;
            }
            case ISFS_CB_STATE_GET_ATTR: {
                _FSGetAttrCb(result, isfsCallbackArg);
                break;
            }
            case ISFS_CB_STATE_GET_USAGE: {
                _FSGetUsageCb(result, isfsCallbackArg);
                break;
            }
            case ISFS_CB_STATE_GET_FILE_STATS: {
                _FSGetFileStatsCb(result, isfsCallbackArg);
                break;
            }
            default: {
                break;
            }
        }
    }

    _asynCnt = 0;

    if (_context->callback != NULL) {
        _context->callback(ret, _context->callbackArg);
    }

    FS_FREE(isfsCallbackArg);

    return ret;
}

ISFSError ISFS_GetStats(ISFSStats* stats) {
    ISFSError       ret = ISFS_ERROR_OK;
    FS_Callback*    isfsCallbackArg = NULL;

    if (__fsFd < 0 || stats == NULL) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    isfsCallbackArg->args.stats = stats;

    ret = IOS_Ioctl(__fsFd, ISFS_IOCTL_GET_STATS, NULL, 0, isfsCallbackArg->ioBuf, sizeof(*stats));
    if (ret != IPC_RESULT_OK) {
        goto out;
    }

    memcpy(stats, isfsCallbackArg->ioBuf, sizeof(*stats));

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_CreateDir(const char* dirName, u32 dirAttr, u32 ownerAcc, u32 groupAcc, u32 othersAcc) {
    ISFSError           ret = ISFS_ERROR_OK;
    u32                 len;

    ISFSPathAttrArgs*   pathAttrArgs;

    FS_Callback*      isfsCallbackArg = NULL;
    

    if (dirName == NULL || __fsFd < 0 || (len = strnlen(dirName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);

    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    pathAttrArgs = (ISFSPathAttrArgs*)isfsCallbackArg->ioBuf;
    memcpy(pathAttrArgs->path, dirName, len+1);

    pathAttrArgs->attr = (u8)dirAttr;
    pathAttrArgs->ownerAccess = (u8)ownerAcc;
    pathAttrArgs->groupAccess = (u8)groupAcc;
    pathAttrArgs->othersAccess = (u8)othersAcc;

    ret = IOS_Ioctl(__fsFd, ISFS_IOCTL_CREATE_DIR, pathAttrArgs, sizeof(*pathAttrArgs), NULL, 0);

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_CreateDirAsync(const char* dirName, u32 dirAttr, u32 ownerAcc, u32 groupAcc, u32 othersAcc, ISFSCallback callback, void* callbackArg) {
    ISFSError           ret = ISFS_ERROR_OK;
    u32                 len;

    ISFSPathAttrArgs*   pathAttrArgs;

    FS_Callback*      isfsCallbackArg;

    if (dirName == NULL || __fsFd < 0 || (len = strnlen(dirName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);

    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;

    pathAttrArgs = (ISFSPathAttrArgs*)isfsCallbackArg->ioBuf;
    memcpy(pathAttrArgs->path, (void*)dirName, len+1);
    pathAttrArgs->attr = dirAttr;
    pathAttrArgs->ownerAccess = ownerAcc;
    pathAttrArgs->groupAccess = groupAcc;
    pathAttrArgs->othersAccess = othersAcc;

    ret = IOS_IoctlAsync(__fsFd, ISFS_IOCTL_CREATE_DIR, pathAttrArgs, sizeof(*pathAttrArgs), NULL, 0, _isfsFuncCb, isfsCallbackArg);

out:
    return ret;
}

ISFSError ISFS_ReadDir(const char* dirName, char* nameList, u32* num) {
    ISFSError       ret = ISFS_ERROR_OK;
    u32             len, numInputs, numOutputs, *numPtr;

    IOSIoVector*    vec = NULL;
    char*           dnPtr;

    FS_Callback*  isfsCallbackArg = NULL;

    if (dirName == NULL || num == NULL || __fsFd < 0 || ((u32)nameList & 31) || (len = strnlen(dirName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    vec = (IOSIoVector*)isfsCallbackArg->ioBuf;

    // Directory name
    dnPtr = (char*)OSRoundUp32B((u8*)&vec[4]);
    memcpy(dnPtr, dirName, len+1);
    vec[0].base = (u8*)dnPtr;
    vec[0].length = FS_MAX_PATH;

    // Max count
    numPtr = (u32*)OSRoundUp32B((u32)dnPtr + FS_MAX_PATH);
    vec[1].base = (u8*)numPtr;
    vec[1].length = sizeof(u8*);

    if (nameList != NULL) {
        numInputs = 2;
        numOutputs = 2;
        *numPtr = *num;

        vec[2].base = (u8*)nameList;
        vec[2].length = *num * (FS_MAX_DIR_PATH+1);

        vec[3].base = (u8*)numPtr;
        vec[3].length = sizeof(u8*);
    }
    else {
        numInputs = 1;
        numOutputs = 1;
    }

    ret = IOS_Ioctlv(__fsFd, ISFS_IOCTL_READ_DIR, numInputs, numOutputs, vec);
    if (ret != ISFS_ERROR_OK) {
        goto out;
    }

    *num = *numPtr;

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_ReadDirAsync(const char* dirName, char* nameList, u32* num, ISFSCallback callback, void* callbackArg) {
    ISFSError       ret = ISFS_ERROR_OK;
    u32             len, numInputs, numOutputs, *numPtr;

    FS_Callback*  isfsCallbackArg = NULL;

    IOSIoVector*    vec = NULL;
    char*           dnPtr;
    
    if (dirName == NULL || num == NULL || __fsFd < 0 || ((u32)nameList & 31) || (len = strnlen(dirName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_READ_DIR;
    isfsCallbackArg->args.num = num;

    vec = (IOSIoVector*)isfsCallbackArg->ioBuf;

    // Directory name
    dnPtr = (char*)OSRoundUp32B((u8*)&vec[4]);
    memcpy(dnPtr, dirName, len+1);
    vec[0].base = (u8*)dnPtr;
    vec[0].length = FS_MAX_PATH;

    // Max count
    numPtr = (u32*)OSRoundUp32B((u32)dnPtr + FS_MAX_PATH);
    vec[1].base = (u8*)numPtr;
    vec[1].length = sizeof(u8*);

    if (nameList != NULL) {
        numInputs = 2;
        numOutputs = 2;
    
        *numPtr = *num;
    
        vec[2].base = (u8*)nameList;
        vec[2].length = *num * (FS_MAX_DIR_PATH+1);
        vec[3].base = (u8*)numPtr;
        vec[3].length = 4;
    }
    else {
        numInputs = 1;
        numOutputs = 1;
    }

    ret = IOS_IoctlvAsync(__fsFd, ISFS_IOCTL_READ_DIR, numInputs, numOutputs, vec, _isfsFuncCb, isfsCallbackArg);

out:
    return ret;
}

ISFSError ISFS_SetAttr(const char* fileName, u32 ownerId, u16 groupId, u32 attr, u32 ownerAcc, u32 groupAcc, u32 othersAcc) {
    ISFSError           ret = ISFS_ERROR_OK;
    ISFSPathAttrArgs*   pathAttrArgs;

    u32                 len;

    FS_Callback*      isfsCallbackArg = NULL;

    if (fileName == NULL || __fsFd < 0 || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    pathAttrArgs = (ISFSPathAttrArgs*) isfsCallbackArg->ioBuf;
    memcpy(pathAttrArgs->path, fileName, len+1);

    pathAttrArgs->ownerId = ownerId;
    pathAttrArgs->groupId = groupId;
    pathAttrArgs->attr = (u8)attr;
    pathAttrArgs->ownerAccess = (u8)ownerAcc;
    pathAttrArgs->groupAccess = (u8)groupAcc;
    pathAttrArgs->othersAccess = (u8)othersAcc;

    ret = IOS_Ioctl(__fsFd, ISFS_IOCTL_SET_ATTR, (u8*)pathAttrArgs, sizeof(*pathAttrArgs), NULL, 0);

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_SetAttrAsync(const char* fileName, u32 ownerId, u16 groupId, u32 attr, u32 ownerAcc, u32 groupAcc, u32 othersAcc, ISFSCallback callback, void *callbackArg) {
    ISFSError           ret = ISFS_ERROR_OK;
    ISFSPathAttrArgs*   pathAttrArgs;

    u32                 len;

    FS_Callback*      isfsCallbackArg;

    if (fileName == NULL || __fsFd < 0 || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;

    pathAttrArgs = (ISFSPathAttrArgs*) isfsCallbackArg->ioBuf;
    memcpy(pathAttrArgs->path, fileName, len+1);

    pathAttrArgs->ownerId = ownerId;
    pathAttrArgs->groupId = groupId;
    pathAttrArgs->attr = (u8)attr;
    pathAttrArgs->ownerAccess = (u8)ownerAcc;
    pathAttrArgs->groupAccess = (u8)groupAcc;
    pathAttrArgs->othersAccess = (u8)othersAcc;

    ret = IOS_IoctlAsync(__fsFd, ISFS_IOCTL_SET_ATTR, (u8*)pathAttrArgs, sizeof(ISFSPathAttrArgs), NULL, 0, _isfsFuncCb, isfsCallbackArg);
out:
    return ret;
}

ISFSError ISFS_GetAttr(const char* fileName, u32* ownerId, u16* groupId, u32* attr, u32* ownerAcc, u32* groupAcc, u32* othersAcc) {
    ISFSError           ret = ISFS_ERROR_OK;
    ISFSPathAttrArgs*   pathAttrArgs;

    u8*                 ptr;
    u32                 len;

    FS_Callback* isfsCallbackArg = NULL;

    if (fileName == NULL || __fsFd < 0 || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH
    || ownerId == NULL || groupId == NULL || attr == NULL || ownerAcc == NULL || groupAcc == NULL || othersAcc == NULL) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    ptr = (u8*)isfsCallbackArg->ioBuf;
    memcpy(ptr, fileName, len+1);
    pathAttrArgs = (ISFSPathAttrArgs*)OSRoundUp32B(ptr + FS_MAX_PATH);
    ret = IOS_Ioctl(__fsFd, ISFS_IOCTL_GET_ATTR, ptr, FS_MAX_PATH, pathAttrArgs, sizeof(*pathAttrArgs));

    if (ret != IPC_RESULT_OK) {
        goto out;
    }

    *ownerId = pathAttrArgs->ownerId;
    *groupId = pathAttrArgs->groupId;
    *attr = pathAttrArgs->attr;
    *ownerAcc = pathAttrArgs->ownerAccess;
    *groupAcc = pathAttrArgs->groupAccess;
    *othersAcc = pathAttrArgs->othersAccess;

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_GetAttrAsync(const char* fileName, u32* ownerId, u16* groupId, u32* attr, u32* ownerAcc, u32* groupAcc, u32* othersAcc, ISFSCallback callback, void* callbackArg) {
    ISFSError ret = ISFS_ERROR_OK;
    FS_Callback *isfsCallbackArg;
    ISFSPathAttrArgs *pathAttrArgs;
    u8 *ptr;
    u32 len;

    if (fileName == NULL || __fsFd < 0 || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH
    || ownerId == NULL || groupId == NULL || attr == NULL || ownerAcc == NULL || groupAcc == NULL || othersAcc == NULL) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg =  FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->args.getAttr.ownerId = ownerId;
    isfsCallbackArg->args.getAttr.groupId = groupId;
    isfsCallbackArg->args.getAttr.attr = attr; 
    isfsCallbackArg->args.getAttr.ownerAcc = ownerAcc;
    isfsCallbackArg->args.getAttr.groupAcc = groupAcc;
    isfsCallbackArg->args.getAttr.othersAcc = othersAcc;
    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_GET_ATTR;

    ptr = (u8*)isfsCallbackArg->ioBuf;
    memcpy(ptr, fileName, len+1);
    pathAttrArgs = (ISFSPathAttrArgs*)OSRoundUp32B(ptr + FS_MAX_PATH);

    ret = IOS_IoctlAsync(__fsFd, ISFS_IOCTL_GET_ATTR, ptr, FS_MAX_PATH, pathAttrArgs, sizeof(*pathAttrArgs), _isfsFuncCb, isfsCallbackArg);
out:
    return ret;
}

ISFSError ISFS_Delete(const char* fileName) {
    ISFSError       ret = ISFS_ERROR_OK;
    u32             len;
    FS_Callback*  isfsCallbackArg = NULL;

    if (fileName == NULL || __fsFd < 0 || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    memcpy(isfsCallbackArg->ioBuf, fileName, len+1);
    ret = IOS_Ioctl(__fsFd, ISFS_IOCTL_DELETE_PATH, isfsCallbackArg->ioBuf, FS_MAX_PATH, NULL, 0);

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_DeleteAsync(const char* fileName, ISFSCallback callback, void* callbackArg) {
    ISFSError ret = ISFS_ERROR_OK;
    u32 len;
    FS_Callback* isfsCallbackArg;

    if (fileName == NULL || __fsFd < 0 || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    memcpy(isfsCallbackArg->ioBuf, fileName, len+1);
    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;
    ret = IOS_IoctlAsync(__fsFd, ISFS_IOCTL_DELETE_PATH, isfsCallbackArg->ioBuf, FS_MAX_PATH, NULL, 0, _isfsFuncCb, isfsCallbackArg);

out:
    return ret;
}

ISFSError ISFS_Rename(const char* oldName, const char* newName) {
    ISFSError       ret = ISFS_ERROR_OK;
    ISFSPathsArgs*  pathsArgs;

    u32             oldLen, newLen;

    FS_Callback*  isfsCallbackArg = NULL;

    if (oldName == NULL || newName == NULL || __fsFd < 0
    || (oldLen = strnlen(oldName, FS_MAX_PATH)) == FS_MAX_PATH || (newLen = strnlen(newName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }
    
    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    pathsArgs = (ISFSPathsArgs*)isfsCallbackArg->ioBuf;
    memcpy(pathsArgs->path1, oldName, oldLen+1);
    memcpy(pathsArgs->path2, newName, newLen+1);
    ret = IOS_Ioctl(__fsFd, ISFS_IOCTL_RENAME_PATH, pathsArgs, sizeof(*pathsArgs), NULL, 0);

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_RenameAsync(const char* oldName, const char* newName, ISFSCallback callback, void* callbackArg) {
    ISFSError       ret = ISFS_ERROR_OK;
    ISFSPathsArgs*  pathsArgs;

    u32             oldLen, newLen;

    FS_Callback*  isfsCallbackArg;

    if (oldName == NULL || newName == NULL || __fsFd < 0
    || (oldLen = strnlen(oldName, FS_MAX_PATH)) == FS_MAX_PATH || (newLen = strnlen(newName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }
    
    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;

    pathsArgs = (ISFSPathsArgs*)isfsCallbackArg->ioBuf;
    memcpy(pathsArgs->path1, oldName, oldLen+1);
    memcpy(pathsArgs->path2, newName, newLen+1);

    ret = IOS_IoctlAsync(__fsFd, ISFS_IOCTL_RENAME_PATH, pathsArgs, sizeof(*pathsArgs), NULL, 0, _isfsFuncCb, isfsCallbackArg);
out:
    return ret;
}

ISFSError ISFS_GetUsage(const char* dirName, u32* blocks, u32* iNodes) {
    ISFSError       ret = ISFS_ERROR_OK;

    u32             len, *blkPtr, *inodePtr;

    IOSIoVector*    vec = NULL;
    char*           dnPtr;

    FS_Callback*  isfsCallbackArg = NULL;

    if (dirName == NULL || __fsFd < 0 || blocks == NULL || iNodes == NULL || (len = strnlen(dirName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    vec = (IOSIoVector*)isfsCallbackArg->ioBuf;
    dnPtr = (char*)OSRoundUp32B((u8*)&vec[3]);

    memcpy(dnPtr, dirName, len+1);
    vec[0].base = (u8*)dnPtr;
    vec[0].length = FS_MAX_PATH;

    blkPtr = (u32*)OSRoundUp32B(((u32)dnPtr) + FS_MAX_PATH);
    inodePtr = (u32*)OSRoundUp32B(((u32)blkPtr) + 4);

    vec[1].base = (u8*)blkPtr;
    vec[1].length = sizeof(u8*);

    vec[2].base = (u8*)inodePtr;
    vec[2].length = sizeof(u8*);

    ret = IOS_Ioctlv(__fsFd, ISFS_IOCTLV_GET_USAGE, 1, 2, vec);
    if (ret != ISFS_ERROR_OK) {
        goto out;
    }

    *blocks = *blkPtr;
    *iNodes = *inodePtr;

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_CreateFile(const char* fileName, u32 fileAttr, u32 ownerAcc, u32 groupAcc, u32 othersAcc) {
    ISFSError           ret = ISFS_ERROR_OK;
    ISFSPathAttrArgs*   pathAttrArgs;

    u32                 len;

    FS_Callback*      isfsCallbackArg = NULL;

    if (fileName == NULL || __fsFd < 0 || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    pathAttrArgs = (ISFSPathAttrArgs*)isfsCallbackArg->ioBuf;
    memcpy(pathAttrArgs->path, fileName, len+1);

    pathAttrArgs->attr = fileAttr;
    pathAttrArgs->ownerAccess = ownerAcc;
    pathAttrArgs->groupAccess = groupAcc;
    pathAttrArgs->othersAccess = othersAcc;

    ret = IOS_Ioctl(__fsFd, ISFS_IOCTL_CREATE_FILE, pathAttrArgs, sizeof(*pathAttrArgs), NULL, 0);

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_CreateFileAsync(const char* fileName, u32 fileAttr, u32 ownerAcc, u32 groupAcc, u32 othersAcc, ISFSCallback callback, void* callbackArg) {
    ISFSError           ret = ISFS_ERROR_OK;
    ISFSPathAttrArgs*   pathAttrArgs;

    u32                 len;

    FS_Callback*      isfsCallbackArg;

    if (fileName == NULL || __fsFd < 0 || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;

    pathAttrArgs = (ISFSPathAttrArgs*)isfsCallbackArg->ioBuf;
    memcpy(pathAttrArgs->path, fileName, len+1);
    pathAttrArgs->attr = fileAttr;
    pathAttrArgs->ownerAccess = ownerAcc;
    pathAttrArgs->groupAccess = groupAcc;
    pathAttrArgs->othersAccess = othersAcc;
    ret = IOS_IoctlAsync(__fsFd, ISFS_IOCTL_CREATE_FILE, pathAttrArgs, sizeof(*pathAttrArgs), NULL, 0, _isfsFuncCb, isfsCallbackArg);

out:
    return ret;
}

IOSFd ISFS_Open(const char* fileName, u32 access) {
    ISFSError       ret = ISFS_ERROR_OK;
    u32             len;
    FS_Callback*  isfsCallbackArg = NULL;

    if (fileName == NULL || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    memcpy(isfsCallbackArg->ioBuf, fileName, len+1);
    
    ret = IOS_Open((const char*)isfsCallbackArg->ioBuf, access);
out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

IOSFd ISFS_OpenAsync(const char* fileName, u32 access, ISFSCallback callback, void* callbackArg) {
    ISFSError       ret = ISFS_ERROR_OK;
    u32             len;
    FS_Callback*  isfsCallbackArg;

    if (fileName == NULL || (len = strnlen(fileName, FS_MAX_PATH)) == FS_MAX_PATH) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;

    memcpy(isfsCallbackArg->ioBuf, fileName, len+1);
    ret = IOS_OpenAsync((const char*)isfsCallbackArg->ioBuf, access, _isfsFuncCb, isfsCallbackArg);
out:
    return ret;
}

ISFSError ISFS_GetFileStats(IOSFd fd, ISFSFileStats* stats) {
    ISFSError       ret = ISFS_ERROR_OK;
    FS_Callback*  isfsCallbackArg = NULL;

    if (stats == NULL || ((u32)stats & 31)) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = IPC_RESULT_ALLOC_FAILED;
        goto out;
    }

    ret = IOS_Ioctl(fd, ISFS_IOCTL_GET_FILE_STATS, NULL, 0, isfsCallbackArg->ioBuf, sizeof(*stats));

    if (ret != IPC_RESULT_OK) {
        goto out;
    }

    memcpy(stats, isfsCallbackArg->ioBuf, sizeof(*stats));

out:
    if (isfsCallbackArg != NULL) {
        FS_FREE(isfsCallbackArg);
    }

    return ret;
}

ISFSError ISFS_GetFileStatsAsync(IOSFd fd, ISFSFileStats* stats, ISFSCallback callback, void* callbackArg) {
    ISFSError       ret = ISFS_ERROR_OK;
    FS_Callback*  isfsCallbackArg;

    if (stats == NULL || ((u32)stats & 31)) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_GET_FILE_STATS;
    isfsCallbackArg->args.fstats = stats;

    ret = IOS_IoctlAsync(fd, ISFS_IOCTL_GET_FILE_STATS, NULL, 0, isfsCallbackArg->ioBuf, sizeof(*stats), _isfsFuncCb, isfsCallbackArg);
out:
    return ret;
}

ISFSError ISFS_Seek(IOSFd fd, s32 offset, u32 whence) {
    return IOS_Seek(fd, offset, whence);
}

ISFSError ISFS_SeekAsync(IOSFd fd, s32 offset, u32 whence, ISFSCallback callback, void* callbackArg) {
    ISFSError       ret;
    FS_Callback*  isfsCallbackArg;

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;

    ret = IOS_SeekAsync(fd, offset, whence, _isfsFuncCb, isfsCallbackArg);
out:
    return ret;
}

ISFSError ISFS_Read(s32 fd, u8* buffer, u32 bufferLen) {
    if (buffer == NULL || (u32)buffer & 31) {
        return -101;
    }

    return IOS_Read(fd, buffer, bufferLen);
}

ISFSError ISFS_ReadAsync(IOSFd fd, u8* buffer, u32 size, ISFSCallback callback, void* callbackArg) {
    ISFSError       ret = ISFS_ERROR_OK;
    FS_Callback*  isfsCallbackArg;

    if (buffer == NULL || ((u32)buffer & 31)) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;
    ret = IOS_ReadAsync(fd, buffer, size, _isfsFuncCb, isfsCallbackArg);

out:
    return ret;
}

ISFSError ISFS_Write(IOSFd fd, const char* buffer, u32 size) {
    ISFSError ret = ISFS_ERROR_OK;

    if ((buffer == NULL) || ((u32)buffer & 31)) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    ret = IOS_Write(fd, (u8*)buffer, size);
out:
    return ret;
}

ISFSError ISFS_WriteAsync(IOSFd fd, const char* buffer, u32 size, ISFSCallback callback, void* callbackArg) {
    ISFSError       ret = ISFS_ERROR_OK;
    FS_Callback*  isfsCallbackArg;

    if (buffer == NULL || ((u32)buffer & 31)) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);
    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;
    ret = IOS_WriteAsync(fd, (void*)buffer, size, _isfsFuncCb, isfsCallbackArg);

out:
    return ret;
}

ISFSError ISFS_Close(IOSFd fd) {
    return IOS_Close(fd);
}

ISFSError ISFS_CloseAsync(IOSFd fd, ISFSCallback callback, void* callbackArg) {
    ISFSError       ret;
    FS_Callback*  isfsCallbackArg;

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);

    if (isfsCallbackArg == NULL) {
        ret = ISFS_ERROR_BUSY;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;

    ret = IOS_CloseAsync(fd, _isfsFuncCb, isfsCallbackArg);
out:
    return ret;
}

ISFSError ISFS_ShutdownAsync(ISFSCallback callback, void* callbackArg) {
    ISFSError       ret = ISFS_ERROR_OK;
    FS_Callback*  isfsCallbackArg;

    isfsCallbackArg = FS_ALLOC(isfsCallbackArg);

    if (__fsFd < 0) {
        ret = ISFS_ERROR_INVALID;
        goto out;
    }

    isfsCallbackArg->callback = callback;
    isfsCallbackArg->callbackArg = callbackArg;
    isfsCallbackArg->func = ISFS_CB_STATE_NONE;

    ret = IOS_IoctlAsync(__fsFd, ISFS_IOCTL_SHUTDOWN_FS, NULL, 0, NULL, 0, _isfsFuncCb, isfsCallbackArg);
out:
    return ret;
}
