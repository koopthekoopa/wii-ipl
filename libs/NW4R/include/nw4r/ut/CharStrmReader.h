#ifndef NW4R_UT_CHAR_STREAM_READER_H
#define NW4R_UT_CHAR_STREAM_READER_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        class CharStrmReader {
            public:
                typedef u16 (CharStrmReader::*ReadFunc)();

                CharStrmReader(ReadFunc func) : mCharStrm(NULL), mReadFunc(func) {}

                const void* GetCurrentPos() const       { return mCharStrm; }

                void        Set(const char* stream)     { mCharStrm = stream; }
                void        Set(const wchar_t* stream)  { mCharStrm = stream; }

                u16         ReadNextCharUTF8();
                u16         ReadNextCharUTF16();
                u16         ReadNextCharCP1252();
                u16         ReadNextCharSJIS();

                u16         Next()                      { return (this->*mReadFunc)(); }

                template<typename T> T GetChar(int offset) const {
                    const T* const charStrm = static_cast<const T* const>(mCharStrm);
                    return charStrm[offset];
                }

                template<typename T> void StepStrm(int step) {
                    const T* &charStrm = *reinterpret_cast<const T**>(&mCharStrm);
                    charStrm += step;
                }

                const void*     mCharStrm;  // 0x00
                const ReadFunc  mReadFunc;  // 0x04
        };
    }
}

#endif // NW4R_UT_CHAR_STREAM_READER_H
