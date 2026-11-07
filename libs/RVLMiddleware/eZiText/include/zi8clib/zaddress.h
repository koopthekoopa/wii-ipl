#ifndef ZI8_CLIB_ADDRESS_H
#define ZI8_CLIB_ADDRESS_H

#include <zi8clib/zitypes.h>

ziU8 Zi8LangSupported(ziU8 lang ZI_NEED_WORK);

ziU32 Zi8GetTableData(ziU8 lang, ziU8 tableIdx, ziU8 memberId ZI_NEED_WORK);
ziU32 Zi8GetTableAddress(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK);
ziU32 Zi8GetTableSize(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK);

ziU16 Zi8GetTableCount(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK);

ziU8 Zi8GetFormatVersion(ziU8 lang ZI_NEED_WORK);
ziU8 Zi8WCharCount(ziWChar* str ZI_NEED_WORK);

#define ZI8_FORMAT_FLAG_HAS_CANGJIE 0x02

enum {
    ZI8_CFG_UNK_x001 = 0b0000000001,
    ZI8_CFG_UNK_x002 = 0b0000000010,
    ZI8_CFG_UNK_x004 = 0b0000000100,
    ZI8_CFG_UNK_x008 = 0b0000001000,
    ZI8_CFG_UNK_x010 = 0b0000010000,
    ZI8_CFG_HAS_SUFFIXONLY = 0b0000100000,
    ZI8_CFG_UNK_x040 = 0b0001000000,
    ZI8_CFG_UNK_x080 = 0b0010000000,
    ZI8_CFG_UNK_x100 = 0b0100000000,
    ZI8_CFG_HAS_SYLLABLES = 0b1000000000,
};

#define GET_DICT_CONFIG(LANG, WORK) Zi8GetTableCount(LANG, 0x1F, WORK)
#define GET_DICT_CFG_FLAG(LANG, WORK, FLAG) (Zi8GetTableCount(LANG, 0x1F, WORK) & FLAG)

#endif  // ZI8_CLIB_ADDRESS_H
