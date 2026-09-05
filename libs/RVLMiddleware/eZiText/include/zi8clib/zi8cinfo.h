#ifndef ZI8_CLIB_CANDIDATES_INFO_H
#define ZI8_CLIB_CANDIDATES_INFO_H

#include <zi8clib/zitypes.h>

enum CharInfoHetMode {
    CHAR_INFO_HET_UNK_x00 = 0,   // 0x00
    CHAR_INFO_HET_PINYIN_KB,     // 0x01
    CHAR_INFO_HET_BOPOMOFO_KB,   // 0x02
    CHAR_INFO_HET_PINYIN_PAD,    // 0x03
    CHAR_INFO_HET_BOPOMOFO_PAD,  // 0x04
    CHAR_INFO_HET_UNK_x05,       // 0x05
    CHAR_INFO_HET_UNK_x06,       // 0x06
    CHAR_INFO_HET_UNK_x07,       // 0x07
    CHAR_INFO_HET_UNK_x08,       // 0x08
    CHAR_INFO_HET_UNK_x09,       // 0x09
    CHAR_INFO_HET_UNK_x0A,       // 0x0A
    CHAR_INFO_HET_UNK_x0B,       // 0x0B
    CHAR_INFO_HET_UNK_x0C,       // 0x0C
    CHAR_INFO_HET_UNK_x0D,       // 0x0D
    CHAR_INFO_HET_UNK_x0E,       // 0x0E
    CHAR_INFO_HET_UNK_x0F,       // 0x0F
    CHAR_INFO_HET_UNK_x10,       // 0x10
    CHAR_INFO_HET_UNK_x11,       // 0x11
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
