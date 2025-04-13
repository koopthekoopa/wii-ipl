#ifndef REVOLUTION_CDB_FILE_SYSTEM_H
#define REVOLUTION_CDB_FILE_SYSTEM_H

#include <revolution/types.h>

#include <revolution/cdb/CDBTypes.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

CDBErr  CDBFSInit(int unk0, int unk1);
CDBErr  CDBFSUninit();

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_FILE_SYSTEM_SD_H
