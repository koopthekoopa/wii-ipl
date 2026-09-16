#include <zi8clib/zikorean.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zierror.h>

ziBool Zi8HangulInitialToOrd(ziU16 jamoIn, ziU8* jamoOut, ziU16* ordOut ZI_NEED_WORK) {
    ziU8* tab5;
    ziU16 i;

    i;

    tab5 = (ziU8*)Zi8GetTableAddress(ZI8_LANG_KO, 5, ZI_WORK);
    for (i = 0; tab5[i] != '\0'; i++) {
        if (jamoIn != tab5[i])
            continue;

        *ordOut = i;
        *jamoOut = tab5[i];
        Zi8LogError(100, ZI_WORK);
        return ZI8_TRUE;
    }
    Zi8LogError(680, ZI_WORK);
    return ZI8_FALSE;
}

typedef struct {
    ziU8 jamo0;
    ziU8 jamo1;
    ziU8 jamo2;
    ziU8 jamo3;
} ziWordTable;
ziU8 Zi8MatchKoreanHangulSyllable(ziU16* syllIdxOut, ziU16* jamosIn, ziU8 initial, ziU16 jamosLen ZI_NEED_WORK);

typedef struct {
    ziU8 candHi;  // 0x0
    ziU8 candLo;  // 0x1
} ziHangulSyllableTable;
typedef struct {
    ziU8 jamo0;  // 0x0
    ziU8 jamo1;  // 0x1
    ziU8 out;    // 0x2
} ziTable31;
typedef struct {
    ziU8 elementValue;  // 0x0
    ziU8 jamoHi;        // 0x1
    ziU8 jamoLo;        // 0x2
} ziOtherKeyToJamoTable;
typedef struct {
    ziU8 lowercaseJamo;  // 0x0
    ziU8 uppercaseJamo;  // 0x1
} ziLatinKeyToJamoTable;

ziU32 Zi8GetKoreanCandidates(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK) {
    ziWordTable* tableAddr;
    ziU16 tableSize;

    ziHangulSyllableTable* syllTable;
    ziU16 i;

    ziU16 jamos[100];
    ziLatinKeyToJamoTable* latinKeyToJamo;
    ziOtherKeyToJamoTable* elementToJamo;
    ziTable31* pairChars;

    ziU16 nonsyllableToCharShift;
    ziU16 initialStep;
    ziU16 postAddInitial;
    ziU16 pairCharCount;
    ziU16 syllIdx = 0;
    ziU16 local_100;
    ziWChar remCandidatesToSkip;
    ziU16 pairCharI;

    ziU8 candI = 0;
    ziU8 jamoCount;
    ziU8 syllJamoLen;
    ziU8 initial = 0xFF;

    candI;

    remCandidatesToSkip = getParam->firstCandidate;
    getParam->count = getParam->letters = getParam->wordCandidates = 0;
    if (getCandParam != ZI8_NULL && getCandParam->unk_0x00) {
        Zi8LogError(2000, ZI_WORK);
        return 0;
    }
    if (getParam->elementCount == 0 || getParam->elementCount > 100) {
        Zi8LogError(100, ZI_WORK);
        return 0;
    }

    syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x04, ZI_WORK);
    latinKeyToJamo = (ziLatinKeyToJamoTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x01, ZI_WORK);
    elementToJamo = (ziOtherKeyToJamoTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x02, ZI_WORK);
    pairChars = (ziTable31*)Zi8GetTableAddress(ZI8_LANG_KO, 0x31, ZI_WORK);
    nonsyllableToCharShift = Zi8GetTableCount(ZI8_LANG_KO, 0x00, ZI_WORK);
    initialStep = Zi8GetTableCount(ZI8_LANG_KO, 0x03, ZI_WORK);
    postAddInitial = Zi8GetTableCount(ZI8_LANG_KO, 0x06, ZI_WORK);
    pairCharCount = Zi8GetTableCount(ZI8_LANG_KO, 0x31, ZI_WORK);

    for (jamoCount = 0; jamoCount < getParam->elementCount; jamoCount++) {
        i = getParam->elements[jamoCount];
        if (L'a' <= i && i <= L'z') {
            jamos[jamoCount] = latinKeyToJamo[i - L'a'].lowercaseJamo;
        } else if (L'A' <= i && i <= L'Z') {
            jamos[jamoCount] = latinKeyToJamo[i - L'A'].uppercaseJamo;
        } else {
            for (syllJamoLen = 0; elementToJamo[syllJamoLen].elementValue != '\0'; syllJamoLen++) {
                if (i == elementToJamo[syllJamoLen].elementValue)
                    break;
            }
            if (elementToJamo[syllJamoLen].elementValue != '\0') {
                jamos[jamoCount] = ((ziU16)elementToJamo[syllJamoLen].jamoHi << 8) | ((ziU16)elementToJamo[syllJamoLen].jamoLo);
            } else {
                Zi8LogError(353, ZI_WORK);
                return 0;
            }
        }
    }
    candI = 0;
    for (i = 0; i < jamoCount; i++) {
        if (Zi8HangulInitialToOrd(jamos[i], &initial, &local_100, ZI_WORK)) {
            syllJamoLen = Zi8MatchKoreanHangulSyllable(&syllIdx, jamos + i + 1, initial, jamoCount - i - 1, ZI_WORK);
            if (ZI_WORK->hasSplitTables == 1) {
                switch (initial) {
                    case 0x01:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x1E, ZI_WORK);
                        break;
                    case 0x02:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x1F, ZI_WORK);
                        break;
                    case 0x04:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x20, ZI_WORK);
                        break;
                    case 0x07:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x21, ZI_WORK);
                        break;
                    case 0x08:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x22, ZI_WORK);
                        break;
                    case 0x09:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x23, ZI_WORK);
                        break;
                    case 0x11:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x24, ZI_WORK);
                        break;
                    case 0x12:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x25, ZI_WORK);
                        break;
                    case 0x13:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x26, ZI_WORK);
                        break;
                    case 0x15:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x27, ZI_WORK);
                        break;
                    case 0x16:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x28, ZI_WORK);
                        break;
                    case 0x17:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x29, ZI_WORK);
                        break;
                    case 0x18:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x2A, ZI_WORK);
                        break;
                    case 0x19:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x2B, ZI_WORK);
                        break;
                    case 0x1A:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x2C, ZI_WORK);
                        break;
                    case 0x1B:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x2D, ZI_WORK);
                        break;
                    case 0x1C:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x2E, ZI_WORK);
                        break;
                    case 0x1D:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x2F, ZI_WORK);
                        break;
                    case 0x1E:
                        syllTable = (ziHangulSyllableTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x30, ZI_WORK);
                        break;
                }
            }
        } else {
            syllJamoLen = 0;
        }
        if (syllJamoLen != 0) {
            if (!postAddInitial) {
                syllIdx += local_100 * initialStep;
            }
            if (remCandidatesToSkip != 0) {
                remCandidatesToSkip--;
            } else {
                getParam->candidates[candI] = ((ziU16)syllTable[syllIdx].candHi << 8) | ((ziU16)syllTable[syllIdx].candLo << 0);
                if (postAddInitial && ZI_WORK->hasSplitTables == 0) {
                    getParam->candidates[candI] += local_100 * initialStep;
                }
                candI++;
            }
            if (i == 0) {
                getParam->letters = syllJamoLen + 1;
            }
            i += syllJamoLen;
        } else if (remCandidatesToSkip != 0) {
            for (pairCharI = 0; pairCharI < pairCharCount; pairCharI++) {
                if (pairChars[pairCharI].jamo0 == jamos[i] && pairChars[pairCharI].jamo1 == jamos[i + 1])
                    break;
            }
            if (pairCharI == pairCharCount) {
                remCandidatesToSkip--;
            }
            if (i == 0) {
                getParam->letters = 1;
            }
        } else {
            for (pairCharI = 0; pairCharI < pairCharCount; pairCharI++) {
                if (pairChars[pairCharI].jamo0 != jamos[i] || pairChars[pairCharI].jamo1 != jamos[i + 1])
                    continue;

                // 2-character match found
                if (i == 0) {
                    getParam->letters = 1;
                }
                getParam->candidates[candI] = nonsyllableToCharShift + pairChars[pairCharI].out;
                candI++;
                i++;
                break;
            }
            if (pairCharI == pairCharCount) {
                // No 2-char match found, defaulting to 1 char
                if ((getParam->candidates[candI] = jamos[i]) < 0xFF) {
                    if (i == 0) {
                        getParam->letters = 1;
                    }
                    getParam->candidates[candI] += nonsyllableToCharShift;
                    candI++;
                }
            }
        }
        if (candI >= getParam->maxCandidates)
            break;
    }
    getParam->count = candI;
    Zi8LogError(100, ZI_WORK);
    return candI;
}

ziU8 Zi8MatchKoreanHangulSyllable(ziU16* syllIdxOut, ziU16* jamosIn, ziU8 initial, ziU16 jamosLen ZI_NEED_WORK) {
    ziU16 syllCount;
    ziWordTable* syllTable;

    ziU8 recursiveInitial;
    ziU16 recursiveOrd;
    ziU16 recursiveSyllIdx;

    ziU16 jamo0I, jamo1I, jamo2I, jamo3I;
    ziU16 currJamo;

    currJamo = jamosIn[0];
    recursiveInitial = 0xFF;
    if (ZI_WORK->hasSplitTables == 0) {
        syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x03, ZI_WORK);
        syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x03, ZI_WORK);
    } else {
        switch (initial) {
            case 0x01:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x0B, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x0B, ZI_WORK);
                break;
            case 0x02:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x0C, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x0C, ZI_WORK);
                break;
            case 0x04:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x0D, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x0D, ZI_WORK);
                break;
            case 0x07:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x0E, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x0E, ZI_WORK);
                break;
            case 0x08:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x0F, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x0F, ZI_WORK);
                break;
            case 0x09:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x10, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x10, ZI_WORK);
                break;
            case 0x11:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x11, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x11, ZI_WORK);
                break;
            case 0x12:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x12, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x12, ZI_WORK);
                break;
            case 0x13:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x13, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x13, ZI_WORK);
                break;
            case 0x15:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x14, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x14, ZI_WORK);
                break;
            case 0x16:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x15, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x15, ZI_WORK);
                break;
            case 0x17:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x16, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x16, ZI_WORK);
                break;
            case 0x18:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x17, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x17, ZI_WORK);
                break;
            case 0x19:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x18, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x18, ZI_WORK);
                break;
            case 0x1A:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x19, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x19, ZI_WORK);
                break;
            case 0x1B:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x1A, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x1A, ZI_WORK);
                break;
            case 0x1C:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x1B, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x1B, ZI_WORK);
                break;
            case 0x1D:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x1C, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x1C, ZI_WORK);
                break;
            case 0x1E:
                syllTable = (ziWordTable*)Zi8GetTableAddress(ZI8_LANG_KO, 0x1D, ZI_WORK);
                syllCount = Zi8GetTableCount(ZI8_LANG_KO, 0x1D, ZI_WORK);
                break;
        }
    }

    *syllIdxOut = 0;

    if (jamosLen < 1 || currJamo >= 0xFF) {
        return 0;
    }

    // get jamo0I to the index of the first syllable in the table that has
    // jamosIn[0] (or greater) as it's 1st (idx 0) jamo
    for (jamo0I = *syllIdxOut; jamo0I < syllCount; jamo0I++) {
        if (syllTable[jamo0I].jamo0 >= currJamo)
            break;
    }
    // If we overran the table or the jamo doesn't match, fail with no match
    if (jamo0I >= syllCount || currJamo != syllTable[jamo0I].jamo0) {
        return 0;
    }
    // If we're at the end of the input or if the next jamo isn't in range,
    // match jamo 0
    if (jamosLen < 2 || (currJamo = jamosIn[1]) >= 0xFF) {
        *syllIdxOut = jamo0I;
        return 1;
    }

    // get jamo1I to the index of the first syllable in the table that has
    // jamosIn[1] (or greater) as it's 2nd (idx 1) jamo
    for (jamo1I = jamo0I; jamo1I < syllCount; jamo1I++) {
        if (syllTable[jamo1I].jamo1 >= currJamo)
            break;
    }
    // If we overran the table or the jamo don't match, match only jamo 0
    if (jamo1I >= syllCount || currJamo != syllTable[jamo1I].jamo1 || *jamosIn != syllTable[jamo1I].jamo0) {
        *syllIdxOut = jamo0I;
        return 1;
    }
    // If we're at the end of the input or if the next jamo isn't in range,
    // match jamos 0 & 1
    if (jamosLen < 3 || (currJamo = jamosIn[2]) >= 0xFF) {
        *syllIdxOut = jamo1I;
        return 2;
    }

    // get jamo2I to the index of the first syllable in the table that has
    // jamosIn[2] (or greater) as it's 3rd (idx 2) jamo
    for (jamo2I = jamo1I; jamo2I < syllCount; jamo2I++) {
        if (syllTable[jamo2I].jamo2 >= currJamo)
            break;
    }
    if (jamo2I >= syllCount || currJamo != syllTable[jamo2I].jamo2 || jamosIn[1] != syllTable[jamo2I].jamo1 ||
        jamosIn[0] != syllTable[jamo2I].jamo0) {
        // This checks if after the initial and the first next jamo, the next
        // two following jamos form a valid syllable. If so, only the first two
        // are in this syllable. This deals with the issue with Dubeolsik
        // keyboard layout in that initials and finals are typed with the same physical
        // keys.
        //
        // NOTE: This specific pathway falls apart on syllables like 게 (GE)
        // because 겟 (GES) and 겠 (GESS) also exist, there is an ambiguity
        // when typing something like GESSA, it will refuse to consider the
        // grouping 게싸 (GE SSA) and only consider 겟사 (GES SA).
        if (Zi8HangulInitialToOrd(jamosIn[1], &recursiveInitial, &recursiveOrd, ZI_WORK) &&
            Zi8MatchKoreanHangulSyllable(&recursiveSyllIdx, jamosIn + 2, recursiveInitial, 1, ZI_WORK) != 0) {
            *syllIdxOut = jamo0I;
            return 1;
        } else {
            *syllIdxOut = jamo1I;
            return 2;
        }
    }
    // If we're at the end of the input or if the next jamo isn't in range,
    // match jamos 0 & 1 & 2
    if (jamosLen < 4 || (currJamo = jamosIn[3]) >= 0xFF) {
        *syllIdxOut = jamo2I;
        return 3;
    }

    // get jamo3I to the index of the first syllable in the table that has
    // jamosIn[3] (or greater) as it's 4th (idx 3) jamo
    for (jamo3I = jamo2I; jamo3I < syllCount; jamo3I++) {
        if (syllTable[jamo3I].jamo3 >= currJamo)
            break;
    }
    if (jamo3I >= syllCount || currJamo != syllTable[jamo3I].jamo3 || jamosIn[2] != syllTable[jamo3I].jamo2 ||
        jamosIn[1] != syllTable[jamo3I].jamo1 || jamosIn[0] != syllTable[jamo3I].jamo0) {
        if (Zi8HangulInitialToOrd(jamosIn[2], &recursiveInitial, &recursiveOrd, ZI_WORK) &&
            Zi8MatchKoreanHangulSyllable(&recursiveSyllIdx, jamosIn + 3, recursiveInitial, 1, ZI_WORK) != 0) {
            *syllIdxOut = jamo1I;
            return 2;
        } else {
            *syllIdxOut = jamo2I;
            return 3;
        }
    }
    // If we're at the end of the input or if the next jamo isn't in range,
    // match jamos 0 & 1 & 2 & 3
    if (jamosLen < 5 || (currJamo = jamosIn[4]) >= 0xFF) {
        *syllIdxOut = jamo3I;
        return 4;
    }

    if (Zi8HangulInitialToOrd(jamosIn[3], &recursiveInitial, &recursiveOrd, ZI_WORK) &&
        Zi8MatchKoreanHangulSyllable(&recursiveSyllIdx, jamosIn + 4, recursiveInitial, 1, ZI_WORK) != 0) {
        *syllIdxOut = jamo2I;
        return 3;
    } else {
        *syllIdxOut = jamo3I;
        return 4;
    }
}
