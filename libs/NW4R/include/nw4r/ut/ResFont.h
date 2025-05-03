#ifndef NW4R_UT_RES_FONT_H
#define NW4R_UT_RES_FONT_H

#include <revolution/types.h>

#include <nw4r/ut/Font.h>
#include <nw4r/ut/binaryFileFormat.h>

namespace nw4r {
    namespace ut {
        namespace detail {
            class ResFontBase : public Font {
                public:
                    ResFontBase();
                    virtual ~ResFontBase();

                    virtual int             GetWidth() const;
                    virtual int             GetHeight() const;

                    virtual int             GetAscent() const;
                    virtual int             GetDescent() const;

                    virtual int             GetBaselinePos() const;

                    virtual int             GetCellHeight() const;
                    virtual int             GetCellWidth() const;

                    virtual int             GetMaxCharWidth() const;

                    virtual Type            GetType() const;

                    virtual GXTexFmt        GetTextureFormat() const;

                    virtual int             GetLineFeed() const;

                    virtual CharWidths      GetDefaultCharWidths() const;
                    virtual void            SetDefaultCharWidths(const CharWidths &widths);

                    virtual bool            SetAlternateChar(u16 c);
                    virtual void            SetLineFeed(int linefeed);

                    virtual int             GetCharWidth(u16 c) const;
                    virtual CharWidths      GetCharWidths(u16 c) const;

                    virtual void            GetGlyph(Glyph* glyph, u16 c) const;

                    virtual FontEncoding    GetEncoding() const;

                    void                    SetResourceBuffer(void* pUserBuffer, FontInformation* pFontInfo);

                    u16                     GetGlyphIndex(u16 c) const;
                    const CharWidths&       GetCharWidthsFromIndex(u16 index) const;
                    const CharWidths&       GetCharWidthsFromIndex(const FontWidth* pWidth, u16 index) const;
                    void                    GetGlyphFromIndex(Glyph* glyph, u16 index) const;

                    u16                     FindGlyphIndex(u16 c) const;
                    u16                     FindGlyphIndex(const FontCodeMap* pMap, u16 c) const;

                    bool                    IsManaging(const void* ptr) const  { return mResource == ptr; }

                private:
                    void*               mResource;  // 0x10
                    FontInformation*    mFontInfo;  // 0x14
            };
        }

        class ResFont : public detail::ResFontBase {
            public:
                ResFont();
                virtual ~ResFont();

                bool SetResource(void* brfnt);

                static FontInformation* Rebuild(BinaryFileHeader* fileHeader);
        };
    }
}

#endif // NW4R_UT_RES_FONT_H
