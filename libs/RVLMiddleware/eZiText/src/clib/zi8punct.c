#include <zi8clib/zi8punct.h>

#include <wchar.h>

const wchar_t Zi8PunctTable[0x28] = L"，。、：？！々…―；．・“”（）「」０１２３４５６７８９／％￥＄￡\u20ac※＠";

ziS32 Zi8Punctuation(ziGetParam* getParam, ziGetCandidatesParam* getCandidatesParam) {
    ziS32 allowedStrOff;
    ziU16 leftUntilFirst;
    ziS32 candidateCount;

    ziU8 strI;
    ziU16 punctI;

    allowedStrOff = getCandidatesParam->unk_0x10 - 1;
    candidateCount = 0;
    strI = 0;
    leftUntilFirst = getParam->firstCandidate;
    punctI = 0;

    while (1) {
        if (Zi8PunctTable[punctI] == L'\0')
            break;

        if (leftUntilFirst == 0) {
            candidateCount++;
            if (getCandidatesParam->unk_0x00 == '\0') {
                getParam->candidates[strI++] = Zi8PunctTable[punctI];
                if ((getParam->context & 0x10) != 0) {
                    getParam->candidates[strI++] = L' ';
                    if (strI >= allowedStrOff)
                        break;
                }
                if (candidateCount >= getParam->maxCandidates)
                    break;
            } else if (candidateCount >= getCandidatesParam->unk_0x0C) {
                return candidateCount;
            }
        } else {
            leftUntilFirst--;
        }
        punctI++;
    }
    if (getCandidatesParam->unk_0x00 == '\0') {
        getParam->count = candidateCount;
    }
    return candidateCount;
}
