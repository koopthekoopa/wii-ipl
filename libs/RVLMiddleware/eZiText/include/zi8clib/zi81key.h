#ifndef ZI8_CLIB_1_KEY_H
#define ZI8_CLIB_1_KEY_H

#include <zi8clib/zitypes.h>

ziU32 Zi8Get1KeyPressCandidates(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK);
ziU32 Zi8Get1KeyPressSpelling(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK);
ziBool Zi8ZHCheckSpelling(ziWChar* param_1, ziWChar* param_2, ziU8 param_3 ZI_NEED_WORK);

#endif  // ZI8_CLIB_1_KEY_H
