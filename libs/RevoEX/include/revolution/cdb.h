#ifndef REVOLUTION_CDB_H
#define REVOLUTION_CDB_H

#include <revolution/types.h>

#include <revolution/cdb/CDBTypes.h>

#include <revolution/cdb/CDBDatabase.h>
#include <revolution/cdb/CDBRecord.h>

#include <revolution/cdb/CDBFileSystem.h>
#include <revolution/cdb/CDBFileSystemSD.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

CDBErr  CDBInitHashedMacAddr();

CDBErr  CDBInit(void* work);
CDBErr  CDBInitEx(void* work, int unk0, int unk1);

CDBErr  CDBUninit();

s32     CDBGetFreeSize();

s32     CDBGetLastNANDError();

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_H
