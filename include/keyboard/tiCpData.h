#ifndef TEXTINPUT_CELLPHONE_DATA_H
#define TEXTINPUT_CELLPHONE_DATA_H

#include <revolution/types.h>

namespace textinput {
    // I don't get why this is here.
    namespace util {
        enum {
            ALPHABET_MAP_LOWER = 0,
            ALPHABET_MAP_UPPER,
            ALPHABET_MAP_MAX,
        };
        extern const wchar_t*   s_alphabet_map[/*ALPHABET_MAP_MAX*/];
    }
}

#endif // TEXTINPUT_CELLPHONE_DATA_H
