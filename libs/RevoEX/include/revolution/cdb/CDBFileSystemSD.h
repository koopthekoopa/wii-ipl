#ifndef REVOLUTION_CDB_FILE_SYSTEM_SD_H
#define REVOLUTION_CDB_FILE_SYSTEM_SD_H

#include <revolution/types.h>

#include <revolution/cdb/CDBTypes.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

CDBErr  CDBFSSDInit();
BOOL    CDBFSSDIsMounted();

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_FILE_SYSTEM_SD_H
