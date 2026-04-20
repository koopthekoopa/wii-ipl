#ifndef TEXTINPUT_STRING_BASE_H
#define TEXTINPUT_STRING_BASE_H

#include <revolution/types.h>
#include <revolution/mem/allocator.h>

namespace textinput {
    namespace tistring {
        class StringBase {
            public:
                StringBase(u16 maxLength) :
                muMaxLength(maxLength),
                muLength(0),
                mpszString(NULL),
                mpszTmpString(NULL),
                mwcCandidate(0),
                mpAllocator(NULL) {}

                virtual ~StringBase();

                virtual void        create(MEMAllocator* allocator);
                virtual void        pushBack(wchar_t ch);
                virtual void        popBack();
                virtual void        clear();
                virtual u16         getLength() const               { return muLength; }
                virtual bool        append(const wchar_t* string);
                virtual bool        insert(u16, const wchar_t* string);
                virtual void        remove(u16, u16);
                virtual void        replace(u16, u16, const wchar_t* string);

                virtual void        set(const wchar_t* string);
                virtual void        setAt(u16 index, wchar_t ch);

                virtual void        setLength(u16);

                virtual wchar_t*    getWCString() const             { return mpszString; }

                virtual void        setCandidate(wchar_t candidate) { mwcCandidate = candidate; }
                virtual wchar_t     getCandidate()                  { return mwcCandidate; }
                virtual bool        hasCandidate() const;

                virtual wchar_t     getLastWChar();

            private:
                u16             muMaxLength;    // 0x04
                u16             muLength;       // 0x06

                wchar_t*        mpszString;     // 0x08
                wchar_t*        mpszTmpString;  // 0x0C

                wchar_t         mwcCandidate;   // 0x10

                MEMAllocator*   mpAllocator;    // 0x14
        };

        class KanaStream {
        private:
            u8 field_0x00[0x24];
        };

        class Decolated : public StringBase {
        public:
            Decolated(u16 maxLen) : StringBase(maxLen), field_0x18(0), field_0x1C(0), field_0x20(0), field_0x24(0) { initKanaConverter(); }

            virtual void inputChar();
            virtual void inputString();
            virtual void deleteChar();
            virtual void backSpace();
            virtual void confirm();
            virtual void moveCursorRight();
            virtual void moveCursorLeft();
            virtual void setCursorPos();
            virtual void onSustain();
            virtual void offSustain();
            virtual void isOnSustain();
            virtual void getCursorPos();
            virtual void getCursorPos(u32*, u32*);
            virtual void canBackSpace();
            virtual void deleteForward();
            virtual void getSelected();
            virtual void getWCharAtCursor();
            virtual void replaceAtCursor();
            virtual void isDakuten();
            virtual void converDakuten();
            virtual void isHandaku();
            virtual void converHandaku();
            virtual void convertAll();
            virtual void isSmall();
            virtual void converSmall();
            virtual bool atTheBeginningOfASentence();
            virtual void initKanaConverter();
            virtual void getKanaBuffer();
            virtual void isKanaFix();
            virtual void confirmKana();
            virtual void clearKana();
            virtual void EnableKSXFilter();

        private:
            u32 field_0x18;          // 0x18
            u32 field_0x1C;          // 0x1C
            u8 field_0x20;           // 0x20
            u32 field_0x24;          // 0x24
            KanaStream mKanaStream;  // 0x28
        };

        class WithAtok : public StringBase {};
    }
}

#endif // TEXTINPUT_STRING_BASE_H
