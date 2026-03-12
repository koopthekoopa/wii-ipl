#ifndef TEXTINPUT_UTIL_H
#define TEXTINPUT_UTIL_H

#include <revolution/types.h>

#include <nw4r/ut/Rect.h>

namespace textinput {
    namespace util {
        wchar_t toWLower(wchar_t ch);
        wchar_t toWUpper(wchar_t ch);

        wchar_t reverseLetterCaseW(wchar_t ch);

        wchar_t KBD_ConvertDakuten(wchar_t ch);
        wchar_t KBD_ConvertHandaku(wchar_t ch);
        wchar_t KBD_ConvertSmall(wchar_t ch);
        wchar_t KBD_ConvertAll(wchar_t ch);

        bool    KBD_IsDakuten(wchar_t ch);
        bool    KBD_IsHandaku(wchar_t ch);
        bool    KBD_IsSmall(wchar_t ch);

        bool    strcmp(const char* s1, const char* s2);
        void    replaceChar(char* dest, u32 destLen, const char* src, int replaceIdx, char newCh);
        bool    isAlphabet(wchar_t ch);

        f32     hermiteInterporation(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
    
        void    getProjectionRect4x3(nw4r::ut::Rect* rect);
        void    getProjectionRect16x9(nw4r::ut::Rect* rect);
    }
}

#endif // TEXTINPUT_UTIL_H
