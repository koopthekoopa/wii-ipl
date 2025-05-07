#ifndef NW4R_UT_FONT_H
#define NW4R_UT_FONT_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>

#include <nw4r/ut/CharStrmReader.h>
#include <nw4r/ut/fontResources.h>

namespace nw4r {
    namespace ut {
        typedef enum FontMapMethod {
            FONT_MAP_DIRECT = 0,
            FONT_MAP_TABLE,
            FONT_MAP_SCAN,
        } FontMapMethod;

        typedef enum FontEncoding {
            FONT_ENCODING_UTF8 = 0,
            FONT_ENCODING_UTF16,
            FONT_ENCODING_SJIS,
            FONT_ENCODING_CP1252,

            NUM_OF_FONT_ENCODING
        } FontEncoding;

        class Font {
            public:
                typedef enum Type {
                    TYPE_NULL = 0,
                    TYPE_ROM,
                    TYPE_RESOURCE,
                } Type;

            public:
                Font() : mReaderFunc(&CharStrmReader::ReadNextCharCP1252) {}
                virtual ~Font() {}

                virtual int             GetWidth() const = 0;
                virtual int             GetHeight() const = 0;

                virtual int             GetAscent() const = 0;
                virtual int             GetDescent() const = 0;

                virtual int             GetBaselinePos() const = 0;

                virtual int             GetCellHeight() const = 0;
                virtual int             GetCellWidth() const = 0;

                virtual int             GetMaxCharWidth() const = 0;
                virtual Type            GetType() const = 0;
                virtual GXTexFmt        GetTextureFormat() const = 0;
                virtual int             GetLineFeed() const = 0;

                virtual CharWidths      GetDefaultCharWidths() const = 0;
                virtual void            SetDefaultCharWidths(const CharWidths& widths) = 0;

                virtual bool            SetAlternateChar(u16 c) = 0;

                virtual void            SetLineFeed(int linefeed) = 0;

                virtual int             GetCharWidth(u16 c) const = 0;
                virtual CharWidths      GetCharWidths(u16 c) const = 0;

                virtual void            GetGlyph(Glyph* glyph, u16 c) const = 0;

                virtual FontEncoding    GetEncoding() const = 0;

                void InitReaderFunc(FontEncoding encoding);

                CharStrmReader GetCharStrmReader() const NO_INLINE /* This... isn't right??? */ {
                    return CharStrmReader(mReaderFunc);
                }

            private:
                CharStrmReader::ReadFunc    mReaderFunc;    // 0x04
        };
    }
}

#endif // NW4R_UT_CHAR_STREAM_READER_H
