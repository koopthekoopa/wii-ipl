#include <zi8clib/zi8cgetc.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8ZHuwd.h>
#include <zi8clib/zi8alts.h>
#include <zi8clib/zi8cinfo.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8is.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zi8misc.h>
#include <zi8clib/zi8pud2.h>
#include <zi8clib/zi8space.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zoemdata.h>
#include <zi8clib/zprepare.h>

ziU8 Zi8SetFindCand(ziU8* pCandidateBitset, ziU16 ord ZI_NEED_WORK) {
    ziU8 prevBit;

    ord = Zi8Ord2Ord(ord, ZI_WORK);
    prevBit = (1 << (ord % 8)) & pCandidateBitset[ord / 8];
    pCandidateBitset[ord / 8] |= 1 << (ord % 8);
    return prevBit;
}

ziWChar* ZiGetNextPhonetic(ziWChar* text, ziWChar* end ZI_NEED_WORK) {
    while (*text != L'\0' && *text != ZI_WORK->spaceChar && *text != PINYIN_CHAR('`') && text < end) {
        text++;
    }
    if (*text == L'\0' || text == end) {
        return ZI8_NULL;
    }

    text++;
    if (*text == L'\0' || text == end) {
        return ZI8_NULL;
    }

    return text;
}

ziU32 ZiPartialMatch(ziWChar* textA, ziWChar* endA, ziWChar* textB, ziWChar* endB, ziU16 _unused ZI_NEED_WORK) {
    if (textA == endA || textB == endB || *textA == L'\0' || *textB == L'\0') {
        return ZI8_TRUE;
    }

    while (*textA != ZI_WORK->spaceChar && *textA != PINYIN_CHAR('`')) {
        if (*textB == ZI_WORK->spaceChar || *textB == PINYIN_CHAR('`')) {
            break;
        }

        if (*textA != *textB) {
            return ZI8_FALSE;
        }
        textA++;
        textB++;
        if (textA == endA || textB == endB || *textA == L'\0' || *textB == L'\0') {
            return ZI8_TRUE;
        }
    }
    return ZI8_TRUE;
}

int ZiMatchZHSpelling(ziU32 unused, ziWChar* test, ziWChar* target, ziU8 targetLen, ziU16 syllCount ZI_NEED_WORK) {
    int matches;

    ziS32 i;
    ziU8 testLen;

    ziU16* currTarget;
    ziU16* currTest;
    ziWChar targetSyllBuf[0x40];
    ziWChar testSyllBuf[0x40];

    test;
    target;
    targetLen;
    ZI_WORK;

    matches = ZI8_TRUE;
    testLen = Zi8WCharCount(test, ZI_WORK);
    if (test == ZI8_NULL || targetLen == 0) {
        return matches;
    }

    // Test for full text match
    for (i = 0; i < targetLen; i++) {
        if (test[i] == L'\0' || test[i] != target[i]) {
            matches = ZI8_FALSE;
            break;
        }
    }
    if (!matches) {
        targetSyllBuf[0] = L'\0';
        testSyllBuf[0] = L'\0';
        if (!Zi8ZHaddSpace(target, targetLen, targetSyllBuf, 0x40, ZI_WORK)) {
            return ZI8_FALSE;
        }
        if (!Zi8ZHaddSpace(test, testLen, testSyllBuf, 0x40, ZI_WORK)) {
            return ZI8_FALSE;
        }

        currTarget = targetSyllBuf;
        currTest = testSyllBuf;
        for (; syllCount != 0; syllCount--) {
            currTest = ZiGetNextPhonetic(currTest, targetSyllBuf, ZI_WORK);
            if (currTest == ZI8_NULL) {
                return ZI8_FALSE;
            }
        }

        matches = ZI8_TRUE;
        while (currTarget != ZI8_NULL && currTest != ZI8_NULL) {
            if (!ZiPartialMatch(currTarget, targetSyllBuf + 0x40, currTest, testSyllBuf + 0x40, syllCount, ZI_WORK)) {
                return ZI8_FALSE;
            }
            currTarget = ZiGetNextPhonetic(currTarget, targetSyllBuf + 0x40, ZI_WORK);
            currTest = ZiGetNextPhonetic(currTest, testSyllBuf + 0x40, ZI_WORK);
        }
    }
    return matches;
}
ziBool Zi8NewMatchPhonetic(ziGetParam* getParam, Table0Entry* chTab, Table5Entry* table5, ziU16 table5Count, ziU8* tab1Data,
                           ziGetCandidatesParam* getCandParam, ziU16 syllMask, ziU16 syllPhon, ziU16 param_9, ziU16 param_10, ziU8 param_11,
                           ziU16 param_12, ziU16* remToSkipInout, ziS32* currSizeInout, ziU8* candCountInout, ziS32* outputOffsInout,
                           ziBool checkDupWholeWord, ziBool useBitset, ziBool isPinyin, ziU8* param_20, ziU8* __param_21, ziU8 param_22,
                           ziWChar* candidatesOut ZI_NEED_WORK);

ziWChar ziTones[4] = {0x2CA, 0x2C7, 0x2CB, 0x2D9};  // {L'ˊ', L'ˇ', L'ˋ', L'˙'};
ziWChar ziPuncts[4] = {L'，', L'。', L'？', L'！'};
ziWChar zi8tones[4];
ziU32 zi8InternalGetZH(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK) {
    ziMatchStructA local_208 = {};

    ziU8 local_471;
    ziU8 mandarinRegionMask = 0;
    ziU8 local_473 = 0;
    ziU8 local_474;
    ziU8 local_475;
    ziU8 local_476;
    ziU8 local_477;
    ziU8 local_478;
    ziU8 local_479;
    ziU8 local_47a;
    ziU8 local_47b;
    ziBool bVar21;
    ziBool local_47d;
    ziBool bVar19;
    ziBool bVar26;
    ziBool bVar24;
    ziBool bVar25;
    ziBool local_482;
    ziBool local_483;
    ziBool bVar22;
    ziBool bVar20;
    ziU8 local_486;
    ziU8 local_487;
    ziU8 local_488;
    ziU8 local_489;
    ziU8 local_48a;
    ziU8 local_48b;
    ziU8 local_48c;
    ziU8 local_48d;
    ziBool bVar18;
    ziBool bVar23;
    ziU8 local_490;
    ziU8 local_491;
    ziU8 local_492;
    ziU8 local_493;
    ziU8 local_494;
    ziU8 local_495;
    ziU8 local_496;
    ziU8 local_497;
    ziU8 bVar36;

    ziU16 local_43e;
    ziU16 local_440;
    ziU16 local_442;
    ziU16 local_444;
    ziU16 local_446;
    ziWChar local_448;
    ziWChar local_44a;
    ziWChar local_44c;
    ziWChar local_44e;
    ziWChar local_450;
    ziU16 local_452;
    ziWChar local_454;
    ziU16 local_456;
    ziU16 local_458;
    ziU16 local_45a;
    ziU16 local_45c;
    ziU16 local_45e;
    ziU16 local_460;
    ziU16 local_462;
    ziU16 local_464;
    ziU16 tab0Count;
    ziU16 local_468;
    ziU16 tab5Count;
    ziU16 local_46c;
    ziWChar local_46e;
    ziU16 local_470;

    ziS32 local_3cc;
    ziWChar* local_3d0;
    ziU8* local_3d4;
    ziS32 local_3d8;
    ziS32 local_3dc;
    Table0Entry* currTab0;
    Table2Entry* local_3e4;
    Table2Entry* local_3e8;
    ziU8* local_3ec;
    ziU8* tab34Data;
    Table0Entry* tab0Entries;
    Table5Entry* tab5Entries;

    ziU8* local_3fc;
    ziU8* local_400;
    ziU8* local_404;
    ziU8* local_408;
    ziU8* tab1Data;
    ziU8* local_410;
    ziS32 local_414;
    int local_418;
    ziU8* local_41c;
    ziU16* local_420;
    ziWChar* local_424;
    ziU8* local_428;
    Table0Entry* local_42c;
    ziU8* local_430;
    ziU8* local_434;
    ziU8* local_438;
    ziU8* local_43c;

    ziWChar local_288[64];
    ziWChar azStack_308[64];
    ziWChar local_388[64];
    ziU8 local_3a0[6][4];
    ziU8 local_3b8[6][4];
    ziWChar awStack_3c8[8];

    local_3d8 = 0;
    local_3dc = 0;
    local_448 = 0;
    local_44a = 0;
    local_44c = 0;
    local_44e = 0;
    local_450 = 0;
    local_452 = 0;
    local_454 = 0;
    local_456 = 0;
    local_458 = 0;
    local_45a = 0;
    local_45c = 0;
    local_45e = 0;
    local_460 = 0;
    local_462 = 0;
    local_464 = 0;
    tab0Count = 0;
    local_468 = 0;
    tab5Count = 0;
    local_46c = 0;
    local_474 = 0;
    local_475 = 0;
    local_476 = 0;
    local_477 = 0;
    local_478 = 0;
    local_479 = 0;
    local_47a = 0;
    local_47b = 0;
    currTab0 = ZI8_NULL;
    local_3e4 = ZI8_NULL;
    local_3e8 = ZI8_NULL;
    local_3ec = ZI8_NULL;
    tab34Data = ZI8_NULL;
    tab0Entries = ZI8_NULL;
    tab5Entries = ZI8_NULL;
    local_3fc = ZI8_NULL;
    local_400 = ZI8_NULL;
    local_404 = ZI8_NULL;
    local_408 = ZI8_NULL;
    tab1Data = ZI8_NULL;
    local_410 = ZI8_NULL;
    local_414 = 0;
    bVar21 = ZI8_FALSE;
    local_47d = ZI8_FALSE;
    bVar19 = ZI8_FALSE;
    bVar26 = ZI8_FALSE;
    bVar24 = ZI8_FALSE;
    bVar25 = ZI8_FALSE;
    local_482 = '\0';
    local_483 = '\0';
    bVar22 = ZI8_TRUE;
    bVar20 = ZI8_TRUE;
    local_486 = '\x01';
    local_418 = getCandParam->unk_0x10 - 0x40;
    local_41c = (ziU8*)0x0;
    local_487 = 0;
    local_46e = getParam->firstCandidate;
    local_420 = getParam->elements;
    local_488 = getParam->getOptions;
    local_424 = getParam->candidates;
    local_489 = getParam->wordCharCount;
    local_48a = getParam->getMode;
    local_48b = local_488 & 0x40;
    local_48c = local_488 & 0x10;
    local_48d = local_488 & 0x20;
    bVar18 = ZI8_TRUE;
    local_428 = (ziU8*)0x0;

    *(ziU32*)&local_3a0[5] = *(ziU32*)&local_3a0[4] = *(ziU32*)&local_3a0[3] = *(ziU32*)&local_3a0[2] = *(ziU32*)&local_3a0[1] =
        *(ziU32*)&local_3a0[0] = 0;

    *(ziU32*)&local_3b8[5] = *(ziU32*)&local_3b8[4] = *(ziU32*)&local_3b8[3] = *(ziU32*)&local_3b8[2] = *(ziU32*)&local_3b8[1] =
        *(ziU32*)&local_3b8[0] = 0;
    bVar23 = ZI8_TRUE;
    local_490 = 0;
    local_491 = 0;
    if (getCandParam->unk_0x00 != '\0') {
        local_424 = azStack_308;
    }
    if (local_48a == 0x10) {
        local_48a = 0;
    } else if (local_48a == 0xc) {
        local_48a = 1;
    } else if (local_48a == 0xd) {
        local_48a = 2;
    } else if (local_48a == 3 || local_48a == 0xf || local_48a == 4) {
        if (getParam->elementCount != 0)
            goto LAB_81474748;
        if (local_48a == 4) {
            local_48a = 2;
        } else {
            local_48a = 1;
        }
    }
    if (Zi8GetFormatVersion('\x01', ZI_WORK) >= 8 && Zi8GetTableCount('\x01', 0x1f, ZI_WORK) != 0) {
        local_487 = 1;
    }
    local_48b = local_488 & 0x40;
    local_48c = local_488 & 0x10;
    local_48d = local_488 & 0x20;
    local_488 = local_488 & ~0x10;
    local_488 = local_488 & ~0x20;
    local_488 = local_488 & ~0x40;
    // local_488 = bVar1 & 0x8f;
    if ((getParam->subLanguage & 0x80) != 0 || (getParam->subLanguage & 0x40) != 0) {
        mandarinRegionMask = 1;
    } else if ((getParam->subLanguage & 0x08) != 0) {
        mandarinRegionMask = 4;
    } else if ((getParam->subLanguage & 0x20) != 0 || (getParam->subLanguage & 0x10) != 0) {
        mandarinRegionMask = 2;
    }

    if (mandarinRegionMask != 0) {
        if (Zi8GetFormatVersion('\x01', ZI_WORK) >= 4) {
            local_45c = Zi8GetTableCount('\x01', 0x15, ZI_WORK);
        } else {
            local_45c = 0;
        }
        if (local_45c != 0) {
            local_473 = getParam->subLanguage;
        }
        switch (mandarinRegionMask) {
            case 1:
                if ((getParam->subLanguage & 0x40) != 0 || (Zi8GetZHCharSet(ZI_WORK) & 1) != 0) {
                    local_45c = 0;
                }
                break;
            case 2:
                if ((getParam->subLanguage & 0x10) != 0 || (Zi8GetZHCharSet(ZI_WORK) & 0x10) != 0) {
                    local_45c = 0;
                }
                break;
            case 4:
                if ((getParam->subLanguage & 0x10) != 0) {
                    local_45c = 0;
                }
                break;
        }
        if (local_45c != 0) {
            local_45c = Zi8GetTableCount('\x01', 0x1b, ZI_WORK);
            if (local_45c != 0) {
                local_400 = (ziU8*)Zi8GetTableAddress('\x01', 0x1b, ZI_WORK);
            }
            local_3fc = (ziU8*)Zi8GetTableAddress('\x01', 0x15, ZI_WORK);
        }
    } else {
        mandarinRegionMask = getParam->subLanguage;
    }
    mandarinRegionMask = mandarinRegionMask << 4;
    local_46e = getParam->firstCandidate;
    getParam->count = '\0';
    getParam->letters = '\0';
    getParam->wordCandidates = '\0';
    if (local_48a != 7 && local_48a != 10 && local_48a != 8 && local_48a != 9) {
        Zi8PrepareMatch(getParam, &local_208, '\0', ZI_WORK);
    } else {
        // bVar36 = local_479;
        if (!ZI_WORK->handleCangjie || getParam->elementCount > 6) {
            bVar18 = ZI8_FALSE;
            goto LAB_81474748;
        }
        if (getParam->elementCount == 0) {
            local_48a = 7;
        } else if ((getParam->elementCount == 1 || (getParam->elementCount == '\x02' && local_420[1] == L' ')) &&
                   (local_48a == 8 || local_48a == 10)) {
            local_48a = 7;
        } else if (local_48a == 8 || local_48a == 10 || local_48a == 9) {
            local_3a0[0][0] = local_3b8[0][0] = 0xFF;
            if (getParam->elementCount > 3 || (getParam->elementCount > 2 && local_420[2] != L' ')) {
                if (local_48a == 9) {
                    bVar18 = ZI8_FALSE;
                    goto LAB_81474748;
                }
                local_48a = 7;
            } else {
                if (local_48a == 10) {
                    local_48a = 9;
                }
                for (local_3cc = 0; local_3cc < 6; local_3cc++) {
                    local_208.strokeMask[local_3cc] = local_208.strokeData[local_3cc] = 0;
                }
                if ('A' <= *local_420 && *local_420 <= 'Y') {
                    local_208.strokeMask[0] = 0x1f;
                    local_208.strokeData[0] = zi8CangjieCodes[*local_420 - 'A'];
                } else {
                    if (PAD_KEY(2) <= *local_420 && *local_420 <= PAD_KEY(9)) {
                        local_208.strokeMask[0] = 0x1c;
                        local_208.strokeData[0] = (*local_420 - PAD_KEY(2)) << 2;
                    }
                }
                if (getParam->elementCount > 1 && local_420[1] != L' ') {
                    if ('A' <= local_420[1] && local_420[1] <= 'Y') {
                        local_208.strokeMask[1] = 0x1f;
                        local_208.strokeData[1] = zi8CangjieCodes[local_420[1] - 'A'];
                    } else {
                        if (PAD_KEY(2) <= local_420[1] && local_420[1] <= PAD_KEY(9)) {
                            local_208.strokeMask[1] = 0x1c;
                            local_208.strokeData[1] = (*local_420 - PAD_KEY(2)) << 2;
                        }
                    }
                    local_3a0[1][0] = local_3b8[1][0] = 0xFF;
                    local_414 = (local_208.strokeMask[0] << 3) | (local_208.strokeMask[1] << 8) | 0x7;
                    local_3a0[2][0] = (local_414 >> 0x00) & 0xFF;
                    local_3a0[2][1] = (local_414 >> 0x08) & 0xFF;
                    local_414 = (local_208.strokeData[0] << 3) | (local_208.strokeData[1] << 8) | 0x2;
                    local_3b8[2][0] = (local_414 >> 0x00) & 0xFF;
                    local_3b8[2][1] = (local_414 >> 0x08) & 0xFF;

                    local_414 = (local_208.strokeMask[0] << 3) | (local_208.strokeMask[1] << 13) | 0x7;
                    local_3a0[3][0] = (local_414 >> 0x00) & 0xFF;
                    local_3a0[3][1] = (local_414 >> 0x08) & 0xFF;
                    local_3a0[3][2] = (local_414 >> 0x10) & 0xFF;
                    local_414 = (local_208.strokeData[0] << 3) | (local_208.strokeData[1] << 13) | 0x3;
                    local_3b8[3][0] = (local_414 >> 0x00) & 0xFF;
                    local_3b8[3][1] = (local_414 >> 0x08) & 0xFF;
                    local_3b8[3][2] = (local_414 >> 0x10) & 0xFF;

                    local_414 = (local_208.strokeMask[0] << 3) | (local_208.strokeMask[1] << 18) | 0x7;
                    local_3a0[4][0] = (local_414 >> 0x00) & 0xFF;
                    local_3a0[4][1] = (local_414 >> 0x08) & 0xFF;
                    local_3a0[4][2] = (local_414 >> 0x10) & 0xFF;
                    local_3a0[4][3] = (local_414 >> 0x18) & 0xFF;
                    local_414 = (local_208.strokeData[0] << 3) | (local_208.strokeData[1] << 18) | 0x4;
                    local_3b8[4][0] = (local_414 >> 0x00) & 0xFF;
                    local_3b8[4][1] = (local_414 >> 0x08) & 0xFF;
                    local_3b8[4][2] = (local_414 >> 0x10) & 0xFF;
                    local_3b8[4][3] = (local_414 >> 0x18) & 0xFF;

                    local_414 = (local_208.strokeMask[0] << 3) | (local_208.strokeMask[1] << 23) | 0x7;
                    local_3a0[5][0] = (local_414 >> 0x00) & 0xFF;
                    local_3a0[5][1] = (local_414 >> 0x08) & 0xFF;
                    local_3a0[5][2] = (local_414 >> 0x10) & 0xFF;
                    local_3a0[5][3] = (local_414 >> 0x18) & 0xFF;
                    local_414 = (local_208.strokeData[0] << 3) | (local_208.strokeData[1] << 23) | 0x5;
                    local_3b8[5][0] = (local_414 >> 0x00) & 0xFF;
                    local_3b8[5][1] = (local_414 >> 0x08) & 0xFF;
                    local_3b8[5][2] = (local_414 >> 0x10) & 0xFF;
                    local_3b8[5][3] = (local_414 >> 0x18) & 0xFF;
                } else {
                    if (1 < getParam->elementCount) {
                        local_208.strokeMask[5] = 7;
                        local_208.strokeData[5] = 1;
                    }
                    local_414 = local_208.strokeMask[0] << 3 | local_208.strokeMask[5];
                    local_3a0[1][0] = local_3a0[2][0] = local_3a0[3][0] = local_3a0[4][0] = local_3a0[5][0] = local_414;
                    local_414 = (ziU32)local_208.strokeData[0] << 3 | (ziU32)local_208.strokeData[5];
                    local_3b8[1][0] = local_3b8[2][0] = local_3b8[3][0] = local_3b8[4][0] = local_3b8[5][0] = local_414;
                }
            }
        }
        for (local_3cc = 0; local_3cc < 6; local_3cc++) {
            local_208.strokeMask[local_3cc] = local_208.strokeData[local_3cc] = '\0';
        }
        for (local_3cc = 0; local_3cc < getParam->elementCount; local_3cc++) {
            if ('A' <= local_420[local_3cc] && local_420[local_3cc] <= 'Y') {
                local_208.strokeMask[local_3cc] = 0x1F;
                local_208.strokeData[local_3cc] = zi8CangjieCodes[local_420[local_3cc] - 'A'];
            } else if (local_420[local_3cc] != '*') {
                if (PAD_KEY(2) <= local_420[local_3cc] && local_420[local_3cc] <= PAD_KEY(9)) {
                    local_208.strokeMask[local_3cc] = 0x1C;
                    local_208.strokeData[local_3cc] = (local_420[local_3cc] - PAD_KEY(2)) << 2;
                }
                if (local_420[local_3cc] == L' ') {
                    local_208.strokeMask[5] = 7;
                    local_208.strokeData[5] = local_3cc;
                    if ((local_3cc == 0) || (local_3cc + 1 != getParam->elementCount)) {
                        bVar18 = ZI8_FALSE;
                        goto LAB_81474748;
                    }
                    break;
                }
            }
        }
        if (local_3cc >= 6) {
            bVar18 = ZI8_FALSE;
            goto LAB_81474748;
        }
        if (local_3cc != 0) {
            local_208.maskIdx = local_3cc;
        } else {
            local_208.maskIdx = 1;
        }
        local_414 = (ziU32)local_208.strokeMask[0] << 3 | (ziU32)local_208.strokeMask[1] << 8 | (ziU32)local_208.strokeMask[2] << 0xd |
                    (ziU32)local_208.strokeMask[3] << 0x12 | (ziU32)local_208.strokeMask[4] << 0x17 | local_208.strokeMask[5];
        local_208.shortStrokeMask[0] = local_414 & 0xFF;
        local_208.shortStrokeMask[1] = (ziU8)(local_414 >> 0x08 & 0xFF);
        local_208.shortStrokeMask[2] = (ziU8)(local_414 >> 0x10 & 0xFF);
        local_208.shortStrokeMask[3] = (ziU8)(local_414 >> 0x18 & 0xFF);
        // uVar31 = (ziU32)local_208.strokeData[2] << 0xd | (ziU32)local_208.strokeData[0] << 3 | (ziU32)local_208.strokeData[1] << 8;
        // uVar42 = (ziU32)local_208.strokeData[4] << 0x17 | (ziU32)local_208.strokeData[3] << 0x12 | uVar31;
        local_414 = (ziU32)local_208.strokeData[0] << 3 | (ziU32)local_208.strokeData[1] << 8 | (ziU32)local_208.strokeData[2] << 0xd |
                    (ziU32)local_208.strokeData[3] << 0x12 | (ziU32)local_208.strokeData[4] << 0x17 | local_208.strokeData[5];
        local_208.shortStrokeData[0] = local_414 & 0xFF;
        local_208.shortStrokeData[1] = (ziU8)(local_414 >> 0x08 & 0xFF);
        local_208.shortStrokeData[2] = (ziU8)(local_414 >> 0x10 & 0xFF);
        local_208.shortStrokeData[3] = (ziU8)(local_414 >> 0x18 & 0xFF);
    }
    local_414 = 0;
    // bVar36 = local_479;
    if ((local_48a == 1 || local_48a == 2) && local_208.syllMasks[0] == 0xFFFF && local_208.syllPhons[0] == 0xFFFF &&
        ((local_48a != 2 || getParam->elementCount != 1 ||
          !(BPMF_CHAR(BPMF_CHAR_INITIAL_B) <= *local_420 && *local_420 <= BPMF_CHAR(BPMF_CHAR_MEDIAL_IU))))) {
        local_208.syllCount = 0;
    } else if (local_208.maskIdx <= 0x17) {
        if ((local_48d != 0) && ((local_48a == 1 || (local_48a == 2)))) {
            local_48d = 0;
            for (local_3cc = 0; (int)local_3cc < local_208.syllCount; local_3cc = local_3cc + 1) {
                local_43e = 0;
                if (local_48a == 1) {
                    switch (local_208.syllPhons[local_3cc] >> PINYIN_INITIAL_SHIFT) {
                        case INITIAL_C:
                        case INITIAL_CH:
                            if (ZI_WORK->pyFuzzyPairs.cANDch) {
                                local_43e = ~((INITIAL_C ^ INITIAL_CH) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_S:
                        case INITIAL_SH:
                            if (ZI_WORK->pyFuzzyPairs.sANDsh) {
                                local_43e = ~((INITIAL_S ^ INITIAL_SH) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_Z:
                        case INITIAL_ZH:
                            if (ZI_WORK->pyFuzzyPairs.zANDzh) {
                                local_43e = ~((INITIAL_Z ^ INITIAL_ZH) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_F:
                        case INITIAL_H:
                            if (ZI_WORK->pyFuzzyPairs.fANDh) {
                                local_43e = ~((INITIAL_F ^ INITIAL_H) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_N:
                            if (ZI_WORK->pyFuzzyPairs.nANDl) {
                                local_43e = ~((INITIAL_N ^ INITIAL_L) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_L:
                            if (ZI_WORK->pyFuzzyPairs.nANDl && ZI_WORK->pyFuzzyPairs.lANDr) {
                                local_43e = ~((INITIAL_N ^ INITIAL_L) << PINYIN_INITIAL_SHIFT) & ~((INITIAL_L ^ INITIAL_R) << PINYIN_INITIAL_SHIFT);
                            } else if (ZI_WORK->pyFuzzyPairs.lANDr) {
                                local_43e = ~((INITIAL_L ^ INITIAL_R) << PINYIN_INITIAL_SHIFT);
                            } else if (ZI_WORK->pyFuzzyPairs.nANDl) {
                                local_43e = ~((INITIAL_N ^ INITIAL_L) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_R:
                            if (ZI_WORK->pyFuzzyPairs.lANDr) {
                                local_43e = ~((INITIAL_L ^ INITIAL_R) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                    }
                } else {
                    switch (local_208.syllPhons[local_3cc] >> 9) {
                        case INITIAL_C:
                        case INITIAL_CH:
                            if (ZI_WORK->zyFuzzyPairs.cANDch) {
                                local_43e = ~((INITIAL_C ^ INITIAL_CH) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_S:
                        case INITIAL_SH:
                            if (ZI_WORK->zyFuzzyPairs.sANDsh) {
                                local_43e = ~((INITIAL_S ^ INITIAL_SH) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_Z:
                        case INITIAL_ZH:
                            if (ZI_WORK->zyFuzzyPairs.zANDzh) {
                                local_43e = ~((INITIAL_Z ^ INITIAL_ZH) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_G:
                        case INITIAL_K:
                            if (ZI_WORK->zyFuzzyPairs.gANDk) {
                                local_43e = ~((INITIAL_G ^ INITIAL_K) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_F:
                        case INITIAL_H:
                            if (ZI_WORK->zyFuzzyPairs.fANDh) {
                                local_43e = ~((INITIAL_F ^ INITIAL_H) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_B:
                        case INITIAL_P:
                            if (ZI_WORK->zyFuzzyPairs.bANDp) {
                                local_43e = ~((INITIAL_B ^ INITIAL_P) << PINYIN_INITIAL_SHIFT);
                            }
                            break;

                        // @bug Wrong value used for INITIAL_R in multiple
                        // places here
                        case INITIAL_N:
                            if (ZI_WORK->zyFuzzyPairs.nANDl && ZI_WORK->zyFuzzyPairs.rANDn) {
                                local_43e = ~((INITIAL_N ^ INITIAL_L) << PINYIN_INITIAL_SHIFT) & ~((0b101000 ^ INITIAL_N) << PINYIN_INITIAL_SHIFT);
                            } else if (ZI_WORK->zyFuzzyPairs.nANDl) {
                                local_43e = ~((INITIAL_N ^ INITIAL_L) << PINYIN_INITIAL_SHIFT);
                            } else if (ZI_WORK->zyFuzzyPairs.rANDn) {
                                local_43e = ~((0b101000 ^ INITIAL_N) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_L:
                            if (ZI_WORK->zyFuzzyPairs.nANDl && ZI_WORK->zyFuzzyPairs.lANDr) {
                                local_43e = ~((INITIAL_N ^ INITIAL_L) << PINYIN_INITIAL_SHIFT) & ~((INITIAL_L ^ INITIAL_R) << PINYIN_INITIAL_SHIFT);
                            } else if (ZI_WORK->zyFuzzyPairs.lANDr) {
                                local_43e = ~((INITIAL_L ^ INITIAL_R) << PINYIN_INITIAL_SHIFT);
                            } else if (ZI_WORK->zyFuzzyPairs.nANDl) {
                                local_43e = ~((INITIAL_N ^ INITIAL_L) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                        case INITIAL_R:
                            if (ZI_WORK->zyFuzzyPairs.rANDn && ZI_WORK->zyFuzzyPairs.lANDr) {
                                local_43e = ~((0b101000 ^ INITIAL_N) << PINYIN_INITIAL_SHIFT) & ~((INITIAL_L ^ INITIAL_R) << PINYIN_INITIAL_SHIFT);
                            } else if (ZI_WORK->zyFuzzyPairs.rANDn) {
                                local_43e = ~((0b101000 ^ INITIAL_N) << PINYIN_INITIAL_SHIFT);
                            } else if (ZI_WORK->zyFuzzyPairs.lANDr) {
                                local_43e = ~((INITIAL_L ^ INITIAL_R) << PINYIN_INITIAL_SHIFT);
                            }
                            break;
                    }
                }
                if (local_43e != 0) {
                    local_48d = 1;
                    local_208.syllPhons[local_3cc] &= local_43e;
                    local_208.syllMasks[local_3cc] &= local_43e;
                    if (local_3cc == 0) {
                        local_208.closedSyllMask &= local_43e;
                        local_208.closedSyllPhon &= local_43e;
                    }
                }
                local_43e = 0;
                if (local_48a == 1) {
                    switch (local_208.syllPhons[local_3cc] & (0b111110 << PINYIN_FINAL_SHIFT)) {
                        case 0x010:
                        case 0x080:
                        case 0x100:
                            if (ZI_WORK->pyFuzzyPairs.anANDang) {
                                local_43e = 0xfff7;
                            }
                            break;

                        case 0x180:
                            if (ZI_WORK->pyFuzzyPairs.enANDeng) {
                                local_43e = 0xfff7;
                            }
                            break;

                        case 0x060:
                            if (ZI_WORK->pyFuzzyPairs.inANDing) {
                                local_43e = 0xfff7;
                            }
                            break;
                    }
                } else {
                    switch (local_208.syllPhons[local_3cc] & (0b111110 << PINYIN_FINAL_SHIFT)) {
                        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_AN) << PINYIN_FINAL_SHIFT:
                        case PINYIN_FINAL(BPMF_MEDIAL_I, BPMF_RIME_AN) << PINYIN_FINAL_SHIFT:
                        case PINYIN_FINAL(BPMF_MEDIAL_U, BPMF_RIME_AN) << PINYIN_FINAL_SHIFT:
                            if (ZI_WORK->zyFuzzyPairs.anANDang) {
                                local_43e = ~((BPMF_RIME_AN ^ BPMF_RIME_ANG) << PINYIN_RIME_SHIFT);
                            }
                            break;

                        case PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_EN) << PINYIN_FINAL_SHIFT:
                            if (ZI_WORK->zyFuzzyPairs.enANDeng) {
                                local_43e = ~((BPMF_RIME_EN ^ BPMF_RIME_ENG) << PINYIN_RIME_SHIFT);
                            }
                            break;
                    }
                }
                if (local_43e != 0) {
                    local_48d = 1;
                    local_208.syllPhons[local_3cc] &= local_43e;
                    local_208.syllMasks[local_3cc] &= local_43e;
                    if (local_3cc == 0) {
                        local_208.closedSyllMask &= local_43e;
                        local_208.closedSyllPhon &= local_43e;
                    }
                }
            }
            if (getParam->elementCount != '\0') {
                if (local_48a == 1) {
                    tab34Data = (ziU8*)Zi8GetTableAddress('\x01', 3, ZI_WORK);
                    local_43e = Zi8GetTableCount('\x01', 3, ZI_WORK);
                } else {
                    tab34Data = (ziU8*)Zi8GetTableAddress('\x01', 4, ZI_WORK);
                    local_43e = Zi8GetTableCount('\x01', 4, ZI_WORK);
                }
                local_45c = local_208.syllMasks[local_208.syllCount - 1] & (ziU16)~PINYIN_TONE_MASK;
                local_45e = local_208.syllPhons[local_208.syllCount - 1] & (ziU16)~PINYIN_TONE_MASK;

                for (local_3cc = 0; local_3cc < local_43e; local_3cc++) {
                    local_442 = tab34Data[local_3cc * 2] | ((ziU16)tab34Data[local_3cc * 2 + 1] << 8);
                    if (local_45e == (local_442 & local_45c))
                        break;
                }
                // bVar36 = local_479;
                if (local_3cc == local_43e)
                    goto LAB_81474748;
            }
        }
        if ((getCandParam->unk_0x00 || local_488 == 2 || getParam->elementCount == 0 || *local_420 == 0xef09) && local_488 != 1) {
            bVar22 = ZI8_FALSE;
        }
        // bVar36 = local_479;

        if (local_48a == 5) {
            bVar22 = ZI8_TRUE;
            if (local_208.multicharStrokeCount > 1)
                goto LAB_81474748;
        }
        if (local_48a == 0 && getParam->elementCount != 0) {
            if ((getParam->context & 0x10) == 0 && (local_420[getParam->elementCount - 1] == PINYIN_CHAR('`') || local_208.multicharStrokeCount > 1))
                goto LAB_81474748;
            if (local_208.multicharStrokeCount > 1) {
                bVar22 = ZI8_FALSE;
                for (local_45c = 1; local_45c < local_208.multicharStrokeCount; local_45c++) {
                    for (local_45e = 4; local_45e < 0xc; local_45e++) {
                        if (local_208.multicharStrokeMask[local_45c][local_45e] != 0x00)
                            goto LAB_81474748;
                    }
                }
            }
        }
        if ((getParam->context & 0x10) != 0) {
            if (local_424 == ZI8_NULL) {
                Zi8LogError(0x162, ZI_WORK);
                return 0;
            }
            local_483 = 1;
            if (getParam->letters != '\0') {
                getParam->letters = getParam->elementCount;
            }
        }
        if (getCandParam->unk_0x13 == '\0') {
            Zi8InitDupWordBuf(ZI_WORK);
        }
        tab0Entries = (Table0Entry*)Zi8GetTableAddress('\x01', 0, ZI_WORK);
        tab0Count = Zi8GetTableCount('\x01', 0, ZI_WORK);
        tab1Data = (ziU8*)Zi8GetTableAddress('\x01', 1, ZI_WORK);
        if ((local_48a == 2) || (local_48a == 1)) {
            tab5Entries = (Table5Entry*)Zi8GetTableAddress('\x01', 5, ZI_WORK);
            tab5Count = Zi8GetTableCount('\x01', 5, ZI_WORK);
        }
        if ((getParam->context & 0x40) != 0 && Zi8GetFormatVersion('\x01', ZI_WORK) >= 1) {
            local_470 = Zi8GetTableCount('\x01', 0xf, ZI_WORK);
            if (local_470 != 0)
                tab0Count = local_470;
        }
        if ((getParam->context & 0x80) != 0 && getParam->scratch != ZI8_NULL) {
            Zi8Memset(getParam->scratch, 0, (tab0Count + 7) / 8);
            local_482 = '\x01';
        }
        switch (local_48a) {
            case 1:
                tab34Data = (ziU8*)Zi8GetTableAddress('\x01', 3, ZI_WORK);
                if (Zi8GetFormatVersion('\x01', ZI_WORK) >= 1 && local_208.syllCount == 1 && Zi8GetTableCount('\x01', 0xd, ZI_WORK) != 0 &&
                    Zi8GetTableCount('\x01', 0xe, ZI_WORK) != 0) {
                    bVar25 = ZI8_TRUE;
                }
                break;

            case 2:
                tab34Data = (ziU8*)Zi8GetTableAddress('\x01', 4, ZI_WORK);
                if (Zi8GetFormatVersion('\x01', ZI_WORK) >= 1 && local_208.syllCount == 1 && Zi8GetTableCount('\x01', 0xd, ZI_WORK) != 0 &&
                    Zi8GetTableCount('\x01', 0xe, ZI_WORK) != 0) {
                    bVar25 = ZI8_TRUE;
                }
                break;

            case 0:
            case 5:
                if (local_3e8 == ZI8_NULL) {
                    local_468 = Zi8GetTableCount('\x01', 7, ZI_WORK);
                    local_3ec = (ziU8*)Zi8GetTableAddress('\x01', 7, ZI_WORK);
                    local_3e4 = (Table2Entry*)Zi8GetTableAddress('\x01', 2, ZI_WORK);
                    local_3e8 = local_3e4;
                    local_3e4++;
                    local_468--;
                    local_46c = local_468;
                    local_44a = 0;
                    bVar19 = ZI8_TRUE;
                    // local_468 = local_46c;
                }
                break;
        }
        if ((getParam->context & 2) != 0) {
            local_404 = (ziU8*)Zi8GetTableAddress('\x01', 8, ZI_WORK);
            local_456 = Zi8GetTableCount('\x01', 8, ZI_WORK);
        } else if ((getParam->context & 4) != 0) {
            local_404 = (ziU8*)Zi8GetTableAddress('\x01', 9, ZI_WORK);
            local_456 = Zi8GetTableCount('\x01', 9, ZI_WORK);
        }
        if (1 < local_208.multicharStrokeCount) {
            local_404 = ZI8_NULL;
            local_456 = 0;
        }
        if (local_456 > ZI_WORK->unk_0x0C) {
            local_456 = ZI_WORK->unk_0x0C;
        }
        if (local_456 == 0 && local_48a == 0 && getParam->elementCount == 1 && *local_420 == 0xef00) {
            for (local_3cc = 0; local_3cc < 4; local_3cc++) {
                local_44c = (ziWChar)ziPuncts[local_3cc];
                if (local_483 == 0) {
                    for (local_45c = 0; local_45c < local_479; local_45c++) {
                        if (local_44c == local_424[local_45c])
                            break;
                    }
                    if (local_45c < local_479) {
                        continue;
                    }
                } else {
                    if (Zi8IsDupWordW(&local_44c, 1, ZI_WORK))
                        continue;
                }
                if (local_46e != 0) {
                    local_46e--;
                } else {
                    local_414 = local_414 + 1;
                    if (getCandParam->unk_0x00 == '\0') {
                        if (local_483 != '\0') {
                            local_479++;
                            local_424[local_3dc++] = local_44c;
                            local_424[local_3dc++] = L' ';
                            if (local_3dc > local_418)
                                goto LAB_81474748;
                        } else {
                            local_424[local_479++] = local_44c;
                        }
                        // local_479 = local_479 + 1;
                        // bVar36 = local_479;
                        if (local_479 >= getParam->maxCandidates)
                            goto LAB_81474748;
                    } else {
                        // bVar36 = local_479;
                        if (local_414 >= getCandParam->maxSize)
                            goto LAB_81474748;
                    }
                }
            }
        }
    } else
        goto LAB_81474748;

    do {
        if ((!getCandParam->unk_0x00 || local_488 == 5) && (getParam->elementCount == 0 || !Zi8IsComponent(*local_420, ZI_WORK)) &&
            (getParam->wordCharCount == 0 || Zi8IsCharacter(*getParam->currentWord, ZI_WORK)) && local_48a != 5 &&
            ((local_48a != 1 && local_48a != 2) || local_208.syllCount <= 1) && (getParam->wordCharCount != 0 || getParam->elementCount != 0)) {
            local_471 = 0;
            while (Zi8MatchOEMdata(getParam->currentWord, getParam->wordCharCount, 1, (ziWChar*)local_288, 0x20, 0, local_471, ZI_WORK)) {
                local_471 = 1;
                local_44c = local_288[getParam->wordCharCount];
                if (!Zi8IsCharacter(local_44c, ZI_WORK))
                    continue;
                if (local_483 == '\0' && local_44c == local_454)
                    continue;

                local_454 = local_44c;
                local_448 = Zi8Uni2Ord(local_44c, ZI_WORK);
                if (local_448 == 0xFFFF)
                    continue;

                currTab0 = tab0Entries + local_448;
                local_47d = '\0';
                switch (local_48a) {
                    case 7:
                    case 8:
                        local_428 = tab1Data + (currTab0->tab1OffsLo | (currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));
                        if ((*local_428 & 7) >= local_208.maskIdx && local_208.shortStrokeData[0] == (local_208.shortStrokeMask[0] & local_428[0]) &&
                            local_208.shortStrokeData[1] == (local_208.shortStrokeMask[1] & local_428[1]) &&
                            local_208.shortStrokeData[2] == (local_208.shortStrokeMask[2] & local_428[2]) &&
                            local_208.shortStrokeData[3] == (local_208.shortStrokeMask[3] & local_428[3])) {
                            local_47d = '\x01';
                            break;
                        } else if (local_48a == 7) {
                            break;
                        }
                    case 9:
                        local_428 = tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));
                        local_3cc = *local_428 & 7;
                        if ((local_428[0] & local_3a0[local_3cc][0]) == local_3b8[local_3cc][0] &&
                            (local_428[1] & local_3a0[local_3cc][1]) == local_3b8[local_3cc][1] &&
                            (local_428[2] & local_3a0[local_3cc][2]) == local_3b8[local_3cc][2] &&
                            (local_428[3] & local_3a0[local_3cc][3]) == local_3b8[local_3cc][3]) {
                            local_47d = 1;
                        }
                        break;

                    case 0:
                        if (local_208.strokeData[0] == (currTab0->maskBytes[0] & local_208.strokeMask[0]) &&
                            (local_208.unk_0x000 || (local_208.strokeData[3] == (currTab0->maskBytes[3] & local_208.strokeMask[3]) &&
                                                     local_208.strokeData[2] == (currTab0->maskBytes[2] & local_208.strokeMask[2]) &&
                                                     local_208.strokeData[1] == (currTab0->maskBytes[1] & local_208.strokeMask[1]))) &&
                            Zi8SecMatchChar(currTab0, local_3e8, &local_208, ZI8_NULL, ZI_WORK) != 0) {
                            local_47d = 1;
                        }
                        if (local_47d == 0 || local_48a != 0 || local_208.multicharStrokeCount <= 1)
                            break;

                        local_47b = 0;
                        local_3cc = getParam->wordCharCount;
                        while (local_288[local_3cc] != L'\0') {
                            local_3cc++;
                            local_47b++;
                        }
                        if (local_208.multicharStrokeCount > local_47b) {
                            local_47d = '\0';
                            break;
                        }

                        for (local_3cc = 1; local_3cc < local_208.multicharStrokeCount; local_3cc++) {
                            local_44c = local_288[getParam->wordCharCount + local_3cc];
                            local_448 = Zi8Uni2Ord(local_44c, ZI_WORK);
                            if (local_448 == 0xFFFF)
                                break;

                            currTab0 = tab0Entries + local_448;
                            if (local_208.multicharStrokeData[local_3cc][0] != (currTab0->maskBytes[0] & local_208.multicharStrokeMask[local_3cc][0]))
                                break;
                            if (local_208.multicharStrokeData[local_3cc][1] != (currTab0->maskBytes[1] & local_208.multicharStrokeMask[local_3cc][1]))
                                break;
                            if (local_208.multicharStrokeData[local_3cc][2] != (currTab0->maskBytes[2] & local_208.multicharStrokeMask[local_3cc][2]))
                                break;
                            if (local_208.multicharStrokeData[local_3cc][3] != (currTab0->maskBytes[3] & local_208.multicharStrokeMask[local_3cc][3]))
                                break;
                        }
                        if (local_3cc < local_208.multicharStrokeCount) {
                            local_47d = '\0';
                        }
                        break;

                    case 1:
                    case 2:
                        // uVar31 = ;
                        // uVar31 = countLeadingZeros();
                        local_47d = ((Zi8GetPCode(tab34Data, currTab0) & local_208.syllMasks[0]) - local_208.syllPhons[0]) == 0;
                        if (!local_47d && (currTab0->maskBytes[0] & 0x80) != 0 && local_48b == 0 &&
                            Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, local_448, local_208.syllMasks[0], local_208.syllPhons[0],
                                             mandarinRegionMask, ZI_WORK) != 0) {
                            local_47d = ZI8_TRUE;
                        }
                        if (!local_47d || local_208.syllCount <= 1)
                            break;

                        local_47b = 0;
                        local_3cc = getParam->wordCharCount;
                        while (local_288[local_3cc] != L'\0') {
                            local_3cc++;
                            local_47b++;
                        }
                        if (local_208.syllCount > local_47b) {
                            local_47d = ZI8_FALSE;
                            break;
                        }

                        for (local_3cc = 1; local_3cc < local_208.syllCount; local_3cc++) {
                            local_44c = local_288[getParam->wordCharCount + local_3cc];
                            local_448 = Zi8Uni2Ord(local_44c, ZI_WORK);
                            if (local_448 == 0xFFFF)
                                break;

                            currTab0 = tab0Entries + local_448;
                            local_47d = ((Zi8GetPCode(tab34Data, currTab0) & local_208.syllMasks[local_3cc]) - local_208.syllPhons[local_3cc]) == 0;
                            if (!local_47d && (currTab0->maskBytes[0] & 0x80) != 0 && local_48b == 0 &&
                                Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, local_448, local_208.syllMasks[local_3cc],
                                                 local_208.syllPhons[local_3cc], mandarinRegionMask, ZI_WORK) != 0) {
                                local_47d = ZI8_TRUE;
                            }
                            if (!local_47d)
                                break;
                        }
                        if (local_3cc < local_208.syllCount) {
                            local_47d = ZI8_FALSE;
                        }
                        break;
                }

                if (local_47d == 0)
                    continue;
                if (local_483 == 0) {
                    if (local_482 != 0) {
                        if (Zi8SetFindCand(getParam->scratch, local_448, ZI_WORK) != 0)
                            continue;
                    } else {
                        if (Zi8IsDupWChar(local_448, ZI_WORK))
                            continue;
                    }
                } else {
                    local_47b = 0;
                    local_3cc = getParam->wordCharCount;
                    while (local_288[local_3cc] != L'\0') {
                        local_3cc++;
                        local_47b++;
                    }
                    if (getParam->elementCount != 0) {
                        if (((local_48a == 1) || (local_48a == 2)) && (local_208.syllCount != 0)) {
                            if (local_48c != 0) {
                                local_47b = local_208.syllCount;
                            }
                        } else if ((local_48a == 0) && (1 < local_208.multicharStrokeCount)) {
                            if (local_48c != 0) {
                                local_47b = local_208.multicharStrokeCount;
                            }
                        } else {
                            local_47b = 1;
                        }
                    } else {
                        if (local_48c != 0) {
                            local_47b = 1;
                        }
                    }
                    local_288[getParam->wordCharCount + local_47b] = L'\0';
                    if (Zi8IsDupWordW(local_288 + getParam->wordCharCount, local_47b, ZI_WORK))
                        continue;
                }
                if (local_46e != 0) {
                    local_46e--;
                    continue;
                }
                local_414++;
                if (local_488 == 5) {
                    if (local_414 >= getCandParam->maxSize)
                        goto LAB_81474748;
                    continue;
                }
                if (local_483 != 0) {
                    local_479++;
                    for (local_3cc = getParam->wordCharCount; local_288[local_3cc] != L'\0'; local_3cc = local_3cc + 1) {
                        local_424[local_3dc++] = local_288[local_3cc];
                    }
                    local_424[local_3dc++] = 0x20;
                    if (local_3dc > local_418) {
                        getParam->count = local_479;
                        getParam->wordCandidates = local_479;
                        goto LAB_81474748;
                    }
                } else {
                    local_424[local_479++] = local_44c;
                }
                if (local_479 >= getParam->maxCandidates) {
                    getParam->count = local_479;
                    getParam->wordCandidates = local_479;
                    goto LAB_81474748;
                }
            }
        }
        if (ZI_WORK->unk_0x12D != 0) {
            local_490 = ZI_WORK->pudTopIdx;
            local_491 = 1;
            ZI_WORK->pudTopIdx = ZI_WORK->unk_0x12D;
        }

        while (ZI8_TRUE) {
            if (((!getCandParam->unk_0x00 || local_488 == 5) && local_489 != 0 && local_48a != 5 &&
                 (getParam->elementCount == 0 || !Zi8IsComponent(*local_420, ZI_WORK)) && Zi8IsCharacter(*getParam->currentWord, ZI_WORK)) ||
                (local_48a == 2 && getParam->elementCount > 1) || (local_48a == 0 && local_208.multicharStrokeCount > 1) ||
                ((local_48a == 1 || local_48a == 2) && local_208.syllCount > 1)) {
                local_471 = 0;
            LAB_8146e8f8:
                while ((local_3cc = Zi8MatchPUDdata_ZHS(getParam->currentWord, local_489, ZI8_LANG_ZH, (ziU16*)local_288, 0x20, local_388, 0x40, 0,
                                                        local_471, ZI_WORK)) != 0) {
                    // local_3cc = ;
                    // local_3cc = local_3cc & 0xff;
                    // if (local_3cc == 0)
                    //     goto LAB_8146e94c;
                    local_471 = 1;
                    local_288[local_3cc] = L'\0';
                    if ((getParam->elementCount != '\0') && (((local_48a != 0 || (getParam->elementCount != '\x01')) || (*local_420 != 0xef00))))
                        goto LAB_8146dc48;
                    local_44c = local_288[local_489];
                    switch (local_44c) {
                        case 0x3002:  // '。'
                        case 0xFF01:  // '！'
                        case 0xFF0C:  // '，'
                        case 0xFF1F:  // '？'
                            local_47d = ZI8_TRUE;
                            local_448 = 0xFFFF;
                            goto LAB_8146e534;
                    }
                    // if (local_44c == L'，') {
                    // LAB_8146dc30:
                    //     local_448 = L'\xffff';
                    //     goto LAB_8146e534;
                    // }
                    // if ((ziU16)local_44c < 0xff0c) {
                    //     if ((local_44c == L'！') || (((ziU16)local_44c < 0xff01 && (local_44c == L'。'))))
                    //         goto LAB_8146dc30;
                    // } else if (local_44c == L'？')
                    //     goto LAB_8146dc30;
                LAB_8146dc48:
                    if ((local_48a != 2) || (local_3cc < getParam->elementCount + local_489))
                        goto LAB_1163;
                    local_45c = 0;
                    local_45e = (ziU16)local_489;
                    while ((local_45c < getParam->elementCount)) {
                        if ((local_288[local_45e] != 0x2C9 || local_420[local_45c] != PINYIN_TONE(1)) &&  // 'ˉ'
                            (local_288[local_45e] != 0x2CA || local_420[local_45c] != PINYIN_TONE(2)) &&  // 'ˊ'
                            (local_288[local_45e] != 0x2C7 || local_420[local_45c] != PINYIN_TONE(3)) &&  // 'ˇ'
                            (local_288[local_45e] != 0x2CB || local_420[local_45c] != PINYIN_TONE(4)) &&  // 'ˋ'
                            (local_288[local_45e] != 0x2D9 || local_420[local_45c] != PINYIN_TONE(5)) &&  // '˙'
                            local_288[local_45e] != local_420[local_45c] - 0xc200)
                            break;
                        local_45e++;
                        local_45c++;
                    }
                    if (local_45c == getParam->elementCount) {
                        if ((getParam->context & 0x10) == 0) {
                            getParam->letters = getParam->elementCount;
                        }
                        local_47d = ZI8_TRUE;
                        local_44c = local_288[local_489];
                        local_448 = 0xFFFF;
                        goto LAB_8146e534;
                    }
                    if (local_208.syllCount == 1)
                        goto LAB_8146e8f8;

                LAB_1163:
                    if (((local_48a == 1) || (local_48a == 2)) && (1 < local_208.syllCount)) {
                        if (local_208.syllCount > (int)(local_3cc - local_489))
                            goto LAB_8146e8f8;
                        for (local_3cc = 1; (int)local_3cc < local_208.syllCount; local_3cc++) {
                            local_44c = local_288[local_489 + local_3cc];
                            local_448 = Zi8Uni2Ord(local_44c, ZI_WORK);
                            if (local_448 == 0xFFFF)
                                break;
                            currTab0 = tab0Entries + local_448;
                            //   uVar31 = countLeadingZeros();
                            local_47d = ((Zi8GetPCode(tab34Data, currTab0) & (ziU32)local_208.syllMasks[local_3cc]) -
                                         (ziU32)local_208.syllPhons[local_3cc]) == 0;
                            if (((local_47d == '\0') && ((currTab0->maskBytes[0] & 0x80) != 0)) &&
                                ((local_48b == 0 && (Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, local_448, local_208.syllMasks[local_3cc],
                                                                      local_208.syllPhons[local_3cc], mandarinRegionMask, ZI_WORK) != 0)))) {
                                local_47d = '\x01';
                            }
                            if (local_47d == '\0')
                                break;
                        }
                        if ((int)local_3cc < local_208.syllCount)
                            goto LAB_8146e8f8;
                    }
                    if (local_48a == 0 && local_208.multicharStrokeCount > 1) {
                        if (local_208.multicharStrokeCount > local_3cc - local_489)
                            goto LAB_8146e8f8;
                        for (local_3cc = 1; (int)local_3cc < local_208.multicharStrokeCount; local_3cc = local_3cc + 1) {
                            local_44c = local_288[local_489 + local_3cc];
                            local_448 = Zi8Uni2Ord(local_44c, ZI_WORK);
                            if (local_448 == 0xFFFF)
                                break;

                            currTab0 = tab0Entries + local_448;
                            if (local_208.multicharStrokeData[local_3cc][0] != (currTab0->maskBytes[0] & local_208.multicharStrokeMask[local_3cc][0]))
                                break;
                            if (local_208.multicharStrokeData[local_3cc][1] != (currTab0->maskBytes[1] & local_208.multicharStrokeMask[local_3cc][1]))
                                break;
                            if (local_208.multicharStrokeData[local_3cc][2] != (currTab0->maskBytes[2] & local_208.multicharStrokeMask[local_3cc][2]))
                                break;
                            if (local_208.multicharStrokeData[local_3cc][3] != (currTab0->maskBytes[3] & local_208.multicharStrokeMask[local_3cc][3]))
                                break;
                        }
                        if ((int)local_3cc < local_208.multicharStrokeCount)
                            goto LAB_8146e8f8;
                    }
                    local_44c = local_288[local_489];
                    local_448 = Zi8Uni2Ord(local_44c, ZI_WORK);
                    if (local_448 == 0xFFFF)
                        goto LAB_8146e8f8;
                    currTab0 = tab0Entries + local_448;
                    local_47d = 0;

                    switch (local_48a) {
                        case 7:
                        case 8:
                            local_428 =
                                tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));
                            if ((*local_428 & 7) >= local_208.maskIdx) {
                                if (local_208.shortStrokeData[0] == (local_208.shortStrokeMask[0] & local_428[0]) &&
                                    local_208.shortStrokeData[1] == (local_208.shortStrokeMask[1] & local_428[1]) &&
                                    local_208.shortStrokeData[2] == (local_208.shortStrokeMask[2] & local_428[2]) &&
                                    local_208.shortStrokeData[3] == (local_208.shortStrokeMask[3] & local_428[3])) {
                                    local_47d = 1;
                                    break;
                                }
                            }
                            if (local_48a == 7)
                                break;
                        case 9:
                            local_428 =
                                tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));
                            local_3cc = *local_428 & 7;
                            if ((local_428[0] & local_3a0[local_3cc][0]) == local_3b8[local_3cc][0] &&
                                (local_428[1] & local_3a0[local_3cc][1]) == local_3b8[local_3cc][1] &&
                                (local_428[2] & local_3a0[local_3cc][2]) == local_3b8[local_3cc][2] &&
                                (local_428[3] & local_3a0[local_3cc][3]) == local_3b8[local_3cc][3]) {
                                local_47d = 1;
                            }
                            break;

                        case 0:
                            if (local_208.strokeData[0] == (currTab0->maskBytes[0] & local_208.strokeMask[0]) &&
                                (local_208.unk_0x000 || (local_208.strokeData[3] == (currTab0->maskBytes[3] & local_208.strokeMask[3]) &&
                                                         local_208.strokeData[2] == (currTab0->maskBytes[2] & local_208.strokeMask[2]) &&
                                                         local_208.strokeData[1] == (currTab0->maskBytes[1] & local_208.strokeMask[1]))) &&
                                Zi8SecMatchChar(currTab0, local_3e8, &local_208, ZI8_NULL, ZI_WORK) != '\0') {
                                local_47d = 1;
                            }
                            break;

                        case 1:
                        case 2:
                            local_47d = ((Zi8GetPCode(tab34Data, currTab0) & (ziU32)local_208.syllMasks[0]) - (ziU32)local_208.syllPhons[0]) == 0;
                            if ((((local_47d == '\0') && ((currTab0->maskBytes[0] & 0x80) != 0)) && (local_48b == 0)) &&
                                (Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, local_448, local_208.syllMasks[0], local_208.syllPhons[0],
                                                  mandarinRegionMask, ZI_WORK) != 0)) {
                                local_47d = 1;
                            }
                            break;
                    }

                    if (local_47d == '\0')
                        goto LAB_8146e8f8;
                LAB_8146e534:
                    if (local_483 == '\0') {
                        if (local_44c == local_454)
                            goto LAB_8146e8f8;
                        local_454 = local_44c;
                        if (local_448 != 0xFFFF) {
                            if (local_482 != 0) {
                                if (Zi8SetFindCand(getParam->scratch, local_448, ZI_WORK) != 0)
                                    goto LAB_8146e8f8;
                            } else {
                                if (Zi8IsDupWChar(local_448, ZI_WORK))
                                    goto LAB_8146e8f8;
                            }
                        }
                    } else {
                        local_47b = 0;
                        local_3cc = local_489;
                        while (local_288[local_3cc] != L'\0') {
                            local_3cc++;
                            local_47b++;
                        }
                        if (getParam->elementCount != 0) {
                            if ((local_48a == 1 || local_48a == 2) && local_208.syllCount != 0) {
                                local_47b = local_208.syllCount;
                            } else if (local_48a == 0 && local_208.multicharStrokeCount > 1) {
                                local_47b = local_208.multicharStrokeCount;
                            } else {
                                local_47b = 1;
                            }
                        } else {
                            if (local_48c != 0) {
                                local_47b = 1;
                            }
                        }
                        local_288[local_489 + local_47b] = L'\0';
                        if (Zi8IsDupWordW((ziWChar*)(local_288 + local_489), local_47b, ZI_WORK))
                            goto LAB_8146e8f8;
                    }
                    // LAB_8146e6c0:
                    if (local_3fc != ZI8_NULL && local_491 != 0) {
                        local_3cc = local_489;
                        while (local_288[local_3cc] != L'\0') {
                            local_45c = Zi8Uni2Ord(local_288[local_3cc], ZI_WORK);
                            if (local_45c == 0xffff)
                                break;
                            local_41c = local_3fc + local_45c;
                            if ((*local_41c & local_473) == 0)
                                break;
                            local_3cc++;
                        }
                        if (local_288[local_3cc] != L'\0')
                            goto LAB_8146e8f8;
                    }
                    if (local_46e != 0) {
                        local_46e--;
                        continue;
                    }

                    if (local_388[0] == 0 ||
                        ZiMatchZHSpelling((ziU32)local_288, local_388, getParam->elements, getParam->elementCount, local_489, ZI_WORK) != 0) {
                        local_414++;
                        if (local_488 == 5) {
                            // bVar36 = local_479;
                            if (local_414 >= getCandParam->maxSize)
                                goto LAB_81474748;
                        } else {
                            if (local_483 != '\0') {
                                local_479++;
                                for (local_3cc = local_489; local_288[local_3cc] != L'\0'; local_3cc++) {
                                    local_424[local_3dc++] = local_288[local_3cc];
                                }
                                local_424[local_3dc++] = 0x20;
                                if (local_3dc > local_418) {
                                    getParam->count = local_479;
                                    getParam->wordCandidates = local_479;
                                    goto LAB_81474748;
                                }
                            } else {
                                local_424[local_479++] = local_44c;
                            }
                            if (local_479 >= getParam->maxCandidates) {
                                getParam->count = local_479;
                                getParam->wordCandidates = local_479;
                                goto LAB_81474748;
                            }
                        }
                    }
                    // goto LAB_8146e8f8;
                }
            }
        LAB_8146e94c:
            if (local_491 == '\x01') {
                ZI_WORK->pudTopIdx = local_490;
                local_491 = '\0';
                continue;
            } else if (local_491 == '\x02') {
                ZI_WORK->pudTopIdx = local_490;
                local_491 = '\x03';
                continue;
            }
            if (local_491 == '\x03')
                goto LAB_8146f81c;
            if ((!getCandParam->unk_0x00 || local_488 == 5) && local_456 == 0 && getParam->wordCharCount != '\0' && local_48a != 5 &&
                (getParam->elementCount == 0 || !Zi8IsComponent(*local_420, ZI_WORK))) {
                if (local_487 == 0)
                    goto LAB_1381;
                local_487 = 4;
                goto LAB_81474978;
            } else {
                goto LAB_1642;
            }

        LAB_8146ea1c:
            local_487 = 1;
        LAB_1381:
            local_43e = Zi8Uni2Ord(*getParam->currentWord, ZI_WORK);
            if (local_43e != 0xffff) {
                currTab0 = tab0Entries + local_43e;
                local_408 = tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xf) << 0x10));
                if (ZI_WORK->handleCangjie != '\0') {
                    switch (*local_408 & 7) {
                        case 2:
                            local_408 = local_408 + 2;
                            break;
                        case 3:
                        case 4:
                            local_408 = local_408 + 3;
                            break;
                        case 5:
                            local_408 = local_408 + 4;
                            break;
                        default:
                            local_408 = local_408 + 1;
                            break;
                    }
                }
                if ((*local_408 & 0x80) != 0) {
                    local_475 = 0;
                    local_408 += ((*local_408 & 0x7F) >> 4) + 1;
                } else {
                    local_475 = 0x80;
                }
                while ((local_475 & 0x80) == 0) {
                    local_475 = *local_408++;
                    local_476 = local_475 & 0xf;
                    if ((local_475 & mandarinRegionMask) == 0) {
                        while (local_476 != 0) {
                            local_408++;
                            while ((*local_408 & 0x80) == 0) {
                                local_408 += 2;
                            }
                            local_408++;
                            local_476--;
                        }
                    }
                    for (; local_476 != 0; local_476--) {
                        local_477 = getParam->wordCharCount - 1;
                        local_3d0 = (ziWChar*)getParam->currentWord;
                        while (local_477 != 0) {
                            local_448 = ((ziU16)local_408[1] << 8) | local_408[0];
                            local_408 = local_408 + 2;
                            if ((local_448 & 0x8000) != 0)
                                break;
                            if (Zi8Ord2Uni(local_448, ZI_WORK) != *++local_3d0)
                                break;
                            local_477--;
                        }
                        if (local_477 == '\0') {
                            local_448 = ((ziU16)local_408[1] << 8) | local_408[0];
                            local_410 = local_408;
                            local_408 = local_408 + 2;
                            local_44c = local_448 & 0x7fff;
                            local_47d = '\x01';
                            if (getParam->elementCount != '\0') {
                                local_47d = '\0';
                                currTab0 = tab0Entries + local_44c;
                                local_450 = ((ziU16)currTab0->chHi << 8) + currTab0->chLo;
                                switch (local_48a) {
                                    case 7:
                                    case 8:
                                        local_428 =
                                            tab1Data + (currTab0->tab1OffsLo | (currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));

                                        if ((*local_428 & 7) >= local_208.maskIdx) {
                                            if (local_208.shortStrokeData[0] == (local_208.shortStrokeMask[0] & local_428[0]) &&
                                                local_208.shortStrokeData[1] == (local_208.shortStrokeMask[1] & local_428[1]) &&
                                                local_208.shortStrokeData[2] == (local_208.shortStrokeMask[2] & local_428[2]) &&
                                                local_208.shortStrokeData[3] == (local_208.shortStrokeMask[3] & local_428[3])) {
                                                local_47d = '\x01';
                                                break;
                                            }
                                        }
                                        if (local_48a == 7)
                                            break;
                                    case 9:
                                        local_428 = tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) |
                                                                ((currTab0->tab1OffsHi & 0xF) << 0x10));
                                        local_3cc = *local_428 & 7;
                                        if ((local_428[0] & local_3a0[local_3cc][0]) == local_3b8[local_3cc][0] &&
                                            (local_428[1] & local_3a0[local_3cc][1]) == local_3b8[local_3cc][1] &&
                                            (local_428[2] & local_3a0[local_3cc][2]) == local_3b8[local_3cc][2] &&
                                            (local_428[3] & local_3a0[local_3cc][3]) == local_3b8[local_3cc][3]) {
                                            local_47d = '\x01';
                                        }
                                        break;
                                    case 0:
                                        if (local_208.strokeData[0] == (currTab0->maskBytes[0] & local_208.strokeMask[0]) &&
                                            (local_208.unk_0x000 ||
                                             (local_208.strokeData[3] == (currTab0->maskBytes[3] & local_208.strokeMask[3]) &&
                                              local_208.strokeData[2] == (currTab0->maskBytes[2] & local_208.strokeMask[2]) &&
                                              local_208.strokeData[1] == (currTab0->maskBytes[1] & local_208.strokeMask[1]))) &&
                                            Zi8SecMatchChar(currTab0, local_3e8, &local_208, ZI8_NULL, ZI_WORK) != '\0') {
                                            local_47d = '\x01';
                                        }
                                        if (local_47d != 0 && local_208.multicharStrokeCount >= 2) {
                                            local_452 = 0;
                                            local_44e = local_44c;
                                            while (local_47d != '\0') {
                                                currTab0 = tab0Entries + local_44e;
                                                if (local_208.multicharStrokeData[local_452][0] !=
                                                        (currTab0->maskBytes[0] & local_208.multicharStrokeMask[local_452][0]) ||
                                                    local_208.multicharStrokeData[local_452][1] !=
                                                        (currTab0->maskBytes[1] & local_208.multicharStrokeMask[local_452][1]) ||
                                                    local_208.multicharStrokeData[local_452][2] !=
                                                        (currTab0->maskBytes[2] & local_208.multicharStrokeMask[local_452][2]) ||
                                                    local_208.multicharStrokeData[local_452][3] !=
                                                        (currTab0->maskBytes[3] & local_208.multicharStrokeMask[local_452][3])) {
                                                    local_47d = '\0';
                                                    break;
                                                }
                                                if (++local_452 >= local_208.multicharStrokeCount)
                                                    break;
                                                if ((local_448 & 0x8000U) != 0) {
                                                    local_47d = '\0';
                                                    break;
                                                }
                                                local_448 = ((ziU16)local_408[1] << 8) | local_408[0];
                                                local_408 += 2;
                                                local_44e = local_448 & 0x7FFF;
                                            }
                                        }
                                        break;

                                    case 1:
                                    case 2:
                                        local_452 = 0;
                                        local_44e = local_44c;
                                        while (ZI8_TRUE) {
                                            currTab0 = tab0Entries + local_44e;
                                            local_47d = ((Zi8GetPCode(tab34Data, currTab0) & local_208.syllMasks[local_452]) -
                                                         (ziU32)local_208.syllPhons[local_452]) == 0;
                                            if (local_47d == 0 && (currTab0->maskBytes[0] & 0x80) != 0 && local_48b == 0 && local_487 == 0 &&
                                                Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, local_44e, local_208.syllMasks[local_452],
                                                                 local_208.syllPhons[local_452], mandarinRegionMask, ZI_WORK) != 0) {
                                                local_47d = '\x01';
                                            }
                                            if (local_47d == '\0' || ++local_452 >= local_208.syllCount)
                                                goto LAB_8146f350;
                                            if ((local_448 & 0x8000U) != 0) {
                                                local_47d = '\0';
                                                break;
                                            }
                                            local_448 = ((ziU16)local_408[1] << 8) | local_408[0];
                                            local_408 += 2;
                                            local_44e = local_448 & 0x7fff;
                                        }
                                        break;
                                }
                            } else {
                                local_450 = Zi8Ord2Uni(local_44c, ZI_WORK);
                            }
                        LAB_8146f350:
                            if (local_483 == 0 && local_450 == local_454)
                                goto LAB_8146f710;
                            local_454 = local_450;

                            if (local_47d == 0)
                                goto LAB_8146f710;

                            ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_44c;
                            ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_450;
                            if (local_3fc != ZI8_NULL) {
                                local_3cc = 0;
                                while (ZI8_TRUE) {
                                    local_450 = ((ziU16)local_410[local_3cc * 2 + 1] << 8) | local_410[local_3cc * 2];
                                    local_41c = local_3fc + (local_450 & 0x7FFF);

                                    if ((*local_41c & local_473) == 0) {
                                        local_450 = L'\0';
                                        break;
                                    }
                                    if ((local_450 & 0x8000) != 0)
                                        break;

                                    local_3cc++;
                                }
                                if ((local_450 & 0x8000U) == 0)
                                    goto LAB_8146f710;
                            }
                            if (local_483 == 0) {
                                if (local_482 != 0) {
                                    if (Zi8SetFindCand(getParam->scratch, local_44c, ZI_WORK) != 0)
                                        goto LAB_8146f710;
                                } else {
                                    if (Zi8IsDupWChar(local_44c, ZI_WORK))
                                        goto LAB_8146f710;
                                }
                            } else {
                                local_47b = 0;
                                do {
                                    local_44c = ((ziU16)local_410[1] << 8) | local_410[0];
                                    local_410 = local_410 + 2;
                                    local_424[local_3dc + local_47b++] = Zi8Ord2Uni(local_44c & 0x7fff, ZI_WORK);
                                } while ((local_44c & 0x8000U) == 0);
                                if (getParam->elementCount != 0) {
                                    if (((local_48a == 1) || (local_48a == 2)) && (local_208.syllCount != 0)) {
                                        local_47b = local_208.syllCount;
                                    } else if ((local_48a == 0) && (1 < local_208.multicharStrokeCount)) {
                                        local_47b = local_208.multicharStrokeCount;
                                    } else {
                                        local_47b = 1;
                                    }
                                } else {
                                    if (local_48c != 0) {
                                        local_47b = 1;
                                    }
                                }
                                if (Zi8IsDupWordW(local_424 + local_3dc, local_47b, ZI_WORK))
                                    goto LAB_8146f710;
                            }
                            if (local_46e != 0) {
                                local_46e--;
                            } else {
                                local_414++;
                                if (local_488 == 5) {
                                    // bVar36 = local_479;
                                    if (local_414 >= getCandParam->maxSize)
                                        goto LAB_81474748;
                                } else {
                                    if (++ZI_WORK->unk_0x120 >= 0x40) {
                                        ZI_WORK->unk_0x120 = 0;
                                    }
                                    if (local_483 != 0) {
                                        local_479++;
                                        local_3dc += local_47b;
                                        local_424[local_3dc++] = L' ';
                                        if (local_3dc > local_418) {
                                            getParam->count = local_479;
                                            getParam->wordCandidates = local_479;
                                            goto LAB_81474748;
                                        }
                                    } else {
                                        local_424[local_479++] = local_454;
                                    }
                                    if (local_479 >= getParam->maxCandidates) {
                                        getParam->count = local_479;
                                        getParam->wordCandidates = local_479;
                                        goto LAB_81474748;
                                    }
                                }
                            }
                        }
                    LAB_8146f710:
                        if ((local_448 & 0x8000U) == 0) {
                            local_408++;
                            while ((*local_408 & 0x80) == 0) {
                                local_408 += 2;
                            }
                            local_408++;
                        }
                    }
                }
            }

        LAB_1642:
            if (getParam->wordCharCount != '\0') {
                getParam->wordCandidates = local_479;
            }

            if (local_488 == 5)
                goto LAB_81474748;
            if ((local_489 != 0 && (local_48a == 1 || local_48a == 2) && local_208.syllCount > 1) ||
                (local_489 != 0 && local_48a == 0 && local_208.multicharStrokeCount > 1)) {
                local_489 = 0;
                local_490 = ZI_WORK->pudTopIdx;
                local_491 = '\x02';
                ZI_WORK->pudTopIdx = ZI_WORK->unk_0x12D;
                continue;
            }
        LAB_8146f81c:
            if (getParam->elementCount == 0 && !getCandParam->unk_0x00 && getParam->wordCharCount != 0 && Zi8GetFormatVersion('\x01', ZI_WORK) >= 8) {
                local_492 = (getParam->currentWord[getParam->wordCharCount - 1] >> 8) & 0xFF;
                local_493 = getParam->currentWord[getParam->wordCharCount - 1];
                local_408 = (ziU8*)Zi8GetTableAddress('\x01', 0x1c, ZI_WORK);
                local_45e = Zi8GetTableCount('\x01', 0x1c, ZI_WORK);
                for (local_45c = 0; local_45c < local_45e;) {
                    if ((local_492 == *local_408) && (local_493 == local_408[1])) {
                        local_45c = 0;

                    LAB_8146fac0:
                        while (local_45c < 4) {
                            local_44c = ((ziU16)local_408[2] << 8) + local_408[3];
                            if (local_44c == L'\0')
                                break;

                            if (local_483 == '\0') {
                                for (local_3cc = 0; local_3cc < local_479; local_3cc = local_3cc + 1) {
                                    if (local_44c == local_424[local_3cc])
                                        break;
                                }
                                if (local_3cc < local_479) {
                                    goto LAB_1906;
                                }
                            } else {
                                if (Zi8IsDupWordW((ziWChar*)&local_44c, '\x01', ZI_WORK))
                                    goto LAB_1906;
                            }
                            if (local_46e != 0) {
                                local_46e--;
                                goto LAB_1906;
                            }

                            local_414 = local_414 + 1;
                            if (local_483 != 0) {
                                local_479++;
                                local_424[local_3dc++] = local_44c;
                                local_424[local_3dc++] = 0x20;
                                if (local_3dc > local_418)
                                    goto LAB_81474748;
                            } else {
                                local_424[local_479++] = local_44c;
                            }
                            if (local_479 >= getParam->maxCandidates)
                                goto LAB_81474748;
                        LAB_1906:
                            local_45c++;
                            local_408 += 2;
                        }
                        break;
                    }

                    local_45c++;
                    local_408 += 10;
                }
            }
        LAB_8146fafc:
            if (!getCandParam->unk_0x00 && local_456 == 0 && local_208.syllCount <= 1 && local_208.multicharStrokeCount <= 1 &&
                getParam->wordCharCount != 0 && Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) >= 8) {
                local_456 = Zi8GetTableCount(ZI8_LANG_ZH, 0x1D, ZI_WORK);
                local_43e = getParam->currentWord[getParam->wordCharCount - 1];
                if (local_456 != 0 && !(L'0' <= local_43e && local_43e <= L'9')) {
                    switch (local_43e) {
                        case 0x96F6:  // '零' (0)
                        case 0x4E00:  // '一' (1)
                        case 0x4E8C:  // '二' (2)
                        case 0x4E09:  // '三' (3)
                        case 0x56DB:  // '四' (4)
                        case 0x4E94:  // '五' (5)
                        case 0x516D:  // '六' (6)
                        case 0x4E03:  // '七' (7)
                        case 0x516B:  // '八' (8)
                        case 0x4E5D:  // '九' (9)
                        case 0x5341:  // '十' (10)
                            break;

                        default:
                            local_456 = 0;
                    }
                }
                if (local_456 != 0) {
                    local_404 = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x1D, ZI_WORK);
                }
            }
            if (getParam->elementCount == 0 && (local_48a == 7 || local_48a == 8 || local_48a == 9)) {
                bVar18 = ZI8_FALSE;
                local_208.maskIdx = 0;
            }
        LAB_8146fcc4:
            if (((getCandParam->unk_0x00 == '\0') && (local_456 != 0)) && ((local_48a == 7 || ((local_48a == 8 || (local_48a == 9)))))) {
                for (local_43e = 0; local_43e < local_456; local_43e++) {
                    local_448 = ((ziU16)local_404[local_43e * 2] << 8) + local_404[local_43e * 2 + 1];
                    currTab0 = tab0Entries + local_448;
                    if ((currTab0->maskBytes[0] & mandarinRegionMask) != 0) {
                        local_428 = tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));
                        local_47d = ZI8_FALSE;
                        if ((local_48a == 8) || (local_48a == 9)) {
                            local_3cc = *local_428 & 7;
                            if ((local_428[0] & local_3a0[local_3cc][0]) == local_3b8[local_3cc][0] &&
                                (local_428[1] & local_3a0[local_3cc][1]) == local_3b8[local_3cc][1] &&
                                (local_428[2] & local_3a0[local_3cc][2]) == local_3b8[local_3cc][2] &&
                                (local_428[3] & local_3a0[local_3cc][3]) == local_3b8[local_3cc][3]) {
                                if (((bVar18 && local_3cc == local_208.maskIdx) || (!bVar18 && local_3cc > local_208.maskIdx)))
                                    local_47d = ZI8_TRUE;
                                else if (local_48a == 9)
                                    goto LAB_814701d8;
                            } else {
                                if (local_48a == 9)
                                    goto LAB_814701d8;
                            }
                        }

                        if (!local_47d) {
                            if ((*local_428 & 7) < local_208.maskIdx || local_208.shortStrokeData[0] != (local_208.shortStrokeMask[0] & *local_428) ||
                                local_208.shortStrokeData[1] != (local_208.shortStrokeMask[1] & local_428[1]) ||
                                local_208.shortStrokeData[2] != (local_208.shortStrokeMask[2] & local_428[2]) ||
                                local_208.shortStrokeData[3] != (local_208.shortStrokeMask[3] & local_428[3]))
                                goto LAB_814701d8;
                            if (!(bVar18 && (*local_428 & 7) == local_208.maskIdx) && !(!bVar18 && (*local_428 & 7) > local_208.maskIdx))
                                goto LAB_814701d8;
                        }

                        if (local_3fc != ZI8_NULL) {
                            local_41c = local_3fc + local_448;
                            if ((*local_41c & local_473) == 0)
                                goto LAB_814701d8;
                        }
                        local_44c = Zi8Ord2Uni(local_448, ZI_WORK);
                        ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_448;
                        ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_44c;
                        if (local_483 == 0) {
                            if (local_482 != 0) {
                                if (Zi8SetFindCand(getParam->scratch, local_448, ZI_WORK) != 0)
                                    goto LAB_814701d8;
                            } else {
                                if (Zi8IsDupWChar(local_448, ZI_WORK))
                                    goto LAB_814701d8;
                            }
                        } else {
                            if (Zi8IsDupWordW((ziWChar*)&local_44c, 1, ZI_WORK))
                                goto LAB_814701d8;
                        }
                        if (local_46e != 0) {
                            local_46e--;
                            goto LAB_814701d8;
                        }

                        if (++ZI_WORK->unk_0x120 >= 0x40) {
                            ZI_WORK->unk_0x120 = 0;
                        }
                        local_414++;
                        if (local_483 != 0) {
                            local_479++;
                            local_424[local_3dc++] = local_44c;
                            local_424[local_3dc++] = L' ';
                            if (local_3dc > local_418)
                                goto LAB_81474748;
                        } else {
                            local_424[local_479++] = local_44c;
                        }
                        // bVar36 = local_479;
                        if (local_479 >= getParam->maxCandidates)
                            goto LAB_81474748;
                    }
                LAB_814701d8: {}
                }
            }
            currTab0 = tab0Entries;
            local_464 = tab0Count;
            if ((((1 < local_208.maskIdx) && (local_208.multicharStrokeCount < 2)) && (getCandParam->unk_0x00 == '\0')) &&
                ((bVar19 && (local_48a != 5)))) {
                local_3d8 = 0;
            LAB_8147024c:
                currTab0 = tab0Entries;
                local_464 = tab0Count;
                local_45a = 0;
                local_45c = Zi8GetTableCount('\x01', 0x10, ZI_WORK);
                if (Zi8GetFormatVersion('\x01', ZI_WORK) >= 4 && local_45c != 0 && *local_420 != 0xef00) {
                    local_408 = (ziU8*)Zi8GetTableAddress('\x01', 0x10, ZI_WORK);
                    local_45c = 0;
                    local_45e = 0;
                    switch (local_3d8) {
                        case 0:
                            local_45c = 0;
                            local_45e = 2;
                            local_3d8 = 1;
                            break;

                        case 1:
                            switch (local_208.unk_0x06A) {
                                case 0xef01:
                                    local_45c = 8;
                                    local_45e = 10;
                                    break;
                                case 0xef02:
                                    local_45c = 0xc;
                                    local_45e = 0xe;
                                    break;
                                case 0xef04:
                                    local_45c = 0x10;
                                    local_45e = 0x12;
                                    break;
                                case 0xef07:
                                    local_45c = 0x14;
                                    local_45e = 0x16;
                                    break;
                                case 0xef05:
                                    local_45c = 0x18;
                                    local_45e = 0x1a;
                                    break;
                                case 0xef06:
                                    local_45c = 0x1c;
                                    local_45e = 0x1e;
                                    break;
                                case 0xef08:
                                    local_45c = 0x20;
                                    local_45e = 0x22;
                                    break;
                                case 0xef03:
                                    local_45c = 0x24;
                                    local_45e = 0x26;
                                    break;
                                case 0xef0a:
                                    local_45c = 0x18;
                                    local_45e = 4;
                                    break;
                                case 0xef0b:
                                    local_45c = 0x14;
                                    local_45e = 0xe;
                            }
                            if ((getParam->context & 0x40) != 0) {
                                local_3d8 = 0xff;
                            } else {
                                local_3d8 = 2;
                            }
                            break;

                        case 2:
                            local_45c = 4;
                            local_45e = 6;
                            local_3d8 = 0xff;
                            break;
                    }
                    local_45a = local_408[local_45c] | ((ziU16)local_408[local_45c + 1] << 8);
                    currTab0 = currTab0 + local_45a;
                    local_464 = ((local_408[local_45e]) | ((ziU16)local_408[local_45e + 1] << 8)) - local_45a;
                } else {
                    local_3d8 = 0xff;
                }
                local_458 = local_464;
            LAB_814704f0:
                do {
                    while (ZI8_TRUE) {
                        if (local_208.unk_0x000) {
                            if (local_464-- == 0)
                                goto LAB_814708a0;
                            if (local_208.shortStrokeData[0] == (currTab0->maskBytes[0] & local_208.shortStrokeMask[0])) {
                                if (Zi8SecMatchChar(currTab0, local_3e8, &local_208, (ziWChar*)&local_448, ZI_WORK) == 2)
                                    break;
                            }
                        } else {
                            if (Zi8ExactMatchNextChar(currTab0, local_208.shortStrokeMask[0], local_208.shortStrokeData[0],
                                                      local_208.shortStrokeMask[1], local_208.shortStrokeData[1], local_208.shortStrokeMask[2],
                                                      local_208.shortStrokeData[2], local_208.shortStrokeMask[3], local_208.shortStrokeData[3],
                                                      &local_464, &currTab0, (ziU16*)&local_448, ZI_WORK) == 0)
                                goto LAB_814708a0;
                            if ((local_208.unk_0x022 == 0 && local_208.maskIdx < 8) ||
                                Zi8SecMatchChar(currTab0, local_3e8, &local_208, (ziWChar*)&local_448, ZI_WORK) == 2)
                                break;
                            // } else {
                            //     break;
                            // }
                        }
                    LAB_814705f4:
                        currTab0 = currTab0 + 1;
                    }
                    local_43e = ((local_458 - local_464) + local_45a) - 1;
                    ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_43e;
                    ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_448;
                    if (local_3fc != ZI8_NULL) {
                        local_41c = local_3fc + local_43e;
                        if ((*local_41c & local_473) == 0) {
                            goto LAB_814705f4;
                        }
                    }
                    if (local_448 == local_454) {
                        goto LAB_814705f4;
                    }
                    if (local_483 != 0) {
                        if (Zi8IsDupWordW((ziWChar*)&local_448, '\x01', ZI_WORK))
                            goto LAB_814705f4;
                    } else if (local_482 != 0) {
                        if (Zi8SetFindCand(getParam->scratch, local_43e, ZI_WORK) != 0)
                            goto LAB_814705f4;
                    } else {
                        if (Zi8IsDupWChar(local_43e, ZI_WORK))
                            goto LAB_814705f4;
                    }
                    local_454 = local_448;
                    if (local_46e != 0) {
                        local_46e--;
                        if (local_47a < 5) {
                            awStack_3c8[local_47a++] = local_448;
                            // local_47a++;
                        }
                    } else {
                        if (local_483 != '\0') {
                            local_479++;
                            local_424[local_3dc++] = local_448;
                            local_424[local_3dc++] = 0x20;
                            if (local_3dc > local_418)
                                goto LAB_81474748;
                        } else {
                            for (local_452 = 0; local_452 < local_479; local_452++) {
                                if (local_448 == local_424[local_452])
                                    break;
                            }
                            if (local_452 < local_479)
                                goto LAB_814705f4;
                            local_424[local_479++] = local_448;
                        }
                        if (++ZI_WORK->unk_0x120 >= 0x40) {
                            ZI_WORK->unk_0x120 = 0;
                        }
                        local_414 = local_414 + 1;
                        if (local_479 >= getParam->maxCandidates)
                            goto LAB_81474748;
                        currTab0 = currTab0 + 1;
                        goto LAB_814704f0;
                    }
                } while (ZI8_TRUE);
            LAB_814708a0:
                if (local_3d8 == 0xff)
                    goto LAB_814708ac;
                goto LAB_8147024c;
            }
        LAB_814708ac:
            if (((getCandParam->unk_0x00 == '\0') && (bVar19)) && ((local_456 != 0 && (local_48a != 5)))) {
                local_440 = 0;
                while (local_440 < local_456) {
                    local_442 = ((ziU16)local_404[local_440 * 2] << 8) + local_404[local_440 * 2 + 1];
                    currTab0 = tab0Entries + local_442;
                    local_464 = 1;
                    if (bVar20) {
                        if (Zi8PriMatchNextChar(currTab0, local_208.strokeMask[0], local_208.strokeData[0], local_208.strokeMask[1],
                                                local_208.strokeData[1], local_208.strokeMask[2], local_208.strokeData[2], local_208.strokeMask[3],
                                                local_208.strokeData[3], &local_464, &currTab0, &local_448, ZI_WORK) == 0 ||
                            Zi8SecMatchChar(currTab0, local_3e8, &local_208, (ziWChar*)&local_448, ZI_WORK) == 0) {
                            local_440++;
                            continue;
                        }

                        ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_442;
                        ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_448;
                        if (local_3fc != ZI8_NULL) {
                            local_41c = local_3fc + local_442;
                            if ((*local_41c & local_473) == 0) {
                                local_440++;
                                continue;
                            }
                        }
                        if (local_483 != 0) {
                            if (Zi8IsDupWordW((ziWChar*)&local_448, '\x01', ZI_WORK)) {
                                local_440++;
                                continue;
                            }
                        } else if (local_482 != 0) {
                            if (Zi8SetFindCand(getParam->scratch, local_442, ZI_WORK) != 0) {
                                local_440++;
                                continue;
                            }
                        } else {
                            if (Zi8IsDupWChar(local_442, ZI_WORK)) {
                                local_440++;
                                continue;
                            }
                        }
                        local_478 = (currTab0->nextIdxHi & 0xFC) >> 2;
                        bVar20 = ZI8_FALSE;
                    }

                    if (local_47a != 0) {
                        for (local_452 = 0; local_452 < local_47a; local_452++) {
                            if (local_448 == awStack_3c8[local_452])
                                break;
                        }
                        if (local_452 < local_47a) {
                            bVar20 = ZI8_TRUE;
                            local_440++;
                            continue;
                        }
                    }
                    if (local_448 != local_454) {
                        local_454 = local_448;
                        if (local_46e == 0) {
                            local_414 = local_414 + 1;
                            if (++ZI_WORK->unk_0x120 >= 0x40) {
                                ZI_WORK->unk_0x120 = 0;
                            }
                            if (getCandParam->unk_0x00 == '\0') {
                                if (local_483 != '\0') {
                                    local_479++;
                                    local_424[local_3dc++] = local_448;
                                    local_424[local_3dc++] = 0x20;
                                    if (local_3dc > local_418)
                                        goto LAB_81474748;
                                } else {
                                    local_424[local_479++] = local_448;
                                }
                                if (local_479 >= getParam->maxCandidates)
                                    goto LAB_81474748;
                            } else {
                                if (local_414 >= getCandParam->maxSize)
                                    goto LAB_81474748;
                            }
                        } else {
                            local_46e--;
                        }
                    }
                    bVar20 = ZI8_TRUE;
                    local_440++;
                }
                goto code_r0x81470cd8;
            }
            goto LAB_81470ce0;
        }
    } while (ZI8_TRUE);
code_r0x81470cd8:
    bVar20 = ZI8_TRUE;
LAB_81470ce0:
    if (getCandParam->unk_0x00 != '\0')
        goto LAB_81471130;
    if (bVar19)
        goto LAB_81471130;
    if (local_456 == 0)
        goto LAB_81471130;
    if (local_48a == 7)
        goto LAB_81471130;
    if (local_48a == 8)
        goto LAB_81471130;
    if (local_48a == 9)
        goto LAB_81471130;
    if (1 < local_208.syllCount)
        goto LAB_81471130;
    if ((local_208.closedSyllMask == local_208.syllMasks[0]) && (local_208.closedSyllPhon == local_208.syllPhons[0])) {
        bVar21 = ZI8_FALSE;
    } else {
        bVar21 = ZI8_TRUE;
        local_460 = local_208.syllMasks[0];
        local_462 = local_208.syllPhons[0];
        local_208.syllMasks[0] = local_208.closedSyllMask;
        local_208.syllPhons[0] = local_208.closedSyllPhon;
        local_208.closedSyllMask = local_460;
        local_208.closedSyllPhon = local_462;
    }
    local_460 = 0;
    local_462 = 0x10;
LAB_81470db0:
    // local_48b = bVar1 & 0x40;
    for (local_440 = 0; local_440 < local_456; local_440++) {
        local_442 = ((ziU16)local_404[local_440 * 2] << 8) + local_404[local_440 * 2 + 1];
        currTab0 = tab0Entries + local_442;
        local_464 = 0;
        local_408 = (ziU8*)0x0;
        // uVar31 = ;
        if (Zi8MatchPhonetic(tab34Data, tab0Entries, tab5Entries, tab5Count, tab1Data, currTab0, local_208.syllMasks, local_208.syllPhons, &local_464,
                             &currTab0, &local_408, 0, 1, local_208.syllCount, local_460, local_462, mandarinRegionMask, local_48b, local_442,
                             (ziWChar*)&local_448, 0, ZI_WORK) == 0)
            goto LAB_814710c4;
        if (local_3fc != ZI8_NULL) {
            local_41c = local_3fc + local_442;
            if ((*local_41c & local_473) == 0) {
                goto LAB_814710c4;
            }
        }

        if (local_448 == local_454)
            goto LAB_814710c4;
        local_454 = local_448;
        ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_442;
        ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_448;
        if (local_483 == 0) {
            if (local_482 != 0) {
                if (Zi8SetFindCand(getParam->scratch, local_442, ZI_WORK) != 0)
                    goto LAB_814710c4;
            } else {
                if (Zi8IsDupWChar(local_442, ZI_WORK))
                    goto LAB_814710c4;
            }
        } else {
            if (Zi8IsDupWordW((ziWChar*)&local_448, 1, ZI_WORK))
                goto LAB_814710c4;
        }
        if (local_46e != 0) {
            local_46e--;
            goto LAB_814710c4;
        }

        local_414++;
        if (!getCandParam->unk_0x00) {
            if (++ZI_WORK->unk_0x120 >= 0x40) {
                ZI_WORK->unk_0x120 = 0;
            }
            if (local_483 != 0) {
                local_479++;
                local_424[local_3dc++] = local_448;
                local_424[local_3dc++] = L' ';
                if (local_3dc > local_418)
                    goto LAB_81474748;
            } else {
                local_424[local_479++] = local_448;
            }
            if (local_479 >= getParam->maxCandidates)
                goto LAB_81474748;
        } else {
            if (local_414 >= getCandParam->maxSize)
                goto LAB_81474748;
        }

    LAB_814710c4: {}
    }
    if (bVar21) {
        bVar21 = ZI8_FALSE;
        local_460 = local_208.syllMasks[0];
        local_462 = local_208.syllPhons[0];
        local_208.syllMasks[0] = local_208.closedSyllMask;
        local_208.syllPhons[0] = local_208.closedSyllPhon;
        local_208.closedSyllMask = local_460;
        local_208.closedSyllPhon = local_462;
        bVar26 = ZI8_TRUE;
    }
LAB_81471130:
    if (local_48a == 2 && local_488 != 6 && getParam->elementCount == 0 && getParam->wordCharCount != 0 &&
        0x3105 <= getParam->currentWord[getParam->wordCharCount - 1] && getParam->currentWord[getParam->wordCharCount - 1] <= 0x3129) {
        for (local_3cc = 0; local_3cc < 4; local_3cc++) {
            local_44c = (ziWChar)ziTones[local_3cc];
            if (local_483 == '\0') {
                for (local_45c = 0; local_45c < local_479; local_45c++) {
                    if (local_44c == local_424[local_45c])
                        break;
                }
                if (local_45c < local_479) {
                    continue;
                }
            } else {
                if (Zi8IsDupWordW((ziWChar*)&local_44c, '\x01', ZI_WORK))
                    continue;
            }
        LAB_81471248:
            if (local_46e != 0) {
                local_46e--;
            } else {
                local_414 = local_414 + 1;
                if (!getCandParam->unk_0x00) {
                    if (local_483 != 0) {
                        local_479++;
                        local_424[local_3dc++] = local_44c;
                        local_424[local_3dc++] = 0x20;
                        if (local_3dc > local_418)
                            goto LAB_81474748;
                    } else {
                        local_424[local_479++] = local_44c;
                    }
                    if (local_479 >= getParam->maxCandidates)
                        goto LAB_81474748;
                } else {
                    if (local_414 >= getCandParam->maxSize)
                        goto LAB_81474748;
                }
            }
        }
    }
    if (local_48a == 2 && getParam->elementCount == 1 && BPMF_CHAR(BPMF_CHAR_INITIAL_B) <= *local_420 &&
        *local_420 <= BPMF_CHAR(BPMF_CHAR_MEDIAL_IU)) {
        local_44c = *local_420 - 0xC200;
        if (local_488 != 6) {
            local_3cc = 0;
            while (local_44c != L'\0') {
                if (local_483 == 0) {
                    for (local_45c = 0; local_45c < local_479; local_45c++) {
                        if (local_44c == local_424[local_45c])
                            break;
                    }
                    if (local_45c < local_479) {
                        if (*local_420 != BPMF_CHAR(BPMF_CHAR_INITIAL_B))
                            break;
                        goto LAB_2474;
                    }
                } else {
                    if (Zi8IsDupWordW((ziWChar*)&local_44c, 1, ZI_WORK)) {
                        if (*local_420 != BPMF_CHAR(BPMF_CHAR_INITIAL_B))
                            break;
                        goto LAB_2474;
                    }
                }
                if (local_46e != 0) {
                    local_46e--;
                } else {
                    local_414++;
                    if (!getCandParam->unk_0x00) {
                        if (local_483 != 0) {
                            local_479++;
                            local_424[local_3dc++] = local_44c;
                            local_424[local_3dc++] = 0x20;
                            if (local_3dc > local_418)
                                goto LAB_81474748;
                        } else {
                            local_424[local_479++] = local_44c;
                        }
                        if (local_479 >= getParam->maxCandidates)
                            goto LAB_81474748;
                    } else {
                        if (local_414 >= getCandParam->maxSize)
                            goto LAB_81474748;
                    }
                }
                if (*local_420 != 0xf305)
                    break;
            LAB_2474:
                local_44c = (ziWChar)zi8tones[local_3cc++];
            }
        }

        local_44c = 0x8A92;  // 誒
        if (local_483 == 0) {
            for (local_45c = 0; local_45c < local_479; local_45c++) {
                if (local_424[local_45c] == local_44c)
                    break;
            }
            if (local_45c < local_479) {
                local_44c = L'\0';
            }
        } else {
            if (Zi8IsDupWordW((ziWChar*)&local_44c, 1, ZI_WORK)) {
                local_44c = L'\0';
            }
        }
        if (local_44c != L'\0') {
            local_43e = Zi8Uni2Ord(local_44c, ZI_WORK);
            if (local_43e != 0xFFFF) {
                currTab0 = tab0Entries + local_43e;
                if ((currTab0->maskBytes[0] & mandarinRegionMask) != 0) {
                    if (local_3fc != ZI8_NULL) {
                        local_41c = local_3fc + local_43e;
                        if ((*local_41c & local_473) == 0) {
                            local_44c = L'\0';
                        }
                    }
                } else {
                    local_44c = L'\0';
                }
            } else {
                local_44c = L'\0';
            }
        }
        if (*local_420 == BPMF_CHAR(BPMF_CHAR_RIME_EH) && local_44c != L'\0') {
            if (local_46e != 0) {
                local_46e--;
            } else {
                local_414++;
                if (!getCandParam->unk_0x00) {
                    if (local_483 != 0) {
                        local_479++;
                        local_424[local_3dc++] = local_44c;
                        local_424[local_3dc++] = 0x20;
                        if (local_3dc > local_418)
                            goto LAB_81474748;
                    } else {
                        local_424[local_479++] = local_44c;
                    }
                    // local_479 = local_479 + 1;
                    // bVar36 = local_479;
                    if (local_479 >= getParam->maxCandidates)
                        goto LAB_81474748;
                } else {
                    if (local_414 >= getCandParam->maxSize)
                        goto LAB_81474748;
                }
            }
        }
    }
LAB_814717e8:
    if ((ZI_WORK->unk_0x12C != 0 && (local_48a != 0 || !bVar22) && !getCandParam->unk_0x00) &&
        (local_208.syllCount <= 1 || (local_48a != 1 && local_48a != 2)) && Zi8GetZHuwdPtr(&local_3d4, &local_446, ZI_WORK) &&
        (local_48a != 0 || local_208.multicharStrokeCount <= 1)) {
        for (local_444 = 0; local_444 < local_446;) {
            local_448 = ((ziU16)(local_3d4[1] & 0x7f) << 8) | local_3d4[2];
            currTab0 = tab0Entries + local_448;
            if ((currTab0->maskBytes[0] & mandarinRegionMask) != 0) {
                local_44c = ((ziU16)currTab0->chHi << 8) + (ziU16)currTab0->chLo;
                local_47d = 0;
                switch (local_48a) {
                    case 7:
                    case 8:
                        local_428 = tab1Data + (currTab0->tab1OffsLo | (currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));
                        if ((*local_428 & 7) >= local_208.maskIdx) {
                            if (local_208.shortStrokeData[0] == (local_208.shortStrokeMask[0] & local_428[0]) &&
                                local_208.shortStrokeData[1] == (local_208.shortStrokeMask[1] & local_428[1]) &&
                                local_208.shortStrokeData[2] == (local_208.shortStrokeMask[2] & local_428[2]) &&
                                local_208.shortStrokeData[3] == (local_208.shortStrokeMask[3] & local_428[3])) {
                                if ((bVar18 && (*local_428 & 7) == local_208.maskIdx) || (!bVar18 && (*local_428 & 7) > local_208.maskIdx)) {
                                    local_47d = 1;
                                    break;
                                }
                            }
                        }
                        if (local_48a != 8)
                            break;
                    case 9:
                        local_428 = tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));
                        local_3cc = *local_428 & 7;
                        if ((local_428[0] & local_3a0[local_3cc][0]) == local_3b8[local_3cc][0] &&
                            (local_428[1] & local_3a0[local_3cc][1]) == local_3b8[local_3cc][1] &&
                            (local_428[2] & local_3a0[local_3cc][2]) == local_3b8[local_3cc][2] &&
                            (local_428[3] & local_3a0[local_3cc][3]) == local_3b8[local_3cc][3]) {
                            if ((bVar18 && local_3cc == local_208.maskIdx) || (!bVar18 && local_3cc > local_208.maskIdx)) {
                                local_47d = 1;
                            }
                        }
                        break;

                    case 0:
                        if (local_208.strokeData[0] == (currTab0->maskBytes[0] & local_208.strokeMask[0]) &&
                            (local_208.unk_0x000 || (local_208.strokeData[3] == (currTab0->maskBytes[3] & local_208.strokeMask[3]) &&
                                                     local_208.strokeData[2] == (currTab0->maskBytes[2] & local_208.strokeMask[2]) &&
                                                     local_208.strokeData[1] == (currTab0->maskBytes[1] & local_208.strokeMask[1]))) &&
                            Zi8SecMatchChar(currTab0, local_3e8, &local_208, ZI8_NULL, ZI_WORK) != 0) {
                            local_47d = 1;
                        }
                        break;

                    case 1:
                    case 2:
                        if (getParam->elementCount != 0 && ((local_3d4[1] & 0x80) == 0)) {
                            local_47d = 0;
                        } else {
                            local_47d = ((Zi8GetPCode(tab34Data, currTab0) & local_208.closedSyllMask) - local_208.closedSyllPhon) == 0;
                            if (local_47d == 0 && (currTab0->maskBytes[0] & 0x80) != 0 && local_48b == 0 &&
                                Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, local_448, local_208.closedSyllMask, local_208.closedSyllPhon,
                                                 mandarinRegionMask, ZI_WORK) != 0) {
                                local_47d = 1;
                            }
                        }
                        break;
                }
                if (local_47d == 0)
                    goto LAB_81471f04;
                if (local_3fc != ZI8_NULL) {
                    local_41c = local_3fc + local_448;
                    if ((*local_41c & local_473) == 0)
                        goto LAB_81471f04;
                }

                ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_448;
                ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_44c;
                if (local_483 == 0) {
                    if (local_482 != 0) {
                        if (Zi8SetFindCand(getParam->scratch, local_448, ZI_WORK) != 0)
                            goto LAB_81471f04;
                    } else {
                        if (Zi8IsDupWChar(local_448, ZI_WORK))
                            goto LAB_81471f04;
                    }
                } else {
                    if (Zi8IsDupWordW((ziWChar*)&local_44c, '\x01', ZI_WORK))
                        goto LAB_81471f04;
                }
                if (local_46e != 0) {
                    local_46e--;
                    goto LAB_81471f04;
                }

                if (++ZI_WORK->unk_0x120 >= 0x40) {
                    ZI_WORK->unk_0x120 = 0;
                }
                local_414 = local_414 + 1;
                if (local_483 != 0) {
                    local_479++;
                    local_424[local_3dc++] = local_44c;
                    local_424[local_3dc++] = 0x20;
                    if (local_3dc > local_418)
                        goto LAB_81474748;
                } else {
                    local_424[local_479++] = local_44c;
                }
                if (local_479 >= getParam->maxCandidates)
                    goto LAB_81474748;
            }
        LAB_81471f04:
            local_444++;
            local_3d4 += 3;
        }
    }
    if (!bVar23)
        goto LAB_814746e0;
    if (((local_48a == 7) || (local_48a == 8)) || (local_48a == 9)) {
        currTab0 = tab0Entries;
        local_43e = 0;

        while (local_43e < tab0Count) {
            // LAB_81472448:
            // bVar36 = local_479;
            // if (tab0Count <= local_43e)
            //     goto LAB_81474748;
            if (((currTab0->maskBytes[0] & mandarinRegionMask) == 0))
                goto LAB_81472430;
            if (local_3fc != ZI8_NULL) {
                local_41c = local_3fc + local_43e;
                if ((*local_41c & local_473) == 0) {
                    goto LAB_81472430;
                }
            }
            local_44c = ((ziU16)currTab0->chHi << 8) + (ziU16)currTab0->chLo;
            ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_43e;
            ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_44c;
            if (local_44c == local_454)
                goto LAB_81472430;
            local_454 = local_44c;

            local_47d = ZI8_FALSE;
            local_428 = tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));
            if (local_48a != 7) {
                local_3cc = *local_428 & 7;
                if ((local_428[0] & local_3a0[local_3cc][0]) == local_3b8[local_3cc][0] &&
                    (local_428[1] & local_3a0[local_3cc][1]) == local_3b8[local_3cc][1] &&
                    (local_428[2] & local_3a0[local_3cc][2]) == local_3b8[local_3cc][2] &&
                    (local_428[3] & local_3a0[local_3cc][3]) == local_3b8[local_3cc][3]) {
                    if (((bVar18 && local_3cc == local_208.maskIdx) || (!bVar18 && local_3cc > local_208.maskIdx)))
                        local_47d = ZI8_TRUE;
                    else if (local_48a == 9)
                        goto LAB_81472430;
                } else {
                    if (local_48a == 9)
                        goto LAB_81472430;
                }
            }
            if (!local_47d) {
                if ((*local_428 & 7) < local_208.maskIdx)
                    goto LAB_81472430;
                if (local_208.shortStrokeData[0] != (local_208.shortStrokeMask[0] & local_428[0]))
                    goto LAB_81472430;
                if (local_208.shortStrokeData[1] != (local_208.shortStrokeMask[1] & local_428[1]))
                    goto LAB_81472430;
                if (local_208.shortStrokeData[2] != (local_208.shortStrokeMask[2] & local_428[2]))
                    goto LAB_81472430;
                if (local_208.shortStrokeData[3] != (local_208.shortStrokeMask[3] & local_428[3]))
                    goto LAB_81472430;
                if (!((bVar18 && (*local_428 & 7) == local_208.maskIdx) || (!bVar18 && (*local_428 & 7) > local_208.maskIdx)))
                    goto LAB_81472430;
            }
            if (local_483 == 0) {
                if (local_482 != 0) {
                    if (Zi8SetFindCand(getParam->scratch, local_43e, ZI_WORK) != 0)
                        goto LAB_81472430;
                } else {
                    if (Zi8IsDupWChar(local_43e, ZI_WORK))
                        goto LAB_81472430;
                }
            } else {
                if (Zi8IsDupWordW((ziWChar*)&local_44c, '\x01', ZI_WORK))
                    goto LAB_81472430;
            }
            if (local_46e != 0) {
                local_46e--;
                goto LAB_81472430;
            }

            local_414++;
            if (getCandParam->unk_0x00) {
                if (local_414 >= getCandParam->maxSize)
                    goto LAB_81474748;
            } else {
                if (++ZI_WORK->unk_0x120 >= 0x40) {
                    ZI_WORK->unk_0x120 = 0;
                }
                if (local_483 != 0) {
                    local_479++;
                    local_424[local_3dc++] = local_44c;
                    local_424[local_3dc++] = 0x20;
                    if (local_3dc > local_418)
                        goto LAB_81474748;
                } else {
                    local_424[local_479++] = local_44c;
                }
                if (local_479 >= getParam->maxCandidates)
                    goto LAB_81474748;
            }
        LAB_81472430:
            local_43e++;
            currTab0++;
        }
        goto LAB_81474748;
    }
LAB_81472460:
    currTab0 = tab0Entries;
    local_464 = tab0Count;
    local_3d8 = 0;
    if ((bVar19) && (1 < local_208.multicharStrokeCount)) {
        bVar21 = ZI8_TRUE;
    }
LAB_81472498:
    local_45a = 0;
    if (!bVar19)
        goto LAB_81472784;
    if (local_487 == 0)
        goto LAB_814724d8;
    if (local_208.multicharStrokeCount <= 1)
        goto LAB_814724d8;
    local_487 = 5;
    goto LAB_81474978;
    // local_487 = 1;
LAB_2569:
    local_487 = 1;
LAB_814724d8:
    currTab0 = tab0Entries;
    local_464 = tab0Count;
    if (local_208.maskIdx > 1 && Zi8GetFormatVersion('\x01', ZI_WORK) >= 4 && Zi8GetTableCount('\x01', 0x10, ZI_WORK) != 0 && *local_420 != 0xEF00 &&
        local_48a != 5) {
        local_45c = 0;
        local_45e = 0;
        local_408 = (ziU8*)Zi8GetTableAddress('\x01', 0x10, ZI_WORK);
        switch (local_3d8) {
            case 0:
                local_45c = 0;
                local_45e = 2;
                local_3d8 = 1;
                break;

            case 1:
                switch (local_208.unk_0x06A) {
                    case 0xef01:
                        local_45c = 0x08;
                        local_45e = 0x0A;
                        break;
                    case 0xef02:
                        local_45c = 0x0C;
                        local_45e = 0x0E;
                        break;
                    case 0xef04:
                        local_45c = 0x10;
                        local_45e = 0x12;
                        break;
                    case 0xef07:
                        local_45c = 0x14;
                        local_45e = 0x16;
                        break;
                    case 0xef05:
                        local_45c = 0x18;
                        local_45e = 0x1A;
                        break;
                    case 0xef06:
                        local_45c = 0x1C;
                        local_45e = 0x1E;
                        break;
                    case 0xef08:
                        local_45c = 0x20;
                        local_45e = 0x22;
                        break;
                    case 0xef03:
                        local_45c = 0x24;
                        local_45e = 0x26;
                        break;
                    case 0xef0a:
                        local_45c = 0x18;
                        local_45e = 4;
                        break;
                    case 0xef0b:
                        local_45c = 0x14;
                        local_45e = 0xe;
                }
                if ((getParam->context & 0x40) != 0) {
                    local_3d8 = 0xff;
                } else {
                    local_3d8 = 2;
                }
                break;

            case 2:
                local_45c = 4;
                local_45e = 6;
                local_3d8 = 0xff;
                break;
        }
        local_45a = local_408[local_45c] | ((ziU16)local_408[local_45c + 1] << 8);
        currTab0 = currTab0 + local_45a;
        local_464 = (local_408[local_45e] | ((ziU16)local_408[local_45e + 1] << 8)) - local_45a;
    } else {
        local_3d8 = 0xff;
    }
LAB_81472784:
    local_458 = local_464;
    while ((bVar19 && (1 < local_208.multicharStrokeCount))) {
        if (Zi8PriMatchNextChar(currTab0, local_208.strokeMask[0], local_208.strokeData[0], local_208.strokeMask[1], local_208.strokeData[1],
                                local_208.strokeMask[2], local_208.strokeData[2], local_208.strokeMask[3], local_208.strokeData[3], &local_464,
                                &currTab0, &local_448, ZI_WORK) == 0) {
            if (local_3d8 != 0xff)
                goto LAB_81472498;
            if (bVar21) {
                bVar21 = ZI8_FALSE;
                currTab0 = tab0Entries;
                local_464 = tab0Count;
                local_3d8 = 0;
                goto LAB_81472498;
            }
            if (local_483 == 0 || getParam->getMode != ZI8_GET_MODE_UNK_x10 || local_208.multicharStrokeCount <= 1)
                goto LAB_81474748;

            local_48c = 1;
            local_208.multicharStrokeCount--;
            goto LAB_81472460;
        }
        if (Zi8SecMatchChar(currTab0, local_3e8, &local_208, (ziWChar*)&local_448, ZI_WORK) == 0)
            goto LAB_2960;
        local_43e = local_45a + ((local_458 - local_464) - 1);
        if (local_3fc != ZI8_NULL) {
            local_41c = local_3fc + local_43e;
        }
        if (local_3fc != ZI8_NULL && (*local_41c & local_473) == 0) {
            goto LAB_2960;
        }

        local_288[0] = ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_448;
        ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_43e;
        local_42c = tab0Entries + local_43e;
        // uVar14._0_1_ = local_42c->tabl1OffsMid;
        // uVar14._1_1_ = local_42c->tabl1OffsLo;
        local_408 = tab1Data + (currTab0->tab1OffsLo | ((ziU32)currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xf) << 0x10));
        if (ZI_WORK->handleCangjie != '\0') {
            switch (*local_408 & 7) {
                case 2:
                    local_408 += 2;
                    break;
                case 3:
                case 4:
                    local_408 += 3;
                    break;
                case 5:
                    local_408 += 4;
                    break;
                default:
                    local_408 += 1;
                    break;
            }
        }
        if ((*local_408 & 0x80) != 0) {
            local_475 = 0;
            local_408 += ((*local_408 & 0x7F) >> 4) + 1;
        } else {
            local_475 = 0x80;
        }
        while ((local_475 & 0x80) == 0) {
            // pbVar43 = local_408 + 1;
            local_475 = *local_408++;
            local_476 = local_475 & 0xf;
            // local_408 = pbVar43;
            if ((local_475 & mandarinRegionMask) == 0) {
                while (local_476 != 0) {
                    local_408++;
                    while ((*local_408 & 0x80) == 0) {
                        local_408 += 2;
                    }
                    local_408++;
                    local_476--;
                }
            }
            for (; local_476 != 0; local_476--) {
                local_448 = ((ziU16)local_408[1] << 8) | local_408[0];
                local_410 = local_408;
                local_408 = local_408 + 2;
                local_452 = 1;
                while (ZI8_TRUE) {
                    // LAB_81472af0:
                    local_42c = tab0Entries + (local_448 & 0x7fff);
                    if (local_452 < local_208.multicharStrokeCount &&
                        (local_208.multicharStrokeData[local_452][0] != (local_42c->maskBytes[0] & local_208.multicharStrokeMask[local_452][0]) ||
                         local_208.multicharStrokeData[local_452][1] != (local_42c->maskBytes[1] & local_208.multicharStrokeMask[local_452][1]) ||
                         local_208.multicharStrokeData[local_452][2] != (local_42c->maskBytes[2] & local_208.multicharStrokeMask[local_452][2]) ||
                         local_208.multicharStrokeData[local_452][3] != (local_42c->maskBytes[3] & local_208.multicharStrokeMask[local_452][3])))
                        goto LAB_81472ea4;
                    local_288[local_452] = ((ziU16)local_42c->chHi << 8) + (ziU16)local_42c->chLo;
                    if (++local_452 >= local_208.multicharStrokeCount) {
                        if (bVar21) {
                            if ((local_448 & 0x8000U) == 0)
                                goto LAB_81472ea4;
                            break;
                        }

                        if ((local_452 == local_208.multicharStrokeCount) && ((local_448 & 0x8000U) != 0))
                            goto LAB_81472ea4;
                        if (local_48c != 0)
                            break;
                    } else {
                        if ((local_448 & 0x8000U) != 0)
                            goto LAB_81472ea4;
                    }
                    if ((local_448 & 0x8000U) != 0)
                        break;
                    local_448 = ((ziU16)local_408[1] << 8) | local_408[0];
                    local_408 = local_408 + 2;
                }
                if (local_3fc != ZI8_NULL) {
                    local_3cc = 0;
                    while (ZI8_TRUE) {
                        local_450 = ((ziU16)local_410[local_3cc * 2 + 1] << 8) | local_410[local_3cc * 2];
                        local_41c = local_3fc + (local_450 & 0x7FFF);
                        if ((*local_41c & local_473) == 0) {
                            local_450 = L'\0';
                            break;
                        }
                        if ((local_450 & 0x8000) != 0)
                            break;
                        local_3cc = local_3cc + 1;
                    }
                    if ((local_450 & 0x8000U) == 0)
                        goto LAB_81472ea4;
                }
                if (Zi8IsDupWordW((ziWChar*)local_288, (ziU8)local_452, ZI_WORK))
                    goto LAB_81472ea4;
                if (local_46e != 0) {
                    local_46e--;
                    goto LAB_81472ea4;
                }
                local_414++;
                if (getCandParam->unk_0x00) {
                    if (local_414 >= getCandParam->maxSize)
                        goto LAB_81474748;
                } else {
                    if (++ZI_WORK->unk_0x120 >= 0x40) {
                        ZI_WORK->unk_0x120 = 0;
                    }
                    local_288[local_452++] = L' ';
                    if (local_3dc + local_452 >= local_418)
                        goto LAB_81474748;
                    Zi8Memcpy(local_424 + local_3dc, local_288, local_452 * sizeof(ziWChar));
                    local_3dc += local_452;
                    if (++local_479 >= getParam->maxCandidates)
                        goto LAB_81474748;
                }
            LAB_81472ea4:
                if ((local_448 & 0x8000U) == 0) {
                    local_408++;
                    while ((*local_408 & 0x80) == 0) {
                        local_408 += 2;
                    }
                    local_408++;
                }
            }
        }
    LAB_2960:
        currTab0 = currTab0 + 1;
    }
    if (local_48a == 5) {
        local_448 = L'\0';
        local_478 = 0;
    }
    while (bVar19) {
        if (local_48a != 5) {
            while (bVar20) {
                while (local_208.unk_0x000) {
                    if (local_464-- == 0)
                        goto LAB_81473038;
                    if ((local_208.strokeData[0] == (currTab0->maskBytes[0] & local_208.strokeMask[0])) &&
                        (Zi8SecMatchChar(currTab0, local_3e8, &local_208, (ziWChar*)&local_448, ZI_WORK) != 0))
                        goto LAB_81473098;
                    currTab0 = currTab0 + 1;
                }
                if (Zi8PriMatchNextChar(currTab0, local_208.strokeMask[0], local_208.strokeData[0], local_208.strokeMask[1], local_208.strokeData[1],
                                        local_208.strokeMask[2], local_208.strokeData[2], local_208.strokeMask[3], local_208.strokeData[3],
                                        &local_464, &currTab0, &local_448, ZI_WORK) == 0) {
                LAB_81473038:
                    if (local_3d8 != 0xff)
                        goto LAB_81472498;
                    local_448 = L'\0';
                    local_478 = 0;
                    bVar20 = ZI8_FALSE;
                } else {
                    if (Zi8SecMatchChar(currTab0, local_3e8, &local_208, (ziWChar*)&local_448, ZI_WORK) == 0) {
                        currTab0 = currTab0 + 1;
                    } else {
                    LAB_81473098:
                        local_43e = ((local_458 - local_464) + local_45a) - 1;
                        if (local_3fc != ZI8_NULL) {
                            local_41c = local_3fc + local_43e;
                        }
                        if (local_41c != ZI8_NULL && (*local_41c & local_473) == 0)
                            goto LAB_814731f8;

                        ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_43e;
                        ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_448;
                        if (local_483 != '\0') {
                            if (!Zi8IsDupWordW((ziWChar*)&local_448, '\x01', ZI_WORK)) {
                                bVar20 = ZI8_FALSE;
                                local_478 = (currTab0->nextIdxHi & 0xFC) >> 2;
                            }
                        } else {
                            if (local_482 != '\0') {
                                if (Zi8SetFindCand(getParam->scratch, local_43e, ZI_WORK) != 0) {
                                    currTab0 = currTab0 + 1;
                                    continue;
                                }
                            } else {
                                if (Zi8IsDupWChar(local_43e, ZI_WORK)) {
                                    currTab0 = currTab0 + 1;
                                    continue;
                                }
                            }
                            bVar20 = ZI8_FALSE;
                            local_478 = (ziU8)((int)(currTab0->nextIdxHi & 0xfc) >> 2);
                        }
                    LAB_814731f8:
                        currTab0 = currTab0 + 1;
                    }
                }
            }
        }
        while (bVar22) {
            if (Zi8PriMatchNextComp(local_3e4, local_208.strokeMask[0], local_208.strokeData[0], local_208.strokeMask[1], local_208.strokeData[1],
                                    local_208.strokeMask[2], local_208.strokeData[2], local_208.strokeMask[3], local_208.strokeData[3], &local_46c,
                                    &local_3e4, ZI_WORK) == 0) {
                local_44a = 0;
                local_474 = 0;
                bVar22 = ZI8_FALSE;
            } else {
                if (Zi8SecMatchComp(local_3e4, &local_208, local_3e8, ZI_WORK) != 0 &&
                    (local_400 == ZI8_NULL || (local_473 & local_400[local_468 - local_46c]) != 0)) {
                    local_43e = (ziU16)(local_468 - local_46c) * 2;
                    local_44a = ((ziU16)local_43e[local_3ec + 1] << 8) | local_3ec[local_43e];
                    bVar22 = ZI8_FALSE;
                    local_474 = (local_3e4->nextIdxHi & 0xFC) >> 2;
                }
                local_3e4 = local_3e4 + 1;
            }
        }
        if (local_44a != 0 && local_474 >= local_478) {
            if (local_46e == 0) {
                local_414++;
                if (local_483 != 0) {
                    local_479++;
                    local_424[local_3dc++] = local_44a;
                    local_424[local_3dc++] = L' ';
                    if (local_3dc > local_418)
                        break;
                } else {
                    local_424[local_479++] = local_44a;
                }
                if (local_479 >= getParam->maxCandidates)
                    break;
            } else {
                local_46e--;
            }
            local_44a = 0;
            bVar22 = ZI8_TRUE;
        } else {
            if (local_448 == L'\0')
                break;
            if (local_47a != 0) {
                for (local_452 = 0; local_452 < local_47a; local_452++) {
                    if (local_448 == awStack_3c8[local_452])
                        break;
                }
                if (local_452 < local_47a) {
                    local_448 = L'\0';
                    bVar20 = ZI8_TRUE;
                    continue;
                }
                // goto LAB_814734dc;
            }
            // LAB_814734dc:
            if (local_448 != local_454) {
                local_454 = local_448;
                if (local_46e == 0) {
                    local_414 = local_414 + 1;
                    if (getCandParam->unk_0x00 == '\0') {
                        if (++ZI_WORK->unk_0x120 >= 0x40) {
                            ZI_WORK->unk_0x120 = 0;
                        }
                        if (local_483 != 0) {
                            local_479++;
                            local_424[local_3dc++] = local_448;
                            local_424[local_3dc++] = 0x20;
                            if (local_3dc > local_418)
                                goto LAB_81474748;
                        } else {
                            local_424[local_479++] = local_448;
                        }
                        if (local_479 >= getParam->maxCandidates)
                            goto LAB_81474748;
                    } else if (local_414 >= getCandParam->maxSize)
                        goto LAB_81474748;
                } else {
                    local_46e--;
                }
            }
            local_448 = L'\0';
            bVar20 = ZI8_TRUE;
        }
    }
    // local_479 = bVar36;
    if (bVar19) {
        // bVar36 = local_479;
        if (((local_483 == 0) && (local_479 < getParam->maxCandidates)) && local_48a != 5) {
            for (local_452 = 0; local_452 < local_479; local_452++) {
                if (Zi8IsComponent(local_424[local_452], ZI_WORK) != 0) {
                    local_424[local_452--] = local_424[--local_479];
                    local_414--;
                }
            }
        }
        goto LAB_81474748;
    }
    if (!bVar24) {
        if (getCandParam->unk_0x00 || local_208.syllCount > 1 ||
            (local_208.closedSyllMask == local_208.syllMasks[0] && local_208.closedSyllPhon == local_208.syllPhons[0])) {
            bVar21 = ZI8_FALSE;
        } else {
            bVar21 = ZI8_TRUE;

            local_43e = local_208.syllMasks[0];
            local_208.syllMasks[0] = local_208.closedSyllMask;
            local_208.closedSyllMask = local_43e;

            local_43e = local_208.syllPhons[0];
            local_208.syllPhons[0] = local_208.closedSyllPhon;
            local_208.closedSyllPhon = local_43e;
        }
        local_460 = 0;
        local_462 = 0x10;
    }
    if (((local_487 == 0) || (local_486 == '\0')) || (local_208.syllCount != 2))
        goto LAB_814737cc;
    local_487 = 3;
    goto LAB_81474978;

LAB_814737cc:
    local_487 = 1;
    if (Zi8GetFormatVersion('\x01', ZI_WORK) >= 4) {
        local_45e = Zi8GetTableCount('\x01', 0x17, ZI_WORK);
    } else {
        local_45e = 0;
    }
    if (local_45e != 0 && local_208.syllCount == 2 && local_483 != 0) {
        local_434 = (ziU8*)Zi8GetTableAddress('\x01', 0x18, ZI_WORK);
        local_43c = local_434;
        local_452 = Zi8GetTableCount('\x01', 0x18, ZI_WORK);
        if (local_452 == 0) {
            local_450 = 1;
        } else {
            local_45e = 0;
            local_450 = 0;
        }
        if (((local_208.syllPhons[0] & 7) != 0) || ((local_208.syllPhons[1] & 7) != 0)) {
            local_450 = 1;
        }
        if ((local_208.syllPhons[0] & PINYIN_INITIAL_MASK) != (INITIAL_NONE << PINYIN_INITIAL_SHIFT)) {
            local_494 = (local_208.syllPhons[0] >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT)) | 0x80;
            local_496 = (local_208.syllMasks[0] >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT)) | 0x80;
            if ((local_208.syllMasks[0] & PINYIN_FINAL_MASK) != 0) {
                local_450 = 1;
            }
        } else {
            local_494 = (local_208.syllPhons[0] >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT));
            local_496 = (local_208.syllMasks[0] >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT)) | 0x80;
        }
        if ((local_208.syllPhons[1] & PINYIN_INITIAL_MASK) != (INITIAL_NONE << PINYIN_INITIAL_SHIFT)) {
            local_495 = (local_208.syllPhons[1] >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT)) | 0x80;
            local_497 = (local_208.syllMasks[1] >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT)) | 0x80;
            if ((local_208.syllMasks[1] & PINYIN_FINAL_MASK) != 0) {
                local_450 = 1;
            }
        } else {
            local_495 = (local_208.syllPhons[1] >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT));
            local_497 = (local_208.syllMasks[1] >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT)) | 0x80;
        }
        for (local_45c = local_43e = 0; local_43e <= local_452;) {
            local_43c = local_434;
            bVar36 = ZI8_FALSE;
            if (local_452 != 0) {
                local_45c = local_45e;
                local_45e = local_45e + *local_43c;
                if (local_48a == 1) {
                    if ((local_43c[1] == 0 || local_494 == (local_43c[1] & local_496)) &&
                        (local_43c[2] == 0 || local_495 == (local_43c[2] & local_497))) {
                        if (local_43c[1] == 0 || local_43c[2] == 0) {
                            bVar36 = ZI8_TRUE;
                        }
                        goto LAB_81473b18;
                    }
                } else {
                    if ((local_43c[3] == 0 || local_494 == (local_43c[3] & local_496)) &&
                        (local_43c[4] == 0 || local_495 == (local_43c[4] & local_497))) {
                        if (local_43c[3] == 0 || local_43c[4] == 0) {
                            bVar36 = ZI8_TRUE;
                        }
                        goto LAB_81473b18;
                    }
                }
                goto LAB_3198;
            } else {
            LAB_81473b18:
                local_430 = (ziU8*)Zi8GetTableAddress('\x01', 0x17, ZI_WORK);
                local_430 += local_45c * 4;
                local_438 = local_430;
                for (local_3cc = local_45c; (int)local_3cc < local_45e;) {
                    local_438 = local_430;
                    if ((((*local_438 & 0x80) != 0) && ((mandarinRegionMask & 0x10) != 0)) ||
                        (((local_438[2] & 0x80) != 0 && ((mandarinRegionMask & 0x60) != 0)))) {
                        local_44c = ((ziU16)(local_438[0] & 0x7f) << 8) | (ziU16)local_438[1];
                        local_44e = ((ziU16)(local_438[2] & 0x7f) << 8) | (ziU16)local_438[3];
                        if (local_3fc != ZI8_NULL) {
                            local_41c = local_3fc + local_44c;
                            if ((*local_41c & local_473) == 0)
                                goto LAB_3288;
                            local_41c = local_3fc + local_44e;
                            if ((*local_41c & local_473) == 0)
                                goto LAB_3288;
                        } else {
                            currTab0 = tab0Entries + local_44c;
                            if ((currTab0->maskBytes[0] & mandarinRegionMask) == 0) {
                                goto LAB_3288;
                            }
                            currTab0 = tab0Entries + local_44e;
                            if ((currTab0->maskBytes[0] & mandarinRegionMask) == 0)
                                goto LAB_3288;
                        }

                        if (local_450 != 0 || bVar36) {
                            currTab0 = tab0Entries + local_44c;
                            local_47d = (Zi8GetPCode(tab34Data, currTab0) & local_208.syllMasks[0]) == local_208.syllPhons[0];
                            // If...
                            // - phonetics doesn't match
                            // - char has alternate pronounciations
                            // - unknown flag is set
                            // - alt sound matches
                            if (local_47d == 0 && (currTab0->maskBytes[0] & 0x80) != 0 && local_48b == 0 &&
                                Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, local_44c, local_208.syllMasks[0], local_208.syllPhons[0],
                                                 mandarinRegionMask, ZI_WORK) != 0) {
                                local_47d = 1;
                            }
                            if (local_47d == 0)
                                goto LAB_3288;

                            currTab0 = tab0Entries + local_44e;
                            local_47d = (Zi8GetPCode(tab34Data, currTab0) & local_208.syllMasks[1]) == local_208.syllPhons[1];
                            // If...
                            // - phonetics doesn't match
                            // - char has alternate pronounciations
                            // - unknown flag is set
                            // - alt sound matches
                            if (local_47d == 0 && (currTab0->maskBytes[0] & 0x80) != 0 && local_48b == 0 &&
                                Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, local_44e, local_208.syllMasks[1], local_208.syllPhons[1],
                                                 mandarinRegionMask, ZI_WORK) != 0) {
                                local_47d = 1;
                            }
                            if (local_47d == 0)
                                goto LAB_3288;
                        }
                        local_424[local_3dc + 0] = Zi8Ord2Uni(local_44c, ZI_WORK);
                        local_424[local_3dc + 1] = Zi8Ord2Uni(local_44e, ZI_WORK);
                        local_424[local_3dc + 2] = L' ';
                        if (Zi8IsDupWordW(local_424 + local_3dc, 2, ZI_WORK))
                            goto LAB_3288;
                        if (local_46e != 0) {
                            local_46e--;
                            goto LAB_3288;
                        }

                        local_414++;
                        if (!getCandParam->unk_0x00) {
                            ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_44c;
                            ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_424[local_3dc];

                            if (++ZI_WORK->unk_0x120 >= 0x40) {
                                ZI_WORK->unk_0x120 = 0;
                            }
                            local_3dc += 3;
                            local_479++;
                            if (local_479 >= getParam->maxCandidates || local_3dc > local_418)
                                goto LAB_81474748;
                        } else {
                            if (local_414 >= getCandParam->maxSize)
                                goto LAB_81474748;
                        }
                    }
                LAB_3288:
                    local_3cc = local_3cc + 1;
                    local_430 = local_430 + 4;
                }
            }
        LAB_3198:
            local_43e++;
            local_434 += 5;
        }
    }

LAB_3515:
    do {
        if (bVar25 && local_48d == 0) {
            if (Zi8NewMatchPhonetic(getParam, tab0Entries, tab5Entries, tab5Count, tab1Data, getCandParam, local_208.syllMasks[0],
                                    local_208.syllPhons[0], local_460, local_462, mandarinRegionMask, tab0Count, &local_46e, (ziS32*)&local_414,
                                    &local_479, &local_3dc, local_483, local_482, local_48a == 1, local_3fc, local_41c, local_473, local_424,
                                    ZI_WORK) == 0)
                break;
        } else {
        LAB_814740e4:
            do {
                if (((local_487 != 0) && (1 < local_208.syllCount)) && ((local_486 == '\0' || (local_208.syllCount != 2)))) {
                    local_487 = 2;
                    goto LAB_81474978;
                } else {
                    goto LAB_3167;
                }
            LAB_81474128:
                local_487 = 1;
            LAB_3167:

                // local_48b = bVar1 & 0x40;
                currTab0 = tab0Entries;
                local_464 = tab0Count;
                local_408 = (ziU8*)0x0;
                while (local_479 < getParam->maxCandidates && local_464 != 0) {
                    if (Zi8MatchPhonetic(tab34Data, tab0Entries, tab5Entries, tab5Count, tab1Data, currTab0, local_208.syllMasks, local_208.syllPhons,
                                         &local_464, &currTab0, &local_408, local_483, local_486, local_208.syllCount, local_460, local_462,
                                         mandarinRegionMask, local_48b, tab0Count, (ziWChar*)&local_448, local_487, ZI_WORK) == 0)
                        break;
                    local_43e = (tab0Count - local_464) - 1;
                    ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_43e;
                    ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_448;
                    if (local_483 == '\0' || local_208.syllCount <= 1) {
                        local_410 = local_408 = (ziU8*)0x0;
                    } else {
                        local_410 = local_408;
                        currTab0--;
                        local_464++;
                    }
                    // local_410 = local_408;
                    if (local_3fc != ZI8_NULL) {
                        local_41c = local_3fc + local_43e;
                        if ((*local_41c & local_473) == 0)
                            goto LAB_814745e8;
                    }
                    if (local_3fc != ZI8_NULL && local_410 != ZI8_NULL) {
                        local_3cc = 0;
                        while (ZI8_TRUE) {
                            local_450 = ((ziU16)local_410[local_3cc * 2 + 1] << 8) | local_410[local_3cc * 2];
                            local_41c = local_3fc + (local_450 & 0x7fff);
                            if ((*local_41c & local_473) == 0) {
                                local_450 = 0;
                                break;
                            }
                            if ((local_450 & 0x8000) != 0)
                                break;
                            local_3cc++;
                        }
                        if ((local_450 & 0x8000U) == 0)
                            goto LAB_814745e8;
                    }
                    if (local_483 == '\0') {
                        if (local_448 != local_454) {
                            local_454 = local_448;
                            if (local_482 != 0) {
                                if (Zi8SetFindCand(getParam->scratch, local_43e, ZI_WORK) != 0)
                                    goto LAB_814745e8;
                            } else {
                                if (Zi8IsDupWChar(local_43e, ZI_WORK))
                                    goto LAB_814745e8;
                            }
                        }
                    } else {
                        local_47b = 0;
                        local_424[local_3dc + local_47b++] = local_448;
                        // local_47b = 1;
                        if (1 < local_208.syllCount) {
                            do {
                                local_44c = ((ziU16)local_410[1] << 8) | local_410[0];
                                local_410 = local_410 + 2;
                                local_424[local_3dc + local_47b++] = Zi8Ord2Uni(local_44c & 0x7FFF, ZI_WORK);
                            } while ((local_44c & 0x8000U) == 0);
                        }
                        if (local_48c != 0) {
                            if (getParam->elementCount != 0) {
                                local_47b = local_208.syllCount;
                            } else {
                                local_47b = 1;
                            }
                        }
                        if (Zi8IsDupWordW(local_424 + local_3dc, local_47b, ZI_WORK))
                            goto LAB_814745e8;
                    }

                    if (local_46e != 0) {
                        local_46e--;
                        goto LAB_814745e8;
                    }

                    local_414++;
                    if (!getCandParam->unk_0x00) {
                        if (++ZI_WORK->unk_0x120 >= 0x40) {
                            ZI_WORK->unk_0x120 = '\0';
                        }
                        if (local_483 != '\0') {
                            local_479++;
                            local_3dc += local_47b;
                            local_424[local_3dc++] = 0x20;
                            if (local_479 >= getParam->maxCandidates || local_3dc > local_418)
                                goto LAB_81474748;
                        } else {
                            local_424[local_479++] = local_448;
                        }
                    } else {
                        if (local_414 >= getCandParam->maxSize)
                            goto LAB_81474748;
                    }

                LAB_814745e8:
                    currTab0 = currTab0 + 1;
                }
                if (local_483 != 0 && getParam->getMode != ZI8_GET_MODE_PINYIN_B && getParam->getMode != ZI8_GET_MODE_UNK_x0D &&
                    local_208.syllCount > 1 && local_486 != 0) {
                    local_486 = 0;
                } else if (local_483 != 0 && (getParam->getMode == ZI8_GET_MODE_PINYIN_B || getParam->getMode == ZI8_GET_MODE_UNK_x0D) &&
                           local_208.syllCount > 1 && local_486 != 0) {
                    local_208.syllCount--;
                } else {
                    break;
                    // goto LAB_814746a8;
                }
            } while (ZI8_TRUE);
        }
    LAB_814746a8:
        // bVar36 = local_479;
        if ((!bVar21) || (local_479 >= getParam->maxCandidates))
            break;
        if (bVar23) {
            bVar23 = ZI8_FALSE;
            goto LAB_814717e8;
        }
    LAB_814746e0:
        bVar21 = ZI8_FALSE;
        currTab0 = tab0Entries;
        local_464 = tab0Count;
        local_460 = local_208.syllMasks[0];
        local_462 = local_208.syllPhons[0];
        local_208.syllMasks[0] = local_208.closedSyllMask;
        local_208.syllPhons[0] = local_208.closedSyllPhon;
        local_208.closedSyllMask = local_460;
        local_208.closedSyllPhon = local_462;
        if (bVar26) {
            bVar26 = ZI8_FALSE;
            bVar24 = ZI8_TRUE;
            goto LAB_81470db0;
        }
    } while (ZI8_TRUE);

LAB_81474748:
    if (bVar18 && getParam->elementCount != 0 && (local_48a == 7 || local_48a == 8 || local_48a == 9) &&
        ((getCandParam->unk_0x00 && local_414 < getCandParam->maxSize) || (!getCandParam->unk_0x00 && local_479 < getParam->maxCandidates))) {
        bVar18 = ZI8_FALSE;
        goto LAB_8146fcc4;
    }
    if (local_48a == 9 && getParam->getMode == ZI8_GET_MODE_UNK_x0A && (getParam->elementCount != 3 || local_420[2] != L' ') &&
        ((getCandParam->unk_0x00 && local_414 < getCandParam->maxSize) || (!getCandParam->unk_0x00 && local_479 < getParam->maxCandidates))) {
        local_48a = 7;
        goto LAB_8146fcc4;
    }
    if (local_483 != 0 && local_3dc != 0) {
        local_424[local_3dc++] = L'\0';
    }
    getParam->count = local_479;
    if (local_414 == 0 && getParam->firstCandidate == 0 && local_48a == 1 && local_208.syllCount > 1 &&
        (local_208.syllPhons[local_208.syllCount - 1] & (ziU16)~PINYIN_TONE_MASK) == PHONETIC_PINYIN(INITIAL_H, 0, 0)) {
        local_208.syllMasks[local_208.syllCount - 1] = (local_208.syllMasks[local_208.syllCount - 1] & 7) + (PINYIN_INITIAL_MASK | PINYIN_FINAL_MASK);
        local_208.syllPhons[local_208.syllCount - 1] =
            (local_208.syllPhons[local_208.syllCount - 1] & 7) + PHONETIC_PINYIN(INITIAL_NONE, 0b110011, 0);  // er
        local_486 = 1;
    } else {
        if (local_490 != '\0') {
            ZI_WORK->pudTopIdx = local_490;
        }
        Zi8LogError(100, ZI_WORK);
        return local_414;
    }

LAB_81474978:
    local_444 = Zi8GetTableCount('\x01', 0x1f, ZI_WORK);
    local_410 = (ziU8*)Zi8GetTableAddress('\x01', 0x1f, ZI_WORK);
    for (; local_444 != 0; local_444--) {
        local_3cc = *local_410 & 0xf;
        // pbVar43 = local_410 + 1;
        // bVar36 = *local_410++;
        // local_410 = pbVar43;
        if ((*local_410++ & mandarinRegionMask) == 0)
            goto LAB_81475570;

        local_45c = 0;
        if (local_487 != 4)
            goto LAB_81475570;

        local_45c = getParam->wordCharCount;
        if (local_3cc > local_45c) {
            if (getParam->elementCount != '\0') {
                switch (local_48a) {
                    case 0:
                        if (local_3cc < local_45c + local_208.multicharStrokeCount)
                            goto LAB_81475570;
                        break;

                    case 1:
                    case 2:
                        if (local_3cc < local_45c + local_208.syllCount)
                            goto LAB_81475570;
                        break;
                }
            }
            local_45e = 0;
            local_3d0 = (ziWChar*)getParam->currentWord;
            for (; local_45e < local_45c; local_45e++) {
                local_44c = (ziU16)local_410[local_45e * 2] + ((ziU16)local_410[local_45e * 2 + 1] << 8);
                currTab0 = tab0Entries + local_44c;
                local_448 = ((ziU16)currTab0->chHi << 8) + (ziU16)currTab0->chLo;
                // pwVar40 = local_3d0 + 1;
                // wVar34 = *local_3d0;
                // local_3d0 = pwVar40;
                if (local_448 != *local_3d0++)
                    goto LAB_81475570;
            }
        } else {
            if (local_487 == 2 || local_487 == 3) {
                // zVar27 = local_208.multicharStrokeCount;
                if (local_3cc < local_208.multicharStrokeCount || (local_486 != 0 && local_3cc != local_208.multicharStrokeCount) ||
                    (local_486 == 0 && local_3cc <= local_208.multicharStrokeCount))
                    goto LAB_81475570;
            } else if (local_487 == 5) {
                if (local_3cc < local_208.syllCount || (local_486 != 0 && local_3cc != local_208.syllCount) ||
                    (local_486 == 0 && local_3cc <= local_208.syllCount))
                    goto LAB_81475570;
            }
        }

    LAB_81474bfc:
        local_43e = local_410[local_45c * 2] + ((ziU16)local_410[local_45c * 2 + 1] << 8);
        currTab0 = tab0Entries + local_43e;
        local_448 = ((ziU16)currTab0->chHi << 8) + (ziU16)currTab0->chLo;
        if (getParam->elementCount != 0) {
            switch (local_48a) {
                case 7:
                case 8:
                    local_428 = tab1Data + (currTab0->tab1OffsLo | (currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xF) << 0x10));

                    if ((*local_428 & 7) >= local_208.maskIdx && local_208.shortStrokeData[0] == (local_208.shortStrokeMask[0] & local_428[0]) &&
                        local_208.shortStrokeData[1] == (local_208.shortStrokeMask[1] & local_428[1]) &&
                        local_208.shortStrokeData[2] == (local_208.shortStrokeMask[2] & local_428[2]) &&
                        local_208.shortStrokeData[3] == (local_208.shortStrokeMask[3] & local_428[3]))
                        break;
                    if (local_48a == 7)
                        goto LAB_81475570;
                case 9:
                    local_428 = tab1Data + (currTab0->tab1OffsLo | (currTab0->tab1OffsMid << 8) | ((currTab0->tab1OffsHi & 0xf) << 0x10));
                    local_45e = *local_428 & 7;
                    if ((local_428[0] & local_3a0[local_45e][0]) == local_3b8[local_45e][0] &&
                        (local_428[1] & local_3a0[local_45e][1]) == local_3b8[local_45e][1] &&
                        (local_428[2] & local_3a0[local_45e][2]) == local_3b8[local_45e][2] &&
                        (local_428[3] & local_3a0[local_45e][3]) == local_3b8[local_45e][3])
                        break;
                    goto LAB_81475570;
                case 0:
                    if (local_208.strokeData[0] != (currTab0->maskBytes[0] & local_208.strokeMask[0]))
                        goto LAB_81475570;
                    if (!local_208.unk_0x000) {
                        if (local_208.strokeData[3] != (currTab0->maskBytes[3] & local_208.strokeMask[3]))
                            goto LAB_81475570;
                        if (local_208.strokeData[2] != (currTab0->maskBytes[2] & local_208.strokeMask[2]))
                            goto LAB_81475570;
                        if (local_208.strokeData[1] != (currTab0->maskBytes[1] & local_208.strokeMask[1]))
                            goto LAB_81475570;
                    }
                    if (Zi8SecMatchChar(currTab0, local_3e8, &local_208, (ziWChar*)0x0, ZI_WORK) == 0)
                        goto LAB_81475570;
                    for (local_45e = 1; local_45e < local_208.multicharStrokeCount; local_45e++) {
                        currTab0 =
                            tab0Entries + (ziU16)local_410[(local_45c + local_45e) * 2] + ((ziU16)local_410[(local_45c + local_45e) * 2 + 1] << 8);
                        if (local_208.multicharStrokeData[local_45e][0] != (currTab0->maskBytes[0] & local_208.multicharStrokeMask[local_45e][0]))
                            goto LAB_81475570;
                        if (local_208.multicharStrokeData[local_45e][1] != (currTab0->maskBytes[1] & local_208.multicharStrokeMask[local_45e][1]))
                            goto LAB_81475570;
                        if (local_208.multicharStrokeData[local_45e][2] != (currTab0->maskBytes[2] & local_208.multicharStrokeMask[local_45e][2]))
                            goto LAB_81475570;
                        if (local_208.multicharStrokeData[local_45e][3] != (currTab0->maskBytes[3] & local_208.multicharStrokeMask[local_45e][3]))
                            goto LAB_81475570;
                    }
                    break;
                case 1:
                case 2:
                    local_408 = local_410 + (local_3cc + local_45c) * 2;
                    for (local_45e = 0; local_45e < local_208.syllCount;) {
                        if (local_208.syllPhons[local_45e] != (local_208.syllMasks[local_45e] & ((ziU16)local_408[0] + ((ziU16)local_408[1] << 8))))
                            goto LAB_81475570;
                        local_45e++;
                        local_408 += 2;
                    }
                    break;
            }
        }

        ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = local_43e;
        ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = local_448;
        if (local_3fc != ZI8_NULL) {
            for (local_45e = local_45c; local_45e < local_3cc; local_45e++) {
                local_44c = (ziU16)local_410[local_45e * 2] + ((ziU16)local_410[local_45e * 2 + 1] << 8);
                local_41c = local_3fc + local_44c;
                if ((*local_41c & local_473) == 0)
                    goto LAB_81475570;
            }
        }
        if (local_483 == 0) {
            if (local_448 == local_454)
                goto LAB_81475570;
            local_454 = local_448;

            if (local_482 != 0) {
                if (Zi8SetFindCand(getParam->scratch, local_43e, ZI_WORK) != 0) {
                    goto LAB_81475570;
                }
            } else {
                if (Zi8IsDupWChar(local_43e, ZI_WORK))
                    goto LAB_81475570;
            }
            local_45e = 1;
        } else {
            for (local_45e = 0; local_45e < (int)(local_3cc - local_45c); local_45e++) {
                local_44c = (ziU16)local_410[(local_45e + local_45c) * 2] + ((ziU16)local_410[(local_45e + local_45c) * 2 + 1] << 8);
                currTab0 = tab0Entries + local_44c;
                local_424[local_3dc + local_45e] = ((ziU16)currTab0->chHi << 8) + (ziU16)currTab0->chLo;
            }
            if (local_48c != 0 || local_487 == 4) {
                if (getParam->elementCount == 0) {
                    local_45e = 1;
                } else if (local_487 == 4) {
                    if ((local_48a == 1 || local_48a == 2) && local_208.syllCount != 0) {
                        local_45e = local_208.syllCount;
                    } else if (local_48a == 0 && local_208.multicharStrokeCount > 1) {
                        local_45e = local_208.multicharStrokeCount;
                    } else {
                        local_45e = 1;
                    }
                } else if (local_487 == 5) {
                    local_45e = local_208.multicharStrokeCount;
                } else {
                    local_45e = local_208.syllCount;
                }
            }
            if (Zi8IsDupWordW(local_424 + local_3dc, (ziU8)local_45e, ZI_WORK))
                goto LAB_81475570;
        }
        if (local_46e != 0) {
            local_46e--;
            goto LAB_81475570;
        }

        local_414++;
        if (local_487 == 4 && local_488 == 5) {
            if (local_414 >= getCandParam->maxSize)
                goto LAB_81474748;
        } else {
            if (!getCandParam->unk_0x00) {
                if (++ZI_WORK->unk_0x120 >= 0x40) {
                    ZI_WORK->unk_0x120 = 0;
                }
                if (local_487 == 4) {
                    getParam->wordCandidates = local_479 + 1;
                }
                if (local_483 != '\0') {
                    local_479++;
                    local_3dc += local_45e;
                    local_424[local_3dc++] = 0x20;
                    if (local_3dc > local_418)
                        goto LAB_81474748;
                } else {
                    local_424[local_479++] = local_448;
                }
                if (local_479 >= getParam->maxCandidates)
                    goto LAB_81474748;
            } else {
                if (local_414 >= getCandParam->maxSize)
                    goto LAB_81474748;
            }
        }
    LAB_81475570:
        local_410 += local_3cc * 4;
    }

    switch (local_487) {
        case 4:
            goto LAB_8146ea1c;
        case 2:
            goto LAB_81474128;
        case 3:
            goto LAB_814737cc;
        case 5:
            goto LAB_2569;
        default:
            goto LAB_81474748;
    }
    // if (local_487 != 4) {
    //     bVar36 = local_479;
    //     if (local_487 < 4) {
    //         if (local_487 == 2) {
    //             goto LAB_81474128;
    //         }
    //         if (1 < local_487) {
    //             local_487 = 1;
    //             goto LAB_814737cc;
    //         }
    //         goto LAB_81474748;
    //     }
    //     if (5 < local_487)
    //         goto LAB_81474748;
    //     local_487 = 1;
    //     goto LAB_814724d8;
    // }
    // local_487 = 1;
    // goto LAB_8146ea1c;
}

typedef struct {
    ziU8 valALo;  // 0x0
    ziU8 valAHi;  // 0x1
    ziU8 valBLo;  // 0x2
    ziU8 valBHi;  // 0x3
} IndexTableEntry;

ziBool Zi8NewMatchPhonetic(ziGetParam* getParam, Table0Entry* chTab, Table5Entry* table5, ziU16 table5Count, ziU8* tab1Data,
                           ziGetCandidatesParam* getCandParam, ziU16 syllMask, ziU16 syllPhon, ziU16 param_9, ziU16 param_10, ziU8 param_11,
                           ziU16 param_12, ziU16* remToSkipInout, ziS32* currSizeInout, ziU8* candCountInout, ziS32* outputOffsInout,
                           ziBool checkDupWholeWord, ziBool useBitset, ziBool isPinyin, ziU8* param_20, ziU8* __param_21, ziU8 param_22,
                           ziWChar* candidatesOut ZI_NEED_WORK) {
    ziU16* chOrdTabStartsTab;
    ziU16* chOrdTab;
    ziU8* syllTab;
    ziU16 syllTabSize;
    ziU16 i;
    ziU16 j;
    ziU16 currCh;
    ziU16 chOrdTabStart;
    ziU16 chOrdTabEnd;
    ziWChar prevChar = L'\0';

    ziU16 remToSkip = *remToSkipInout;
    ziS32 currSize = *currSizeInout;
    ziU8 currCandCount = *candCountInout;
    ziS32 outputOffs = *outputOffsInout;

    ziU8 tone = 0;
    Table0Entry* currChEntry;
    IndexTableEntry* indexTab = ZI8_NULL;

    ziU16 syllMaskPartial;
    ziU16 syllPhonPartial;
    ziU16 local_86;
    ziU16 indexTabSize;
    ziWChar matchPhoneticChBuf;
    ziU16 local_8c;
    ziU16 local_8e;

    ziU8* local_64 = ZI8_NULL;
    ziU8* local_68;
    ziS32 local_6c = getCandParam->unk_0x10 - 0x40;
    ziU8* local_70;
    Zi8LogError(100, ZI_WORK);
    if ((syllMask & 7) == 7) {
        tone = syllPhon & 7;
    }
    chOrdTabStartsTab = (ziU16*)Zi8GetTableAddress(ZI8_LANG_ZH, 0xd, ZI_WORK);
    chOrdTab = (ziU16*)Zi8GetTableAddress(ZI8_LANG_ZH, 0xe, ZI_WORK);
    if (isPinyin) {
        syllTab = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
        syllTabSize = Zi8GetTableCount(ZI8_LANG_ZH, 3, ZI_WORK);
        indexTab = (IndexTableEntry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x11, ZI_WORK);
        indexTabSize = Zi8GetTableCount(ZI8_LANG_ZH, 0x11, ZI_WORK);
        local_64 = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x12, ZI_WORK);
    } else {
        syllTab = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
        syllTabSize = Zi8GetTableCount(ZI8_LANG_ZH, 4, ZI_WORK);
        indexTab = (IndexTableEntry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x13, ZI_WORK);
        indexTabSize = Zi8GetTableCount(ZI8_LANG_ZH, 0x13, ZI_WORK);
        local_64 = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x14, ZI_WORK);
    }

    if (indexTabSize != 0) {
        local_8c = 0;
        syllMaskPartial = syllMask | 7;
        syllPhonPartial = syllPhon;
        for (i = 0; i < indexTabSize; i++) {
            currCh = indexTab->valALo | ((ziU16)indexTab->valAHi << 8);
            local_8e = indexTab->valBLo | ((ziU16)indexTab->valBHi << 8);
            if (param_10 == (currCh & param_9) || syllPhonPartial != (currCh & syllMaskPartial)) {
                local_8c += local_8e;
                indexTab++;
                continue;
            }

            local_70 = local_64 + local_8c * 2;
            for (j = 0; j < local_8e;) {
                currCh = local_70[0] | ((ziU16)local_70[1] << 8);
                if ((param_11 & chTab[currCh].maskBytes[0]) == 0)
                    goto CONTINUE_IDX_TAB_INNER_SEARCH;
                if (param_20 != ZI8_NULL) {
                    __param_21 = param_20 + currCh;
                    if ((*__param_21 & param_22) == 0)
                        goto CONTINUE_IDX_TAB_INNER_SEARCH;
                }
                if (!checkDupWholeWord) {
                    if (useBitset) {
                        if (Zi8SetFindCand(getParam->scratch, currCh, ZI_WORK) != 0)
                            goto CONTINUE_IDX_TAB_INNER_SEARCH;
                    } else {
                        if (Zi8IsDupWChar(currCh, ZI_WORK))
                            goto CONTINUE_IDX_TAB_INNER_SEARCH;
                    }
                }

                ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = currCh;
                currCh = Zi8Ord2Uni(currCh, ZI_WORK);
                ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = currCh;
                if (currCh == prevChar)
                    goto CONTINUE_IDX_TAB_INNER_SEARCH;
                prevChar = currCh;

                if (checkDupWholeWord && Zi8IsDupWordW(&currCh, 1, ZI_WORK))
                    goto CONTINUE_IDX_TAB_INNER_SEARCH;
                if (remToSkip != 0) {
                    remToSkip--;
                    goto CONTINUE_IDX_TAB_INNER_SEARCH;
                }

                currSize++;
                if (!getCandParam->unk_0x00) {
                    if (++ZI_WORK->unk_0x120 >= 0x40) {
                        ZI_WORK->unk_0x120 = 0;
                    }
                    if (checkDupWholeWord) {
                        currCandCount++;
                        candidatesOut[outputOffs++] = currCh;
                        candidatesOut[outputOffs++] = L' ';

                        if (outputOffs > local_6c) {
                            *remToSkipInout = remToSkip;
                            *currSizeInout = currSize;
                            *candCountInout = currCandCount;
                            *outputOffsInout = outputOffs;
                            Zi8ReplaceLastError(2900, ZI_WORK);
                            return ZI8_FALSE;
                        }
                    } else {
                        candidatesOut[currCandCount++] = currCh;
                    }

                    if (currCandCount >= getParam->maxCandidates) {
                        *remToSkipInout = remToSkip;
                        *currSizeInout = currSize;
                        *candCountInout = currCandCount;
                        *outputOffsInout = outputOffs;
                        Zi8ReplaceLastError(2901, ZI_WORK);
                        return ZI8_FALSE;
                    }
                } else if (currSize >= getCandParam->maxSize) {
                    *remToSkipInout = remToSkip;
                    *currSizeInout = currSize;
                    *candCountInout = currCandCount;
                    *outputOffsInout = outputOffs;
                    Zi8ReplaceLastError(2902, ZI_WORK);
                    return ZI8_FALSE;
                }

            CONTINUE_IDX_TAB_INNER_SEARCH:
                j++;
                local_70 += 2;
            }
            if (tone != 0)
                break;
            local_8c += local_8e;
            indexTab++;
        }
    }

    syllMaskPartial = syllMask & 0xfff8;
    syllPhonPartial = syllPhon & 0xfff8;
    for (i = 1; i < syllTabSize; i++) {
        currCh = syllTab[i * 2] | ((ziU16)syllTab[i * 2 + 1] << 8);
        if (syllPhonPartial != (currCh & syllMaskPartial) || param_10 == (currCh & param_9))
            continue;

        chOrdTabStart = chOrdTabStartsTab[i];
        chOrdTabEnd = chOrdTabStartsTab[i + 1];
        chOrdTabStart = (ziU8)chOrdTabStart << 8 | ((chOrdTabStart >> 8) & 0xFF);
        chOrdTabEnd = (ziU8)chOrdTabEnd << 8 | ((chOrdTabEnd >> 8) & 0xFF);
        for (j = chOrdTabStart; j < chOrdTabEnd; j++) {
            currCh = chOrdTab[j];
            currCh = (ziU8)currCh << 8 | ((currCh >> 8) & 0xFF);
            if (currCh >= param_12 || (param_11 & chTab[currCh].maskBytes[0]) == 0)
                continue;

            if (param_20 != ZI8_NULL) {
                __param_21 = param_20 + currCh;
                if ((*__param_21 & param_22) == 0)
                    continue;
            }
            if (tone != 0) {
                currChEntry = chTab + currCh;
                local_86 = 0;
                local_68 = ZI8_NULL;
                if (!Zi8MatchPhonetic(syllTab, chTab, table5, table5Count, tab1Data, currChEntry, &syllMask, &syllPhon, &local_86, &currChEntry,
                                      &local_68, checkDupWholeWord, 1, 1, param_9, param_10, param_11, getParam->getOptions & 0x40, currCh,
                                      &matchPhoneticChBuf, 0, ZI_WORK))
                    continue;
            }

            if (!checkDupWholeWord) {
                if (useBitset) {
                    if (Zi8SetFindCand(getParam->scratch, currCh, ZI_WORK) != 0)
                        continue;
                } else {
                    if (Zi8IsDupWChar(currCh, ZI_WORK))
                        continue;
                }
            }
            ZI_WORK->unk_0xA0[ZI_WORK->unk_0x120] = currCh;
            currCh = Zi8Ord2Uni(currCh, ZI_WORK);
            ZI_WORK->unk_0x20[ZI_WORK->unk_0x120] = currCh;
            if (currCh == prevChar)
                continue;
            prevChar = currCh;
            if (checkDupWholeWord && Zi8IsDupWordW(&currCh, 1, ZI_WORK))
                continue;

            if (remToSkip != 0) {
                remToSkip--;
                continue;
            }

            currSize++;
            if (!getCandParam->unk_0x00) {
                if (++ZI_WORK->unk_0x120 >= 0x40) {
                    ZI_WORK->unk_0x120 = 0;
                }
                if (checkDupWholeWord) {
                    currCandCount++;
                    candidatesOut[outputOffs++] = currCh;
                    candidatesOut[outputOffs++] = L' ';
                    if (outputOffs > local_6c) {
                        *remToSkipInout = remToSkip;
                        *currSizeInout = currSize;
                        *candCountInout = currCandCount;
                        *outputOffsInout = outputOffs;
                        Zi8ReplaceLastError(2900, ZI_WORK);
                        return ZI8_FALSE;
                    }
                } else {
                    candidatesOut[currCandCount++] = currCh;
                }
                if (currCandCount >= getParam->maxCandidates) {
                    *remToSkipInout = remToSkip;
                    *currSizeInout = currSize;
                    *candCountInout = currCandCount;
                    *outputOffsInout = outputOffs;
                    Zi8ReplaceLastError(2901, ZI_WORK);
                    return ZI8_FALSE;
                }
            } else if (currSize >= getCandParam->maxSize) {
                *remToSkipInout = remToSkip;
                *currSizeInout = currSize;
                *candCountInout = currCandCount;
                *outputOffsInout = outputOffs;
                Zi8ReplaceLastError(2902, ZI_WORK);
                return ZI8_FALSE;
            }
        }
    }
    *remToSkipInout = remToSkip;
    *currSizeInout = currSize;
    *candCountInout = currCandCount;
    *outputOffsInout = outputOffs;
    return ZI8_TRUE;
}

ziU8 Zi8GetElementCount(ziWChar* text, ziU8 textLen, ziU8 param_3 ZI_NEED_WORK) {
    ziU8 elCount;
    ziU8 spacedTextI;
    ziU8 textI;
    ziWChar savedSpaceChar[1];  // Perhaps a fakematch.
    ziWChar spacedText[256];

    text;
    textLen;

    savedSpaceChar[0] = ZI_WORK->spaceChar;
    if (textLen <= 1 || param_3 == 0) {
        return textLen;
    }
    for (spacedTextI = 0; spacedTextI < textLen; spacedTextI++) {
        if (text[spacedTextI] != ';' && !('a' <= text[spacedTextI] && text[spacedTextI] <= 'z'))
            break;
    }
    if (spacedTextI == textLen) {
        return textLen;
    }
    ZI_WORK->spaceChar = PINYIN_CHAR('`');
    Zi8ZHaddSpace(text, textLen, spacedText, 0x100, ZI_WORK);
    ZI_WORK->spaceChar = savedSpaceChar[0];

    for (spacedTextI = textI = elCount = 0; param_3 != 0 && textI < textLen; spacedTextI++) {
        if (spacedText[spacedTextI] == PINYIN_CHAR('`')) {
            param_3--;
            if (text[textI] != PINYIN_CHAR('`'))
                continue;
        } else if (PINYIN_TONE(1) <= spacedText[spacedTextI] && spacedText[spacedTextI] <= PINYIN_TONE(5)) {
            param_3--;
            if (text[textI + 1] == PINYIN_CHAR('`')) {
                spacedTextI++;
                textI++;
                elCount++;
            }
        }
        textI++;
        elCount++;
    }
    return elCount;
}

ziU32 Zi8GetChineseCandidates(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK) {
    int iVar4;
    ziU8 savedWordFlag;
    ziS32 savedMaxSize;
    ziGetParam modifiedGetParam;

    if (getParam->firstCandidate != 0 || getParam->elementCount <= 1) {
    PASSTHROUGH:
        return zi8InternalGetZH(getParam, getCandParam, ZI_WORK);
    }
    switch (getParam->getMode) {
        case ZI8_GET_MODE_UNK_x10:
            if (getParam->elements[getParam->elementCount - 1] == PINYIN_CHAR('`'))
                goto PASSTHROUGH;

            for (iVar4 = getParam->elementCount - 2; iVar4 > 0; iVar4--) {
                if (getParam->elements[iVar4] == PINYIN_CHAR('`'))
                    break;
            }
            if (iVar4++ <= 0)
                goto PASSTHROUGH;
            break;

        case ZI8_GET_MODE_PINYIN_B:
        case ZI8_GET_MODE_UNK_x0D:
            switch (getParam->elements[getParam->elementCount - 1]) {
                case PINYIN_TONE(1):
                case PINYIN_TONE(2):
                case PINYIN_TONE(3):
                case PINYIN_TONE(4):
                case PINYIN_TONE(5):
                case PINYIN_CHAR('`'):
                    iVar4 = 1;
                    while (iVar4 < 0x40) {
                        if (Zi8GetElementCount(getParam->elements, getParam->elementCount, iVar4, ZI_WORK) >= getParam->elementCount)
                            break;
                        iVar4++;
                    }
                    if (iVar4-- == 1) {
                        goto PASSTHROUGH;
                    }
                    iVar4 = Zi8GetElementCount(getParam->elements, getParam->elementCount, iVar4, ZI_WORK);
                    break;

                default:
                    goto PASSTHROUGH;
            }
            break;

        default:
            goto PASSTHROUGH;
    }

    modifiedGetParam = *getParam;
    savedWordFlag = getCandParam->unk_0x00;
    savedMaxSize = getCandParam->maxSize;
    modifiedGetParam.elements = getParam->elements + iVar4;
    modifiedGetParam.elementCount = modifiedGetParam.elementCount - iVar4;

    savedWordFlag = getCandParam->unk_0x00;
    getCandParam->unk_0x00 = ZI8_TRUE;
    savedMaxSize = getCandParam->maxSize;
    getCandParam->maxSize = 1;
    iVar4 = zi8InternalGetZH(&modifiedGetParam, getCandParam, ZI_WORK);
    getCandParam->unk_0x00 = savedWordFlag;
    getCandParam->maxSize = savedMaxSize;
    if (iVar4 == 0) {
        Zi8LogError(5000, ZI_WORK);
        return 0;
    }
    return zi8InternalGetZH(getParam, getCandParam, ZI_WORK);
}
