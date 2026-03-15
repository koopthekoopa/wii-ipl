#include <zi8clib/zi8copy.h>
#include <zi8clib/zierror.h>

ziU8 Zi8CopyWordListW(ziWChar* destination, ziU8 maxCharacters, ziWChar* wordList, ziU8 index ZI_NEED_WORK) {
    ziU8 charCount = 0;

    while (ZI8_TRUE) {
        if (index == 0) {
            if (*wordList == 0) {
                Zi8LogError(0x132, ZI_WORK);
                return 0;
            }

            while (ZI8_TRUE) {
                *destination = *wordList++;
                if (++charCount >= maxCharacters) {
                    Zi8LogError(0x320, ZI_WORK);
                    return charCount;
                }

                if (*destination++ == 0) {
                    Zi8LogError(0x64, ZI_WORK);
                    return charCount;
                }
            }
        }

        if (*wordList == 0) {
            Zi8LogError(0x132, ZI_WORK);
            return 0;
        }

        while (*wordList++ != 0) {
        }

        if (index-- == 0) {
            Zi8LogError(0x132, ZI_WORK);
            return 0;
        }
    }
}

ziU8 Zi8CopyW(ziWChar* dest, ziGetParam* getParams, ziU8 index ZI_NEED_WORK) {
    return Zi8CopyWordListW(dest, 255, getParams->candidates, index, ZI_WORK);
}
