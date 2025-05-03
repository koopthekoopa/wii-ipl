#ifndef NW4R_UT_CHAR_STREAM_READER_H
#define NW4R_UT_CHAR_STREAM_READER_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        class CharStrmReader {
            public:
                typedef u16 (CharStrmReader::*ReadRoutine)();

                explicit CharStrmReader(ReadRoutine func) : mCharStrm(NULL), mReadFunc(func) {}

                template<typename T> T GetChar(int offset) const {
                    const T* charStrm = reinterpret_cast<const T*>(mCharStrm);
                    return *(charStrm + offset);
                }

                template<typename T> void StepStrm(int step) {
                    const T*& charStrm = reinterpret_cast<const T*&>(mCharStrm);
                    charStrm += step;
                }

                u16 ReadNextCharUTF8();
                u16 ReadNextCharUTF16();
                u16 ReadNextCharCP1252();
                u16 ReadNextCharSJIS();

                const void*         mCharStrm;  // 0x00
                const ReadRoutine   mReadFunc;  // 0x04
        };
    }
}

#endif // NW4R_UT_CHAR_STREAM_READER_H
