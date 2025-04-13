#ifndef REVOLUTION_CDB_TYPES_H
#define REVOLUTION_CDB_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef enum CDBErr {
    CDB_ERROR_OK = 0,
    CDB_ERROR_SD_IS_MOUNTED = 10,
    CDB_ERROR_VF_INIT_FAIL = 24,
} CDBErr;

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_TYPES_H
