#include <zi8clib/zoemdata.h>

#include <zi8clib/zconvert.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zmtkey.h>

ziU8 Zi8AttachOEMdata(Zi8OemSearchDict searchCb, ziU16 dictLen, ziPtr dictData ZI_NEED_WORK) {
    ZI_WORK->oemSearchDict = searchCb;
    ZI_WORK->oemDictLen = dictLen;
    ZI_WORK->oemDictData = dictData;
    Zi8LogError(100, ZI_WORK);
    return 1;
}

ziU8 Zi8DetachOEMdata(ziU8 oemId ZI_NEED_WORK) {
    Zi8LogError(100, ZI_WORK);
    if (oemId != 1 || ZI_WORK->oemSearchDict == ZI8_NULL) {
        return 0;
    }
    ZI_WORK->oemSearchDict = 0;
    ZI_WORK->oemDictLen = 0;
    return 1;
}

ziU8 Zi8MatchOEMdata(ziWChar* text, ziU8 textLen, ziU8 language, ziWChar* wordOut, ziU16 wordMax, ziBool fullMatch, ziBool resume ZI_NEED_WORK) {
    ziWChar uppercaseCh;

    ziS32 i;
    ziS32 dictIdx;
    ziS32 hasRepeated;

    // Matching™
    textLen;
    wordMax;

    hasRepeated = 0;
    if (!resume) {
        ZI_WORK->oemDictIdxSavepoint = 0;
    }
    if ((dictIdx = ZI_WORK->oemDictIdxSavepoint) >= ZI_WORK->oemDictLen || ZI_WORK->oemSearchDict == ZI8_NULL || textLen >= --wordMax) {
        return 0;
    }
    wordOut[wordMax] = 0;

    // Set up a sentinel value:
    // - If the 1 becomes a 0, we got a word exactly the right length.
    // - If the 0 becomes a 1, we got a word that's longer than the input length
    if (fullMatch) {
        wordOut[textLen] = 1;
    } else {
        wordOut[textLen] = 0;
    }

    while (1) {
        while (dictIdx < ZI_WORK->oemDictLen && ZI_WORK->oemSearchDict(dictIdx, wordOut, wordMax, ZI_WORK->oemDictData)) {
            i = 0;
            if ((fullMatch && wordOut[textLen] == 0) || (!fullMatch && wordOut[textLen] != 0)) {
                for (; i < textLen; i++) {
                    if (0xEFF1 <= text[i] && text[i] <= 0xF37F) {
                        if (text[i] == Zi8ConvertWC2Key(wordOut[i], language, ZI_WORK))
                            ;
                        else
                            break;
                    } else {
                        if (wordOut[i] != text[i]) {
                            if (ZI_WORK->unk_0x1F == '\0' || language == ZI8_LANG_ZH)
                                break;

                            uppercaseCh = text[i];
                            if (!Zi8ChangeCharCase(ZI8_TRUE, &uppercaseCh, language, ZI_WORK))
                                break;
                            if (uppercaseCh != wordOut[i])
                                break;
                        }
                    }
                }
            }
            if (i < textLen) {
                if (fullMatch) {
                    wordOut[textLen] = 1;
                } else {
                    wordOut[textLen] = 0;
                }
                if (++dictIdx >= ZI_WORK->oemDictLen)
                    break;
            } else {
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
        }
        if (textLen == 1 && fullMatch && !resume) {
            fullMatch = 0;
            hasRepeated = 1;
            dictIdx = 0;
            continue;
        }
        return 0;
    }
}
