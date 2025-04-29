#include <revolution/nand.h>
#include <private/nand.h>

#include <private/fs.h>

#include <private/ipc.h>

#include <string.h>

static BOOL nandInspectPermission(u8 perm);
static void nandSplitPerm(u8 perm, u32* owner, u32* group, u32* others);

static void nandGetStatusCallback(ISFSError result, void* arg);

static ISFSError nandCreate(const char* path, u8 perm, u8 attr, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    char    absPath[NAND_MAX_PATH] = "";
    u32     owner = 0, group = 0, others = 0;

    nandGenerateAbsPath(absPath, path);

    if (!hasPrivateAccess && nandIsPrivatePath(absPath)) {
        return ISFS_ERROR_ACCESS;
    }
    else if (!nandInspectPermission(perm)) {
        return ISFS_ERROR_INVALID;
    }
    else {
        nandSplitPerm(perm, &owner, &group, &others);

        if (isAsync) {
            return ISFS_CreateFileAsync(absPath, attr, owner, group, others, nandCallback, block);
        }
        else {
            return ISFS_CreateFile(absPath, attr, owner, group, others);
        }
    }
}

s32 NANDCreate(const char* path, u8 perm, u8 attr) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandCreate(path, perm, attr, NULL, FALSE, FALSE));
}

s32 NANDPrivateCreate(const char* path, u8 perm, u8 attr) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandCreate(path, perm, attr, NULL, FALSE, TRUE));
}

s32 NANDPrivateCreateAsync(const char* path, u8 perm, u8 attr, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    return nandConvertErrorCode(nandCreate(path, perm, attr, block, TRUE, TRUE));
}

static ISFSError nandDelete(const char* path, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    char absPath[NAND_MAX_PATH] = "";
    nandGenerateAbsPath(absPath, path);

    if (!hasPrivateAccess && nandIsPrivatePath(absPath)) {
        return ISFS_ERROR_ACCESS;
    }
    else {
        if (isAsync) {
            return ISFS_DeleteAsync(absPath, nandCallback, block);
        }
        else {
            return ISFS_Delete(absPath);
        }
    }
}

s32 NANDDelete(const char* path) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandDelete(path, NULL, FALSE, FALSE));
}

s32 NANDPrivateDelete(const char* path) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandDelete(path, NULL, FALSE, TRUE));
}

s32 NANDPrivateDeleteAsync(const char* path, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    return nandConvertErrorCode(nandDelete(path, block, TRUE, TRUE));
}

s32 NANDRead(NANDFileInfo* info, void* buffer, u32 length) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(ISFS_Read(info->fileDescriptor, (u8*)buffer, length));
}

s32 NANDReadAsync(NANDFileInfo* info, void* buffer, u32 length, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    return nandConvertErrorCode(ISFS_ReadAsync(info->fileDescriptor, (u8*)buffer, length, nandCallback, block));
}

s32 NANDWrite(NANDFileInfo* info, const void* buffer, u32 length) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(ISFS_Write(info->fileDescriptor, buffer, length));
}

s32 NANDWriteAsync(NANDFileInfo* info, const void* buffer, u32 length, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    return nandConvertErrorCode(ISFS_WriteAsync(info->fileDescriptor, buffer, length, nandCallback, block));
}

static ISFSError nandSeek(IOSFd fd, s32 offset, s32 whence, NANDCommandBlock* block, BOOL isAsync) {
    int where = -1;

    switch (whence) {
        case NAND_SEEK_BEG: {
            where = IPC_SEEK_BEG;
            break;
        }
        case NAND_SEEK_CUR: {
            where = IPC_SEEK_CUR;
            break;
        }
        case NAND_SEEK_END: {
            where = IPC_SEEK_END;
            break;
        }
        default: {
            break;
        }
    }

    if (isAsync) {
        return ISFS_SeekAsync(fd, offset, where, nandCallback, block);
    }
    else {
        return ISFS_Seek(fd, offset, where);
    }
}

s32 NANDSeek(NANDFileInfo* info, s32 offset, s32 whence) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandSeek(info->fileDescriptor, offset, whence, NULL, FALSE));
}

s32 NANDSeekAsync(NANDFileInfo* info, s32 offset, s32 whence, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    return nandConvertErrorCode(nandSeek(info->fileDescriptor, offset, whence, block, TRUE));
}

static ISFSError nandReadDir(const char* path, char* nameList, u32* num, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    char absPath[NAND_MAX_PATH] = "";

    nandGenerateAbsPath(absPath, path);
    if (!hasPrivateAccess && nandIsPrivatePath(absPath)) {
        return ISFS_ERROR_ACCESS;
    }
    else {
        if (isAsync) {
            return ISFS_ReadDirAsync(absPath, nameList, num, nandCallback, block);
        }
        else {
            return ISFS_ReadDir(absPath, nameList, num);
        }
    }
}

s32 NANDReadDir(const char* path, char* nameList, u32* num) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandReadDir(path, nameList, num, NULL, FALSE, FALSE));
}


s32 NANDPrivateReadDir(const char* path, char* nameList, u32* num) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandReadDir(path, nameList, num, NULL, FALSE, TRUE));
}

static ISFSError nandCreateDir(const char* path, u8 perm, u8 attr, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    char absPath[NAND_MAX_PATH] = "";

    nandGenerateAbsPath(absPath, path);
    if (!hasPrivateAccess && nandIsPrivatePath(absPath)) {
        return ISFS_ERROR_ACCESS;
    }
    else if (!nandInspectPermission(perm)) {
        return ISFS_ERROR_INVALID;
    }
    else {
        u32 owner = 0, group = 0, others = 0;
        nandSplitPerm(perm, &owner, &group, &others);

        if (isAsync) {
            return ISFS_CreateDirAsync(absPath, attr, owner, group, others, nandCallback, block);
        }
        else {
            return ISFS_CreateDir(absPath, attr, owner, group, others);
        }
    }
}

s32 NANDCreateDir(const char* path, u8 perm, u8 attr) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode( nandCreateDir(path, perm, attr, NULL, FALSE, FALSE));
}

s32 NANDPrivateCreateDir(const char* path, u8 perm, u8 attr) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode( nandCreateDir(path, perm, attr, NULL, FALSE, TRUE));
}

s32 NANDPrivateCreateDirAsync(const char* path, u8 perm, u8 attr, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    return nandConvertErrorCode(nandCreateDir(path, perm, attr, block, TRUE, TRUE));
}

static ISFSError nandMove(const char* path, const char* destDir, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    char absOldPath[NAND_MAX_PATH]          = "";
    char absNewPath[NAND_MAX_PATH]          = "";
    char relativeName[NAND_MAX_DIR_PATH+1]  = "";

    nandGenerateAbsPath(absOldPath, path);
    nandGetRelativeName(relativeName, absOldPath);
    nandGenerateAbsPath(absNewPath, destDir);
    if (strcmp(absNewPath, "/") == 0) {
        sprintf(absNewPath, "/%s", relativeName);
    }
    else {
        strcat(absNewPath, "/");
        strcat(absNewPath, relativeName);
    }

    if (!hasPrivateAccess && (nandIsPrivatePath(absOldPath) || nandIsPrivatePath(absNewPath))) {
        return ISFS_ERROR_ACCESS;
    }
    else {
        if (isAsync) {
            return ISFS_RenameAsync(absOldPath, absNewPath, nandCallback, block);
        }
        else {
            return ISFS_Rename(absOldPath, absNewPath);
        }
    }
}

s32 NANDPrivateMove(const char* path, const char* destDir) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandMove(path, destDir, NULL, FALSE, TRUE));
}

static ISFSError nandGetFileStatus(IOSFd fd, u32* length, u32* pos) {
    ISFSFileStats   isfsStats ALIGN32;
    ISFSError       ret = ISFS_GetFileStats(fd, &isfsStats);

    if (ret == ISFS_ERROR_OK) {
        if (length) {
            *length = isfsStats.size;
        }
        if (pos) {
            *pos = isfsStats.offset;
        }
    }
    return ret;
}

s32 NANDGetLength(NANDFileInfo* info, u32* length) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    return nandConvertErrorCode(nandGetFileStatus(info->fileDescriptor, length, NULL));
}

s32 NANDTell(NANDFileInfo* info, u32* pos) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandGetFileStatus(info->fileDescriptor, NULL, pos));
}

static void nandGetFileStatusAsyncCallback(ISFSError result, void* arg) {
    NANDCommandBlock*   block = (NANDCommandBlock*)arg;
    ISFSFileStats*      isfsStats = (ISFSFileStats *)OSRoundUp32B((u32)block->absPath);

    if (result == ISFS_ERROR_OK) {
        if (block->length) {
            *block->length = isfsStats->size;
        }
        if (block->pos) {
            *block->pos = isfsStats->offset;
        }
    }

    block->callback(nandConvertErrorCode(result), block);
}

static ISFSError nandGetFileStatusAsync(IOSFd fd, NANDCommandBlock* block) {
    ISFSError       result = ISFS_ERROR_UNKNOWN;
    ISFSFileStats*  isfsStats = (ISFSFileStats*)OSRoundUp32B((u32)block->absPath);
    return ISFS_GetFileStatsAsync(fd, isfsStats, nandGetFileStatusAsyncCallback, block);
}

s32 NANDGetLengthAsync(NANDFileInfo* info, u32* length, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    block->length = length;
    block->pos = NULL;
    return nandConvertErrorCode(nandGetFileStatusAsync(info->fileDescriptor, block));
}

static void nandComposePerm(u8* perm, u32 owner, u32 group, u32 others) NO_INLINE {
    u32 p = 0;

    if (owner & NAND_ACCESS_READ) {
        p |= NAND_PERM_USER_READ;
    }
    if (owner & NAND_ACCESS_WRITE) {
        p |= NAND_PERM_USER_WRITE;
    }

    if (group & NAND_ACCESS_READ) {
        p |= NAND_PERM_GROUP_READ;
    }
    if (group & NAND_ACCESS_WRITE) {
        p |= NAND_PERM_GROUP_WRITE;
    }

    if (others & NAND_ACCESS_READ) {
        p |= NAND_PERM_BOTH_READ;
    }
    if (others & NAND_ACCESS_WRITE) {
        p |= NAND_PERM_BOTH_WRITE;
    }

    *perm = p;
}

static void nandSplitPerm(u8 perm, u32* owner, u32* group, u32* others) {
    *owner = 0;
    *group = 0;
    *others = 0;

    if (perm & NAND_PERM_USER_READ) {
        *owner = *owner | NAND_PERM_BOTH_READ;
    }
    if (perm & NAND_PERM_USER_WRITE) {
        *owner = *owner | NAND_ACCESS_WRITE;
    }

    if (perm & NAND_PERM_GROUP_READ) {
        *group = *group | NAND_PERM_BOTH_READ;
    }
    if (perm & NAND_PERM_GROUP_WRITE) {
        *group = *group | NAND_ACCESS_WRITE;
    }

    if (perm & NAND_PERM_BOTH_READ) {
        *others = *others | NAND_PERM_BOTH_READ;
    }
    if (perm & NAND_PERM_BOTH_WRITE) {
        *others = *others | NAND_ACCESS_WRITE;
    }
}

static ISFSError nandGetStatus(const char* path, NANDStatus *status, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    char absPath[NAND_MAX_PATH] = "";

    nandGenerateAbsPath(absPath, path);
    if (!hasPrivateAccess && nandIsUnderPrivatePath(absPath)) {
        return ISFS_ERROR_ACCESS;
    }
    else {
        if (isAsync) {
            return ISFS_GetAttrAsync(absPath, &status->ownerId, &status->groupId, &block->attr, &block->ownerAcc, &block->groupAcc, &block->othersAcc, nandGetStatusCallback, block);
        }
        else {
            u32 attr = 0;
            u32 owner = 0, group = 0, others = 0;
            ISFSError result = ISFS_GetAttr(absPath, &status->ownerId, &status->groupId, &attr, &owner, &group, &others);
            if (result == ISFS_ERROR_OK) {
                nandComposePerm(&status->permission, owner, group, others);
                status->attribute = attr;
            }
            return result;
        }
    }
}

static void nandGetStatusCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;
    if (result == ISFS_ERROR_OK) {
        NANDStatus *status = (NANDStatus*)block->status;
        status->attribute = block->attr;
        nandComposePerm(&status->permission, block->ownerAcc, block->groupAcc, block->othersAcc);
    }
    block->callback(nandConvertErrorCode(result), block);
}

s32 NANDGetStatus(const char* path, NANDStatus *status) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandGetStatus(path, status, NULL, FALSE, FALSE));
}

s32 NANDPrivateGetStatus(const char* path, NANDStatus *status) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandGetStatus(path, status, NULL, FALSE, TRUE));
}

s32 NANDPrivateGetStatusAsync(const char* path, NANDStatus* status, NANDCallback callback, NANDCommandBlock* block) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    block->status = status;
    return nandConvertErrorCode(nandGetStatus(path, status, block, TRUE, TRUE));
}

static ISFSError nandSetStatus(const char* path, const NANDStatus* status, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    char absPath[NAND_MAX_PATH]="";

    nandGenerateAbsPath(absPath, path);
    if (!hasPrivateAccess && nandIsPrivatePath(absPath)) {
        return ISFS_ERROR_ACCESS;
    }
    else if (!nandInspectPermission(status->permission)) {
        return ISFS_ERROR_INVALID;
    }
    else {
        u32 owner = 0, group = 0, others = 0;
        nandSplitPerm(status->permission, &owner, &group, &others);
        if (isAsync) {
            return ISFS_SetAttrAsync(absPath, status->ownerId, status->groupId, (u8)(status->attribute), owner, group, others, nandCallback, block);
        }
        else {
            return ISFS_SetAttr(absPath, status->ownerId, status->groupId, (u8)(status->attribute), owner, group, others);
        }
    }
}

s32 NANDSetStatus(const char* path, NANDStatus* status) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandSetStatus(path, status, NULL, FALSE, FALSE));
}


s32 NANDPrivateSetStatus(const char* path, NANDStatus* status) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandSetStatus(path, status, NULL, FALSE, TRUE));
}

void NANDSetUserData(NANDCommandBlock* block, void* data) {
    block->userData = data;
}

void* NANDGetUserData(NANDCommandBlock* block) {
    return block->userData;
}

static BOOL nandInspectPermission(u8 perm) {
    if (perm & NAND_PERM_USER_READ) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}
