#ifndef MSL_INTERNAL_TM_STRUCT_H
#define MSL_INTERNAL_TM_STRUCT_H

#include <stddef.h>
#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct tm {
    int         tm_sec;
    int         tm_min;
    int         tm_hour;
    int         tm_mday;
    int         tm_mon;
    int         tm_year;
    int         tm_wday;
    int         tm_yday;
    int         tm_isdst;

    long int    __tm_gmtoff;
    const char* __tm_zone;
} tm;

#ifdef __cplusplus
}
#endif

#endif // MSL_INTERNAL_TM_STRUCT_H
