#include <zi8clib/zoemdata.h>

#include <zi8clib/zconvert.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zmtkey.h>

ziBool Zi8AttachOEMdata(Zi8OemSearchDict searchCb, ziU16 dictLen, ziPtr dictData ZI_NEED_WORK) {
    ZI_WORK->oemSearchDict = searchCb;
    ZI_WORK->oemDictLen = dictLen;
    ZI_WORK->oemDictData = dictData;
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return ZI8_TRUE;
}

ziBool Zi8DetachOEMdata(ziU8 oemId ZI_NEED_WORK) {
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    if (oemId != 1 || ZI_WORK->oemSearchDict == ZI8_NULL) {
        return ZI8_FALSE;
    }
    ZI_WORK->oemSearchDict = ZI8_NULL;
    ZI_WORK->oemDictLen = 0;
    return ZI8_TRUE;
}

ziU8 Zi8MatchOEMdata(ziWChar* text, ziU8 textLen, ziU8 language, ziWChar* wordOut, ziU16 wordMax, ziBool fullMatch, ziBool resume ZI_NEED_WORK) {
    ziWChar uppercaseCh;

    ziS32 i;
    ziS32 dictIdx;
    ziS32 hasRepeated;

    // Matching™
    textLen;
    wordMax;

    hasRepeated = ZI8_FALSE;
    if (!resume) {
        ZI_WORK->oemDictIdxSavepoint = 0;
    }
    if ((dictIdx = ZI_WORK->oemDictIdxSavepoint) >= ZI_WORK->oemDictLen || ZI_WORK->oemSearchDict == ZI8_NULL || textLen >= --wordMax) {
        return 0;
    }
    wordOut[wordMax] = L'\0';

    // Set up a sentinel value:
    // - If the 1 becomes a 0, we got a word exactly the right length.
    // - If the 0 becomes a 1, we got a word that's longer than the input length
    if (fullMatch) {
        wordOut[textLen] = 1;
    } else {
        wordOut[textLen] = 0;
    }

    while (ZI8_TRUE) {
        while (dictIdx < ZI_WORK->oemDictLen && ZI_WORK->oemSearchDict(dictIdx, wordOut, wordMax, ZI_WORK->oemDictData)) {
            i = 0;
            if ((fullMatch && wordOut[textLen] == 0) || (!fullMatch && wordOut[textLen] != 0)) {
                for (; i < textLen; i++) {
                    // Check for key equivalence, for example:
                    // - if 9 6 7 3 was entered, it should match "WORD"
                    // - if 9 6 7 6 was entered, it should match "WORN" and "WORM"
                    // - etc.
                    //
                    // Not sure why this includes the pinyin characters when
                    // PAD_KEY(0x20) is the maximum pad key, but who knows
                    if (PAD_KEY(1) <= text[i] && text[i] <= PINYIN_CHAR(0x7F)) {
                        if (text[i] == Zi8ConvertWC2Key(wordOut[i], language, ZI_WORK))
                            continue;
                        break;
                    }

                    // If the letter matches exactly, continue
                    if (wordOut[i] == text[i])
                        continue;

                    // Otherwise, check if the uppercase version of the
                    // character is equivalent to what's stored in the OEM
                    // dictionary
                    if (!ZI_WORK->caseInsensitive || language == ZI8_LANG_ZH)
                        break;
                    uppercaseCh = text[i];
                    if (!Zi8ChangeCharCase(ZI8_TRUE, &uppercaseCh, language, ZI_WORK))
                        break;
                    if (uppercaseCh != wordOut[i])
                        break;
                }
            }

            if (i < textLen) {
                // Word match failed, reset sentinel value and continue if
                // there's more entries into the dictionary
                if (fullMatch) {
                    wordOut[textLen] = 1;
                } else {
                    wordOut[textLen] = 0;
                }
                if (++dictIdx >= ZI_WORK->oemDictLen)
                    break;
                continue;
            }

            if (hasRepeated) {
                dictIdx = 0;
                *wordOut = *text;
                return 1;
            }
            ZI_WORK->oemDictIdxSavepoint = ++dictIdx;
            while (wordOut[i] != L'\0')
                i++;
            return i;
        }

        // Try with single character matches (I think?)
        if (textLen != 1 || !fullMatch || resume)
            break;
        fullMatch = ZI8_FALSE;
        hasRepeated = ZI8_TRUE;
        dictIdx = 0;
    }
    return 0;
}
