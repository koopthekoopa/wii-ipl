#ifndef REVOLUTION_CDB_DATABASE_H
#define REVOLUTION_CDB_DATABASE_H

#include <revolution/types.h>

#include <revolution/cdb/CDBTypes.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

void    CDBDatabaseInstancePoolInit(void* work);

CDBErr  CDBDatabaseCheckOpenRecord();
CDBErr  CDBDatabaseCheckOpenDatabase();

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_DATABASE_H
