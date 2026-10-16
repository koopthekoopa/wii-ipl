#ifndef MSL_INTERNAL_LOCALE_H
#define MSL_INTERNAL_LOCALE_H

#ifdef __cplusplus
extern "C" {
#endif

#include <wchar.h>

typedef int (*__decode_mbyte)(wchar_t*, const char*, size_t);
typedef int (*__encode_mbyte)(char*, wchar_t);

struct lconv {
    char* decimal_point;      // 0x00
    char* thousands_sep;      // 0x04
    char* grouping;           // 0x08
    char* mon_decimal_point;  // 0x0C
    char* mon_thousands_sep;  // 0x10
    char* mon_grouping;       // 0x14
    char* positive_sign;      // 0x18
    char* negative_sign;      // 0x1C
    char* currency_symbol;    // 0x20
    char frac_digits;         // 0x24
    char p_cs_precedes;       // 0x25
    char n_cs_precedes;       // 0x26
    char p_sep_by_space;      // 0x27
    char n_sep_by_space;      // 0x28
    char p_sign_posn;         // 0x29
    char n_sign_posn;         // 0x2A
    char* int_curr_symbol;    // 0x2C
    char int_frac_digits;     // 0x30
    char int_p_cs_precedes;   // 0x31
    char int_n_cs_precedes;   // 0x32
    char int_p_sep_by_space;  // 0x33
    char int_n_sep_by_space;  // 0x34
    char int_p_sign_posn;     // 0x35
    char int_n_sign_posn;     // 0x36
};

struct _loc_mon_cmpt {
    char CmptName[8];         // 0x00
    char* mon_decimal_point;  // 0x08
    char* mon_thousands_sep;  // 0x0C
    char* mon_grouping;       // 0x10
    char* positive_sign;      // 0x14
    char* negative_sign;      // 0x18
    char* currency_symbol;    // 0x1C
    char frac_digits;         // 0x20
    char p_cs_precedes;       // 0x21
    char n_cs_precedes;       // 0x22
    char p_sep_by_space;      // 0x23
    char n_sep_by_space;      // 0x24
    char p_sign_posn;         // 0x25
    char n_sign_posn;         // 0x26
    char* int_curr_symbol;    // 0x28
    char int_frac_digits;     // 0x2C
    char int_p_cs_precedes;   // 0x2D
    char int_n_cs_precedes;   // 0x2E
    char int_p_sep_by_space;  // 0x2F
    char int_n_sep_by_space;  // 0x30
    char int_p_sign_posn;     // 0x31
    char int_n_sign_posn;     // 0x32
};

struct _loc_num_cmpt {
    char CmptName[8];     // 0x00
    char* decimal_point;  // 0x08
    char* thousands_sep;  // 0x0C
    char* grouping;       // 0x10
};

struct _loc_time_cmpt {
    char CmptName[8];              // 0x00
    const char* am_pm;             // 0x08
    const char* DateTime_Format;   // 0x0C
    const char* Twelve_hr_format;  // 0x10
    const char* Date_Format;       // 0x14
    const char* Time_Format;       // 0x18
    const char* Day_Names;         // 0x1C
    const char* MonthNames;        // 0x20
    char* TimeZone;                // 0x24
};

struct _loc_coll_cmpt {
    char name[8];                         // 0x00
    int char_start;                       // 0x08
    int char_coll_tab_size;               // 0x0C
    short char_spec;                      // 0x10
    unsigned short* char_coll_table_ptr;  // 0x14
    unsigned short* wchar_coll_seq_ptr;   // 0x18
};

struct _loc_ctype_cmpt {
    char name[8];                          // 0x00
    const unsigned short* ctype_map_ptr;   // 0x08
    const unsigned char* upper_map_ptr;    // 0xC
    const unsigned char* lower_map_ptr;    // 0x10
    const unsigned short* wctype_map_ptr;  // 0x14
    const wchar_t* wupper_map_ptr;         // 0x18
    const wchar_t* wlower_map_ptr;         // 0x1C
    __decode_mbyte decode_mb;              // 0x20
    __encode_mbyte encode_wc;              // 0x24
};

struct __locale {
    struct __locale* next_locale;            // 0x00
    char name[0x30];                         // 0x04
    struct _loc_coll_cmpt* coll_cmpt_ptr;    // 0x34
    struct _loc_ctype_cmpt* ctype_cmpt_ptr;  // 0x38
    struct _loc_mon_cmpt* mon_cmpt_ptr;      // 0x3C
    struct _loc_num_cmpt* num_cmpt_ptr;      // 0x40
    struct _loc_time_cmpt* time_cmpt_ptr;    // 0x44
};

extern struct __locale _current_locale;
extern struct lconv __lconv;

#ifdef __cplusplus
}
#endif

#endif  // MSL_INTERNAL_LOCALE_H
