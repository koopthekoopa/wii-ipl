#ifndef REVOLUTION_CDB_TYPES_H
#define REVOLUTION_CDB_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef u32 CDBDate;

typedef enum CDBErr {
    CDB_ERROR_OK                = 0,
    CDB_ERROR_1                 = 2,
    CDB_ERROR_2                 = 2,
    CDB_ERROR_5                 = 5,
    CDB_ERROR_INVALID_ATTR_BUF  = 6,
    CDB_ERROR_READ_LENGTH_WRONG = 8,
    CDB_ERROR_SD_IS_MOUNTED     = 10,
    CDB_ERROR_SD_IS_NOT_MOUNTED = 11,
    CDB_ERROR_VF_ERROR          = 12,
    CDB_ERROR_NAND_ERROR        = 13,
    CDB_ERROR_OUT_OF_RANGE      = 15,
    CDB_ERROR_16                = 16,
    CDB_ERROR_CRYPT_ALLOC_FAIL  = 22,
    CDB_ERROR_OUT_OF_SPACE      = 23,
    CDB_ERROR_VF_INIT_FAIL      = 24,
    CDB_ERROR_27                = 27,
    CDB_ERROR_ACCESS_DENIED     = 29,
    CDB_ERROR_FILE_EXISTS       = 30,
    CDB_ERROR_SD_EJECTED        = 31,
    CDB_ERROR_CANNOT_OPEN_FILE  = 35,
    CDB_ERROR_FATAL_ERROR       = 36
} CDBErr;

typedef enum _CDBVerboseLevel {
    CDB_VERBOSE_LEVEL_NONE = 0,
    CDB_VERBOSE_LEVEL_FATAL,
    CDB_VERBOSE_LEVEL_ERROR,
    CDB_VERBOSE_LEVEL_WARN,
    CDB_VERBOSE_LEVEL_INFO,
    CDB_VERBOSE_LEVEL_ALL = CDB_VERBOSE_LEVEL_INFO
} CDBVerboseLevel;

typedef enum _CDBLocation {
    CDB_FS_LOCATION_VF = 1,
    CDB_FS_LOCATION_SD,
    CDB_FS_LOCATION_3,
    CDB_FS_LOCATION_4,
} CDBLocation;

typedef enum _CDBSeek {
    CDB_SEEK_CUR = 0,
    CDB_SEEK_BEGIN,
    CDB_SEEK_END
} CDBSeek;

typedef struct _CDBId {
    u32 num;    // 0x00
} CDBId;

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_TYPES_H
