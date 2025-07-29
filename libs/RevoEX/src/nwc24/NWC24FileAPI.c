#include <revolution/nwc24.h>
#include <private/nwc24.h>

#include <private/nand.h>

#include <string.h>

static u32 RdBufferMutex = 0;
static u32 WrBufferMutex = 0;
static u32 InstanceIdGen = 0;

#define SLEEP_MSEC(x) OSSleepTicks(OSMillisecondsToTicks((s64)(x)))

static NWC24Err BufferedWrite(const void* src, s32 size, NWC24File* file);
static NWC24Err BufferedWriteFlush(NWC24File* file);
static NWC24Err BufferedRead(void* dest, s32 size, NWC24File* file);
static NWC24Err AlignedSeek(NWC24File* file, s32 offset, int whence);
static NWC24Err ConvertError(s32 nanderr, NWC24Err wc24err);
static NWC24Err ConvertVfError(s32 vferr, NWC24Err wc24err);

#define INVALIDATE_ALIGN (1 << (DEFAULT_ALIGN-1)) // ?

#define NWC24_IO_WRITE_BUFFER_SIZE  ((int)(sizeof(nwc24Work->writeBuffer)))
#define NWC24_IO_READ_BUFFER_SIZE   ((int)(sizeof(nwc24Work->readBuffer) ))

#define NAND_RETRY_COUNT    3

NWC24Err NWC24FOpen(NWC24File* file, const char* path, u32 mode) {
    InstanceIdGen++;
    InstanceIdGen |= 0x80000000;

    file->id = InstanceIdGen;
    file->align = 0;
    file->mode = mode;

    if (mode == NWC24_OPEN_NAND_WBUFF || mode == NWC24_OPEN_NAND_RBUFF ||
        mode == NWC24_OPEN_VF_WBUFF || mode == NWC24_OPEN_VF_RBUFF) {

        if (!NWC24IsMsgLibOpened() && !NWC24IsMsgLibOpenedByTool()) {
            return NWC24_ERR_LIB_NOT_OPENED;
        }
    }

    if (mode == NWC24_OPEN_NAND_WBUFF || mode == NWC24_OPEN_VF_WBUFF) {
        if (WrBufferMutex != 0) {
            return NWC24_ERR_MUTEX;
        }

        WrBufferMutex = file->id;
    }

    if (mode & NWC24_OPEN_VF) {
        return NWC24iFOpenVF(file, path, mode);
    }

    return NWC24iFOpenNand(file, path, mode);
}

NWC24Err NWC24iFOpenNand(NWC24File* file, const char* path, u32 mode) {
    s32 result;
    u8 access;
    u32 i;

    switch (mode) {
        case NWC24_OPEN_NAND_W:
        case NWC24_OPEN_NAND_WBUFF: {
            result = NANDPrivateCreate(path, NAND_PERM_ALL_RW, 0);
            if (result != NAND_RESULT_OK && result != NAND_RESULT_EXISTS) {
                return NWC24_ERR_FILE_OTHER;
            }
            access = NAND_ACCESS_WRITE;
            break;
        }
        case NWC24_OPEN_NAND_R:
        case NWC24_OPEN_NAND_RBUFF: {
            access = NAND_ACCESS_READ;
            break;
        }
        case NWC24_OPEN_NAND_RW: {
            access = NAND_ACCESS_RW;
            break;
        }
        default: {
            return NWC24_ERR_INVALID_VALUE;
        }
    }

    for (i = 0; i < NAND_RETRY_COUNT; i++) {
        result = NANDPrivateOpen(path, &file->nand, access);
        if (!(result == NAND_RESULT_BUSY || result == NAND_RESULT_ALLOC_FAILED)) {
            break;
        }

        SLEEP_MSEC(1000);
    }

    if (result != NAND_RESULT_OK) {
        if (mode == NWC24_OPEN_NAND_WBUFF) {
            WrBufferMutex = 0;
        }

        if (result == NAND_RESULT_NOEXISTS) {
            return NWC24_ERR_FILE_NOEXISTS;
        }

        return NWC24_ERR_FILE_OPEN;
    }

    return NWC24_OK;
}

NWC24Err NWC24iFOpenVF(NWC24File* file, const char* path, u32 mode) {
    s32 result;
    const char* access;

    switch (mode) {
        case NWC24_OPEN_VF_W:
        case NWC24_OPEN_VF_WBUFF: {
            access = "w";
            break;
        }
        case NWC24_OPEN_VF_R:
        case NWC24_OPEN_VF_RBUFF: {
            access = "r";
            break;
        }
        default: {
            return NWC24_ERR_INVALID_VALUE;
        }
    }

    file->vf = VFOpenFile(path, access, 0);

    if (file->vf == NULL) {
        result = VFGetLastError();

        if (mode == NWC24_OPEN_VF_WBUFF) {
            WrBufferMutex = 0;
        }

        if (*access == 'r' && result == VF_ERR_ENOENT) {
            return NWC24_ERR_FILE_NOEXISTS;
        }

        return ConvertVfError(result, NWC24_ERR_FILE_OPEN);
    }

    return NWC24_OK;
}

NWC24Err NWC24FClose(NWC24File* file) {
    NWC24Err close = NWC24_OK;
    NWC24Err read = NWC24_OK;

    if (file->mode == NWC24_OPEN_NAND_WBUFF ||
        file->mode == NWC24_OPEN_VF_WBUFF) {
        read = BufferedWriteFlush(file);
        WrBufferMutex = 0;
    }

    if (file->mode & NWC24_OPEN_VF) {
        close = NWC24iFCloseVF(file);
    }
    else {
        close = NWC24iFCloseNand(file);
    }

    return read != NWC24_OK ? read : close;
}

NWC24Err NWC24iFCloseNand(NWC24File* file) {
    s32 result;
    NWC24Err err;
    u32 i;

    err = NWC24_OK;

    for (i = 0; i < NAND_RETRY_COUNT; i++) {
        result = NANDClose(&file->nand);
        if (!(result == NAND_RESULT_BUSY || result == NAND_RESULT_ALLOC_FAILED)) {
            break;
        }

        SLEEP_MSEC(1000);
    }

    if (result == NAND_RESULT_CORRUPT) {
        err = NWC24_ERR_NAND_CORRUPT;
    }
    else if (result != NAND_RESULT_OK) {
        err = NWC24_ERR_FILE_CLOSE;
    }

    return err;
}

NWC24Err NWC24iFCloseVF(NWC24File* file) {
    s32 result;

    result = VFCloseFile(file->vf);
    if (result != VF_ERR_SUCCESS) {
        return ConvertVfError(result, NWC24_ERR_FILE_CLOSE);
    }

    return NWC24_OK;
}


NWC24Err NWC24FSeek(NWC24File* file, s32 offset, int whence) {
    s32 result;
    u32 i;

    if (file->mode == NWC24_OPEN_NAND_RBUFF ||
        file->mode == NWC24_OPEN_VF_RBUFF) {
        return AlignedSeek(file, offset, whence);
    }

    if (file->mode & NWC24_OPEN_VF) {
        result = VFSeekFile(file->vf, offset, whence);
        if (result != VF_ERR_SUCCESS) {
            return ConvertVfError(result, NWC24_ERR_FILE_OTHER);
        }

        return NWC24_OK;
    }

    for (i = 0; i < NAND_RETRY_COUNT; i++) {
        result = NANDSeek(&file->nand, offset, whence);
        if (!(result == NAND_RESULT_BUSY || result == NAND_RESULT_ALLOC_FAILED)) {
            break;
        }

        SLEEP_MSEC(1000);
    }

    if (result < 0) {
        return NWC24_ERR_FILE_OTHER;
    }

    return NWC24_OK;
}

NWC24Err NWC24FRead(void* dest, s32 size, NWC24File* file) {
    s32 result;
    u32 i;

    switch (file->mode) {
        case NWC24_OPEN_NAND_W:
        case NWC24_OPEN_NAND_WBUFF:
        case NWC24_OPEN_VF_W: {
            return NWC24_ERR_PROTECTED;
        }
        case NWC24_OPEN_NAND_RBUFF:
        case NWC24_OPEN_VF_RBUFF: {
            return BufferedRead(dest, size, file);
        }
    }

    if (file->mode & NWC24_OPEN_VF) {
        result = VFReadFile(file->vf, dest, size, NULL);
        if (result != VF_ERR_SUCCESS) {
            return ConvertVfError(result, NWC24_ERR_FILE_READ);
        }

        return NWC24_OK;
    }

    for (i = 0; i < NAND_RETRY_COUNT; i++) {
        result = NANDRead(&file->nand, dest, size);
        if (!(result == NAND_RESULT_BUSY || result == NAND_RESULT_ALLOC_FAILED)) {
            break;
        }

        SLEEP_MSEC(1000);
    }

    if (result == NAND_RESULT_CORRUPT) {
        return NWC24_ERR_NAND_CORRUPT;
    }

    if (result < 0) {
        return ConvertError(result, NWC24_ERR_FILE_READ);
    }

    return NWC24_OK;
}

NWC24Err NWC24FWrite(const void* src, s32 size, NWC24File* file) {
    s32 result;
    u32 i;

    switch (file->mode) {
        case NWC24_OPEN_NAND_WBUFF:
        case NWC24_OPEN_VF_WBUFF: {
            return BufferedWrite(src, size, file);
        }
        // @bug Missing NWC24_OPEN_VF_RBUFF
        case NWC24_OPEN_NAND_R:
        case NWC24_OPEN_NAND_RBUFF:
        case NWC24_OPEN_VF_R: {
            return NWC24_ERR_PROTECTED;
        }
    }

    if (file->mode & NWC24_OPEN_VF) {
        result = VFWriteFile(file->vf, src, size);
        if (result != VF_ERR_SUCCESS) {
            return ConvertVfError(result, NWC24_ERR_FILE_WRITE);
        }

        return NWC24_OK;
    }

    for (i = 0; i < NAND_RETRY_COUNT; i++) {
        result = NANDWrite(&file->nand, src, size);
        if (!(result == NAND_RESULT_BUSY || result == NAND_RESULT_ALLOC_FAILED)) {
            break;
        }

        SLEEP_MSEC(1000);
    }

    if (result == NAND_RESULT_CORRUPT) {
        return NWC24_ERR_NAND_CORRUPT;
    }

    if (result < 0) {
        return ConvertError(result, NWC24_ERR_FILE_WRITE);
    }

    if (result != size) {
        return NWC24_ERR_FILE_WRITE;
    }

    return NWC24_OK;
}

NWC24Err NWC24FGetLength(NWC24File* file, u32* lengthOut) {
    s32 error;

    if (file->mode & NWC24_OPEN_VF) {
        error = VFGetFileSizeByFd(file->vf);
        if (error < 0) {
            return ConvertVfError(error, NWC24_ERR_FILE_OTHER);
        }

        *lengthOut = error;
        return NWC24_OK;
    }

    error = NANDGetLength(&file->nand, lengthOut);
    if (error != NAND_RESULT_OK) {
        return NWC24_ERR_FILE_OTHER;
    }

    return NWC24_OK;
}

NWC24Err NWC24FDelete(const char* path) {
    s32 result;

    result = NANDPrivateDelete(path);

    if (result == NAND_RESULT_CORRUPT) {
        return NWC24_ERR_NAND_CORRUPT;
    }

    if (result != NAND_RESULT_OK) {
        return NWC24_ERR_FILE_OTHER;
    }

    return NWC24_OK;
}

NWC24Err NWC24FDeleteVF(const char* path) {
    s32 result;

    result = VFDeleteFile(path);

    if (result == VF_ERR_ENOENT) {
        return NWC24_OK;
    }

    if (result != VF_ERR_SUCCESS) {
        return ConvertVfError(result, NWC24_ERR_FILE_OTHER);
    }

    return NWC24_OK;
}

NWC24Err NWC24CreateDir(const char* path) {
    s32 result;

    result = NANDPrivateCreateDir(path, NAND_PERM_ALL_RW, 0);

    if (result == NAND_RESULT_EXISTS) {
        return NWC24_ERR_DONE;
    }

    if (result == NAND_RESULT_CORRUPT) {
        return NWC24_ERR_NAND_CORRUPT;
    }

    return result == NAND_RESULT_OK ? NWC24_OK : NWC24_ERR_FATAL;
}

NWC24Err NWC24MountVF(const char* drive, const char* filename) {
    s32 result;

    result = VFMountDriveNANDFlashEx(drive, filename);
    if (result == VF_ERR_NOT_EXIST_FILE) {
        return NWC24_ERR_FILE_NOEXISTS;
    }

    if (result != VF_ERR_SUCCESS) {
        return ConvertVfError(result, NWC24_ERR_INTERNAL_VF);
    }

    result = VFSync(drive, 1);
    if (result != VF_ERR_SUCCESS) {
        return ConvertVfError(result, NWC24_ERR_INTERNAL_VF);
    }

    return NWC24_OK;
}

NWC24Err NWC24UnmountVF(const char* drive) {
    s32 result;

    result = VFUnmountDrive(drive);
    if (result != VF_ERR_SUCCESS) {
        return ConvertVfError(result, NWC24_ERR_INTERNAL_VF);
    }

    return NWC24_OK;
}

NWC24Err NWC24CheckSizeVF(const char* drive, u32* sizeOut) {
    s32 size;

    size = VFGetDriveFreeSize(drive);
    *sizeOut = size;

    if (size < 0) {
        return ConvertVfError(VFGetLastError(), NWC24_ERR_INTERNAL_VF);
    }

    return NWC24_OK;
}

NWC24Err NWC24CreateVF(const char* path, u32 fileSize) {
    s32 result;
    VFError vfResult;
    NANDStatus status;

    vfResult = VFCreateSystemFileNANDFlashEx(path, fileSize);
    if (vfResult != VF_ERR_SUCCESS) {
        return ConvertVfError(vfResult, NWC24_ERR_INTERNAL_VF);
    }

    result = NANDPrivateGetStatus(path, &status);
    if (result != NAND_RESULT_OK) {
        return NWC24_ERR_FATAL;
    }

    status.permission = NAND_PERM_ALL_RW;
    result = NANDPrivateSetStatus(path, &status);
    if (result != NAND_RESULT_OK) {
        return NWC24_ERR_FATAL;
    }

    result = NWC24MountVF(NWC24_VF_DRIVE, path);
    if (result != VF_ERR_SUCCESS) {
        return ConvertVfError(vfResult, NWC24_ERR_INTERNAL_VF);
    }

    vfResult = VFFormatDrive(NWC24_VF_DRIVE);
    if (vfResult != VF_ERR_SUCCESS) {
        return ConvertVfError(vfResult, NWC24_ERR_INTERNAL_VF);
    }

    vfResult = VFCreateDir(NWC24_VF_DRIVE":/mb");
    if (vfResult != VF_ERR_SUCCESS) {
        return ConvertVfError(vfResult, NWC24_ERR_INTERNAL_VF);
    }

    result = NWC24UnmountVF(NWC24_VF_DRIVE);
    if (result != VF_ERR_SUCCESS) {
        return ConvertVfError(vfResult, NWC24_ERR_INTERNAL_VF);
    }

    return NWC24_OK;
}

static NWC24Err BufferedWrite(const void* src, s32 size, NWC24File* file) {
    u32 now;
    u32 left;
    u32 pos;
    u8* buf;
    const u8* bsrc;
    s32 result;
    NWC24Err err;
    u32 i;

    left = size;
    pos = file->align;
    buf = nwc24Work->writeBuffer;
    bsrc = (u8*)src;
    err = NWC24_OK;

    while (left != 0) {
        now = NWC24_IO_WRITE_BUFFER_SIZE - pos;

        if (left < now) {
            now = left;
        }

        memcpy(buf + pos, bsrc, now);

        pos += now;
        left -= now;
        bsrc += now;

        if (pos < NWC24_IO_WRITE_BUFFER_SIZE) {
            continue;
        }

        pos = 0;

        if (file->mode & NWC24_OPEN_VF) {
            result = VFWriteFile(file->vf, buf, NWC24_IO_WRITE_BUFFER_SIZE);
            if (result == VF_ERR_SUCCESS) {
                continue;
            }

            err = ConvertVfError(result, NWC24_ERR_FILE_WRITE);
            break;
        }

        for (i = 0; i < NAND_RETRY_COUNT; i++) {
            result = NANDWrite(&file->nand, buf, NWC24_IO_WRITE_BUFFER_SIZE);
            if (!(result == NAND_RESULT_BUSY || result == NAND_RESULT_ALLOC_FAILED)) {
                break;
            }

            SLEEP_MSEC(1000);
        }

        if (result == NAND_RESULT_CORRUPT) {
            return NWC24_ERR_NAND_CORRUPT;
        }

        if (result != NWC24_IO_WRITE_BUFFER_SIZE) {
            err = NWC24_ERR_FILE_WRITE;
            break;
        }
    }

    file->align = pos;
    return err;
}

static NWC24Err BufferedWriteFlush(NWC24File* file) {
    s32 result;
    u32 pos;
    u8* buf;
    NWC24Err err;
    u32 i;

    pos = file->align;
    buf = nwc24Work->writeBuffer;
    err = NWC24_OK;

    if (pos == 0) {
        return err;
    }

    while (pos % 32 != 0) {
        buf[pos++] = 0x00;
    }

    if (file->mode & NWC24_OPEN_VF) {
        result = VFWriteFile(file->vf, buf, pos);
        if (result != VF_ERR_SUCCESS) {
            err = ConvertVfError(result, NWC24_ERR_FILE_WRITE);
        }

        return err;
    }

    for (i = 0; i < NAND_RETRY_COUNT; i++) {
        result = NANDWrite(&file->nand, buf, pos);
        if (!(result == NAND_RESULT_BUSY || result == NAND_RESULT_ALLOC_FAILED)) {
            break;
        }

        SLEEP_MSEC(1000);
    }

    if (result == NAND_RESULT_CORRUPT) {
        return NWC24_ERR_NAND_CORRUPT;
    }

    if (result != pos) {
        err = NWC24_ERR_FILE_WRITE;
    }

    return err;
}

static NWC24Err BufferedRead(void* dest, s32 size, NWC24File* file) {
    u32 total;
    u32 now;
    u32 left;
    s32 result;
    u32 pos;
    u8* buf;
    u8* bdst;
    NWC24Err err;
    u32 i;
    u32 bytesread;

    bdst = (u8*)dest;
    total = size;
    buf = nwc24Work->readBuffer;
    err = NWC24_OK;

    if (RdBufferMutex != 0) {
        return NWC24_ERR_MUTEX;
    }

    RdBufferMutex = file->id;

    if (file->align & INVALIDATE_ALIGN) {
        return NWC24_ERR_INVALID_OPERATION;
    }

    pos = file->align;

    while (total > 0) {
        now = NWC24_IO_READ_BUFFER_SIZE;
        left = now - pos;

        if (total < left) {
            left = total;
            now = OSRoundUp32B(total + pos);
        }

        if (file->mode & NWC24_OPEN_VF) {
            result = VFReadFile(file->vf, buf, now, &bytesread);
            if (result != VF_ERR_SUCCESS) {
                err = ConvertVfError(result, NWC24_ERR_FILE_READ);
                break;
            }

            result = bytesread;
        }
        else {
            for (i = 0; i < NAND_RETRY_COUNT; i++) {
                result = NANDRead(&file->nand, buf, now);
                if (!(result == NAND_RESULT_BUSY || result == NAND_RESULT_ALLOC_FAILED)) {
                    break;
                }

                SLEEP_MSEC(1000);
            }

            if (result == NAND_RESULT_CORRUPT) {
                return NWC24_ERR_NAND_CORRUPT;
            }
        }

        if (result != now) {
            err = NWC24_ERR_FILE_READ;
            break;
        }
        else {
            memcpy(bdst, buf + pos, left);
            bdst += left;
            total -= left;
            pos = 0;
        }
    }

    file->align = (file->align + size) % 32;
    file->align |= INVALIDATE_ALIGN;
    RdBufferMutex = 0;
    return err;
}

static NWC24Err AlignedSeek(NWC24File* file, s32 offset, int whence) {
    s32 result;
    s32 alignofs;

    file->align = offset % 32;
    alignofs = offset - file->align;

    if (file->mode & NWC24_OPEN_VF) {
        result = VFSeekFile(file->vf, alignofs, whence);
        if (result != VF_ERR_SUCCESS) {
            return ConvertVfError(result, NWC24_ERR_FILE_OTHER);
        }

        return NWC24_OK;
    }

    result = NANDSeek(&file->nand, alignofs, whence);
    if (result < 0) {
        return NWC24_ERR_FILE_OTHER;
    }

    return NWC24_OK;
}

static NWC24Err ConvertError(s32 nanderr, NWC24Err wc24err) {
    switch (nanderr) {
    case NAND_RESULT_ECC_CRIT:
    case NAND_RESULT_AUTHENTICATION:
        return NWC24_ERR_FILE_BROKEN;
    case NAND_RESULT_CORRUPT:
        return NWC24_ERR_NAND_CORRUPT;
    default:
        return wc24err;
    }
}

static NWC24Err ConvertVfError(s32 vferr, NWC24Err wc24err) {
    if (vferr == VF_ERR_EIO) {
        return ConvertError(VFGetLastDeviceError(NWC24_VF_DRIVE), wc24err);
    }

    return wc24err;
}
