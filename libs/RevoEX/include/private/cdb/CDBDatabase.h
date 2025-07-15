#ifndef PRIVATE_CDB_WORK_H
#define PRIVATE_CDB_WORK_H

#include <revolution/types.h>

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

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_WORK_H
