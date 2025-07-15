#include <revolution/cdb.h>
#include <private/cdb.h>

#include <stddef.h>

CDBErr CDBRecordFileReadAttrBuf(CDBRecord* record) {
    CDBRecordFile* recordFile = record->file;
    CDBErr err;

    if (recordFile == NULL) {
        return CDB_ERROR_27;
    }

    err = CDBFReadAttr(&recordFile->bridgeFile, &recordFile->attr, record->key.location);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    err = CDBAttrCheckAttrBuf(&recordFile->attr);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    recordFile->attr.unk_0x408 = TRUE;

    return CDB_ERROR_OK;
}

CDBErr CDBRecordFileWriteAttrBuf(CDBRecord* record) {
    CDBRecordFile* recordFile = record->file;
    CDBErr err;

    if (recordFile == NULL) {
        return CDB_ERROR_27;
    }

    if (recordFile->attr.unk_0x400 && !recordFile->attr.unk_0x404) {
        err = CDBFWriteAttrOnlyLeadChunk(&recordFile->bridgeFile, &recordFile->attr, record->key.location);
        if (err != CDB_ERROR_OK) {
            return err;
        }
    }
    else if (recordFile->attr.unk_0x400 || recordFile->attr.unk_0x404) {
        err = CDBFWriteAttr(&recordFile->bridgeFile, &recordFile->attr, record->key.location);
        if (err != CDB_ERROR_OK) {
            return err;
        }
    }

    return CDB_ERROR_OK;
}

CDBErr CDBRecordFileCreateBlank(CDBRecord* record) {
    CDBRecordFile* recordFile;
    CDBErr err;

    char fullPath[256];
    int i;

    err = CDBRecordAllocate(record, CDB_RECORD_ALLOC_RW);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    recordFile = record->file;

    CDBConvKeyToFullPath(&record->key, fullPath);

    err = CDBFCreateDir(fullPath, record->key.location);
    if (err != CDB_ERROR_OK) {
        CDBRecordFree(record);
        return err;
    }

    for (i = 0; i < 1000; i++) {
        CDBRecordKeySetSerialNumber(&record->key, i);
        CDBRecordKeyCopy(&recordFile->key, &record->key);
        CDBConvKeyToFullPath(&record->key, fullPath);

        err = CDBFCreateFile(&recordFile->bridgeFile, fullPath, record->key.location);
        if (err == CDB_ERROR_OK) {
            break;
        }

        if (err != CDB_ERROR_OK) {
            if (err != CDB_ERROR_FILE_EXISTS) {
                if (err == CDB_ERROR_OUT_OF_SPACE || err == CDB_ERROR_SD_EJECTED) {
                    CDBRecordFree(record);
                }
                return err;
            }
        }
    }

    if (i == 1000) {
        return CDB_ERROR_OUT_OF_RANGE;
    }

    CDBReportInfo(" create %s...\n", record->key.keyString);
    
    return CDB_ERROR_OK;
}

CDBErr CDBRecordFileDump(CDBRecord* record, void* buffer, u32 size) {
    CDBRecordFile* recordFile = record->file;
    CDBErr err = CDBFWriteData(&recordFile->bridgeFile, buffer, size, record->key.location);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    err = CDBVFSync();
    if (err != CDB_ERROR_OK) {
        return err;
    }

    return CDB_ERROR_OK;
}

CDBErr CDBRecordFileCreateAtOnce(CDBRecord* record, void* buffer, u32 size) {
    CDBRecordFile* recordFile;
    CDBErr err;

    char fullPath[256];
    int i;

    err = CDBRecordAllocate(record, CDB_RECORD_ALLOC_RW);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    recordFile = record->file;

    CDBConvKeyToFullPath(&record->key, fullPath);

    err = CDBFCreateDir(fullPath, record->key.location);
    if (err != CDB_ERROR_OK) {
        CDBRecordFree(record);
        return err;
    }

    for (i = 0; i < 1000; i++) {
        CDBRecordKeySetSerialNumber(&record->key, i);
        CDBRecordKeyCopy(&recordFile->key, &record->key);
        CDBConvKeyToFullPath(&record->key, fullPath);

        err = CDBFCreateFile(&recordFile->bridgeFile, fullPath, record->key.location);
        if (err == CDB_ERROR_OK) {
            break;
        }

        if (err != CDB_ERROR_OK) {
            if (err != CDB_ERROR_FILE_EXISTS) {
                if (err == CDB_ERROR_OUT_OF_SPACE) {
                    CDBRecordFree(record);
                }
                return err;
            }
        }
    }

    if (i == 1000) {
        CDBRecordFree(record);
        return CDB_ERROR_OUT_OF_RANGE;
    }

    CDBReportInfo(" create %s...\n", record->key.keyString);

    err = CDBFWriteData(&recordFile->bridgeFile, buffer, size, record->key.location);
    if (err != CDB_ERROR_OK) {
        CDBFClose(&recordFile->bridgeFile, record->key.location);
        CDBRecordFree(record);
        if (err == CDB_ERROR_OUT_OF_SPACE) {
            CDBRecordRemove(record);
        }
        return err;
    }

    err = CDBFClose(&recordFile->bridgeFile, record->key.location);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    err = CDBVFSync();
    if (err != CDB_ERROR_OK) {
        return err;
    }

    CDBRecordFree(record);

    return CDB_ERROR_OK;
}

CDBErr CDBRecordFileDelete(CDBRecord* record) {
    char fullPath[256];
    CDBErr err;
    
    if (!CDBRecordKeyIsValid(&record->key)) {
        CDBReportError("invalid key\n");
        return CDB_ERROR_5;
    }

    CDBConvKeyToFullPath(&record->key, fullPath);
    err = CDBFDeleteFile(fullPath, record->key.location);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    return CDB_ERROR_OK;
}

CDBErr CDBRecordFileOpen(CDBRecord* record, char* fileName, int allocFlag) {
    CDBRecordFile* recordFile;
    CDBErr err;

    err = CDBRecordAllocate(record, allocFlag);
    if (err != CDB_ERROR_OK) {
        return err;
    }

    recordFile = record->file;

    err = CDBFOpen(&recordFile->bridgeFile, fileName, record->key.location);
    if (err != CDB_ERROR_OK) {
        CDBRecordFree(record);
        return err;
    }

    err = CDBFSeekData(&recordFile->bridgeFile, 0, CDB_SEEK_BEGIN, record->key.location);
    if (err != CDB_ERROR_OK) {
        CDBRecordFree(record);
        return err;
    }

    return CDB_ERROR_OK;
}

CDBErr CDBRecordFileClose(CDBRecord* record) {
    CDBRecordFile* recordFile = record->file;
    CDBErr err = CDBFClose(&recordFile->bridgeFile, record->key.location);
    if (err != CDB_ERROR_OK && err != CDB_ERROR_SD_EJECTED && err != CDB_ERROR_VF_ERROR) {
        return err;
    }

    CDBRecordFree(record);
    return err;
}

CDBErr CDBRecordFileGetFileSize(CDBRecord* record, u32* fileSize) {
    CDBRecordFile* recordFile = record->file;
    return CDBFGetFileSize(&recordFile->bridgeFile, fileSize, record->key.location);
}

CDBErr CDBRecordFileGetDataSize(CDBRecord* record, u32* dataSize) {
    CDBRecordFile* recordFile = record->file;
    return CDBFGetDataSize(&recordFile->bridgeFile, dataSize, record->key.location);
}

CDBErr CDBRecordFileWriteData(CDBRecord* record, void* buffer, u32 size) {
    CDBRecordFile* recordFile = record->file;
    return CDBFWriteData(&recordFile->bridgeFile, buffer, size, record->key.location);
}

CDBErr CDBRecordFileReadData(CDBRecord* record, void* buffer, u32 size, u32* readSize) {
    CDBRecordFile* recordFile = record->file;
    CDBCryptBuf* cryptBuf = record->cryptBuf;

    if (cryptBuf != NULL) {
        u32 unk = cryptBuf->unk_0x3EC00 - cryptBuf->unk_0x3EC04;
        if (cryptBuf->unk_0x3EC00 < unk) {
            unk = 0;
        }

        if (size < unk) {
            unk = size;
        }

        if (unk != 0) {
            memcpy(buffer, (u8*)&cryptBuf->buffer[cryptBuf->unk_0x3EC04], unk);
            cryptBuf->unk_0x3EC04 += unk;
        }

        if (readSize != NULL) {
            *readSize = unk;
        }

        return CDB_ERROR_OK;
    }
    else {
        return CDBFReadData(&recordFile->bridgeFile, buffer, size, readSize, record->key.location);
    }
}

CDBErr CDBRecordFileReadDataFile(CDBRecord* record, void* buffer, u32 size, u32* readSize) {
    CDBRecordFile* recordFile = record->file;
    return CDBFReadData(&recordFile->bridgeFile, buffer, size, readSize, record->key.location);
}

CDBErr CDBRecordFileSeekData(CDBRecord* record, u32 offset, CDBSeek seek) {
    CDBRecordFile* recordFile = record->file;
    CDBCryptBuf* cryptBuf = record->cryptBuf;
    
    if (cryptBuf != NULL) {
        switch (seek) {
            case CDB_SEEK_BEGIN: {
                cryptBuf->unk_0x3EC04 = sizeof(CDBAttrBuf);
                cryptBuf->unk_0x3EC04 += offset;
                break;
            }
            case CDB_SEEK_END: {
                cryptBuf->unk_0x3EC04 = (cryptBuf->unk_0x3EC00-1) - offset;
                break;
            }
            case CDB_SEEK_CUR: {
                cryptBuf->unk_0x3EC04 += offset;
                break;
            }
        }
        return CDB_ERROR_OK;
    }
    else {
        return CDBFSeekData(&recordFile->bridgeFile, offset, seek, record->key.location);
    }
}

CDBErr CDBRecordFileSeekDataFile(CDBRecord* record, u32 offset, CDBSeek seek) {
    CDBRecordFile* recordFile = record->file;
    return CDBFSeekData(&recordFile->bridgeFile, offset, seek, record->key.location);
}

int CDBRecordFileTellData(CDBRecord* record) {
    CDBRecordFile* recordFile = record->file;
    CDBCryptBuf* cryptBuf = record->cryptBuf;
    
    if (cryptBuf != NULL) {
        return cryptBuf->unk_0x3EC04 - sizeof(CDBAttrBuf);
    }
    return CDBFTellData(&recordFile->bridgeFile, record->key.location);
}

int CDBRecordFileTellDataFile(CDBRecord* record) {
    CDBRecordFile* recordFile = record->file;
    return CDBFTellData(&recordFile->bridgeFile, record->key.location);
}
