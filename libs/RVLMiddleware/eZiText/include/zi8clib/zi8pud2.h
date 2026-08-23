#ifndef ZI8_CLIB_PUD2_H
#define ZI8_CLIB_PUD2_H

#include <zi8clib/zitypes.h>

ziU32 ZiIsPhoneticChar(ziWChar ch);

ziU8 ZADP_Zi8SetPDremoveOpt(ziU8 newOpt ZI_NEED_WORK);

ziU8 Zi8MatchPUDdata(ziU16* param_1, ziU8 param_2, ziU8 lang, ziU16* param_4, ziU16 param_5, ziU8 param_6, ziU8 param_7 ZI_NEED_WORK);

#endif  // ZI8_CLIB_PUD2_H
