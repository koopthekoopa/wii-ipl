#include <zi8clib/ziswordw.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zi8misc.h>
#include <zi8clib/zierror.h>

ziBool Zi8IsWordW(ziWChar* word, ziU8 language ZI_NEED_WORK) {
    Table0Entry* table0Data = ZI8_NULL;
    ziU8* table1Data = ZI8_NULL;
    ziU8 sublistFirstByte = 0;
    ziU8 remWordsInSublist = 0;
    ziU16 calculatedOrdinal = 0;
    ziU8 latinSearchOrder[8] = {1, 5};
    Table0Entry* table0Entry;
    ziU16* ordinalPtr;
    ziU8* savedLatinSearchOrderList = ZI_WORK->latinSearchOrderList;
    ziU8 savedLatinSearchOrderLen = ZI_WORK->latinSearchOrderLen;
    ziGetCandidatesParam getCandidatesWork = {};

    ziU8* table1Curr;
    ziS32 remOrdinals;
    ziS32 i;
    ziGetParam getParam;
    ziU16 ordinals[0x3F];

    Zi8LogError(0x64, ZI_WORK);
    if (word == ZI8_NULL || *word == 0) {
        Zi8ReplaceLastError(0x12C, ZI_WORK);
        return ZI8_FALSE;
    }

    // If Non-chinese, call GetCandidatesOrCount to get the number of dictionary
    // words that match the input word. If it's nonzero, it is a word
    if (language != ZI8_LANG_ZH) {
        for (i = 0; word[i] != 0; i = i + 1) {
            if (word[i] >= PAD_KEY(1) || i == 0x40) {
                return 0;
            }
        }
        getCandidatesWork.elementCount = (ziU8)i;
        getCandidatesWork.unk_0x02 = 1;
        getCandidatesWork.unk_0x04 = word;
        getCandidatesWork.unk_0x10 = 0x40;
        getParam.language = language;
        getParam.getMode = 0x00;
        getParam.subLanguage = 0x07;
        getParam.context = 0x01;
        getParam.getOptions = 0x81;
        getParam.elements = word;
        getParam.elementCount = (ziU8)i;
        getParam.currentWord = (ziWChar*)0x0;
        getParam.wordCharCount = 0x0;
        getParam.candidates = ordinals;
        getParam.maxCandidates = 0x1;
        getParam.firstCandidate = 0;
        ZI_WORK->latinSearchOrderList = latinSearchOrder;
        if (ZI_WORK->unk_0x1C == 0x2) {
            ZI_WORK->latinSearchOrderLen = 0;
            if ((ZI_WORK->unk_0x09 & 1) != 0) {
                latinSearchOrder[ZI_WORK->latinSearchOrderLen++] = 1;
            }
            if ((ZI_WORK->unk_0x09 & 4) != 0) {
                latinSearchOrder[ZI_WORK->latinSearchOrderLen++] = 2;
            }
            if ((ZI_WORK->unk_0x09 & 2) != 0) {
                latinSearchOrder[ZI_WORK->latinSearchOrderLen++] = 3;
            }
            if ((ZI_WORK->unk_0x09 & 8) != 0) {
                latinSearchOrder[ZI_WORK->latinSearchOrderLen++] = 4;
            }
            if ((ZI_WORK->unk_0x09 & 1) != 0) {
                latinSearchOrder[ZI_WORK->latinSearchOrderLen++] = 5;
            }
            if ((ZI_WORK->unk_0x09 & 4) != 0) {
                latinSearchOrder[ZI_WORK->latinSearchOrderLen++] = 6;
            }
            if ((ZI_WORK->unk_0x09 & 2) != 0) {
                latinSearchOrder[ZI_WORK->latinSearchOrderLen++] = 7;
            }
            if ((ZI_WORK->unk_0x09 & 8) != 0) {
                latinSearchOrder[ZI_WORK->latinSearchOrderLen++] = 8;
            }
        } else if (ZI_WORK->unk_0x1C != 0x0) {
            ZI_WORK->latinSearchOrderLen = 0x2;
        } else {
            ZI_WORK->latinSearchOrderLen = 0x1;
        }
        i = Zi8GetCandidatesOrCount(&getParam, &getCandidatesWork, ZI_WORK);
        ZI_WORK->latinSearchOrderList = savedLatinSearchOrderList;
        ZI_WORK->latinSearchOrderLen = savedLatinSearchOrderLen;
        if (i != 0) {
            return 1;
        }
    }

    if (language != ZI8_LANG_ZH) {
        Zi8ReplaceLastError(0x26C, ZI_WORK);
        return ZI8_FALSE;
    }

    // If it's chinese:
    // - Convert the characters into ordinals
    // - Look up the character in the character table by the first ordinal
    // - If the first ordinal is a word on its own, it's a word
    // - If the rest of the ordinals match one of the rests of the words in the
    //   character info table, it's a word
    // - Otherwise, it's not a word
    for (i = 0; word[i] != L'\0';) {
        ordinals[i] = Zi8Uni2Ord(word[i], ZI_WORK);
        if (ordinals[i] == (ziU16)-1)
            return ZI8_FALSE;
        if (++i == 0x40)
            return ZI8_FALSE;
    }

    if (i-- == 1) {
        return 1;
    }
    ordinals[i] |= 0x8000;
    ZI_WORK->unk_0x16 = Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) & 2;

    table0Data = (Table0Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0, ZI_WORK);
    table0Entry = &table0Data[ordinals[0]];

    table1Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 1, ZI_WORK);
    table1Data += GET_TABLE0_ENTRY_TABLE1_OFFS(table0Entry);

    table1Curr = table1Data;
    if (ZI_WORK->unk_0x16 != '\0') {
        switch (*table1Curr & 7) {
            case 2:
                remOrdinals = 2;
                break;
            case 3:
            case 4:
                remOrdinals = 3;
                break;
            case 5:
                remOrdinals = 4;
                break;
            default:
                remOrdinals = 1;
                break;
        }
        table1Curr += remOrdinals;
    }
    if ((*table1Curr & 0x80) != 0) {
        sublistFirstByte = 0;
        table1Curr += ((*table1Curr & 0x7f) >> 4) + 1;
    } else {
        return ZI8_FALSE;
    }

    while ((sublistFirstByte & 0x80) == 0) {
        sublistFirstByte = *table1Curr++;
        for (remWordsInSublist = sublistFirstByte & 0x0F; remWordsInSublist != 0; remWordsInSublist--) {
            remOrdinals = i;
            ordinalPtr = ordinals;
            while (0 < remOrdinals) {
                calculatedOrdinal = ((ziU16)table1Curr[1] << 8) | table1Curr[0];
                table1Curr += 2;
                if (calculatedOrdinal != *++ordinalPtr)
                    break;
                remOrdinals--;
                if ((calculatedOrdinal & 0x8000) != 0)
                    break;
            }
            if (remOrdinals == 0) {
                return ZI8_TRUE;
            }
            if ((calculatedOrdinal & 0x8000) == 0) {
                table1Curr++;
                while ((*table1Curr & 0x80) == 0) {
                    table1Curr += 2;
                }
                table1Curr++;
            }
        }
    }
    Zi8LogError(0x2BD, ZI_WORK);
    return ZI8_FALSE;
}

ziU16 Zi8ConvertUC2UserKey(ziChar ch, ziU8 language ZI_NEED_WORK) {
    ziU16 chOut;
    ziUserKeyLayout* usrKeyLyt;
    ziU16 keyI;
    ziWChar* chosenKeyLyt;

    if (ch == '\0' || language > ZI8_LANG_MAX + 2 || (usrKeyLyt = ZI_WORK->usrKeyLyts[language]) == ZI8_NULL) {
        return L'\0';
    }

    for (keyI = 0; keyI < 0x20; keyI++) {
        for (chosenKeyLyt = usrKeyLyt->lower[keyI]; chosenKeyLyt != ZI8_NULL && *chosenKeyLyt != L'\0'; chosenKeyLyt++) {
            if (*chosenKeyLyt == (ziWChar)ch)
                goto FOUND_MATCH;
        }
        for (chosenKeyLyt = usrKeyLyt->upper[keyI]; chosenKeyLyt != ZI8_NULL && *chosenKeyLyt != L'\0'; chosenKeyLyt++) {
            if (*chosenKeyLyt == (ziWChar)ch)
                goto FOUND_MATCH;
        }
    }
FOUND_MATCH:
    if (keyI >= 0x20)
        return L'\0';

    if (keyI == 0) {
        return PAD_KEY(10);
    } else if (1 <= keyI && keyI <= 9) {
        return PAD_KEY(keyI);
    } else if (keyI <= 0x1F) {
        return PAD_KEY(keyI + 1);
    } else {
        return L'\0';
    }
}
