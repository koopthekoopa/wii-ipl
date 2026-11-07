#ifndef ZI8_CLIB_GET_CANDIDATE_2_H
#define ZI8_CLIB_GET_CANDIDATE_2_H

#include <zi8clib/zitypes.h>

ziBool Zi8ZHsetPYfuzzyPairs(ziFuzzyPYPairs pairsList ZI_NEED_WORK);
ziBool Zi8ZHsetZYfuzzyPairs(ziFuzzyZYPairs pairsList ZI_NEED_WORK);
ziBool Zi8SetLatinSearchOrder(ziU8* searchArray, ziU8 searchSize ZI_NEED_WORK);

ziU16 Zi8GetGlobalDataSize();

ziU8 _Zi8GetCandidates(ziGetParam* getParam ZI_NEED_WORK);
ziU8 _Zi8CheckCandidates(ziGetParam* getParam ZI_NEED_WORK);
ziU32 Zi8GetCandidatesOrCount(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK);

void Zi8InitDupWordBuf(ziPtr __zi8_work_data);
ziBool Zi8IsDupWChar(ziWChar ch ZI_NEED_WORK);
ziBool Zi8IsDupWordW(ziWChar* word, ziU8 wordLen ZI_NEED_WORK);

void Zi8Memcpy(ziPtr dst, ziPtr src, ziS32 size);
void Zi8Memset(ziPtr dst, ziS32 fill, ziS32 size);

ziBool Zi8SetMaxWordLength(ziU8 length ZI_NEED_WORK);

#endif  // ZI8_CLIB_GET_CANDIDATE_2_H
