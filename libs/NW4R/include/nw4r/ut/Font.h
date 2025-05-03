#ifndef NW4R_UT_FONT_H
#define NW4R_UT_FONT_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>

#include <nw4r/ut/CharStrmReader.h>

namespace nw4r {
    namespace ut {
        enum FontMapMethod {
            FONT_MAP_DIRECT = 0,
            FONT_MAP_TABLE,
            FONT_MAP_SCAN,
        };

        enum FontEncoding {
            FONT_ENCODING_UTF8 = 0,
            FONT_ENCODING_UTF16,
            FONT_ENCODING_SJIS,
            FONT_ENCODING_CP1252,

            NUM_OF_FONT_ENCODING
        };

        typedef struct CharWidths {
            s8  left;       // 0x00
            u8  glyphWidth; // 0x01
            s8  charWidth;  // 0x02
        } CharWidths;

        typedef struct FontWidth {
            u16         indexBegin;     // 0x00
            u16         indexEnd;       // 0x02

            FontWidth*  pNext;          // 0x04
            CharWidths  widthTable[];   // 0x08
        } FontWidth;

        typedef struct Glyph {
            void*       pTexture;   // 0x00

            CharWidths  widths;     // 0x04
            u8          height;     // 0x07

            GXTexFmt    texFormat;  // 0x08
            u16         texWidth;   // 0x0C
            u16         texHeight;  // 0x0E

            u16         cellX;      // 0x10
            u16         cellY;      // 0x12
        } Glyph;

        typedef struct FontTextureGlyph {
            u8  cellWidth;      // 0x00
            u8  cellHeight;     // 0x01

            s8  baselinePos;    // 0x02

            u8  maxCharWidth;   // 0x03

            u32 sheetSize;      // 0x04
            u16 sheetNum;       // 0x08
            u16 sheetFormat;    // 0x0A
            u16 sheetRow;       // 0x0C
            u16 sheetLine;      // 0x0E
            u16 sheetWidth;     // 0x10
            u16 sheetHeight;    // 0x12
            u8* sheetImage;     // 0x14
        } FontTextureGlyph;

        typedef struct FontCodeMap {
            u16             ccodeBegin;     // 0x00
            u16             ccodeEnd;       // 0x02
            u16             mappingMethod;  // 0x04
            u16             reserved;       // 0x06
            FontCodeMap*    pNext;          // 0x08
            u16             mapInfo[];      // 0x0C
        } FontCodeMap;

        typedef struct FontInformation {
            u8                  fontType;       // 0x00
            s8                  linefeed;       // 0x01

            u16                 alterCharIndex; // 0x02

            CharWidths          defaultWidth;   // 0x04
            u8                  encoding;       // 0x07

            FontTextureGlyph*   pGlyph;         // 0x08
            FontWidth*          pWidth;         // 0x0C
            FontCodeMap*        pMap;           // 0x10

            u8                  height;         // 0x14
            u8                  width;          // 0x15
            u8                  ascent;         // 0x16
            u8                  padding_[1];    // 0x17
        } FontInformation;

        class Font {
            public:
                enum Type {
                    TYPE_NULL = 0,
                    TYPE_ROM,
                    TYPE_RESOURCE,
                };

            public:
                Font() : mReaderFunc(&CharStrmReader::ReadNextCharCP1252) {}
                virtual ~Font()/* {}*/;

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
                virtual void            SetDefaultCharWidths(const CharWidths &widths) = 0;

                virtual bool            SetAlternateChar(u16 c) = 0;

                virtual void            SetLineFeed(int linefeed) = 0;

                virtual int             GetCharWidth(u16 c) const = 0;
                virtual CharWidths      GetCharWidths(u16 c) const = 0;

                virtual void            GetGlyph(Glyph *glyph, u16 c) const = 0;

                virtual FontEncoding    GetEncoding() const = 0;

                void InitReaderFunc(FontEncoding encoding);

                CharStrmReader GetCharStrmReader() const {
                    CharStrmReader reader(mReaderFunc);
                    return reader;
                }

            private:
                CharStrmReader::ReadRoutine mReaderFunc;    // 0x04
        };
    }
}

#endif // NW4R_UT_CHAR_STREAM_READER_H
