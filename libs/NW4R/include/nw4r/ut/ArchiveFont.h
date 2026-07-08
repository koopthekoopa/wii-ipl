#ifndef NW4R_UT_ARCHIVE_FONT_H
#define NW4R_UT_ARCHIVE_FONT_H

#include "nw4r/ut/ArchiveFontBase.h"

namespace nw4r {
    namespace ut {
        class ArchiveFont : public detail::ArchiveFontBase {
        public:
            ArchiveFont();
            virtual ~ArchiveFont();

            static u32 GetRequireBufferSize(const void* fontData, const char* includedGroups = LOAD_GLYPH_ALL);

            virtual void GetGlyph(Glyph* glyph, u16 c) const;
            void GetGlyphFromRealIndex(FontTextureGlyph& tg, Glyph* glyph, u16 index, u16 realIndex) const;
            void GetGlyphFromIndex(Glyph* glyph, u16 index) const;

            detail::ArchiveFontBase::ConstructState StreamingConstruct(ArchiveFontBase::ConstructContext* ctx, const void* fontData,
                                                                       u32 fontDataSize);
            bool Construct(void* work, u32 workSize, const void* fontData, const char* includedGroups = LOAD_GLYPH_ALL);
        };
    }  // namespace ut
}  // namespace nw4r

#endif  // NW4R_UT_ARCHIVE_FONT_H
