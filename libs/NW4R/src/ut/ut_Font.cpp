#include <nw4r/ut/Font.h>
#include <nw4r/ut/CharStrmReader.h>

namespace nw4r {
    namespace ut {
        void Font::InitReaderFunc(FontEncoding encoding) {
            switch (encoding) {
                case FONT_ENCODING_UTF8: {
                    mReaderFunc = &CharStrmReader::ReadNextCharUTF8;
                    break;
                }
                case FONT_ENCODING_UTF16: {
                    mReaderFunc = &CharStrmReader::ReadNextCharUTF16;
                    break;
                }
                case FONT_ENCODING_SJIS: {
                    mReaderFunc = &CharStrmReader::ReadNextCharSJIS;
                    break;
                }
                case FONT_ENCODING_CP1252:
                default: {
                    mReaderFunc = &CharStrmReader::ReadNextCharCP1252;
                    break;
                }
            }
        }
    }
}
