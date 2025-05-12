#ifndef ZI8_CLIB_GET_CANDIDATE_H
#define ZI8_CLIB_GET_CANDIDATE_H

#include <zi8clib/zitypes.h>

ziUShort    Zi8GetGlobalDataSize();

ziUChar     Zi8GetCandidates(ziUChar* cands, ziVoid* workData);

ziBool      Zi8SetLatinSearchOrder(ziUChar* searchArray, ziUChar searchSize, ziVoid* workData);

#endif // ZI8_CLIB_GET_CANDIDATE_H
