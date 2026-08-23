#ifndef ZI8_CLIB_ADDRESS_H
#define ZI8_CLIB_ADDRESS_H

#include <zi8clib/zitypes.h>

ziU8 Zi8LangSupported(ziU8 lang ZI_NEED_WORK);

ziU32 Zi8GetTableData(ziU8 lang, ziU8 tableIdx, ziU8 memberId ZI_NEED_WORK);
ziU32 Zi8GetTableAddress(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK);
ziU32 Zi8GetTableSize(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK);

ziU16 Zi8GetTableCount(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK);

ziU8 Zi8GetFormatVersion(ziU8 lang ZI_NEED_WORK);
ziU32 Zi8WCharCount(ziWChar* str ZI_NEED_WORK);

#define ZI8_FORMAT_FLAG_HAS_CANGJIE 0x02

#define GET_DICT_CONFIG(LANG, WORK) Zi8GetTableCount(LANG, 0x1F, WORK)

#endif  // ZI8_CLIB_ADDRESS_H
