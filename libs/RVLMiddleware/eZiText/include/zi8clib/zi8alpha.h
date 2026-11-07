#ifndef ZI8_CLIB_ALPHA_H
#define ZI8_CLIB_ALPHA_H

#include <zi8clib/zitypes.h>

ziBool Zi8SetParentalControls(ziU8 level ZI_NEED_WORK);

ziU32 Zi8AlphaGetCandidates(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK);

#endif  // ZI8_CLIB_ALPHA_H
