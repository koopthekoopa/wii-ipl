#ifndef MSL_WCTYPE_H
#define MSL_WCTYPE_H

#include <ctype.h>
#include <internal/locale.h>

#ifdef __cplusplus
extern "C" {
#endif

inline int iswalpha(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISALPHA_MAP);
}

inline int iswblank(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISBLANK_MAP);
}

inline int iswcntrl(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISCNTRL_MAP);
}

inline int iswdigit(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISDIGIT_MAP);
}

inline int iswgraph(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISGRAPH_MAP);
}

inline int iswlower(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISLOWER_MAP);
}

inline int iswprint(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISPRINT_MAP);
}

inline int iswpunct(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISPUNCT_MAP);
}

inline int iswspace(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISSPACE_MAP);
}

inline int iswupper(wchar_t x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISUPPER_MAP);
}

inline int iswxdigit(int x) {
    return (x < 0 || x >= 256) ? 0 : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x] & __MSL_ISXDIGIT_MAP);
}

inline int towlower(int x) {
    return (x < 0 || x >= 256) ? x : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x]);
}

inline int towupper(int x) {
    return (x < 0 || x >= 256) ? x : (_current_locale.ctype_cmpt_ptr->wctype_map_ptr[x]);
}

#ifdef __cplusplus
}
#endif

#endif  // MSL_WCTYPE_H
