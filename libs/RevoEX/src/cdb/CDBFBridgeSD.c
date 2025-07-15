#include <revolution/cdb.h>
#include <private/cdb.h>

CDBErr CDBFCreateFileSD(CDBBridgeFile* file, const char* fileName) {
    VFError vfErr;

    file->sd = VFCreateFile(fileName, 0);
    if (file->sd == NULL) {
        vfErr = VFGetLastError();

        if (vfErr == VF_ERR_EEXIST) {
            return CDB_ERROR_FILE_EXISTS;
        }
        else if (vfErr == VF_ERR_ENOSPC) {
            return CDB_ERROR_OUT_OF_SPACE;
        }
        else if (vfErr == VF_ERR_EACCES) {
            return CDB_ERROR_ACCESS_DENIED;
        }
        else {
            if (CDBFSSDIsEjected()) {
                return CDB_ERROR_SD_EJECTED;
            }
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFDeleteFileSD(const char* fileName) {
    VFError vfErr;
    CDBErr err;

    vfErr = VFDeleteFile(fileName);

    if (vfErr == VF_ERR_ENOENT) {
        return CDB_ERROR_CANNOT_OPEN_FILE;
    }

    if (vfErr != VF_ERR_SUCCESS) {
        if (vfErr == VF_ERR_EACCES) {
            return CDB_ERROR_ACCESS_DENIED;
        }

        if (CDBFSSDIsEjected()) {
            return CDB_ERROR_SD_EJECTED;
        }

        CDBReportInfo("CDBFDeleteFileSD() %s\n", fileName);

        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFCreateDirSD(const char* dirName) {
    CDBErr err = CDBFSCreateDirForceSD(dirName);
    if (err != CDB_ERROR_OK) {
        if (CDBFSSDIsEjected()) {
            return CDB_ERROR_SD_EJECTED;
        }
        return err;
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFOpenSD_readonly(CDBBridgeFile* file, const char* fileName) {
    VFError vfErr;

    file->sd = VFOpenFile(fileName, "r", 0);
    if (file->sd == NULL) {
        vfErr = VFGetLastError();

        if (vfErr == VF_ERR_ENOENT || vfErr == VF_ERR_EINVAL) {
            return CDB_ERROR_CANNOT_OPEN_FILE;
        }
        else {
            if (CDBFSSDIsEjected()) {
                return CDB_ERROR_SD_EJECTED;
            }
            vfErr = VFGetLastError();
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFOpenSD(CDBBridgeFile* file, const char* fileName) {
    VFError vfErr;

    file->sd = VFOpenFile(fileName, "r+", 0);
    if (file->sd == NULL) {
        file->sd = VFOpenFile(fileName, "r", 0);
    }
    if (file->sd == NULL) {
        vfErr = VFGetLastError();

        if (vfErr == VF_ERR_ENOENT || vfErr == VF_ERR_EINVAL) {
            return CDB_ERROR_CANNOT_OPEN_FILE;
        }
        if (vfErr == VF_ERR_EACCES) {
            return CDBFOpenSD_readonly(file, fileName);
        }
        else {
            if (CDBFSSDIsEjected()) {
                return CDB_ERROR_SD_EJECTED;
            }
            vfErr = VFGetLastError();
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFCloseSD(CDBBridgeFile* file) {
    VFError vfErr;

    if (file->sd != NULL) {
        vfErr = VFCloseFile(file->sd);
        if (vfErr != VF_ERR_SUCCESS) {
            if (CDBFSSDIsEjected()) {
                return CDB_ERROR_SD_EJECTED;
            }
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFSeekSD_(VFFILE* file, u32 offset, CDBSeek seek) {
    VFError vfErr;

    s32 fileOffset;
    s32 realOffset;

    s32 vfSeekOrig;

    fileOffset = VFGetOffsetByFd(file);
    if (fileOffset < VF_ERR_SUCCESS) {
        if (CDBFSSDIsEjected()) {
            return CDB_ERROR_SD_EJECTED;
        }
        vfErr = VFGetLastError();
        return CDBOnVFErrorOccured(vfErr);
    }

    switch (seek) {
        case CDB_SEEK_CUR: {
            realOffset = fileOffset + offset;
            vfSeekOrig = VF_SEEK_ORIGIN_CURRENT;
            break;
        }
        case CDB_SEEK_BEGIN: {
            realOffset = offset;
            vfSeekOrig = VF_SEEK_ORIGIN_BEGIN;
            break;
        }
        case CDB_SEEK_END: {
            vfSeekOrig = VF_SEEK_ORIGIN_END;
            realOffset = fileOffset - offset;
            break;
        }
    }

    if (realOffset < 0 || realOffset > 0x3EC00) {
        return CDB_ERROR_OUT_OF_RANGE;
    }

    vfErr = VFSeekFile(file, offset, vfSeekOrig);
    if (vfErr != VF_ERR_SUCCESS) {
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}

s32 CDBFGetOffsetSD(VFFILE* file) {
    if (file != NULL) {
        return VFGetOffsetByFd(file);
    }
    else {
        return -1;
    }
}

CDBErr CDBFReadAttrSD(CDBBridgeFile* file, CDBAttr* attrBuf) {
    CDBErr  err;
    VFError vfErr;
    
    s32     fileOffset;
    u32     readSize;

    fileOffset = CDBFGetOffsetSD(file->sd);

    err = CDBFSeekSD_(file->sd, 0, CDB_SEEK_BEGIN);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    vfErr = VFReadFile(file->sd, attrBuf, sizeof(CDBAttrBuf), &readSize);
    if (vfErr != VF_ERR_SUCCESS) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
        }
        else {
            err = CDBOnVFErrorOccured(vfErr);
        }
    }
    else {
        err = CDB_ERROR_OK;
    }

    if (readSize != sizeof(CDBAttrBuf)) {
        err = CDB_ERROR_READ_LENGTH_WRONG;
        if (CDBFSSDIsEjected()) {
            return CDB_ERROR_SD_EJECTED;
        }
        return err;
    }

    if (err != CDB_ERROR_OK) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
        }
        return err;
    }

    // This doesn't seem right...
    {
        CDBErr err2 = CDBFSeekSD_(file->sd, fileOffset, CDB_SEEK_BEGIN);
        if (err2 != CDB_ERROR_OK) {
            if (CDBFSSDIsEjected()) {
                err2 = CDB_ERROR_SD_EJECTED;
            }
            return err2;
        }
        return err2;
    }
}

CDBErr CDBFWriteAttrSD(CDBBridgeFile* file, CDBAttr* attrBuf) {
    CDBErr  err;
    VFError vfErr;
    
    s32     fileOffset;

    fileOffset = CDBFGetOffsetSD(file->sd);

    err = CDBFSeekSD_(file->sd, 0, CDB_SEEK_BEGIN);
    if (err != CDB_ERROR_OK) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
        }
        return err;
    }

    vfErr = VFWriteFile(file->sd, attrBuf, sizeof(CDBAttrBuf));
    if (vfErr != VF_ERR_SUCCESS) {
        if (vfErr == VF_ERR_ENOSPC) {
            err = CDB_ERROR_OUT_OF_SPACE;
        }
        else if (vfErr == VF_ERR_EACCES) {
            err = CDB_ERROR_ACCESS_DENIED;
        }
        else {
            if (CDBFSSDIsEjected()) {
                err = CDB_ERROR_SD_EJECTED;
            }
            else {
                err = CDBOnVFErrorOccured(vfErr);
            }
        }
    }
    else {
        err = CDB_ERROR_OK;
    }

    if (err != CDB_ERROR_OK) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
        }
        return err;
    }

    // This doesn't seem right...
    {
        CDBErr err2 = CDBFSeekSD_(file->sd, fileOffset, CDB_SEEK_BEGIN);
        if (err2 != CDB_ERROR_OK) {
            if (CDBFSSDIsEjected()) {
                err2 = CDB_ERROR_SD_EJECTED;
            }
            return err2;
        }
        return err2;
    }
}

CDBErr CDBFWriteAttrOnlyLeadChunkSD(CDBBridgeFile* file, CDBAttr* attrBuf) {
    CDBErr  err;
    VFError vfErr;
    
    s32     fileOffset;

    fileOffset = CDBFGetOffsetSD(file->sd);

    err = CDBFSeekSD_(file->sd, 0, CDB_SEEK_BEGIN);
    if (err != CDB_ERROR_OK) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
        }
        return err;
    }

    vfErr = VFWriteFile(file->sd, attrBuf, sizeof(CDBAttrBuf) / 2);
    if (vfErr != VF_ERR_SUCCESS) {
        if (vfErr == VF_ERR_ENOSPC) {
            err = CDB_ERROR_OUT_OF_SPACE;
        }
        else if (vfErr == VF_ERR_EACCES) {
            err = CDB_ERROR_ACCESS_DENIED;
        }
        else {
            if (CDBFSSDIsEjected()) {
                err = CDB_ERROR_SD_EJECTED;
            }
            else {
                err = CDBOnVFErrorOccured(vfErr);
            }
        }
    }
    else {
        err = CDB_ERROR_OK;
    }

    if (err != CDB_ERROR_OK) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
        }
        return err;
    }

    // This doesn't seem right...
    {
        CDBErr err2 = CDBFSeekSD_(file->sd, fileOffset, CDB_SEEK_BEGIN);
        if (err2 != CDB_ERROR_OK) {
            if (CDBFSSDIsEjected()) {
                err2 = CDB_ERROR_SD_EJECTED;
            }
            return err2;
        }
        return err2;
    }
}

CDBErr CDBFReadDataSD(CDBBridgeFile* file, void* buffer, u32 size, u32* readSize) {
    VFError vfErr;

    vfErr = VFReadFile(file->sd, buffer, size, readSize);
    if (vfErr != VF_ERR_SUCCESS) {
        if (CDBFSSDIsEjected()) {
            return CDB_ERROR_SD_EJECTED;
        }
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFWriteDataSD(CDBBridgeFile* file, void* buffer, u32 size) {
    VFError vfErr;

    vfErr = VFWriteFile(file->sd, buffer, size);
    if (vfErr != VF_ERR_SUCCESS) {
        if (vfErr == VF_ERR_ENOSPC) {
            return CDB_ERROR_OUT_OF_SPACE;
        }
        else if (vfErr == VF_ERR_EACCES) {
            return CDB_ERROR_ACCESS_DENIED;
        }
        else {
            if (CDBFSSDIsEjected()) {
                return CDB_ERROR_SD_EJECTED;
            }
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFSeekDataSD(CDBBridgeFile* file, u32 offset, CDBSeek seek) {
    if (seek == CDB_SEEK_BEGIN) {
        offset += 0x400;
    }
    return CDBFSeekSD_(file->sd, offset, seek);
}

s32 CDBFTellDataSD(CDBBridgeFile* file) {
    return CDBFGetOffsetSD(file->sd) - 0x400;
}

CDBErr CDBFGetDataSizeSD(CDBBridgeFile* file, u32* dataSize) {
    CDBErr err;

    s32 size = VFGetFileSizeByFd(file->sd);
    if (size < 0) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
        }
        else {
            err = CDB_ERROR_CANNOT_OPEN_FILE;
        }
    }
    else {
        *dataSize = size;
        err = CDB_ERROR_OK;
    }

    if (err != CDB_ERROR_OK) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
            return err;
        }
    }
    
    *dataSize -= 0x400;

    return err;
}

CDBErr CDBFGetFileSizeSD(CDBBridgeFile* file, u32* fileSize) {
    CDBErr err;

    s32 size = VFGetFileSizeByFd(file->sd);
    if (size < 0) {
        if (CDBFSSDIsEjected()) {
            err = CDB_ERROR_SD_EJECTED;
        }
        else {
            err = CDB_ERROR_CANNOT_OPEN_FILE;
        }
    }
    else {
        *fileSize = size;
        err = CDB_ERROR_OK;
    }
    
    return err;
}
