#ifndef TEXTINPUT_UTIL_H
#define TEXTINPUT_UTIL_H

#include <revolution/types.h>

namespace textinput {
    namespace util {
        bool    toWLower(wchar_t ch);
        bool    toWUpper(wchar_t ch);

        f32     hermiteInterporation(f32, f32, f32, f32, f32, f32, f32);
    }
}

#endif // TEXTINPUT_UTIL_H
