#ifndef IPL_UTILITY_CHARACTER_CODE_H
#define IPL_UTILITY_CHARACTER_CODE_H

#include <revolution/types.h>

namespace ipl {
    namespace utility {
        class CharacterCode {
                public:
                static void shiftJISToUTF16(wchar_t* dest, const u8* src, s32 length);

                static void ANSIToUTF16(wchar_t* dest, const u8* src, s32 length);
                static void UTF16ToANSI(u8* dest, const wchar_t* src, s32 length);

                static void UTF8ToUTF16(wchar_t* dest, const char* src, s32 length);
                static void UTF16ToUTF8(char* dest, const wchar_t* src, s32 length);

                static void ANSIToUTF8(char* dest, const u8* src);
                static void ANSIToUTF8(char* dest, const u8* src, int);
                static void UTF8ToANSI(char* dest, const u8* src);

                static void UTF16ToU32(u32* dest, const wchar_t* src);
                static void WiiIdToUTF16(wchar_t* dest, u64 wiiId);

                static void changeEndian(wchar_t* dest, int endian);
        };
    }
}

#endif // IPL_UTILITY_CHARACTER_CODE_H
