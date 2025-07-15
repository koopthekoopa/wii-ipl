#ifndef PRIVATE_CDB_RECORD_H
#define PRIVATE_CDB_RECORD_H

#include <revolution/types.h>
#include <private/cdb/CDBAttr.h>
#include <private/cdb/CDBBridge.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef struct _CDBRecordFile {
    u8              unk_0x00[0x1C - 0x00];
    int             unk_0x1C;
    CDBAttr         attr;       // 0x20
    CDBBridgeFile   bridgeFile; // 0x42C
    u8              unk_0x434[0x438 - 0x434];
    CDBRecordKey    key;        // 0x438
    u8              unk_0x468[0x480 - 0x468];
} CDBRecordFile;

enum {
    CDB_RECORD_ALLOC_READ = (1 << 0),
    CDB_RECORD_ALLOC_WRITE = (1 << 1),
    CDB_RECORD_ALLOC_RW = CDB_RECORD_ALLOC_READ | CDB_RECORD_ALLOC_WRITE
};

/* RECORD POOL */

CDBErr  CDBRecordPoolInit(void* work);

/* RECORD */

CDBErr  CDBRecordAllocate(CDBRecord* record, int flag);
CDBErr  CDBRecordFree(CDBRecord* record);

/* RECORD KEY */

BOOL    CDBRecordKeyIsValid(CDBRecordKey* recordKey);

void    CDBRecordKeyInitByOnlyDate(CDBRecordKey* recordKey, CDBDate epoch);
void    CDBRecordKeyInitFromFileName2(CDBRecordKey* recordKey, char* keyString, char* gameCode, char* fileType);
void    CDBRecordKeyInit(CDBRecordKey* recordKey, CDBDate epoch, int gameCode, u16 makerCode, int serialNumber, char* fileType, int unk);

void    CDBRecordKeyGetKeyStr(CDBRecordKey* recordKey, char* keyString);

void    CDBRecordKeySetSerialNumber(CDBRecordKey* recordKey, int serialNum);

void    CDBRecordKeyCopy(CDBRecordKey* recordKey, CDBRecordKey* newRecordKey);

BOOL    CDBRecordKeyCompare(CDBRecordKey* recordKey1, CDBRecordKey* recordKey2);
int     CDBRecordKeyCompareByDate(CDBRecordKey* recordKey1, CDBRecordKey* recordKey2);

/* RECORD FILE */

CDBErr  CDBRecordFileReadAttrBuf(CDBRecord* record);
CDBErr  CDBRecordFileWriteAttrBuf(CDBRecord* record);

CDBErr  CDBRecordFileCreateBlank(CDBRecord* record);
CDBErr  CDBRecordFileCreateAtOnce(CDBRecord* record, void* buffer, u32 size);

CDBErr  CDBRecordFileDelete(CDBRecord* record);

CDBErr  CDBRecordFileDump(CDBRecord* record, void* buffer, u32 size);

CDBErr  CDBRecordFileOpen(CDBRecord* record, char* fileName, int allocFlag);
CDBErr  CDBRecordFileClose(CDBRecord* record);

CDBErr  CDBRecordFileGetFileSize(CDBRecord* record, u32* fileSize);
CDBErr  CDBRecordFileGetDataSize(CDBRecord* record, u32* dataSize);

CDBErr  CDBRecordFileWriteData(CDBRecord* record, void* buffer, u32 size);

CDBErr  CDBRecordFileReadData(CDBRecord* record, void* buffer, u32 size, u32* readSize);
CDBErr  CDBRecordFileReadDataFile(CDBRecord* record, void* buffer, u32 size, u32* readSize);

CDBErr  CDBRecordFileSeekData(CDBRecord* record, u32 offset, CDBSeek seek);
CDBErr  CDBRecordFileSeekDataFile(CDBRecord* record, u32 offset, CDBSeek seek);

int     CDBRecordFileTellData(CDBRecord* record);
int     CDBRecordFileTellDataFile(CDBRecord* record);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_RECORD_H
