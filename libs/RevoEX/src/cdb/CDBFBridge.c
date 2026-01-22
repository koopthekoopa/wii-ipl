#include <revolution/cdb.h>
#include <private/cdb.h>

#include <string.h>

CDBErr CDBFCreateFile(CDBBridgeFile* file, const char* fileName, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFCreateFileVF(file, fileName) :
                                        CDBFCreateFileSD(file, fileName);
}

CDBErr CDBFDeleteFile(const char* fileName, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFDeleteFileVF(fileName) :
                                        CDBFDeleteFileSD(fileName);
}

CDBErr CDBFCreateDir(const char* dirName, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFCreateDirVF(dirName) :
                                        CDBFCreateDirSD(dirName);
}

CDBErr CDBFOpen(CDBBridgeFile* file, const char* fileName, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFOpenVF(file, fileName) :
                                        CDBFOpenSD(file, fileName);
}

CDBErr CDBFClose(CDBBridgeFile* file, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFCloseVF(file) :
                                        CDBFCloseSD(file);
}

CDBErr CDBFReadAttr(CDBBridgeFile* file, CDBAttr* attr, CDBLocation type) {
    u32 modifiedCount;
    CDBErr err = type == CDB_FS_LOCATION_NAND ?   CDBFReadAttrVF(file, attr) :
                                                CDBFReadAttrSD(file, attr);
    memcpy(&modifiedCount, &attr->buf.cdbID.modifiedCount, sizeof(u32));
    return err;
}

CDBErr CDBFWriteAttr(CDBBridgeFile* file, CDBAttr* attr, CDBLocation type) {
    CDBErr err;
    u32 modifiedCount;
    memcpy(&modifiedCount, &attr->buf.cdbID.modifiedCount, sizeof(u32));
    err = type == CDB_FS_LOCATION_NAND ?  CDBFWriteAttrVF(file, attr) :
                                        CDBFWriteAttrSD(file, attr);
    return err;
}

CDBErr CDBFWriteAttrOnlyLeadChunk(CDBBridgeFile* file, CDBAttr* attr, CDBLocation type) {
    CDBErr err;
    u32 modifiedCount;
    memcpy(&modifiedCount, &attr->buf.cdbID.modifiedCount, sizeof(u32));
    err = type == CDB_FS_LOCATION_NAND ?  CDBFWriteAttrOnlyLeadChunkVF(file, attr) :
                                        CDBFWriteAttrOnlyLeadChunkSD(file, attr);
    return err;
}

CDBErr CDBFReadData(CDBBridgeFile* file, void* buffer, u32 size, u32* readSize, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFReadDataVF(file, buffer, size, readSize) :
                                        CDBFReadDataSD(file, buffer, size, readSize);
}

CDBErr CDBFWriteData(CDBBridgeFile* file, void* buffer, u32 size, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFWriteDataVF(file, buffer, size) :
                                        CDBFWriteDataSD(file, buffer, size);
}


CDBErr CDBFSeekData(CDBBridgeFile* file, u32 offset, CDBSeek seek, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFSeekDataVF(file, offset, seek) :
                                        CDBFSeekDataSD(file, offset, seek);
}

s32 CDBFTellData(CDBBridgeFile* file, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFTellDataVF(file) :
                                        CDBFTellDataSD(file);
}

CDBErr CDBFGetDataSize(CDBBridgeFile* file, u32* dataSize, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFGetDataSizeVF(file, dataSize) :
                                        CDBFGetDataSizeSD(file, dataSize);
}

CDBErr CDBFGetFileSize(CDBBridgeFile* file, u32* fileSize, CDBLocation type) {
    return type == CDB_FS_LOCATION_NAND ? CDBFGetFileSizeVF(file, fileSize) :
                                        CDBFGetFileSizeSD(file, fileSize);
}
