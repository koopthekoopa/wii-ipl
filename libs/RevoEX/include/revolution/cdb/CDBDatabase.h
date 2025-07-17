#ifndef REVOLUTION_CDB_DATABASE_H
#define REVOLUTION_CDB_DATABASE_H

#include <revolution/types.h>

#include <revolution/cdb/CDBTypes.h>
#include <revolution/cdb/CDBRecord.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef struct _CDBDatabase {
    u16     makerCode;  // 0x00
    u32     gameCode;   // 0x04
    void*   instance;   // 0x08
} CDBDatabase;

typedef enum CDBSearchDirection {
    CDB_SEARCH_DIRECTION_0 = 0,
    CDB_SEARCH_DIRECTION_1,
} CDBSearchDirection;

#define CDB_RECORD_BUFFER_SIZE  0x400

typedef int (CDBSearchRecordCB)(void*, CDBRecord*);

CDBErr  CDBDatabaseInit(CDBDatabase* database);

CDBErr  CDBDatabaseOpen(CDBDatabase* database);
CDBErr  CDBDatabaseClose(CDBDatabase* database);

CDBErr  CDBDatabaseCheckOpenRecord();
CDBErr  CDBDatabaseCheckOpenDatabase();

CDBErr  CDBDatabaseCreateRecordAtOnce(CDBDatabase* database, CDBRecord* record, const char* typeStr, const char* fileTypeStr, u8* recordData, u32 recordDataSize);
CDBErr  CDBDatabaseCreateRecordAtOnceEx(CDBDatabase* database, CDBRecord* record, const char* typeStr, const char* fileTypeStr, u8* recordData, u32 recordDataSize, int year, int month, int day, int hour, int min, int sec);

CDBErr  CDBDatabaseFindByKey(CDBDatabase* database, CDBRecord* record, CDBRecordKey* recordKey);

CDBErr  CDBDatabaseSearch(CDBDatabase* database, u32 unk2, u32 unk3, CDBSearchDirection searchDirection, char* makerCode, char* gameCode, int unk7, CDBRecordLocation recordLocation, int unk9, CDBSearchRecordCB searchRecordCB, void* unk11);

CDBErr  CDBDatabaseCleanUpEmptyDirectories(CDBDatabase* database, CDBRecordLocation recordLocation);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_DATABASE_H
