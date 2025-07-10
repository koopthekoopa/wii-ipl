#ifndef REVOLUTION_CDB_TYPES_H
#define REVOLUTION_CDB_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef enum CDBErr {
    CDB_ERROR_OK = 0,
    CDB_ERROR_SD_IS_MOUNTED = 10,
    CDB_ERROR_13 = 13,
    CDB_ERROR_VF_INIT_FAIL = 24,
    CDB_ERROR_FATAL_ERROR = 36 // ?
} CDBErr;

typedef struct _CDBRecord {
    u32 dummy[4];   // 0x00
} CDBRecord;

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_TYPES_H
