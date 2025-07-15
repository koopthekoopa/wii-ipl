#include <revolution/cdb.h>
#include <private/cdb.h>

CDBErr CDBFCreateFileVF(CDBBridgeFile* file, const char* fileName) {
    VFError vfErr;

    file->vf = VFCreateFile(fileName, 0);
    if (file->vf == NULL) {
        vfErr = VFGetLastError();

        if (vfErr == VF_ERR_EEXIST) {
            return CDB_ERROR_FILE_EXISTS;
        }
        else if (vfErr == VF_ERR_ENOSPC) {
            return CDB_ERROR_OUT_OF_SPACE;
        }
        else {
            CDBSetFatalVFErrorFlag();
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFDeleteFileVF(const char* fileName) {
    VFError vfErr = VFDeleteFile(fileName);

    if (vfErr != VF_ERR_SUCCESS && vfErr != VF_ERR_ENOENT) {
        CDBSetFatalVFErrorFlag();
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFCreateDirVF(const char* dirName) {
    CDBErr err = CDBFSCreateDirForceVF(dirName);
    if (err != CDB_ERROR_OK) {
        if (err == CDB_ERROR_VF_ERROR) {
            CDBSetFatalVFErrorFlag();
            return CDBOnVFErrorOccured(err);
        }
        return err;
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFOpenVF(CDBBridgeFile* file, const char* fileName) {
    VFError vfErr;

    file->vf = VFOpenFile(fileName, "r+", 0);
    if (file->vf == NULL) {
        vfErr = VFGetLastError();

        if (vfErr == VF_ERR_ENOENT || vfErr == VF_ERR_EINVAL) {
            return CDB_ERROR_CANNOT_OPEN_FILE;
        }
        else {
            CDBSetFatalVFErrorFlag();
            vfErr = VFGetLastError();
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFCloseVF(CDBBridgeFile* file) {
    VFError vfErr;

    if (file->vf != NULL) {
        vfErr = VFCloseFile(file->vf);
        if (vfErr != VF_ERR_SUCCESS) {
            CDBSetFatalVFErrorFlag();
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFSeekVF_(VFFILE* file, u32 offset, CDBSeek seek) {
    VFError vfErr;

    s32 fileOffset;
    s32 realOffset;

    s32 vfSeekOrig;

    fileOffset = VFGetOffsetByFd(file);
    if (fileOffset < VF_ERR_SUCCESS) {
        CDBSetFatalVFErrorFlag();
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
        CDBSetFatalVFErrorFlag();
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFReadAttrVF(CDBBridgeFile* file, CDBAttr* attr) {
    CDBErr  err;
    VFError vfErr;
    
    s32     fileOffset;
    u32     readSize;

    fileOffset = VFGetOffsetByFd(file->vf);

    err = CDBFSeekVF_(file->vf, 0, CDB_SEEK_BEGIN);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    vfErr = VFReadFile(file->vf, attr, sizeof(CDBAttrBuf), &readSize);
    if (vfErr != VF_ERR_SUCCESS) {
        CDBSetFatalVFErrorFlag();
        err = CDBOnVFErrorOccured(vfErr);
    }
    else {
        err = CDB_ERROR_OK;
    }

    if (readSize != sizeof(CDBAttrBuf)) {
        return CDB_ERROR_READ_LENGTH_WRONG;
    }

    if (err != CDB_ERROR_OK) {
        return err;
    }

    err = CDBFSeekVF_(file->vf, fileOffset, CDB_SEEK_BEGIN);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    return err;
}

CDBErr CDBFWriteAttrVF(CDBBridgeFile* file, CDBAttr* attr) {
    CDBErr  err;
    VFError vfErr;
    
    s32     fileOffset;

    fileOffset = VFGetOffsetByFd(file->vf);

    err = CDBFSeekVF_(file->vf, 0, CDB_SEEK_BEGIN);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    vfErr = VFWriteFile(file->vf, attr, sizeof(CDBAttrBuf));
    if (vfErr != VF_ERR_SUCCESS) {
        if (vfErr == VF_ERR_ENOSPC) {
            err = CDB_ERROR_OUT_OF_SPACE;
        }
        else {
            CDBSetFatalVFErrorFlag();
            err = CDBOnVFErrorOccured(vfErr);
        }
    }
    else {
        err = CDB_ERROR_OK;
    }

    if (err != CDB_ERROR_OK) {
        return err;
    }

    err = CDBFSeekVF_(file->vf, fileOffset, CDB_SEEK_BEGIN);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    return err;
}

CDBErr CDBFWriteAttrOnlyLeadChunkVF(CDBBridgeFile* file, CDBAttr* chunk) {
    CDBErr  err;
    VFError vfErr;
    
    s32     fileOffset;

    fileOffset = VFGetOffsetByFd(file->vf);

    err = CDBFSeekVF_(file->vf, 0, CDB_SEEK_BEGIN);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    vfErr = VFWriteFile(file->vf, chunk, sizeof(CDBAttrBuf) / 2);
    if (vfErr != VF_ERR_SUCCESS) {
        if (vfErr == VF_ERR_ENOSPC) {
            err = CDB_ERROR_OUT_OF_SPACE;
        }
        else {
            CDBSetFatalVFErrorFlag();
            err = CDBOnVFErrorOccured(vfErr);
        }
    }
    else {
        err = CDB_ERROR_OK;
    }

    if (err != CDB_ERROR_OK) {
        return err;
    }

    err = CDBFSeekVF_(file->vf, fileOffset, CDB_SEEK_BEGIN);
    return err;
}

CDBErr CDBFReadDataVF(CDBBridgeFile* file, void* buffer, u32 size, u32* readSize) {
    VFError vfErr;

    vfErr = VFReadFile(file->vf, buffer, size, readSize);
    if (vfErr != VF_ERR_SUCCESS) {
        CDBSetFatalVFErrorFlag();
        return CDBOnVFErrorOccured(vfErr);
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFWriteDataVF(CDBBridgeFile* file, void* buffer, u32 size) {
    VFError vfErr;

    vfErr = VFWriteFile(file->vf, buffer, size);
    if (vfErr != VF_ERR_SUCCESS) {
        if (vfErr == VF_ERR_ENOSPC) {
            return CDB_ERROR_OUT_OF_SPACE;
        }
        else {
            CDBSetFatalVFErrorFlag();
            return CDBOnVFErrorOccured(vfErr);
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBFSeekDataVF(CDBBridgeFile* file, u32 offset, CDBSeek seek) {
    if (seek == CDB_SEEK_BEGIN) {
        offset += 0x400;
    }
    return CDBFSeekVF_(file->vf, offset, seek);
}

s32 CDBFTellDataVF(CDBBridgeFile* file) {
    return VFGetOffsetByFd(file->vf) - 0x400;
}

CDBErr CDBFGetDataSizeVF(CDBBridgeFile* file, u32* dataSize) {
    CDBErr err;

    s32 size = VFGetFileSizeByFd(file->vf);
    if (size < 0) {
        err = CDB_ERROR_CANNOT_OPEN_FILE;
    }
    else {
        *dataSize = size;
        err = CDB_ERROR_OK;
    }
    
    *dataSize -= 0x400;

    return err;
}

CDBErr CDBFGetFileSizeVF(CDBBridgeFile* file, u32* fileSize) {
    CDBErr err;

    s32 size = VFGetFileSizeByFd(file->vf);
    if (size < 0) {
        err = CDB_ERROR_CANNOT_OPEN_FILE;
    }
    else {
        *fileSize = size;
        err = CDB_ERROR_OK;
    }

    return err;
}
