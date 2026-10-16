#ifndef MSL_INTERNAL_FORMAT_H
#define MSL_INTERNAL_FORMAT_H

#include <stddef.h>
#include <wchar.h>

typedef signed long long intmax_t;
typedef long ptrdiff_t;

enum justification_options {
    left_justification,
    right_justification,
    zero_fill
};

enum sign_options {
    only_minus,
    sign_always,
    space_holder
};

enum argument_options {
    normal_argument,
    char_argument,
    short_argument,
    long_argument,
    long_long_argument,
    wchar_argument,
    intmax_argument,
    size_t_argument,
    ptrdiff_argument,
    long_double_argument
};

typedef struct {
    unsigned char justification_options;  // 0x00
    unsigned char sign_options;           // 0x01
    unsigned char precision_specified;    // 0x02
    unsigned char alternate_form;         // 0x03
    unsigned char argument_options;       // 0x04
    unsigned char conversion_char;        // 0x05
    int field_width;                      // 0x08
    int precision;                        // 0x0C
} print_format;

typedef struct {
    unsigned char justification_options;  // 0x00
    unsigned char sign_options;           // 0x01
    unsigned char precision_specified;    // 0x02
    unsigned char alternate_form;         // 0x03
    unsigned char argument_options;       // 0x04
    wchar_t conversion_char;              // 0x06
    int field_width;                      // 0x08
    int precision;                        // 0x0C
} wprint_format;

#endif  // MSL_INTERNAL_FORMAT_H
