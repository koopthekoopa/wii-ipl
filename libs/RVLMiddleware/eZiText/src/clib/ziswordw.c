#include <zi8clib/ziswordw.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zi8misc.h>
#include <zi8clib/zierror.h>

ziBool Zi8IsWordW(ziWChar* word, ziU8 language ZI_NEED_WORK) {
    Table0Entry* chEntries = ZI8_NULL;
    ziU8* chAddtlData = ZI8_NULL;
    ziU8 groupFirstByte = 0;
    ziU8 remWordGroupLen = 0;
    ziU16 calculatedOrdinal = 0;
    ziU8 latinSearchOrder[8] = {1, 5};
    Table0Entry* firstChEntry;
    ziU16* ordinalPtr;
    ziU8* savedLatinSearchOrderList = ZI_WORK->latinSearchOrderList;
    ziU8 savedLatinSearchOrderLen = ZI_WORK->latinSearchOrderLen;
    ziGetCandidatesParam getCandidatesWork = {};

    ziU8* addtlDataCurr;
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
            return ZI8_TRUE;
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

    // All single-characters are words
    if (i-- == 1) {
        return ZI8_TRUE;
    }
    // Mark the "final ordinal" bit on the final ordinal
    ordinals[i] |= 0x8000;
    ZI_WORK->handleCangjie = Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) & ZI8_FORMAT_FLAG_HAS_CANGJIE;

    chEntries = (Table0Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0, ZI_WORK);
    firstChEntry = &chEntries[ordinals[0]];

    // Get the additional data for the first ordinal (Cangjie, Strokes, and Multi-character Words)
    chAddtlData = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 1, ZI_WORK);
    chAddtlData += GET_TABLE0_ENTRY_TABLE1_OFFS(firstChEntry);

    addtlDataCurr = chAddtlData;

    // Skip over cangjie information
    // 3 bits + 5 bits per keypress num (the 3 LSBs of the first byte)
    // Then, round up to next byte
    // Format(s):
    // - _____000
    // - aaaaa001
    // - aaaaa010 ___bbbbb
    // - aaaaa011 cccbbbbb ______cc
    // - aaaaa100 cccbbbbb _dddddcc
    // - aaaaa101 cccbbbbb edddddcc ____eeee
    if (ZI_WORK->handleCangjie != 0) {
        switch (*addtlDataCurr & 7) {
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
        addtlDataCurr += remOrdinals;
    }

    // Skip over the additional stroke information.
    if ((addtlDataCurr[0] & 0x80) != 0) {
        groupFirstByte = 0;
        addtlDataCurr += ((addtlDataCurr[0] & 0x7F) >> 4) + 1;
    } else {
        // There is no additional stroke information or word information
        return ZI8_FALSE;
    }

    while ((groupFirstByte & 0x80) == 0) {
        // Consume the word group config byte
        // Format: DRRR
        // D: Done (a flag for this being the final group)
        // R: Region (mainland, taiwan, hong kong) (ignored here)
        // L: Length (how many words there are in this group)
        groupFirstByte = *addtlDataCurr++;
        for (remWordGroupLen = groupFirstByte & 0x0F; remWordGroupLen != 0; remWordGroupLen--) {
            // Try to match the ordinals to the stored ordinals in the word data
            // The last ordinal in the word has its highest bit set (big endian)
            remOrdinals = i;
            ordinalPtr = ordinals;
            while (remOrdinals > 0) {
                calculatedOrdinal = ((ziU16)addtlDataCurr[1] << 8) | addtlDataCurr[0];
                addtlDataCurr += 2;

                // Note that the setting of the high bit on the final ordinal
                // ensures that this comparison will break if the word ordinal
                // is final and our ordinal isn't or vice versa.
                if (calculatedOrdinal != *++ordinalPtr)
                    break;
                remOrdinals--;
                if ((calculatedOrdinal & 0x8000) != 0)
                    break;
            }

            // If the entire word matched, it worked!
            if (remOrdinals == 0) {
                return ZI8_TRUE;
            }

            // Otherwise, if there was more left in the word, consume the
            // remaining ordinal high bytes until you're at the end of the word
            if ((calculatedOrdinal & 0x8000) != 0)
                continue;

            addtlDataCurr++;
            while ((*addtlDataCurr & 0x80) == 0) {
                addtlDataCurr += 2;
            }
            addtlDataCurr++;
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
