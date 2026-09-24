#ifndef ZI8_CLIB_DAWG_H
#define ZI8_CLIB_DAWG_H

#include <zi8clib/zitypes.h>

ziU8 Zi8MatchROMdata(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 param_6, ziU8 matchState, ziU8 param_8,
                     ziBool param_9 ZI_NEED_WORK);

ziU8 Zi8SyllablesROMdata(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziU8 matchState, ziU8* lenOut,
                         ziBool useAlt ZI_NEED_WORK);

#endif  // ZI8_CLIB_DAWG_H
