#ifndef ZI8_CLIB_GET_CANDIDATE_2_H
#define ZI8_CLIB_GET_CANDIDATE_2_H

#include <zi8clib/zitypes.h>

ziU16   Zi8GetGlobalDataSize();

ziBool  Zi8SetLatinSearchOrder(ziU8* searchArray, ziU8 searchSize ZI_NEED_WORK);

ziBool  Zi8ZHsetPYfuzzyPairs(ziFuzzyPYPairs pairsList ZI_NEED_WORK);
ziBool  Zi8ZHsetZYfuzzyPairs(ziFuzzyZYPairs pairsList ZI_NEED_WORK);

ziBool  Zi8SetMaxWordLength(ziU8 length ZI_NEED_WORK);

#endif // ZI8_CLIB_GET_CANDIDATE_2_H
