#ifndef REVOLUTION_OS_FONT_H
#define REVOLUTION_OS_FONT_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

enum {
    OS_FONT_ENCODE_ANSI = 0,
    OS_FONT_ENCODE_SJIS,
    OS_FONT_ENCODE_UNKNOWN,
    OS_FONT_ENCODE_UTF8,
    OS_FONT_ENCODE_UTF16,
    OS_FONT_ENCODE_UTF32,
    OS_FONT_ENCODE_MAX = OS_FONT_ENCODE_UTF32,
};

#define OS_FONT_SIZE_ANSI       (288 + 131072)    // 9 sheets
#define OS_FONT_SIZE_SJIS       (3840 + 1179648)  // 1 sheet
#define OS_FONT_ROM_OFFSET_SJIS 0x1AFF00
#define OS_FONT_ROM_OFFSET_ANSI 0x1FCF00
#define OS_FONT_ROM_SIZE_ANSI   0x003000
#define OS_FONT_ROM_SIZE_ANSI   0x003000
#define OS_FONT_ROM_SIZE_SJIS   0x04D000

typedef struct OSFontHeader {
    u16     fontType;

    u16     firstChar;
    u16     lastChar;
    u16     invalChar;

    u16     ascent;
    u16     descent;

    u16     width;
    u16     leading;
    u16     cellWidth;
    u16     cellHeight;

    u32     sheetSize;
    u16     sheetFormat;
    u16     sheetColumn;
    u16     sheetRow;
    u16     sheetWidth;
    u16     sheetHeight;

    u16     widthTable;

    u32     sheetImage;
    u32     sheetFullSize;

    GXColor col;
} OSFontHeader;

u16     OSGetFontEncode();
u16     OSSetFontEncode(u16 encode);

u32     OSLoadFont(OSFontHeader* fontData, void* tmp);

char*   OSGetFontTexel(const char* string, void* image, s32 pos, s32 stride, s32* width);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_FONT_H
