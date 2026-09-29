#ifndef TEXTINPUT_STRING_BASE_H
#define TEXTINPUT_STRING_BASE_H

#include <revolution/kpr.h>
#include <revolution/mem/allocator.h>
#include <revolution/types.h>

namespace textinput {
    namespace tistring {
        class StringBase {
        public:
            StringBase(u16 maxLength)
                : muMaxLength(maxLength), muLength(0), mpszString(NULL), mpszTmpString(NULL), mwcCandidate(0), mpAllocator(NULL) {}

            virtual ~StringBase();

            virtual void create(MEMAllocator* allocator);
            virtual void pushBack(wchar_t ch);
            virtual void popBack();
            virtual void clear();
            virtual u16 getLength() const { return muLength; }
            virtual bool append(const wchar_t* string);
            virtual bool insert(u16 pos, const wchar_t* string);
            virtual void remove(u16 pos, u16 len);
            virtual void replace(u16 pos, u16 len, const wchar_t* string);

            virtual void set(const wchar_t* string);
            virtual void setAt(u16 pos, wchar_t ch);

            virtual void setLength(u16);

            virtual wchar_t* getWCString() const { return mpszString; }

            virtual void setCandidate(wchar_t candidate) { mwcCandidate = candidate; }
            virtual wchar_t getCandidate() const { return mwcCandidate; }
            virtual bool hasCandidate() const;

            virtual wchar_t getLastWChar();

        protected:
            u16 muMaxLength;  // 0x04
            u16 muLength;     // 0x06

            wchar_t* mpszString;     // 0x08
            wchar_t* mpszTmpString;  // 0x0C

            wchar_t mwcCandidate;  // 0x10

            MEMAllocator* mpAllocator;  // 0x14
        };

        class KanaStream {
        public:
            KPRQueue mQueue;
            u16 unk_0x18;
            wchar_t mBuf[5];
        };

        class Decolated : public StringBase {
        public:
            enum TranslateMode {
                TRANSLATE_MODE_UNINITIALIZED = 0,
                TRANSLATE_MODE_ROMAJI_HIRAGANA = 1,
                TRANSLATE_MODE_ROMAJI_KATAKANA = 2,
                TRANSLATE_MODE_ROMAJI_KANAFIX = 3,
            };

            Decolated(u16 maxLen)
                : StringBase(maxLen), mCursorStart(0), mCursorEnd(0), mbIsSustaining(0), mTranslateMode(TRANSLATE_MODE_UNINITIALIZED) {
                initKanaConverter();
            }

            virtual void clear() override {
                StringBase::clear();
                mCursorStart = 0;
                mCursorEnd = 0;
                mbIsSustaining = false;
                initKanaConverter();
            }
            virtual void set(const wchar_t* string) override {
                StringBase::set(string);
                mCursorStart = getLength();
                mCursorEnd = mCursorStart;
            }

            virtual void inputChar(wchar_t ch);
            virtual void inputString(const wchar_t* string);
            void inputString(const wchar_t* string, TranslateMode translateMode);
            virtual void deleteChar();
            virtual void backSpace();
            virtual void confirm(const wchar_t* string);
            virtual bool moveCursorRight();
            virtual bool moveCursorLeft();
            virtual void setCursorPos(u32 newPos);
            virtual void onSustain();
            virtual void offSustain();
            virtual bool isOnSustain() { return mbIsSustaining; }
            virtual u32 getCursorPos() const { return mCursorStart; }
            virtual void getCursorPos(u32* start, u32* end);
            virtual bool canBackSpace();
            virtual bool deleteForward();
            virtual void getSelected(u32& start, u32& end);
            virtual wchar_t getWCharAtCursor();
            virtual void replaceAtCursor(wchar_t newCh);
            virtual bool isDakuten();
            virtual void converDakuten();
            virtual bool isHandaku();
            virtual void converHandaku();
            virtual void convertAll();
            virtual bool isSmall();
            virtual void converSmall();
            virtual bool atTheBeginningOfASentence();
            virtual void initKanaConverter();
            virtual wchar_t* getKanaBuffer() { return mKanaStream.mBuf; }
            virtual bool isKanaFix() const {
                if (mTranslateMode == TRANSLATE_MODE_ROMAJI_KANAFIX)
                    return true;
                return KPRLookAhead(&mKanaStream.mQueue, NULL, 0);
            }
            virtual void confirmKana();
            virtual void clearKana();
            virtual void EnableKSXFilter(bool) {}

            void setTranslateMode(TranslateMode translateMode);
            void setLength(u16 newLen) override;

        private:
            inline u16 translateInputChar(wchar_t ch, wchar_t* stringOut);

            u32 mCursorStart;              // 0x18
            u32 mCursorEnd;                // 0x1C
            bool mbIsSustaining;           // 0x20
            TranslateMode mTranslateMode;  // 0x24
            KanaStream mKanaStream;        // 0x28
        };

        class WithAtok : public StringBase {};
    }  // namespace tistring
}  // namespace textinput

#endif  // TEXTINPUT_STRING_BASE_H
