#include <revolution/nand.h>
#include <private/nand.h>

#include <private/fs.h>

#include <private/ipc.h>

#include <stdio.h>

static void nandOpenCallback(ISFSError result, void* arg);
static void nandSafeOpenCallback(ISFSError result, void* arg);
static void nandReadOpenCallback(ISFSError result, void* arg);

static void nandCloseCallback(ISFSError result, void* arg);
static void nandSafeCloseCallback(ISFSError result, void* arg);
static void nandReadCloseCallback(ISFSError result, void* arg);

static s32 nandSafeClose(NANDFileInfo* info, BOOL isSimple);
static s32 nandSafeCloseAsync(NANDFileInfo* info, NANDCallback callback, NANDCommandBlock* block, BOOL isSimple);

static s32 nandSafeOpen(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length, BOOL hasPrivateAccess, BOOL isSimple);
static s32 nandSafeOpenAsync(const char* path, NANDFileInfo*, u8, void*, u32, NANDCallback, NANDCommandBlock*, BOOL, BOOL);

static u32 nandGetUniqueNumber() {
    static u32  s_counter = 0;
    BOOL        enabled = OSDisableInterrupts();

    u32 ret = s_counter++;

    OSRestoreInterrupts(enabled);
    return ret;
}

static IOSFd nandOpen(const char* path, u8 accType, NANDCommandBlock* block, BOOL isAsync, BOOL hasPrivateAccess) {
    IOSFd   fd = ISFS_ERROR_UNKNOWN;
    char    absPath[NAND_MAX_PATH] = "";
    u32     access = 0;

    nandGenerateAbsPath(absPath, path);

    if (!hasPrivateAccess && nandIsPrivatePath(absPath)) {
        return ISFS_ERROR_ACCESS;
    }
    else {
        switch (accType) {
            case NAND_ACCESS_RW: {
                access = NAND_ACCESS_RW;
                break;
            }
            case NAND_ACCESS_READ: {
                access = NAND_ACCESS_READ;
                break;
            }
            case NAND_ACCESS_WRITE: {
                access = NAND_ACCESS_WRITE;
                break;
            }
            default: {
                break;
            }
        }

        if (isAsync) {
            fd = ISFS_OpenAsync(absPath, access, nandOpenCallback, block);
        }
        else {
            fd = ISFS_Open(absPath, access);
        }

        return fd;
    }
}

s32 NANDOpen(const char* path, NANDFileInfo* info, u8 accType) {
    IOSFd fd = ISFS_ERROR_UNKNOWN;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    fd = nandOpen(path, accType, NULL, FALSE, FALSE);

    if (fd >= 0) {
        info->fileDescriptor = fd;
        info->mark = 1;
        return NAND_RESULT_OK;
    }
    else {
        return nandConvertErrorCode(fd);
    }
}

s32 NANDPrivateOpen(const char* path, NANDFileInfo* info, u8 accType) {
    IOSFd fd = ISFS_ERROR_UNKNOWN;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    fd = nandOpen(path, accType, NULL, FALSE, TRUE);

    if (fd >= 0) {
        info->fileDescriptor = fd;
        info->mark = 1;
        return NAND_RESULT_OK;
    }
    else {
        return nandConvertErrorCode(fd);
    }
}

s32 NANDOpenAsync(const char* path, NANDFileInfo* info, u8 accType, NANDCallback callback, NANDCommandBlock* block) {
    IOSFd fd = ISFS_ERROR_UNKNOWN;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    block->fileInfo = info;
    fd = nandOpen(path, accType, block, TRUE, FALSE);
    return nandConvertErrorCode(fd);
}

s32 NANDPrivateOpenAsync(const char* path, NANDFileInfo* info, u8 accType, NANDCallback callback, NANDCommandBlock* block) {
    IOSFd fd = ISFS_ERROR_UNKNOWN;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    block->callback = callback;
    block->fileInfo = info;
    fd = nandOpen(path, accType, block, TRUE, TRUE);
    return nandConvertErrorCode(fd);
}

static void nandOpenCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;

    if (result >= ISFS_ERROR_OK) {
        ((NANDFileInfo*)block->fileInfo)->fileDescriptor = result;
        ((NANDFileInfo*)block->fileInfo)->stage = 2;
        ((NANDFileInfo*)block->fileInfo)->mark = 1;
        block->callback(NAND_RESULT_OK, block);
    }
    else {
        block->callback(nandConvertErrorCode(result), block);
    }
}

s32 NANDClose(NANDFileInfo* info) {
    ISFSError err = ISFS_ERROR_UNKNOWN;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    if (info->mark != 1) {
        return NAND_RESULT_INVALID;
    }

    err = ISFS_Close(info->fileDescriptor);

    if (err == ISFS_ERROR_OK) {
        info->mark = 2;
    }

    return nandConvertErrorCode(err);
}

s32 NANDCloseAsync(NANDFileInfo* info, NANDCallback callback, NANDCommandBlock* block) {
    ISFSError err = ISFS_ERROR_UNKNOWN;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    if (info->mark != 1) {
        return NAND_RESULT_INVALID;
    }
    block->callback = callback;
    block->fileInfo = info;
    err = ISFS_CloseAsync(info->fileDescriptor, nandCloseCallback, block);
    return nandConvertErrorCode(err);
}

static ISFSError nandCopy(IOSFd dest, IOSFd src, void* buffer, u32 length) {
    while (TRUE) {
        ISFSError size, ret;
        size = ISFS_Read(src, buffer, length);
        if (size == 0) {
            return 0;
        }
        else if (size < ISFS_ERROR_OK) {
            return size;
        }

        ret = ISFS_Write(dest, buffer, size);
        if (ret < ISFS_ERROR_OK) {
            return ret;
        }
    }
}

// Force this unused function to link
#pragma push
#pragma force_active on
s32 NANDSafeOpen(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length) {
    return nandSafeOpen(path, info, accType, buffer, length, FALSE, FALSE);
}
#pragma pop

s32 NANDPrivateSafeOpen(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length) {
    return nandSafeOpen(path, info, accType, buffer, length, TRUE, FALSE);
}

static s32 nandSafeOpen(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length, BOOL hasPrivateAccess, BOOL isSimple) {
    ISFSError   ret;

    u32         ownerId;
    u16         groupId;
    u32         attr;

    u32         ownerAcc, groupAcc, othersAcc;
    
    u32         uniqueNum;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    if (isSimple && (length % NAND_BLOCK_SIZE) != 0) {
        return NAND_RESULT_INVALID;
    }

    info->accType = accType;
    info->stage = 0;

    nandGenerateAbsPath(info->origPath, path);
    if (!hasPrivateAccess && nandIsPrivatePath(info->origPath)) {
        return NAND_RESULT_ACCESS;
    }

    if (accType == NAND_ACCESS_READ) {
        IOSFd fd = ISFS_Open(info->origPath, ISFS_ACCESS_READ);
        if (fd >= ISFS_ERROR_OK) {
            info->fileDescriptor = fd;
            info->stage = 2;

            if (!isSimple) {
                info->mark = 3;
            }
            else {
                info->mark = 5;
            }

            return NAND_RESULT_OK;
        }
        else {
            return nandConvertErrorCode(fd);
        }
    }
    else if (accType == NAND_ACCESS_WRITE || accType == NAND_ACCESS_RW) {
        char filename[FS_MAX_DIR_PATH+1] = "";
        char tmpDir[FS_MAX_PATH];
        ret = ISFS_ERROR_UNKNOWN;
        uniqueNum = -1;

        ret = ISFS_CreateDir("/tmp/sys", 0, ISFS_ACCESS_RW, ISFS_ACCESS_RW, ISFS_ACCESS_RW);
        if (ret != ISFS_ERROR_OK && ret != ISFS_ERROR_EXISTS) {
            return nandConvertErrorCode(ret);
        }
        info->stage = 1;

        ret = ISFS_GetAttr(info->origPath, &ownerId, &groupId, &attr, &ownerAcc, &groupAcc, &othersAcc);
        if (ret != ISFS_ERROR_OK) {
            return nandConvertErrorCode(ret);
        }

        info->origFd = ISFS_Open(info->origPath, ISFS_ACCESS_READ);
        if (info->origFd < 0) {
            return nandConvertErrorCode(info->origFd);
        }
        info->stage = 2;

        if (!isSimple) {
            uniqueNum = nandGetUniqueNumber();

            sprintf(tmpDir, "%s/%08x", "/tmp/sys", uniqueNum);
            ret = ISFS_CreateDir(tmpDir, 0, ISFS_ACCESS_RW, 0, 0);
            if (ret != ISFS_ERROR_OK) {
                return nandConvertErrorCode(ret);
            }
            info->stage = 3;

        }

        nandGetRelativeName(filename, info->origPath);
        if (!isSimple) {
            sprintf(info->tmpPath, "%s/%08x/%s", "/tmp/sys", uniqueNum, filename);
        }
        else {
            sprintf(info->tmpPath, "%s/%s", "/tmp/sys", filename);
        }

        ret = ISFS_CreateFile(info->tmpPath, attr, ownerAcc, groupAcc, othersAcc);
        if (ret != ISFS_ERROR_OK) {
            return nandConvertErrorCode(ret);
        }
        info->stage = 4;

        if (accType == NAND_ACCESS_WRITE) {
            info->fileDescriptor = ISFS_Open(info->tmpPath, ISFS_ACCESS_WRITE);
        }
        else if (accType == NAND_ACCESS_RW) {
            info->fileDescriptor = ISFS_Open(info->tmpPath, ISFS_ACCESS_RW);
        }
    
        if (info->fileDescriptor < 0) {
            return nandConvertErrorCode(info->fileDescriptor);
        }
        info->stage = 5;

        ret = nandCopy(info->fileDescriptor, info->origFd, buffer, length);
        if (ret != ISFS_ERROR_OK) {
            return nandConvertErrorCode(ret);
        }

        ret = ISFS_Seek(info->fileDescriptor, 0, IPC_SEEK_BEG);
        if (ret == 0) {
            ret = ISFS_ERROR_OK;
        }
        else {
            return nandConvertErrorCode(ret);
        }

        if (ret == ISFS_ERROR_OK) {
            if (isSimple) {
                info->mark = 5;
            }
            else {
                info->mark = 3;
            }
        }
        return nandConvertErrorCode(ret);
    }
    else {
        return NAND_RESULT_INVALID;
    }
}

s32 NANDSafeClose(NANDFileInfo* info) {
    return nandSafeClose(info, FALSE);
}

s32 nandSafeClose(NANDFileInfo* info, BOOL isSimple) {
    ISFSError err = ISFS_ERROR_UNKNOWN;
    char tmpdir[FS_MAX_PATH] = "";

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    if ((info->mark != 3 || isSimple) && (info->mark != 5 || !isSimple)) {
        return NAND_RESULT_INVALID;
    }

    if (info->accType == NAND_ACCESS_READ) {
        err = ISFS_Close(info->fileDescriptor);
        if (err == ISFS_ERROR_OK) {
            info->stage = 7;
            if (!isSimple) {
                info->mark = 4;
            }
            else {
                info->mark = 6;
            }
        }
        return nandConvertErrorCode(err);
    }
    else if (info->accType == NAND_ACCESS_WRITE || info->accType == NAND_ACCESS_RW) {
        err = ISFS_Close(info->fileDescriptor);
        if (err != ISFS_ERROR_OK) {
            return nandConvertErrorCode(err);
        }
        info->stage = 6;

        err = ISFS_Close(info->origFd);
        if (err != ISFS_ERROR_OK) {
            return nandConvertErrorCode(err);
        }
        info->stage = 7;

        err = ISFS_Rename(info->tmpPath, (info->origPath));
        if (err != ISFS_ERROR_OK) {
            return nandConvertErrorCode(err);
        }
        info->stage = 8;

        if (!isSimple) {
            nandGetParentDirectory(tmpdir, info->tmpPath);
            err = ISFS_Delete(tmpdir);
            if (err == ISFS_ERROR_OK) {
                info->stage = 9;
                info->mark = 4;
            }
        }
        else {
            info->mark = 6;
        }

        return nandConvertErrorCode(err);
    }
    else {
        OSReport("Illegal NANDFileInfo.\n");
        return NAND_RESULT_FATAL_ERROR;
    }
}

s32 NANDPrivateSafeOpenAsync(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length, NANDCallback callback, NANDCommandBlock* block) {
    return nandSafeOpenAsync(path, info, accType, buffer, length, callback, block, TRUE, FALSE);
}

s32 nandSafeOpenAsync(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length, NANDCallback callback, NANDCommandBlock* block, BOOL hasPrivateAccess, BOOL isSimple) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    if (isSimple && (length & 0x3FFF) != 0) {
        return NAND_RESULT_INVALID;
    }
    
    info->accType = accType;
    info->stage = 0;
    block->simpleFlag = isSimple;
    nandGenerateAbsPath(info->origPath, path);

    if (!hasPrivateAccess && nandIsPrivatePath(info->origPath)) {
        return NAND_RESULT_ACCESS;
    }

    if (accType == ISFS_ACCESS_READ) {
        IOSFd fd = -1;
        block->fileInfo = info;
        block->callback = callback;
        fd = ISFS_OpenAsync(info->origPath, ISFS_ACCESS_READ, nandReadOpenCallback, block);

        if (fd == ISFS_ERROR_OK) {
            return NAND_RESULT_OK;
        }
        else {
            return nandConvertErrorCode(fd);
        }
    }
    else if (accType == ISFS_ACCESS_WRITE || accType == ISFS_ACCESS_RW) {
        ISFSError ret = ISFS_ERROR_UNKNOWN;
        block->fileInfo = info;
        block->callback = callback;
        block->state = 0;
        block->copyBuf = buffer;
        block->bufLength = length;
        ret = ISFS_CreateDirAsync("/tmp/sys", 0, ISFS_ACCESS_RW, ISFS_ACCESS_RW, ISFS_ACCESS_RW, nandSafeOpenCallback, block);
    
        if (ret == ISFS_ERROR_OK) {
            return NAND_RESULT_OK;
        }
        else {
            return nandConvertErrorCode(ret);
        }
    }
    else {
        return NAND_RESULT_INVALID;
    }
}

void nandSafeOpenCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;

    if ((result >= 0) || ((result == ISFS_ERROR_EXISTS) && block->state == 0)) {
        NANDFileInfo* info = block->fileInfo;
        ISFSError ret = ISFS_ERROR_UNKNOWN;

        if (block->state == 0) {
            info->stage = 1;
        }

        if (block->state == 2) {
            info->origFd = result;
            info->stage = 2;
        }

        if ((block->state == 2) && block->simpleFlag) {
            block->state += 2;
        }
        else {
            ++block->state;
        }

        if (block->state == 1) {
            ret = ISFS_GetAttrAsync(info->origPath, &block->ownerId, &block->groupId, &block->attr, &block->ownerAcc, &block->groupAcc, &block->othersAcc, nandSafeOpenCallback, arg);
        }
        else if (block->state == 2) {
            ret = ISFS_OpenAsync(info->origPath, ISFS_ACCESS_READ, nandSafeOpenCallback, arg);
        }
        else if (block->state == 3) {
            char tmpDir[NAND_MAX_PATH];
            block->uniqueNo = nandGetUniqueNumber();
            sprintf(tmpDir, "%s/%08x", "/tmp/sys", block->uniqueNo);
            ret = ISFS_CreateDirAsync(tmpDir, 0, ISFS_ACCESS_RW, ISFS_ACCESS_NONE, ISFS_ACCESS_NONE, nandSafeOpenCallback, arg);
        }
        else if (block->state == 4) {
            char filename[13];
            nandGetRelativeName(filename, info->origPath);

            if (!block->simpleFlag) {
                info->stage = 3;
                sprintf(info->tmpPath, "%s/%08x/%s", "/tmp/sys", block->uniqueNo, filename);
            }
            else {
                sprintf(info->tmpPath, "%s/%s", "/tmp/sys", filename);
            }

            ret = ISFS_CreateFileAsync(info->tmpPath, block->attr, block->ownerAcc, block->groupAcc, block->othersAcc, nandSafeOpenCallback, arg);
        }
        else if (block->state == 5) {
            info->stage = 4;

            if (info->accType == ISFS_ACCESS_WRITE) {
                ret = ISFS_OpenAsync(info->tmpPath, ISFS_ACCESS_WRITE, nandSafeOpenCallback, arg);
            }
            else if (info->accType == ISFS_ACCESS_RW) {
                ret = ISFS_OpenAsync(info->tmpPath, ISFS_ACCESS_RW, nandSafeOpenCallback, arg);
            }
            else {
                ret = ISFS_ERROR_UNKNOWN;
            }
        }
        else if (block->state == 6) {
            info->fileDescriptor = result;
            info->stage = 5;
            block->state = 7;
            ret = ISFS_ReadAsync(info->origFd, block->copyBuf, block->bufLength, nandSafeOpenCallback, arg);
        }
        else if (block->state == 7) {
            ret = ISFS_ReadAsync(info->origFd, block->copyBuf, block->bufLength, nandSafeOpenCallback, arg);
        }
        else if (block->state == 8) {
            if (result > 0) {
                block->state = 6;
                ret = ISFS_WriteAsync(info->fileDescriptor, block->copyBuf, (u32)result, nandSafeOpenCallback, arg);
            }
            else if (result == 0) {
                ret = ISFS_SeekAsync(info->fileDescriptor, 0, 0, nandSafeOpenCallback, arg);
            }
        }
        else if (block->state == 9) {
            if (result == 0) {
                if (!block->simpleFlag) {
                    info->mark = 3;
                }
                else {
                    info->mark = 5;
                }

                block->callback(nandConvertErrorCode(ISFS_ERROR_OK), block);
            }
            else {
                block->callback(nandConvertErrorCode(result), block);
            }

            return;
        }

        if (ret != ISFS_ERROR_OK) {
            block->callback(nandConvertErrorCode(ret), block);
        }
    }
    else {
        block->callback(nandConvertErrorCode(result), block);
    }
}

void nandReadOpenCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;

    if (result >= 0) {
        ((NANDFileInfo*)block->fileInfo)->fileDescriptor = result;
        ((NANDFileInfo*)block->fileInfo)->stage = 2;

        if (!block->simpleFlag) {
            ((NANDFileInfo*)block->fileInfo)->mark = 3;
        }
        else {
            ((NANDFileInfo*)block->fileInfo)->mark = 5;
        }

        block->callback(NAND_RESULT_OK, block);
    }
    else {
        block->callback(nandConvertErrorCode(result), block);
    }
}

s32 NANDSafeCloseAsync(NANDFileInfo* info, NANDCallback callback, NANDCommandBlock* block) {
    return nandSafeCloseAsync(info, callback, block, FALSE);
}

s32 nandSafeCloseAsync(NANDFileInfo* info, NANDCallback callback, NANDCommandBlock* block, BOOL isSimple) {
    ISFSError err = ISFS_ERROR_UNKNOWN;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    if ((info->mark != 3 || isSimple) && (info->mark != 5 || !isSimple)) {
        return NAND_RESULT_INVALID;
    }

    block->simpleFlag = isSimple;

    if (info->accType == ISFS_ACCESS_READ) {
        block->fileInfo = info;
        block->callback = callback;
        err = ISFS_CloseAsync(info->fileDescriptor, nandReadCloseCallback, block);
    }
    else if (info->accType == ISFS_ACCESS_WRITE || info->accType == ISFS_ACCESS_RW) {
        block->fileInfo = info;
        block->callback = callback;
        block->state = 10;
        err = ISFS_CloseAsync(info->fileDescriptor, nandSafeCloseCallback, block);
    }
    else {
        err = ISFS_ERROR_INVALID;
    }

    return nandConvertErrorCode(err);
}

void nandSafeCloseCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;

    if (result == 0) {
        NANDFileInfo* info = block->fileInfo;
        ISFSError ret = ISFS_ERROR_UNKNOWN;

        if (block->state == 12) {
            info->stage = 8;
        }

        if ((block->state == 12) && block->simpleFlag) {
            block->state += 2;
        }
        else {
            ++block->state;
        }

        if (block->state == 11) {
            info->stage = 6;
            ret = ISFS_CloseAsync(info->origFd, nandSafeCloseCallback, arg);
        }
        else if (block->state == 12) {
            info->stage = 7;
            ret = ISFS_RenameAsync(info->tmpPath, info->origPath, nandSafeCloseCallback, arg);
        }
        else if (block->state == 13) {
            char tmpdir[NAND_MAX_PATH] = "";
            nandGetParentDirectory(tmpdir, info->tmpPath);
            ret = ISFS_DeleteAsync(tmpdir, nandSafeCloseCallback, arg);
        }
        else if (block->state == 14) {
            if (!block->simpleFlag) {
                info->stage = 9;
            }

            info->mark = 4;
            block->callback(nandConvertErrorCode(result), block);
            return;
        }

        if (ret != ISFS_ERROR_OK) {
            block->callback(nandConvertErrorCode(ret), block);
        }
    }
    else {
        block->callback(nandConvertErrorCode(result), block);
    }
}

static void nandReadCloseCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;

    if (result == ISFS_ERROR_OK) {
        ((NANDFileInfo*)block->fileInfo)->stage = 7;
        ((NANDFileInfo*)block->fileInfo)->mark = 4;
    }
    
    block->callback(nandConvertErrorCode(result), block);
}

static void nandCloseCallback(ISFSError result, void* arg) {
    NANDCommandBlock* block = (NANDCommandBlock*)arg;

    if (result == ISFS_ERROR_OK) {
        ((NANDFileInfo*)block->fileInfo)->stage = 7;
        ((NANDFileInfo*)block->fileInfo)->mark = 2;
    }
    
    block->callback(nandConvertErrorCode(result), block);
}

// Force to align
char canYouAlignMe[] = "pretty pls?" ALIGN32;
