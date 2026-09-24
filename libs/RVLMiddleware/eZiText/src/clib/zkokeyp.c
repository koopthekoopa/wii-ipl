#include <zi8clib/zkokeyp.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zierror.h>

/**
 *  Table 9 Entry Format:
 * ```none
 *  9 bytes (72 bits) per entry
 *  A-I - 36 bits (9 nybbles) of packed element data
 *    X - 1 bit unknown flag
 *    Y - 1 bit unknown & unused
 *    O - 18-bit (2+8+8 bits) offset into Table A
 *    U - 16-bit character (unicode? index?)
 *  | AAAABBBB | CCCCDDDD | EEEEFFFF | GGGGHHHH | IIIIXYOO | OOOOOOOO | OOOOOOOO | UUUUUUUU | UUUUUUUU |
 * ```
 *
 */
typedef struct {
    ziU8 packedElementsData[4];  // 0x0
    struct {
        ziU8 packedElementsDataFinal : 4;  // 0x4 : 0bXXXX____
        ziU8 flagA : 1;                    // 0x4 : 0b____X___
        ziU8 unused : 1;                   // 0x4 : 0b_____X__
        ziU8 tabAOffsHi : 2;               // 0x4 : 0b______XX
    };
    ziU8 tabAOffsMd;  // 0x5
    ziU8 tabAOffsLo;  // 0x6
    ziU8 chHi;        // 0x7
    ziU8 chLo;        // 0x8
} ziTable9KO;
#define ZI8_KOREA_T9_IDXD_ENTRY_OFFS(I) (((I) << 3) + (I))
#define ZI8_KOREA_T9_ENTRY_SIZE 0x9
#define ZI8_KOREA_T9_IDXD_BYTE(TAB, I, BYTE_I) ((TAB)[ZI8_KOREA_T9_IDXD_ENTRY_OFFS(I) + BYTE_I])
#define ZI8_KOREA_T9_IDXD_PTR(TAB, I) ((TAB) + ZI8_KOREA_T9_IDXD_ENTRY_OFFS(I))
#define ZI8_KOREA_T9_IDXD_ELEMENTS_PTR(TAB, I) ((TAB) + ZI8_KOREA_T9_IDXD_ENTRY_OFFS(TAB, I) + 0)
#define ZI8_KOREA_T9_IDXD_FLAG_A(TAB, I) (ZI8_KOREA_T9_IDXD_BYTE(TAB, I, 4) & 0b00001000)
#define ZI8_KOREA_T9_IDXD_UNUSED_(TAB, I) (ZI8_KOREA_T9_IDXD_BYTE(TAB, I, 4) & 0b00000100)
#define ZI8_KOREA_T9_IDXD_TA_OFFS(TAB, I)                                                                                                            \
    (((ziU32)ZI8_KOREA_T9_IDXD_BYTE(TAB, I, 4) & 0b00000011) << 16 | (ziU32)ZI8_KOREA_T9_IDXD_BYTE(TAB, I, 5) << 8 |                                 \
     (ziU32)ZI8_KOREA_T9_IDXD_BYTE(TAB, I, 6))
#define ZI8_KOREA_T9_IDXD_CHAR(TAB, I) ((ziWChar)ZI8_KOREA_T9_IDXD_BYTE(TAB, I, 7) << 8 | (ziWChar)ZI8_KOREA_T9_IDXD_BYTE(TAB, I, 8))

typedef struct {
    ziU8 unk_0x0;  // 0x0
    ziU8 unk_0x1;  // 0x1
} ziTableAKO;
#define ZI8_KOREA_TA_ENTRY_SIZE 0x2
#define ZI8_KOREA_TA_BYTE(TAB, BYTE_I) ((TAB)[BYTE_I])
#define ZI8_KOREA_TA_FLAG_A(TAB) (ZI8_KOREA_TA_BYTE(TAB, 0) & 0b10000000)
#define ZI8_KOREA_TA_FLAG_B(TAB) (ZI8_KOREA_TA_BYTE(TAB, 0) & 0b01000000)
#define ZI8_KOREA_TA_UNUSED_(TAB) (ZI8_KOREA_TA_BYTE(TAB, 0) & 0b00100000)
#define ZI8_KOREA_TA_ORD(TAB) (((ziU16)ZI8_KOREA_TA_BYTE(TAB, 0) & 0b00011111) << 8 | (ziU16)ZI8_KOREA_TA_BYTE(TAB, 1))

ziU16 Zi8WCharToOrdKO(ziWChar ch, ziU8* t9 ZI_NEED_WORK) {
    ziU16 i;
    ziU16 entryCount;
    ziWChar currCh;

    t9;
    ZI_WORK;

    entryCount = Zi8GetTableCount(ZI8_LANG_KO, 9, ZI_WORK);
    for (i = 0; i < entryCount; i++) {
        currCh = ZI8_KOREA_T9_IDXD_CHAR(t9, i);
        if (currCh == ch) {
            Zi8LogError(ZI8_ERR_OK, ZI_WORK);
            return i;
        }
    }
    Zi8LogError(2410, ZI_WORK);
    return -1;
}

void Zi8PackElementsKO(ziGetParam* getParam, ziU8* packed) {
    ziU8 i;

    for (i = 0; i < 5; i++) {
        packed[i] = 0;
    }

    switch (getParam->elementCount) {
        case 9:
            packed[4] |= (ziU8)((getParam->elements[8] & 0xF) << 4);
        case 8:
            packed[3] = getParam->elements[7] & 0xF;
        case 7:
            packed[3] |= (ziU8)((getParam->elements[6] & 0xF) << 4);
        case 6:
            packed[2] = getParam->elements[5] & 0xF;
        case 5:
            packed[2] |= (ziU8)((getParam->elements[4] & 0xF) << 4);
        case 4:
            packed[1] = getParam->elements[3] & 0xF;
        case 3:
            packed[1] |= (ziU8)((getParam->elements[2] & 0xF) << 4);
        case 2:
            packed[0] = getParam->elements[1] & 0xF;
        case 1:
            packed[0] |= (ziU8)((getParam->elements[0] & 0xF) << 4);
    }
}

ziBool Zi8CandidateSetClear(ziGetParam* getParam ZI_NEED_WORK) {
    ziU8 i;

    getParam;

    if (getParam->scratch == ZI8_NULL) {
        Zi8LogError(ZI8_ERR_MISC_SCRATCH_NULL, ZI_WORK);
        return ZI8_TRUE;
    }

    for (i = 0; i < getParam->maxCandidates; i++) {
        ((ziWChar*)getParam->scratch)[i] = L'\0';
    }
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return ZI8_FALSE;
}

ziBool Zi8CandidateSetInsert(ziGetParam* getParam, ziWChar ch, ziU8* scratchIdx ZI_NEED_WORK) {
    ziU8 i;

    scratchIdx;

    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    if (getParam->scratch == ZI8_NULL) {
        Zi8ReplaceLastError(ZI8_ERR_MISC_SCRATCH_NULL, ZI_WORK);
        return ZI8_TRUE;
    }

    for (i = 0; i < getParam->maxCandidates; i++) {
        if (ch == ((ziWChar*)getParam->scratch)[i]) {
            return ZI8_TRUE;
        }
    }

    ((ziWChar*)getParam->scratch)[*scratchIdx] = ch;
    if (++*scratchIdx >= getParam->maxCandidates) {
        *scratchIdx = 0;
    }
    return ZI8_FALSE;
}

ziU32 Zi8CandidateSetContains(ziGetParam* getParam, ziWChar ch ZI_NEED_WORK) {
    ziU8 i;

    getParam;

    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    if (getParam->scratch == ZI8_NULL) {
        Zi8ReplaceLastError(ZI8_ERR_MISC_SCRATCH_NULL, ZI_WORK);
        return ZI8_FALSE;
    }

    for (i = 0; i < getParam->maxCandidates; i++) {
        if (ch == ((ziWChar*)getParam->scratch)[i]) {
            return ZI8_TRUE;
        }
    }
    return ZI8_FALSE;
}

inline void Zi8MatchPackedElementsKO(ziGetParam* getParam, ziU8* packedElements, ziU8* entry, ziU8* i, ziBool* packedMatch) {
    *i = 0;
    if (getParam->elementCount > 1) {
        for (*i = 0; *i < getParam->elementCount / 2; ++*i) {
            if (packedElements[*i] != entry[*i]) {
                *packedMatch = ZI8_FALSE;
                break;
            }
        }
    }
    if (*packedMatch && getParam->elementCount % 2 != 0 && (packedElements[*i] & 0xF0) != (entry[*i] & 0xF0)) {
        *packedMatch = ZI8_FALSE;
    }
}

inline void Zi8InsertUnskippedCandidates(ziGetParam* getParam, ziU8* candI, ziU16* remainingToSkip, ziU8* scratchIdx, ziU8 candCount ZI_NEED_WORK) {
    ziS32 i;

    *candI = 0;
    for (i = 0; i < candCount; i++) {
        if ((getParam->candidates[i] & 0x8000) != 0)
            continue;

        getParam->candidates[i] |= 0x8000;
        if (*remainingToSkip != 0) {
            --*remainingToSkip;
            Zi8CandidateSetInsert(getParam, getParam->candidates[i], scratchIdx, ZI_WORK);
            continue;
        }

        if (*candI != i) {
            getParam->candidates[*candI] = getParam->candidates[i];
        }
        ++*candI;
    }
    *remainingToSkip = 0;
}
inline void Zi8InsertAllCandidates(ziGetParam* getParam, ziU8* candI, ziU16* remainingToSkip, ziU8* scratchIdx, ziU8 candCount ZI_NEED_WORK) {
    ziS32 i;

    for (i = 0; i < *candI; i++) {
        if ((getParam->candidates[i] & 0x8000) != 0)
            continue;

        getParam->candidates[i] |= 0x8000;
        Zi8CandidateSetInsert(getParam, getParam->candidates[i], scratchIdx, ZI_WORK);
    }
    *remainingToSkip = *remainingToSkip - candCount;
    *candI = 0;
}

ziU32 Zi8_814834AC(ziGetParam* getParam, ziU16* remainingToSkip, ziU8* candI, ziU8* scratchIdx ZI_NEED_WORK) {
    ziU8 packedElI = 0;
    ziU8 local_47 = 0;
    ziU8 matchCount = 0;
    ziBool packedMatch;

    ziU8* tab9Data;
    ziU8* tabAData;
    int i;
    ziU8* currTabEntry;
    ziU16 tab9Size;
    ziU8 packedElements[5] = {};

    ZI_WORK;

    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    if (getParam->elementCount == 0) {
        if (*remainingToSkip >= *candI) {
            for (i = 0; i < *candI; i++) {
                Zi8CandidateSetInsert(getParam, getParam->candidates[i], scratchIdx, ZI_WORK);
            }
            *remainingToSkip = *remainingToSkip - *candI;
            *candI = 0;
        } else {
            for (i = 0; i < *remainingToSkip; i++) {
                Zi8CandidateSetInsert(getParam, getParam->candidates[i], scratchIdx, ZI_WORK);
            }
            for (i = 0; i < (*candI - *remainingToSkip); i++) {
                getParam->candidates[i] = getParam->candidates[*remainingToSkip + i];
            }
            *candI -= *remainingToSkip;
            *remainingToSkip = 0;
        }
        return ZI8_TRUE;
    }

    if (getParam->elementCount > 9) {
        *candI = 0;
        return ZI8_FALSE;
    }

    tab9Data = (ziU8*)Zi8GetTableAddress(getParam->language, 9, ZI_WORK);
    tabAData = (ziU8*)Zi8GetTableAddress(getParam->language, 10, ZI_WORK);
    if (tab9Data == ZI8_NULL) {
        Zi8ReplaceLastError(1900, ZI_WORK);
        return ZI8_FALSE;
    }
    if (tabAData == ZI8_NULL) {
        Zi8ReplaceLastError(1910, ZI_WORK);
        return ZI8_FALSE;
    }

    tab9Size = Zi8GetTableCount(ZI8_LANG_KO, 9, ZI_WORK);
    Zi8PackElementsKO(getParam, packedElements);

    for (i = 0; i < tab9Size && matchCount < *candI; i++) {
        packedMatch = ZI8_TRUE;
        currTabEntry = ZI8_KOREA_T9_IDXD_PTR(tab9Data, i);

        Zi8MatchPackedElementsKO(getParam, packedElements, currTabEntry, &packedElI, &packedMatch);
        if (!packedMatch)
            continue;

        for (local_47 = 0; local_47 < *candI; local_47++) {
            if (getParam->candidates[local_47] != ZI8_KOREA_T9_IDXD_CHAR(tab9Data, i))
                continue;

            matchCount++;
            getParam->candidates[local_47] &= 0x7FFF;
            break;
        }
    }
    if (matchCount >= *remainingToSkip) {
        matchCount = *candI;
        Zi8InsertUnskippedCandidates(getParam, candI, remainingToSkip, scratchIdx, matchCount, ZI_WORK);
    } else {
        Zi8InsertAllCandidates(getParam, candI, remainingToSkip, scratchIdx, matchCount, ZI_WORK);
    }
    return ZI8_FALSE;
}

ziU32 Zi8GetKOcandidates(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK) {
    ziU16 currOrd;
    ziU16 t9Count;
    ziWChar local_4c;
    ziU16 prevOrd = 0xFFFF;

    ziU8* t9;
    ziU8* tA;
    ziS32 local_30;
    ziS32 local_34 = 0;
    ziU32 tAOffs;

    ziU8 packedElements[5] = {};

    ziU8 remCharsInWord = 0;
    ziU8 currWordI = 0;
    ziU8 candI = 0;
    ziU8 local_55 = 0;
    ziWChar remainingToSkip = getParam->firstCandidate;
    ziU8 local_56;
    ziS32 local_3c = 0;
    ziS32 local_40 = 0;
    ziU8 scratchI = 0;

    ziU8* t9Curr;
    ziU8* tACurr;
    ziBool packedMatch;

    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    Zi8CandidateSetClear(getParam, ZI_WORK);
    t9 = (ziU8*)Zi8GetTableAddress(ZI8_LANG_KO, 9, ZI_WORK);
    tA = (ziU8*)Zi8GetTableAddress(ZI8_LANG_KO, 10, ZI_WORK);
    if (t9 == ZI8_NULL) {
        Zi8ReplaceLastError(1900, ZI_WORK);
        return 0;
    }
    (void*)t9;

    if (tA == ZI8_NULL) {
        Zi8ReplaceLastError(1910, ZI_WORK);
        return 0;
    }
    if (!getCandParam->unk_0x00) {
        getParam->count = 0;
        getParam->wordCandidates = 0;
        getParam->candidates[0] = L'\0';
    }
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);

    if (getParam->wordCharCount != 0) {
        if ((currOrd = Zi8WCharToOrdKO(*getParam->currentWord, t9, ZI_WORK)) != 0xFFFF && ZI8_KOREA_T9_IDXD_FLAG_A(t9, currOrd) != 0) {
            tAOffs = ZI8_KOREA_T9_IDXD_TA_OFFS(t9, currOrd);
            remCharsInWord = getParam->wordCharCount - 1;
            currWordI = 1;
            tACurr = tA + tAOffs;

            do {
                while (remCharsInWord != 0) {
                    currOrd = Zi8WCharToOrdKO(getParam->currentWord[currWordI], t9, ZI_WORK);
                    if (currOrd == ZI8_KOREA_TA_ORD(tACurr)) {
                        remCharsInWord--;
                        currWordI++;
                        if (ZI8_KOREA_TA_FLAG_B(tACurr) != 0) {
                            remCharsInWord = getParam->wordCharCount - 1;
                            currWordI = 1;
                            break;
                        } else {
                            tACurr += ZI8_KOREA_TA_ENTRY_SIZE;
                        }
                    } else {
                        currWordI = 1;
                        remCharsInWord = getParam->wordCharCount - 1;
                        break;
                    }
                }
                if (remCharsInWord != 0)
                    goto ADVANCE_TA_CURR;

                currOrd = ZI8_KOREA_TA_ORD(tACurr);
                local_4c = ZI8_KOREA_T9_IDXD_CHAR(t9, currOrd);
                if (getParam->wordCharCount == 1) {
                    if (currOrd == prevOrd) {
                        // Advance Table A entry
                        while (ZI8_KOREA_TA_FLAG_B(tACurr) == 0) {
                            tACurr += ZI8_KOREA_TA_ENTRY_SIZE;
                        }
                        tACurr += ZI8_KOREA_TA_ENTRY_SIZE;
                        remCharsInWord = getParam->wordCharCount - 1;
                        currWordI = 1;
                        continue;
                    }

                    prevOrd = currOrd;
                    if (getParam->elementCount == 0) {
                        if (remainingToSkip != 0) {
                            remainingToSkip--;
                        } else {
                            if (getCandParam->unk_0x00) {
                                if (++local_3c >= getCandParam->maxSize) {
                                    return getCandParam->maxSize;
                                }
                            } else {
                                getParam->candidates[candI++] = local_4c;
                                getParam->wordCandidates++;
                                if (++getParam->count >= getParam->maxCandidates) {
                                    return getParam->count;
                                }
                            }
                        }
                    } else {
                        getParam->candidates[candI++] = local_4c;
                        getParam->wordCandidates++;
                        if (++getParam->count >= getParam->maxCandidates) {
                            Zi8_814834AC(getParam, &remainingToSkip, &candI, &scratchI, ZI_WORK);
                            getParam->wordCandidates = candI;
                            getParam->count = candI;
                            if (candI >= getParam->maxCandidates) {
                                if (getCandParam->unk_0x00) {
                                    if ((local_3c += candI) >= getCandParam->maxSize) {
                                        return getCandParam->maxSize;
                                    }
                                    getParam->wordCandidates = 0;
                                    getParam->count = 0;
                                    candI = 0;
                                } else {
                                    return candI;
                                }
                            }
                        }
                    }
                } else {
                    for (local_40 = 0; local_40 < candI; local_40++) {
                        if (local_4c == getParam->candidates[local_40])
                            break;
                    }
                    if (local_40 != candI || Zi8CandidateSetContains(getParam, local_4c, ZI_WORK))
                        goto ADVANCE_TA_CURR;

                    getParam->candidates[candI++] = local_4c;
                    getParam->wordCandidates++;
                    if (++getParam->count >= getParam->maxCandidates) {
                        Zi8_814834AC(getParam, &remainingToSkip, &candI, &scratchI, ZI_WORK);
                        getParam->wordCandidates = candI;
                        getParam->count = candI;
                        if (candI >= getParam->maxCandidates) {
                            if (getCandParam->unk_0x00) {
                                if ((local_3c += candI) >= getCandParam->maxSize) {
                                    return getCandParam->maxSize;
                                }
                                getParam->wordCandidates = 0;
                                getParam->count = 0;
                                candI = 0;
                            } else {
                                return candI;
                            }
                        }
                    }
                }

            ADVANCE_TA_CURR:
                // Advance Table A entry
                while (ZI8_KOREA_TA_FLAG_B(tACurr) == 0) {
                    tACurr += ZI8_KOREA_TA_ENTRY_SIZE;
                }
                tACurr += ZI8_KOREA_TA_ENTRY_SIZE;
                remCharsInWord = getParam->wordCharCount - 1;
                currWordI = 1;
            } while (ZI8_KOREA_TA_FLAG_A(tACurr) == 0);
        }
        local_34 = local_3c;
        if (candI != 0) {
            Zi8_814834AC(getParam, &remainingToSkip, &candI, &scratchI, ZI_WORK);
            if (getCandParam->unk_0x00) {
                if ((local_3c += candI) >= getCandParam->maxSize) {
                    return getCandParam->maxSize;
                } else {
                    local_34 = local_3c;
                }
            }
            getParam->wordCandidates = candI;
            getParam->count = candI;
        }
    }
    if (getParam->elementCount > 9) {
        getParam->count = 0;
        return 0;
    }

    if (getParam->elementCount != 0 && !getCandParam->unk_0x00) {
        local_56 = 0;
    } else {
        local_56 = 1;
    }

    t9Count = Zi8GetTableCount(ZI8_LANG_KO, 9, ZI_WORK);
    Zi8PackElementsKO(getParam, packedElements);
    do {
        for (local_30 = 0; local_30 < t9Count; local_30++) {
            packedMatch = ZI8_TRUE;
            t9Curr = ZI8_KOREA_T9_IDXD_PTR(t9, local_30);
            Zi8MatchPackedElementsKO(getParam, packedElements, t9Curr, &local_55, &packedMatch);
            if (!packedMatch)
                continue;

            if (getParam->elementCount % 2 != 0) {
                if ((t9Curr[local_55] & 0x0F) != 0) {
                    if (local_56 == 0)
                        continue;
                } else {
                    if (local_56 != 0 && !getCandParam->unk_0x00)
                        continue;
                }
            } else {
                if ((t9Curr[local_55] & 0xF0) != 0) {
                    if (local_56 == 0)
                        continue;
                } else {
                    if (local_56 != 0 && !getCandParam->unk_0x00)
                        continue;
                }
            }

            if (remainingToSkip != 0) {
                remainingToSkip--;
                continue;
            }

            if (getCandParam->unk_0x00) {
                if (++local_34 >= getCandParam->maxSize) {
                    return getCandParam->maxSize;
                }
            } else {
                getParam->candidates[candI++] = ZI8_KOREA_T9_IDXD_CHAR(t9, local_30);
                if (++getParam->count >= getParam->maxCandidates) {
                    return getParam->count;
                }
            }
        }
    } while (++local_56 < 2);

    if (getCandParam->unk_0x00) {
        return local_34;
    } else {
        return getParam->count;
    }
}
