#ifndef MSL_CTYPE_H
#define MSL_CTYPE_H

#include <internal/locale.h>

#ifdef __cplusplus
extern "C" {
#endif

inline int tolower(int x) {
    return (x < 0 || x >= 256)
               ? x
               : (int)(&_current_locale)->ctype_cmpt_ptr->lower_map_ptr[x];
}

inline int toupper(int x) {
    return (x < 0 || x >= 256)
               ? x
               : (int)(&_current_locale)->ctype_cmpt_ptr->upper_map_ptr[x];
}

#ifdef __cplusplus
}
#endif

#endif // MSL_CTYPE_H
