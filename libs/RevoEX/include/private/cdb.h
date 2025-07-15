#ifndef PRIVATE_CDB_H
#define PRIVATE_CDB_H

#include <revolution/cdb/CDBTypes.h>

#include <private/cdb/CDBConfig.h>
#include <private/cdb/CDBUtils.h>

#include <private/cdb/CDBReport.h>
#include <private/cdb/CDBDatabase.h>

#include <private/cdb/CDBFileSystem.h>
#include <private/cdb/CDBBridge.h>

#include <private/cdb/CDBConv.h>

#include <private/cdb/CDBAttr.h>
#include <private/cdb/CDBRecord.h>

#include <private/cdb/CDBCrypt.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

void    MutexInitialized();

CDBErr  _CDBOnVFErrorOccured(s32 vfError, const char* unused0, u32 unused1);
#define CDBOnVFErrorOccured(vfError)        _CDBOnVFErrorOccured(vfError, "", 0)

CDBErr  _CDBOnNANDErrorOccured(s32 nandError, const char* unused0, u32 unused1);
#define CDBOnNANDErrorOccured(nandError)    _CDBOnNANDErrorOccured(nandError, "", 0)

void    CDBSetFatalVFErrorFlag();

CDBErr  CDBSetVFSyncMode(int sync);
CDBErr  CDBVFSync();

CDBErr  CDBInitHashedMacAddr();

u64     CDBGetWiiId();

u32     CDBGetWiiHighId();
u32     CDBGetWiiLowId();

u32     CDBGetWiiHighIdEx(u64 wiiId);
u32     CDBGetWiiLowIdEx(u64 wiiId);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_H
