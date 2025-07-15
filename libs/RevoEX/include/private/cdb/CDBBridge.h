#ifndef PRIVATE_CDB_BRIDGE_H
#define PRIVATE_CDB_BRIDGE_H

#include <revolution/cdb/CDBTypes.h>
#include <private/cdb/CDBAttr.h>

#include <revolution/vf.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef struct _CDBBridgeFile {
    VFFILE* vf; // 0x00
    VFFILE* sd; // 0x04
} CDBBridgeFile;

/* ===  VF API  === */

CDBErr  CDBFCreateFileVF(CDBBridgeFile* file, const char* fileName);
CDBErr  CDBFDeleteFileVF(const char* fileName);

CDBErr  CDBFCreateDirVF(const char* dirName);

CDBErr  CDBFOpenVF(CDBBridgeFile* file, const char* fileName);
CDBErr  CDBFCloseVF(CDBBridgeFile* file);

CDBErr  CDBFReadAttrVF(CDBBridgeFile* file, CDBAttr* attr);

CDBErr  CDBFWriteAttrVF(CDBBridgeFile* file, CDBAttr* attr);
CDBErr  CDBFWriteAttrOnlyLeadChunkVF(CDBBridgeFile* file, CDBAttr* attr);

CDBErr  CDBFReadDataVF(CDBBridgeFile* file, void* buffer, u32 size, u32* readSize);
CDBErr  CDBFWriteDataVF(CDBBridgeFile* file, void* buffer, u32 size);

CDBErr  CDBFSeekDataVF(CDBBridgeFile* file, u32 offset, CDBSeek seek);
s32     CDBFTellDataVF(CDBBridgeFile* file);

CDBErr  CDBFGetDataSizeVF(CDBBridgeFile* file, u32* dataSize);
CDBErr  CDBFGetFileSizeVF(CDBBridgeFile* file, u32* fileSize);

/* ===  SD API  === */

CDBErr  CDBFCreateFileSD(CDBBridgeFile* file, const char* fileName);
CDBErr  CDBFDeleteFileSD(const char* fileName);

CDBErr  CDBFCreateDirSD(const char* dirName);

CDBErr  CDBFOpenSD(CDBBridgeFile* file, const char* fileName);
CDBErr  CDBFCloseSD(CDBBridgeFile* file);

CDBErr  CDBFReadAttrSD(CDBBridgeFile* file, CDBAttr* attr);

CDBErr  CDBFWriteAttrSD(CDBBridgeFile* file, CDBAttr* attr);
CDBErr  CDBFWriteAttrOnlyLeadChunkSD(CDBBridgeFile* file, CDBAttr* attr);

CDBErr  CDBFReadDataSD(CDBBridgeFile* file, void* buffer, u32 size, u32* readSize);
CDBErr  CDBFWriteDataSD(CDBBridgeFile* file, void* buffer, u32 size);

CDBErr  CDBFSeekDataSD(CDBBridgeFile* file, u32 offset, CDBSeek seek);
s32     CDBFTellDataSD(CDBBridgeFile* file);

CDBErr  CDBFGetDataSizeSD(CDBBridgeFile* file, u32* dataSize);
CDBErr  CDBFGetFileSizeSD(CDBBridgeFile* file, u32* fileSize);

/* === MAIN API === */

CDBErr  CDBFCreateFile(CDBBridgeFile* file, const char* fileName, CDBLocation type);
CDBErr  CDBFDeleteFile(const char* fileName, CDBLocation type);

CDBErr  CDBFCreateDir(const char* dirName, CDBLocation type);

CDBErr  CDBFOpen(CDBBridgeFile* file, const char* fileName, CDBLocation type);
CDBErr  CDBFClose(CDBBridgeFile* file, CDBLocation type);

CDBErr  CDBFReadAttr(CDBBridgeFile* file, CDBAttr* attr, CDBLocation type);

CDBErr  CDBFWriteAttr(CDBBridgeFile* file, CDBAttr* attr, CDBLocation type);
CDBErr  CDBFWriteAttrOnlyLeadChunk(CDBBridgeFile* file, CDBAttr* chunk, CDBLocation type);

CDBErr  CDBFReadData(CDBBridgeFile* file, void* buffer, u32 size, u32* readSize, CDBLocation type);
CDBErr  CDBFWriteData(CDBBridgeFile* file, void* buffer, u32 size, CDBLocation type);

CDBErr  CDBFSeekData(CDBBridgeFile* file, u32 offset, CDBSeek seek, CDBLocation type);
s32     CDBFTellData(CDBBridgeFile* file, CDBLocation type);

CDBErr  CDBFGetDataSize(CDBBridgeFile* file, u32* dataSize, CDBLocation type);
CDBErr  CDBFGetFileSize(CDBBridgeFile* file, u32* fileSize, CDBLocation type);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_BRIDGE_H
