#ifndef NW4R_UT_ARCHIVE_FONT_H
#define NW4R_UT_ARCHIVE_FONT_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        namespace detail {
            class ArchiveFontBase {
                protected:
                    u8 dummy[0x1c];

                    static const char LOAD_GLYPH_ALL[1];
            };
        };

        class ArchiveFont : public detail::ArchiveFontBase {
            public:
                ArchiveFont();

                static u32  GetRequireBufferSize(const void* param_1, const char* param_2 = LOAD_GLYPH_ALL);

                bool        Construct(void* param_1, u32 param_2, const void* param_3, const char* param_4 = LOAD_GLYPH_ALL);
        };
    }
}

#endif // NW4R_UT_ARCHIVE_FONT_H
