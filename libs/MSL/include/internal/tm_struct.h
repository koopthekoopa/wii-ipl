#ifndef MSL_INTERNAL_TM_STRUCT_H
#define MSL_INTERNAL_TM_STRUCT_H

#include <stddef.h>
#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct tm {
    int tm_sec;    // 0x00
    int tm_min;    // 0x04
    int tm_hour;   // 0x08
    int tm_mday;   // 0x0C
    int tm_mon;    // 0x10
    int tm_year;   // 0x14
    int tm_wday;   // 0x18
    int tm_yday;   // 0x1C
    int tm_isdst;  // 0x20
} tm;

#ifdef __cplusplus
}
#endif

#endif  // MSL_INTERNAL_TM_STRUCT_H
