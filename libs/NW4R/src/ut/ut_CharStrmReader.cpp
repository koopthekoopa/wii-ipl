#include <nw4r/ut/CharStrmReader.h>

namespace nw4r {
    namespace ut {
        inline bool IsSJISLeadByte(u8 ch) {
            return (ch >= 0x81 && ch < 0xA0) || ch >= 0xE0;
        }

        u16 CharStrmReader::ReadNextCharUTF8() {
            u16 code;

            if ((GetChar<u8>(0) & 0x80) == 0x00) {
                code = GetChar<u8>(0);
                StepStrm<u8>(1);
            }
            else if ((GetChar<u8>(0) & 0xE0) == 0xC0) {
                code = (GetChar<u8>(0) & 0x1F) << 6 | (GetChar<u8>(1) & 0x3F);
                StepStrm<u8>(2);
            }
            else {
                code = (GetChar<u8>(0) & 0x1F) << 12 | (GetChar<u8>(1) & 0x3F) << 6 | (GetChar<u8>(2) & 0x3F);
                StepStrm<u8>(3);
            }

            return code;
        }

        u16 CharStrmReader::ReadNextCharUTF16() {
            u16 code = GetChar<u16>(0);
            StepStrm<u16>(1);

            return code;
        }

        u16 CharStrmReader::ReadNextCharCP1252() {
            u16 code = GetChar<u8>(0);
            StepStrm<u8>(1);

            return code;
        }

        u16 CharStrmReader::ReadNextCharSJIS() {
            u16 code;

            if (IsSJISLeadByte(GetChar<u8>(0))) {
                code = GetChar<u8>(0) << 8 | GetChar<u8>(1);
                StepStrm<u8>(2);
            }
            else {
                code = GetChar<u8>(0);
                StepStrm<u8>(1);
            }

            return code;
        }
    }
}
