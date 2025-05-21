#ifndef NW4R_UT_FONT_RESOURCES_H
#define NW4R_UT_FONT_RESOURCES_H

#include <revolution/types.h>

#include <revolution/gx/GXEnum.h>

namespace nw4r {
    namespace ut {
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
    }
}

#endif // NW4R_UT_FONT_RESOURCES_H
