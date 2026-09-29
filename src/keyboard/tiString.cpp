#include "keyboard/tiString.h"

#include "keyboard/tiUtil.h"

#include <revolution/kpr.h>
#include <wchar.h>

namespace textinput {
    namespace tistring {
        void StringBase::create(MEMAllocator* allocator) {
            mpAllocator = allocator;

            mpszString = (wchar_t*)MEMAllocFromAllocator(allocator, muMaxLength << 1);
            wmemset(mpszString, L'\0', muMaxLength);

            muLength = 0;

            mpszTmpString = (wchar_t*)MEMAllocFromAllocator(allocator, muMaxLength << 1);
            wmemset(mpszTmpString, L'\0', muMaxLength);
        }
        StringBase::~StringBase() {
            MEMFreeToAllocator(mpAllocator, mpszString);
            MEMFreeToAllocator(mpAllocator, mpszTmpString);
        }

        void StringBase::pushBack(wchar_t ch) {
            wchar_t singleChStr[0x10];

            singleChStr[0] = ch;
            singleChStr[1] = L'\0';
            wcsncat(mpszString, singleChStr, wcslen(singleChStr));
            muLength++;
        }
        void StringBase::popBack() {
            if (muLength != 0) {
                muLength--;
            }
            mpszString[muLength] = L'\0';
        }
        bool StringBase::append(const wchar_t* string) {
            u32 inputLen = wcslen(string);
            if (getLength() + inputLen > muMaxLength) {
                return false;
            }

            if (string == NULL) {
                return false;
            }

            while (*string != L'\0') {
                mpszString[muLength] = *string;
                muLength++;
                string++;
            }
            mpszString[muLength] = L'\0';
            return true;
        }
        bool StringBase::insert(u16 pos, const wchar_t* string) {
            u32 inputLen = wcslen(string);
            if (getLength() + (u16)inputLen > muMaxLength) {
                return false;
            }

            if (string == NULL || pos > getLength()) {
                return false;
            }

            wmemset(mpszTmpString, L'\0', muMaxLength);
            wcsncpy(mpszTmpString, mpszString + pos, getLength() - pos);
            muLength = pos;
            mpszString[pos] = L'\0';
            append(string);
            append(mpszTmpString);
            return true;
        }
        void StringBase::remove(u16 pos, u16 len) {
            if (getLength() == 0)
                return;
            if (pos > getLength())
                return;

            if (pos + len >= getLength()) {
                len = getLength() - pos;
            }
            wmemset(mpszTmpString, L'\0', muMaxLength);
            wcsncpy(mpszTmpString, mpszString + pos + len, getLength() - (pos + len));
            muLength = pos;
            mpszString[pos] = L'\0';
            append(mpszTmpString);
        }
        void StringBase::replace(u16 pos, u16 len, const wchar_t* string) {
            if (pos + len >= getLength()) {
                len = getLength() - pos;
            }
            remove(pos, len);
            insert(pos, string);
            return;
        }
        void StringBase::set(const wchar_t* string) {
            clear();
            append(string);
        }
        void StringBase::setAt(u16 pos, wchar_t ch) {
            // @bug Not UB, but should check based on muLength instead of muMaxLength
            if (muMaxLength <= pos)
                return;

            mpszString[pos] = ch;
        }
        void StringBase::setLength(u16 newLen) {
            for (u16 i = newLen; i < muLength; i++) {
                setAt(i, L'\0');
            }
            muLength = newLen;
        }
        void StringBase::clear() {
            wmemset(mpszString, L'\0', muMaxLength);
            muLength = 0;
        }
        wchar_t StringBase::getLastWChar() {
            return muLength - 1 >= 0 ? mpszString[muLength - 1] : L'\0';
        }

        u16 Decolated::translateInputChar(wchar_t ch, wchar_t* string) {
            u8 i;
            u32 len;

            string[4] = L'\0';
            string[3] = L'\0';
            string[2] = L'\0';
            string[1] = L'\0';
            string[0] = L'\0';
            if (mTranslateMode == TRANSLATE_MODE_ROMAJI_HIRAGANA || mTranslateMode == TRANSLATE_MODE_ROMAJI_KATAKANA) {
                mKanaStream.mBuf[4] = L'\0';
                mKanaStream.mBuf[3] = L'\0';
                mKanaStream.mBuf[2] = L'\0';
                mKanaStream.mBuf[1] = L'\0';
                mKanaStream.mBuf[0] = L'\0';

                if (ch == L'\n' && KPRLookAhead(&mKanaStream.mQueue, NULL, 0) != 0) {
                    len = KPRPutChar(&mKanaStream.mQueue, L'\xFFFF');
                } else {
                    len = KPRPutChar(&mKanaStream.mQueue, util::toWLower(ch));
                }
                for (i = 0; i < len; i++) {
                    string[i] = KPRGetChar(&mKanaStream.mQueue);
                }
                KPRLookAhead(&mKanaStream.mQueue, mKanaStream.mBuf, 5);
                return len;
            } else if (mTranslateMode == TRANSLATE_MODE_ROMAJI_KANAFIX) {
                // TODO: MWCC optimizer gave up or something here
                len = 0;
                string[len] = L'\0';
                while (len < 1) {
                    string[len++] = ch;
                    if (ch == L'\n')
                        break;
                }
                string[len] = L'\0';
                mKanaStream.mBuf[0] = L'\0';
                return len;
            } else {
                string[0] = (wchar_t)ch;
                string[1] = L'\0';
                return 1;
            }
        }

        void Decolated::inputChar(wchar_t ch) {
            wchar_t translated[5];

            if (ch == 0xFFFE)
                return;

            u16 len = translateInputChar(ch, translated);
            setCandidate(0);

            u32 start, end;
            getSelected(start, end);
            if (start == end) {
                insert(mCursorStart, translated);
                mCursorStart += len;
            } else {
                replace(start, end - start, translated);
                mCursorStart = start;
                mCursorStart += len;
            }
            mCursorEnd = mCursorStart;
        }
        void Decolated::confirmKana() {
            inputChar(L'\n');
        }
        void Decolated::clearKana() {
            KPRClearQueue(&mKanaStream.mQueue);
            mKanaStream.mBuf[0] = L'\0';
        }
        void Decolated::inputString(const wchar_t* string) {
            if (string == NULL)
                return;

            const wchar_t* curr = string;
            while (*curr != L'\0') {
                inputChar(*curr);
                curr++;
            }
        }
        void Decolated::inputString(const wchar_t* string, TranslateMode translateMode) {
            TranslateMode oldTranslateMode;

            oldTranslateMode = mTranslateMode;
            if (oldTranslateMode != translateMode) {
                if (!isKanaFix() && translateMode == TRANSLATE_MODE_UNINITIALIZED) {
                    confirmKana();
                }

                mTranslateMode = translateMode;
                switch (mTranslateMode) {
                    case TRANSLATE_MODE_ROMAJI_HIRAGANA:
                        mKanaStream.mQueue.mode = KPR_MODE_JP_ROMAJI_HIRAGANA;
                        break;

                    case TRANSLATE_MODE_ROMAJI_KATAKANA:
                        mKanaStream.mQueue.mode = KPR_MODE_JP_ROMAJI_KATAKANA;
                        break;

                    default:
                        break;
                }
            }
            inputString(string);
            if (mTranslateMode != oldTranslateMode) {
                if (!isKanaFix() && oldTranslateMode == TRANSLATE_MODE_UNINITIALIZED) {
                    confirmKana();
                }

                mTranslateMode = oldTranslateMode;
                switch (mTranslateMode) {
                    case TRANSLATE_MODE_ROMAJI_HIRAGANA:
                        mKanaStream.mQueue.mode = KPR_MODE_JP_ROMAJI_HIRAGANA;
                        break;

                    case TRANSLATE_MODE_ROMAJI_KATAKANA:
                        mKanaStream.mQueue.mode = KPR_MODE_JP_ROMAJI_KATAKANA;
                        break;

                    default:
                        break;
                }
            }
        }

        void Decolated::backSpace() {
            if (mTranslateMode == TRANSLATE_MODE_ROMAJI_HIRAGANA || mTranslateMode == TRANSLATE_MODE_ROMAJI_KATAKANA) {
                if (KPRLookAhead(&mKanaStream.mQueue, NULL, 0) != 0) {
                    mKanaStream.mQueue.iCount--;

                    u8 lookaheadIdx = KPRLookAhead(&mKanaStream.mQueue, NULL, 0);
                    mKanaStream.mBuf[lookaheadIdx] = L'\0';
                    return;
                }
            }

            u32 selectedStart, selectedEnd;
            wchar_t selectedReplaceStr[1];
            getSelected(selectedStart, selectedEnd);
            if (selectedStart != selectedEnd || selectedStart != 0) {
                if (selectedStart == selectedEnd) {
                    if (hasCandidate()) {
                        setCandidate(L'\0');
                    } else {
                        if (mCursorStart != 0) {
                            mCursorStart--;
                        }
                        remove(mCursorStart, 1);
                    }
                } else {
                    selectedReplaceStr[0] = L'\0';
                    replace(selectedStart, selectedEnd - selectedStart, selectedReplaceStr);
                    mCursorStart = selectedStart;
                }
                mCursorEnd = mCursorStart;
            }
        }

        void Decolated::confirm(const wchar_t* string) {
            if (string == NULL)
                return;

            insert(mCursorStart, string);
            mCursorStart += wcslen(string);
            mCursorEnd = mCursorStart;
        }

        bool Decolated::moveCursorRight() {
            if (mCursorStart >= getLength()) {
                return !mbIsSustaining;
            } else {
                mCursorStart++;
                if (!mbIsSustaining) {
                    mCursorEnd = mCursorStart;
                }
                return false;
            }
        }
        bool Decolated::moveCursorLeft() {
            if (mCursorStart == 0)
                return false;

            mCursorStart--;
            if (!mbIsSustaining) {
                mCursorEnd = mCursorStart;
            }
            return true;
        }

        void Decolated::setCursorPos(u32 newPos) {
            mCursorStart = newPos;
            if (!mbIsSustaining) {
                mCursorEnd = newPos;
            }
        }

        void Decolated::onSustain() {
            mbIsSustaining = true;
            mCursorEnd = mCursorStart;
        }
        void Decolated::offSustain() {
            mbIsSustaining = false;
        }

        void Decolated::getCursorPos(u32* start, u32* end) {
            *start = mCursorStart;
            *end = mCursorEnd;
        }

        bool Decolated::canBackSpace() {
            if (mCursorStart != 0 || (mCursorStart == 0 && mCursorStart != mCursorEnd)) {
                return true;
            }
            if (!isKanaFix()) {
                return true;
            }

            return false;
        }

        bool Decolated::deleteForward() {
            if (mCursorStart >= getLength()) {
                return false;
            }

            remove(mCursorStart, 1);
            return true;
        }

        void Decolated::getSelected(u32& start, u32& end) {
            if (mCursorStart > mCursorEnd) {
                start = mCursorEnd;
                end = mCursorStart;
            } else {
                start = mCursorStart;
                end = mCursorEnd;
            }
        }

        wchar_t Decolated::getWCharAtCursor() {
            u32 start, end;
            getSelected(start, end);
            if (end == 0) {
                return L'\0';
            }

            return mpszString[end - 1];
        }

        void Decolated::replaceAtCursor(wchar_t newCh) {
            u32 start, end;
            getSelected(start, end);
            if (end == 0)
                return;

            mpszString[end - 1] = newCh;
        }

        bool Decolated::isDakuten() {
            return util::KBD_IsDakuten(getWCharAtCursor()) != false;
        }
        void Decolated::converDakuten() {
            replaceAtCursor(util::KBD_ConvertDakuten(getWCharAtCursor()));
        }
        bool Decolated::isHandaku() {
            return util::KBD_IsHandaku(getWCharAtCursor()) != false;
        }
        void Decolated::converHandaku() {
            replaceAtCursor(util::KBD_ConvertHandaku(getWCharAtCursor()));
        }
        void Decolated::convertAll() {
            replaceAtCursor(util::KBD_ConvertAll(getWCharAtCursor()));
        }
        bool Decolated::isSmall() {
            return util::KBD_IsSmall(getWCharAtCursor()) != false;
        }
        void Decolated::converSmall() {
            replaceAtCursor(util::KBD_ConvertSmall(getWCharAtCursor()));
        }

        bool Decolated::atTheBeginningOfASentence() {
            if (mCursorStart == 0) {
                return false;
            }
            if (getLength() < 1) {
                return false;
            }

            u32 start, end;
            getSelected(start, end);
            if (start != end) {
                return false;
            }

            switch (getWCharAtCursor()) {
                case L'.':
                case L'?':
                case L'!':
                    return true;

                default:
                    return false;
            }
        }

        void Decolated::setTranslateMode(TranslateMode translateMode) {
            if (mTranslateMode == translateMode)
                return;

            if (!isKanaFix() && translateMode == TRANSLATE_MODE_UNINITIALIZED) {
                confirmKana();
            }

            mTranslateMode = translateMode;
            switch (translateMode) {
                case TRANSLATE_MODE_ROMAJI_HIRAGANA:
                    mKanaStream.mQueue.mode = KPR_MODE_JP_ROMAJI_HIRAGANA;
                    break;

                case TRANSLATE_MODE_ROMAJI_KATAKANA:
                    mKanaStream.mQueue.mode = KPR_MODE_JP_ROMAJI_KATAKANA;
                    break;

                default:
                    break;
            }
        }

        void Decolated::initKanaConverter() {
            KPRInitQueue(&(this->mKanaStream).mQueue);
            KPRSetMode(&(this->mKanaStream).mQueue, KPR_MODE_NONE);
            mKanaStream.mBuf[0] = L'\0';
            switch (mTranslateMode) {
                case TRANSLATE_MODE_ROMAJI_HIRAGANA:
                    mKanaStream.mQueue.mode = KPR_MODE_JP_ROMAJI_HIRAGANA;
                    break;

                case TRANSLATE_MODE_ROMAJI_KATAKANA:
                    mKanaStream.mQueue.mode = KPR_MODE_JP_ROMAJI_KATAKANA;
                    break;

                default:
                    break;
            }
        }

        void Decolated::setLength(u16 newLen) {
            StringBase::setLength(newLen);
            if (mCursorStart > muLength) {
                mCursorEnd = newLen;
                mCursorStart = newLen;
            }
        }
    }  // namespace tistring
}  // namespace textinput
