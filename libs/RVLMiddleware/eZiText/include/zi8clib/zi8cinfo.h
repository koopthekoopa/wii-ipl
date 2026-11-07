#ifndef ZI8_CLIB_CANDIDATES_INFO_H
#define ZI8_CLIB_CANDIDATES_INFO_H

#include <zi8clib/zitypes.h>

enum CharInfoHetMode {
    CHAR_INFO_HET_STROKE_A = 0x00,  // 0x00 - Calligraphic strokes A
    CHAR_INFO_HET_STROKE_B = 0x10,  // 0x10 - Calligraphic strokes B
    CHAR_INFO_HET_WBH,              // 0x11 - Wubihua/Stroke Count
    CHAR_INFO_HET_PY_KB = 0x01,     // 0x01 - Pinyin Full Keyboard
    CHAR_INFO_HET_ZY_KB,            // 0x02 - Zhuyin (Bopomofo) Full Keyboard
    CHAR_INFO_HET_PY_PAD,           // 0x03 - Pinyin Pad Keys
    CHAR_INFO_HET_ZY_PAD,           // 0x04 - Zhuyin (Bopomofo) Pad Keys
    CHAR_INFO_HET_CJ_A = 0x07,      // 0x07 - Cangjie (Nonsimplified) A
    CHAR_INFO_HET_CJ_B,             // 0x08 - Cangjie (Nonsimplified) B
    CHAR_INFO_HET_CJ_SIMP_A,        // 0x09 - Simplified Cangjie A
    CHAR_INFO_HET_CJ_SIMP_B,        // 0x0A - Simplified Cangjie B
};

extern const ziU8 zi8CangjieCodes[0x20];

ziU8 Zi8GetPInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK);
ziU8 Zi8GetZInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK);
ziU8 Zi8GetSInfo(Table0Entry* strokeInfoA, ziU8* strokeInfoB, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK);
ziU8 Zi8GetCJInfo(ziU8* cangjieData, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK);
ziU16 Zi81KeyPYinfo(ziWChar ch ZI_NEED_WORK);
ziU16 Zi81KeyZYinfo(ziWChar ch ZI_NEED_WORK);

ziU8 Zi8GetCharInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode ZI_NEED_WORK);
ziU8 ZiCharInfo2(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode, ziWChar* elements, ziU8 elementCount ZI_NEED_WORK);
ziU8 Zi8GetCharInfo2(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode, ziWChar* elements, ziU8 elementCount ZI_NEED_WORK);

#endif  // ZI8_CLIB_CANDIDATES_INFO_H
