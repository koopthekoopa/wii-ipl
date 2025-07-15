#ifndef REVOLUTION_CDB_H
#define REVOLUTION_CDB_H

#include <revolution/types.h>

#include <revolution/cdb/CDBTypes.h>

#include <revolution/cdb/CDBDate.h>
#include <revolution/cdb/CDBDatabase.h>
#include <revolution/cdb/CDBRecord.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#define CDB_DATABASE_POOL_SIZE  0x18030
#define CDB_RECORD_POOL_SIZE    0x61D0
#define CDB_CRYPT_BUF_SIZE      0x3EC40

#define CDB_SYSTEM_WORK_SIZE     (CDB_DATABASE_POOL_SIZE    \
                                + CDB_RECORD_POOL_SIZE      \
                                + CDB_CRYPT_BUF_SIZE)       \

CDBErr  CDBInit(void* work);
CDBErr  CDBInitEx(void* work, void* fsCacheBuffer, u32 fsCacheSize);

CDBErr  CDBUninit();

s32     CDBGetFreeSize();

s32     CDBGetLastNANDError();
s32     CDBGetLastVFError();

static inline void CDBSetVerboseLevel(CDBVerboseLevel verbose) {
    extern s32 CDBPrintDebugLevel;
    CDBPrintDebugLevel = (s32)verbose;
}

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_H
