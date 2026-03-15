#ifndef ZI8_CLIB_COPY_WORD_H
#define ZI8_CLIB_COPY_WORD_H

#include <zi8clib/zitypes.h>

ziU8 Zi8CopyWordListW(ziWChar* destination, ziU8 maxCharacters, ziWChar* wordList, ziU8 index ZI_NEED_WORK);
ziU8 Zi8CopyW(ziWChar* dest, ziGetParam* getParams, ziU8 index ZI_NEED_WORK);

#endif  // ZI8_CLIB_COPY_WORD_H
