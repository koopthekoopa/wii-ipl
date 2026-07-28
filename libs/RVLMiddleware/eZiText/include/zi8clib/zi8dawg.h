#ifndef ZI8_CLIB_DAWG_H
#define ZI8_CLIB_DAWG_H

#include <zi8clib/zitypes.h>

ziU8 Zi8SyllablesROMdata(ziWChar* textIn, ziU8 inLen, ziU8 lang, ziWChar* textOut, ziU16 outLen, ziBool cont, ziU8* lenOut,
                         ziBool useAlt ZI_NEED_WORK);

#endif  // ZI8_CLIB_DAWG_H
