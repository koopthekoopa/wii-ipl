#ifndef PRIVATE_CDB_WORK_H
#define PRIVATE_CDB_WORK_H

#include <revolution/types.h>
#include <revolution/cdb/CDBDatabase.h>
#include <revolution/cdb/CDBRecord.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef struct _CDBDatabasePool {
    u8  unk_0x00[0x14000];
} CDBDatabasePool;

typedef struct _CDBDatabaseInstance {
    u8  unk_0x00[0x3600];
} _CDBDatabaseInstance;

void    CDBDatabaseInstancePoolInit(void* work);

CDBErr  CDBDatabasePrivateCreateRecordAtOnce(CDBDatabase* database, CDBRecord* record, const char* typeStr, const char* fileTypeStr, u8* recordData, u32 recordDataSize, char* makerCodeStr, char* gameCodeStr);
CDBErr  CDBDatabasePrivateCreateRecordAtOnceEx(CDBDatabase* database, CDBRecord* record, const char* typeStr, const char* fileTypeStr, int year, int month, int day, int hour, int min, int sec, u8* recordData, u32 recordDataSize, char* makerCode, char* gameCode);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_WORK_H
