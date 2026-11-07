#include "keyboard/tiZiString.h"

#include "keyboard/tiUtil.h"

#include <cwchar>
#include <eztx.h>
#include <string.h>

// #include "keyboard/tiUtil.h"

// #include <revolution/kpr.h>
// #include <wchar.h>

namespace textinput {
    namespace tistring {
        wchar_t WithZi::ElementBuffer[0xFF];
        wchar_t WithZi::InputBuffer[0x100];
        wchar_t WithZi::UnkBuffer[0xFF];
        wchar_t WithZi::CandidatesBuffer[0x100];
        wchar_t WithZi::CandidatedWord[40][0x40];
        wchar_t WithZi::LatestWord[0x40];

        typedef struct {
            int count;
            u32 offsets[];
        } OemDictHdr;

        u8 SearchOEMDictionary(u16 idx, u16* wordOut, u8 maxLen, void* rawDictData) {
            OemDictHdr* dictHdr = (OemDictHdr*)rawDictData;
            if (idx >= dictHdr->count) {
                return false;
            }
            wchar_t* word = (wchar_t*)((u8*)rawDictData + dictHdr->offsets[idx]);
            if (maxLen <= wcslen(word)) {
                return false;
            }
            wcscpy((wchar_t*)wordOut, word);
            return true;
        }

        void WithZi::ChangeDictionaryLanguage(u8 lang) {
            if (mCurrDictLang == lang)
                return;

            mCurrDictLang = lang;
            if (mOemDictAttached) {
                EZTXDetachOEMDict(mOemDictAttached, mpEztxWork);
            }

            int idx = -1;
            for (int i = 0; i < 12; i++) {
                if (lang == mpOemDictData[i].lang) {
                    idx = i;
                }
            }

            if (idx == -1)
                return;

            u32* dictData = mpOemDictData[idx].data;
            if (dictData != NULL) {
                mOemDictAttached = EZTXAttachOEMDict(SearchOEMDictionary, *dictData, dictData, mpEztxWork);
            } else {
                mOemDictAttached = FALSE;
            }
        }

        WithZi::~WithZi() {
            MEMFreeToAllocator(mpAllocator, mpEztxWork);
        }

        void WithZi::create(MEMAllocator* alloc) {
            StringBase::create(alloc);

            void* eztxWork = MEMAllocFromAllocator(alloc, EZTXGetGlobalDataSize());
            EZTXGetGlobalDataSize();
            mpEztxWork = eztxWork;
            mOemDictAttached = false;
            init();
        }

        void WithZi::init() {
            if (!mbDictOpen)
                return;

            unk_0x79 = false;
            clearCandidates();
            memset(LatestWord, 0, 0x80);
            LatestWord[0] = L' ';
            if (getPredictLanguage() == ZI8_LANG_ZH) {
                update();
            }
        }

        void WithZi::clearCandidates() {
            if (!mbDictOpen)
                return;

            mInputStringLen = 0;
            mCurrNumPredicted = 0;
            memset(ElementBuffer, 0, sizeof(ElementBuffer));
            memset(InputBuffer, 0, sizeof(InputBuffer));
            memset(UnkBuffer, 0, sizeof(UnkBuffer));
            memset(CandidatesBuffer, 0, sizeof(CandidatesBuffer));
            memset(CandidatedWord, 0, sizeof(CandidatedWord));
            memset(&mGetParam, 0, sizeof(mGetParam));
            mGetParam.language = getPredictLanguage();
            mGetParam.subLanguage = 0x7;
            mGetParam.getMode = 0x00;
            mGetParam.context = 0x01;
            mGetParam.getOptions = 0x81;
            mGetParam.elements = ElementBuffer;
            mGetParam.candidates = CandidatesBuffer;
            mGetParam.maxCandidates = 40;
            mGetParam.elementCount = 0;
            mGetParam.firstCandidate = 0;
            if (getPredictLanguage() == ZI8_LANG_ZH) {
                mGetParam.getMode = 0x01;
                mGetParam.context = 0x10;
            }
            EZTXGetCandidates(&mGetParam, mpEztxWork);
        }

        // TODO: update with the meaning of values once EZiText PR is merged
        u8 WithZi::defaultLatinSearchOrder[] = {3, 3, 2, 1, 4, 7, 6, 5, 8, 0};

        void WithZi::openDictionary(void* ziDict, void* ziOemDict) {
            EZTXInitialize(ziDict, mpEztxWork);
            mbDictOpen = true;
            mpOemDictData = (OEMDictDataEntry*)ziOemDict;
            EZTXSetLatinSearchOrder(defaultLatinSearchOrder, ARRAY_LENGTH(defaultLatinSearchOrder), mpEztxWork);
            mOemDictAttached = FALSE;
        }

        void WithZi::pushBack(wchar_t ch) {
        }
        void WithZi::popBack() {
        }

        void WithZi::inputChar(wchar_t ch) {
            if (hasCandidate()) {
                if (mInputStringLen != 0) {
                    mInputStringLen--;
                    InputBuffer[mInputStringLen] = L'\0';
                }
                mwcCandidate = L'\0';
            }
            InputBuffer[mInputStringLen] = ch;
            mInputStringLen++;
            InputBuffer[mInputStringLen] = L'\0';
            update();
        }

        void WithZi::setInputting(wchar_t ch) {
            if (hasCandidate()) {
                if (mInputStringLen != 0) {
                    mInputStringLen--;
                    InputBuffer[mInputStringLen] = L'\0';
                }
                mwcCandidate = L'\0';
            }
            inputChar(ch);
            mwcCandidate = ch;
        }

        void WithZi::backSpace() {
            if (hasCandidate()) {
                if (mInputStringLen != 0) {
                    mInputStringLen--;
                    InputBuffer[mInputStringLen] = L'\0';
                }
                mwcCandidate = L'\0';
            } else {
                if (mInputStringLen != 0) {
                    mInputStringLen--;
                    InputBuffer[mInputStringLen] = L'\0';
                    update();
                }
            }
        }

        void WithZi::confirm(const wchar_t* string) {
            update();
        }
        bool WithZi::moveCursorRight() {
            return false;
        }
        bool WithZi::moveCursorLeft() {
            return false;
        }

        void WithZi::getPredicted(int candIdx, wchar_t* out) {
            wchar_t* currCand;
            wchar_t* currOut;
            int i;

            currCand = CandidatedWord[candIdx];
            currOut = out;
            i = 0;
            while (*currCand != L'\0') {
                *currOut = *currCand;
                currCand++;
                currOut++;
                i++;
            }
            out[i] = L'\0';
        }

        wchar_t* WithZi::getCurrentSelected() {
            if (0 > mSelectedCandidate || mSelectedCandidate >= 40) {
                return NULL;
            }
            return CandidatedWord[mSelectedCandidate];
        }

        s32 WithZi::getCurrentInput(wchar_t* out, u32 outLen) {
            wchar_t* candCurr;
            wchar_t* outCurr;
            u32 len, i;

            len = 0;
            if (outLen > ARRAY_LENGTH(InputBuffer))
                outLen = ARRAY_LENGTH(InputBuffer);

            candCurr = InputBuffer;
            outCurr = out;
            for (i = 0; i < outLen; i++) {
                wchar_t ch = *candCurr;
                *outCurr = ch;

                if (ch == L'\0')
                    break;

                if (mLetterMode == LETTER_MODE_UPPER) {
                    *outCurr = util::toWUpper(ch);
                }
                len++;
                candCurr++;
                outCurr++;
            }
            if (mLetterMode == LETTER_MODE_TITLE) {
                *out = util::toWUpper(*out);
            }
            return len;
        }

        const wchar_t* WithZi::getCurrentInput() {
            return InputBuffer;
        }

        // clang-format off
        // Right half of keyboard
        static const wchar_t DubeolsikVowels[] = {
            L'y', L'u', L'i', L'o', L'p',
            L'h', L'j', L'k', L'l',
            L'b', L'n', L'm',
        };
        // Left half of keyboard
        static const wchar_t DubeolsikConsonants[] = {
            L'q', L'w', L'e', L'r', L't',
            L'a', L's', L'd', L'f',
            L'g', L'z', L'x', L'c', L'v'
        };
        // clang-format on

        // NOTE: maybe these are private static inlines?
        bool isDubeolsikVowel(wchar_t ch) {
            ch = util::toWLower(ch);
            for (int i = 0; i < ARRAY_LENGTH(DubeolsikVowels); i++) {
                if (ch == DubeolsikVowels[i]) {
                    return true;
                }
            }
            return false;
        }
        bool isDubeolsikConsonant(wchar_t ch) {
            ch = util::toWLower(ch);
            for (int i = 0; i < ARRAY_LENGTH(DubeolsikConsonants); i++) {
                if (ch == DubeolsikConsonants[i]) {
                    return true;
                }
            }
            return false;
        }
        void WithZi::partialConfirmForKR() {
            if (mInputStringLen <= 1)
                return;

            if (isDubeolsikVowel(InputBuffer[mInputStringLen - 1]) && isDubeolsikConsonant(InputBuffer[mInputStringLen - 2])) {
                InputBuffer[0] = InputBuffer[mInputStringLen - 2];
                InputBuffer[1] = InputBuffer[mInputStringLen - 1];
                mInputStringLen = 2;
            } else {
                InputBuffer[0] = InputBuffer[mInputStringLen - 1];
                mInputStringLen = 1;
            }
            InputBuffer[mInputStringLen] = L'\0';
            update();
        }

        u32 WithZi::getCandidates() {
            u32 candCount = EZTXGetCandidates(&mGetParam, mpEztxWork);
            if (getPredictLanguage() == ZI8_LANG_ZH && candCount == 0x61) {
                mGetParam.firstCandidate = 0x61;
                mGetParam.candidates = CandidatesBuffer + 0xC2;
                mGetParam.maxCandidates = 199;
                candCount += EZTXGetCandidates(&mGetParam, mpEztxWork);
                mGetParam.firstCandidate = 0;
                mGetParam.candidates = CandidatesBuffer;
            }
            return candCount;
        }

        u32 WithZi::copyWordExtensionToWord() {
            int prevExtensionLen = mWordExtensionLen;
            u8 latestWordLen = wcslen(LatestWord);
            u32 i;
            for (i = 0; i < prevExtensionLen; i++) {
                LatestWord[i] = LatestWord[i + (latestWordLen - prevExtensionLen)];
            }
            return i;
        }

        void WithZi::update() {
            if (!mbDictOpen)
                return;

            mSelectedCandidate = 0;

            s32 candCount;
            int elementCount = setElementBuffer();
            mGetParam.language = getPredictLanguage();
            mGetParam.subLanguage = 0x7;
            mGetParam.getMode = 0x00;
            mGetParam.context = 0x01;
            mGetParam.getOptions = 0x81;
            mGetParam.elements = ElementBuffer;
            mGetParam.candidates = CandidatesBuffer;
            mGetParam.maxCandidates = 40;
            mGetParam.elementCount = elementCount;
            mGetParam.firstCandidate = 0;
            mGetParam.currentWord = NULL;
            mGetParam.wordCharCount = 0;
            mGetParam.wordCandidates = 0;
            mGetParam.count = 0;
            mGetParam.letters = 0;
            mGetParam.scratch = NULL;

            if (getPredictLanguage() == ZI8_LANG_ZH) {
                mGetParam.getMode = 0x01;
                mGetParam.context = 0x11;
                if (unk_0xA8 != 0) {
                    mGetParam.context |= 0x20;
                    mGetParam.getOptions |= 0x10;
                }

                mGetParam.currentWord = LatestWord;
                mGetParam.wordCharCount = wcslen(LatestWord);
            }

            if (elementCount == 0 && mGetParam.wordCharCount == 0) {
                init();
                return;
            }

            if (elementCount == 1 && 0xEFF1 <= ElementBuffer[0] && ElementBuffer[0] <= 0xEFF9 && mCellPhoneHoldingkey &&
                getPredictLanguage() != ZI8_LANG_KO) {
                CandidatedWord[0][0] = L'>';
                CandidatedWord[0][1] = L'\0';

                mCurrNumPredicted = 1;
                for (int i = 1; i < 16; i++) {
                    wchar_t currKey;
                    currKey = ((wchar_t*)mCellPhoneHoldingkey)[i + 9];
                    if (currKey != L'\0') {
                        CandidatedWord[i][0] = currKey;
                        CandidatedWord[i][1] = L'\0';
                        mCurrNumPredicted++;
                    }
                }
                EZTXGetCandidates(&mGetParam, mpEztxWork);
                return;
            }

            memcpy(CandidatesBuffer, InputBuffer, sizeof(InputBuffer));
            ChangeDictionaryLanguage(getPredictLanguage());

            // candCount = EZTXGetCandidates(&mGetParam, mpEztxWork);
            // if (getPredictLanguage() == ZI8_LANG_ZH && candCount == 0x61) {
            //     mGetParam.firstCandidate = 0x61;
            //     mGetParam.candidates = CandidatesBuffer + 0xC2;
            //     mGetParam.maxCandidates = 199;
            //     candCount += EZTXGetCandidates(&mGetParam, mpEztxWork);
            //     mGetParam.firstCandidate = 0;
            //     mGetParam.candidates = CandidatesBuffer;
            // }
            candCount = getCandidates();
            if (candCount > 40) {
                candCount = 40;
            }

            if (getPredictLanguage() == ZI8_LANG_ZH && unk_0x79) {
                unk_0x79 = false;
                if (mGetParam.wordCandidates == 0) {
                    LatestWord[copyWordExtensionToWord()] = L'\0';
                    mGetParam.wordCharCount = wcslen(LatestWord);
                    candCount = EZTXGetCandidates(&mGetParam, mpEztxWork);
                }
            }
            if (candCount == 0) {
                if (getPredictLanguage() != ZI8_LANG_ZH) {
                    if (getPredictLanguage() == ZI8_LANG_KO) {
                        backSpace();
                        return;
                    }
                    candCount = complementsCandidates_(elementCount);
                }
                if (candCount == 0) {
                    return;
                }
            }
            memset(CandidatedWord, 0, sizeof(CandidatedWord));
            mCurrNumPredicted = 0;
            if (elementCount == 0 && mGetParam.wordCharCount == 0) {
                return;
            }

            wchar_t* currCand = mGetParam.candidates;
            for (int i = 0; i < candCount; i++) {
                if (getPredictLanguage() == ZI8_LANG_ZH) {
                    int j = 0;
                    while (*currCand != L' ' && *currCand != L'\0') {
                        CandidatedWord[i][j] = *currCand;
                        j++;
                        currCand++;
                    }
                    currCand++;
                    CandidatedWord[i][j] = L'\0';
                } else if (mPredictLang == PREDICT_LANG_KO_SYLL) {
                    CandidatedWord[i][0] = *currCand++;
                    CandidatedWord[i][1] = L'\0';
                } else if (getPredictLanguage() == ZI8_LANG_KO) {
                    for (int j = 0; *currCand >= 0x100; j++, currCand++) {
                        CandidatedWord[i][j] = *currCand;
                    }
                } else if (EZTXCopy(CandidatedWord[i], &mGetParam, i, mpEztxWork) == 0)
                    continue;

                mCurrNumPredicted++;
                for (int j = 0; CandidatedWord[i][j] != L'\0'; j++) {
                    switch (mLetterMode) {
                        case LETTER_MODE_LOWER:
                            CandidatedWord[i][j] = util::toWLower(CandidatedWord[i][j]);
                            break;
                        case LETTER_MODE_UPPER:
                            CandidatedWord[i][j] = util::toWUpper(CandidatedWord[i][j]);
                            break;
                        case LETTER_MODE_TITLE:
                            if (j == 0) {
                                CandidatedWord[i][j] = util::toWUpper(CandidatedWord[i][j]);
                            } else {
                                CandidatedWord[i][j] = util::toWLower(CandidatedWord[i][j]);
                            }
                            break;
                        case LETTER_MODE_INPUT:
                            break;
                    }
                }
            }
        }

        bool WithZi::elementsContainPadKey() {
            for (int i = 0; ElementBuffer[i] != L'\0'; i++) {
                if (0xEFF1 <= ElementBuffer[i] && ElementBuffer[i] <= 0xEFF9) {
                    return true;
                }
            }
            return false;
        }

        s32 WithZi::complementsCandidates_(s32) {
            int i;

            if (elementsContainPadKey()) {
                CandidatedWord[0][mInputStringLen - 1] = L'\xFFFE';
                CandidatedWord[0][mInputStringLen] = L'\0';
            } else {
                int i = 0;
                wchar_t* currBuf = ElementBuffer;
                while (*currBuf != L'\0') {
                    switch (mLetterMode) {
                        case LETTER_MODE_LOWER:
                            CandidatedWord[0][i] = util::toWLower(ElementBuffer[i]);
                            break;
                        case LETTER_MODE_UPPER:
                            CandidatedWord[0][i] = util::toWUpper(ElementBuffer[i]);
                            break;
                        case LETTER_MODE_TITLE:
                            if (i == 0) {
                                CandidatedWord[0][i] = util::toWUpper(ElementBuffer[i]);
                            } else {
                                CandidatedWord[0][i] = util::toWLower(ElementBuffer[i]);
                            }
                            break;
                        case LETTER_MODE_INPUT:
                            CandidatedWord[0][i] = ElementBuffer[i];
                            break;
                    }

                    currBuf++;
                    i++;
                }
                CandidatedWord[0][i] = L'\0';
            }
            mCurrNumPredicted = 1;
            return 0;
        }

        u16 WithZi::setElementBuffer() {
            u16 i = 0;
            memset(ElementBuffer, 0, sizeof(ElementBuffer));
            memset(UnkBuffer, 0, sizeof(UnkBuffer));
            while (InputBuffer[i] != L'\0' && i < ARRAY_LENGTH(ElementBuffer)) {
                ElementBuffer[i] = InputBuffer[i];
                if (getPredictLanguage() == ZI8_LANG_ZH) {
                    // Might be a fakematch? This should be a wchar_t rather
                    // than an int.
                    int ch = ElementBuffer[i];
                    if (L'0' <= ch && ch <= L'9') {
                        ElementBuffer[i] += 0xF300;
                    } else if ((L'a' <= ch && ch <= L'z') || (L'A' <= ch && ch <= L'Z')) {
                        ElementBuffer[i] += 0xF300;
                    }
                }
                i++;
            }
            return i;
        }

        bool WithZi::isFix() {
            return mInputStringLen == 0;
        }

        u8 WithZi::getPredictLanguage() {
            switch (mPredictLang) {
                case PREDICT_LANG_ENAM:
                    return ZI8_LANG_ENAM;
                case PREDICT_LANG_FRCA:
                    return ZI8_LANG_FRCA;
                case PREDICT_LANG_ESSA:
                    return ZI8_LANG_ESSA;
                case PREDICT_LANG_ENUK:
                    return ZI8_LANG_ENUK;
                case PREDICT_LANG_DE:
                    return ZI8_LANG_DE;
                case PREDICT_LANG_FREU:
                    return ZI8_LANG_FREU;
                case PREDICT_LANG_ESEU:
                    return ZI8_LANG_ESEU;
                case PREDICT_LANG_IT:
                    return ZI8_LANG_IT;
                case PREDICT_LANG_NL:
                    return ZI8_LANG_NL;
                case PREDICT_LANG_ZH:
                    return ZI8_LANG_ZH;
                case PREDICT_LANG_KO_ROMA:
                    return ZI8_LANG_KO;
                case PREDICT_LANG_KO_SYLL:
                    return ZI8_LANG_KO;
                default:
                    return ZI8_LANG_ENAM;
            }
        }

        void WithZi::setCurrentWord(const wchar_t* word) {
            if (word == NULL) {
                LatestWord[0] = L' ';
                LatestWord[1] = L'\0';
                return;
            }
            unk_0x79 = true;
            u32 latestWordI = 0;
            for (latestWordI = 0; LatestWord[latestWordI] != L'\0' && LatestWord[latestWordI] != L' '; latestWordI++) {
                if (latestWordI == ARRAY_LENGTH(LatestWord) - 1) {
                    LatestWord[latestWordI] = L'\0';
                    return;
                }
            }

            u32 wordInI = 0;
            while (word[wordInI] != L'\0' && latestWordI < ARRAY_LENGTH(LatestWord) - 1) {
                LatestWord[latestWordI++] = word[wordInI++];
            }
            LatestWord[latestWordI] = L'\0';
            mWordExtensionLen = wordInI;
        }
    }  // namespace tistring
}  // namespace textinput
