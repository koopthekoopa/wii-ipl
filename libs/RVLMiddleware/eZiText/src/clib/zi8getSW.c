#include <zi8clib/zi8getSW.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zconvert.h>
#include <zi8clib/zi8alpha.h>
#include <zi8clib/zi8dawg.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zmtkey.h>

int Zi8GetSyllablesCandidates(ziGetParam* getInfo, ziGetCandidatesParam* getCandInfo ZI_NEED_WORK) {
    ziChar* candUC;
    ziWChar* candWC;

    ziS32 elOff;

    ziBool forcePunctuationHyphen;
    ziBool addSingleLetterCandidates;
    ziBool cont;
    ziBool useAlt;
    ziU16 errno;
    ziU8 matchSize;

    ziS32 candLen;
    ziS32 testSize;
    ziS32 remCandOffset;
    ziS32 count;
    ziWChar* currKeyLyt;

    ziWChar keyLytBuf[50];
    ziWChar tempWCCandidates[0x41];

    remCandOffset = getInfo->firstCandidate;
    count = 0;
    candUC = ZI8_NULL;
    currKeyLyt = ZI8_NULL;
    forcePunctuationHyphen = ZI8_TRUE;
    addSingleLetterCandidates = ZI8_TRUE;
    cont = ZI8_FALSE;
    useAlt = ZI8_FALSE;
    matchSize = 0;
    errno = 0x64;
    if (getInfo->currentWord != ZI8_NULL && getInfo->wordCharCount != 0 && getInfo->currentWord[getInfo->wordCharCount - 1] != L' ') {
        useAlt = ZI8_TRUE;
    }
    if (getInfo->elementCount == 0 || (getInfo->elementCount == 1 && !useAlt)) {
        count = Zi8AlphaGetCandidates(getInfo, getCandInfo, ZI_WORK);
        goto FINISH;
    }

    if (getCandInfo->unk_0x00 || (getInfo->getOptions & 0xFD) != 0x81) {
        candWC = tempWCCandidates;
        candLen = 0x40;
    } else {
        candWC = getInfo->candidates;
        candLen = getCandInfo->unk_0x10 - 1;
    }
    if ((getInfo->getOptions & 0xFD) == 0x80) {
        candUC = (ziU8*)getInfo->candidates;
        candLen = getCandInfo->unk_0x10 - 1;
    }
    if (candLen <= getInfo->elementCount) {
        errno = 0x168;
        goto FINISH;
    }

    if ((Zi8GetTableCount(getInfo->language, 0x1F, ZI_WORK) & 8) != 0) {
        forcePunctuationHyphen = ZI8_FALSE;
    }
    if (getInfo->elements[0] == PAD_KEY(1) && getInfo->elementCount > 1 && forcePunctuationHyphen) {
        tempWCCandidates[0] = L'-';
    } else {
        Zi8getKeyLayout(getInfo->language, getInfo->elements[0], tempWCCandidates, 1, ZI_WORK);
    }
    candWC[0] = tempWCCandidates[0];
    Zi8SyllablesROMdata(getInfo->elements, getInfo->elementCount, getInfo->language, candWC, candLen, ZI8_FALSE, &matchSize, useAlt, ZI_WORK);
    if (matchSize != 0) {
        testSize = matchSize;
    } else {
        testSize = 1;
    }
    if (testSize != getInfo->elementCount) {
        if (remCandOffset != 0) {
            remCandOffset--;
            goto DO_TESTS;
        }
        if (getCandInfo->unk_0x00) {
            if (++count < getCandInfo->maxSize)
                goto DO_TESTS;
            else
                goto FINISH;
        }

        for (elOff = testSize; elOff < getInfo->elementCount; elOff += matchSize) {
            if (getInfo->elements[elOff] == PAD_KEY(1) && getInfo->elementCount - elOff > 1 && forcePunctuationHyphen) {
                keyLytBuf[0] = L'-';
            } else {
                Zi8getKeyLayout(getInfo->language, getInfo->elements[elOff], keyLytBuf, 1, ZI_WORK);
            }
            candWC[elOff] = keyLytBuf[0];
            Zi8SyllablesROMdata(getInfo->elements + elOff, getInfo->elementCount - elOff, getInfo->language, candWC + elOff, (ziU16)candLen,
                                ZI8_FALSE, &matchSize, ZI8_TRUE, ZI_WORK);
            if (matchSize == 0) {
                matchSize = 1;
            }
        }

        // Null-terminate candidates (and convert from wide to unsigned chars if necessary)
        if (candUC != ZI8_NULL) {
            for (elOff = 0; elOff < getInfo->elementCount; elOff++) {
                candUC[elOff] = Zi8ConvertWC2UC(candWC[elOff], getInfo->language, ZI_WORK);
            }
            candUC[elOff++] = '\0';
            candUC[elOff] = '\0';
            candUC += elOff;
        } else {
            candWC[elOff++] = L'\0';
            candWC[elOff] = L'\0';
            candWC += elOff;
        }
        candLen -= elOff;

        if (++count >= getInfo->maxCandidates || candLen <= getInfo->elementCount)
            goto FINISH;
    }

DO_TESTS:
    while (testSize >= 1) {
        cont = ZI8_FALSE;
        while (Zi8SyllablesROMdata(getInfo->elements, testSize, getInfo->language, candWC, candLen, cont, ZI8_NULL, useAlt, ZI_WORK) != 0) {
            cont = ZI8_TRUE;
            if (testSize == 1) {
                addSingleLetterCandidates = ZI8_FALSE;
            }
            if (PAD_KEY(1) <= *candWC && *candWC <= PAD_KEY(0x20))
                break;

            do {
                if (remCandOffset != 0) {
                    remCandOffset--;
                } else {
                    if (getCandInfo->unk_0x00) {
                        if (++count >= getCandInfo->maxSize)
                            goto FINISH;
                    } else {
                        if ((ziWChar*)candUC != ZI8_NULL) {
                            for (elOff = 0; elOff < (int)testSize; elOff++) {
                                candUC[elOff] = Zi8ConvertWC2UC(candWC[elOff], getInfo->language, ZI_WORK);
                            }
                            candUC[elOff++] = '\0';
                            candUC[elOff] = '\0';
                            candUC += elOff;
                        } else {
                            elOff = testSize;
                            candWC[elOff++] = L'\0';
                            candWC[elOff] = L'\0';
                            candWC += elOff;
                        }
                        candLen -= elOff;

                        if (++count >= getInfo->maxCandidates || candLen <= testSize)
                            goto FINISH;
                    }
                }

            ATTEMPT_SINGLE_LETTER_CANDIDATE:
                if (currKeyLyt != ZI8_NULL) {
                    if (currKeyLyt[0] != L'\0') {
                        candWC[0] = *currKeyLyt++;
                        continue;
                    } else {
                        goto FINISH;
                    }
                }
                break;
            } while (1);
        }
        testSize--;
    }

    if (addSingleLetterCandidates) {
        if (getInfo->elements[0] == PAD_KEY(1) && getInfo->elementCount > 1 && forcePunctuationHyphen) {
            keyLytBuf[0] = L'-';
            keyLytBuf[1] = L'\0';
            Zi8getKeyLayout(getInfo->language, getInfo->elements[0], keyLytBuf + 1, 1, ZI_WORK);

            // Remove hyphen if it was returned from Zi8getKeyLayout
            for (elOff = 1; keyLytBuf[elOff] != L'\0'; elOff++) {
                if (keyLytBuf[elOff] == L'-')
                    break;
            }
            for (; keyLytBuf[elOff] != L'\0'; elOff++) {
                keyLytBuf[elOff] = keyLytBuf[elOff + 1];
            }
        } else {
            Zi8getKeyLayout(getInfo->language, getInfo->elements[0], keyLytBuf, 1, ZI_WORK);
        }

        testSize = 1;
        currKeyLyt = keyLytBuf;
        goto ATTEMPT_SINGLE_LETTER_CANDIDATE;
    }

FINISH:
    if (getCandInfo->unk_0x00) {
        getInfo->count = 0;
    } else {
        getInfo->count = count;
    }
    Zi8LogError(errno, ZI_WORK);
    return count;
}
