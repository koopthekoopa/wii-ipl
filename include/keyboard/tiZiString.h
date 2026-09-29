#ifndef TEXTINPUT_ZI_STRING_H
#define TEXTINPUT_ZI_STRING_H

#include "keyboard/tiString.h"

#include <eztx.h>
#include <revolution/mem/allocator.h>

namespace textinput {
    namespace tistring {
        class WithZi : Decolated {
        public:
            enum LetterMode {
                LETTER_MODE_TITLE = 0,
                LETTER_MODE_LOWER,
                LETTER_MODE_UPPER,
                LETTER_MODE_INPUT,
            };
            enum PredictLanguage {
                PREDICT_LANG_ENAM = 0,
                PREDICT_LANG_FRCA = 1,
                PREDICT_LANG_ESSA = 2,
                PREDICT_LANG_ENUK = 3,
                PREDICT_LANG_DE = 4,
                PREDICT_LANG_FREU = 5,
                PREDICT_LANG_ESEU = 6,
                PREDICT_LANG_IT = 7,
                PREDICT_LANG_NL = 8,
                PREDICT_LANG_ZH = 9,
                PREDICT_LANG_KO = 10,
                PREDICT_LANG_KO_2 = 11,
            };
            virtual ~WithZi();

            void create(MEMAllocator* alloc) override;

            virtual void init();                                                             // 0x00
            virtual void setInputting(wchar_t ch);                                           // 0x04
            virtual u32 getCurrentNumPredicted();                                            // 0x08
            virtual void getPredicted(int idx, wchar_t* out);                                // 0x0C
            virtual wchar_t* getCurrentSelected();                                           // 0x10
            virtual u16 getInputStringLength() { return mInputStringLen; }                   // 0x14
            virtual void setSelectedCandidate(s32 idx) { mSelectedCandidate = idx; }         // 0x18
            virtual bool isFix();                                                            // 0x1C
            virtual void setPredictLaunguage(PredictLanguage lang) { mPredictLang = lang; }  // 0x20
            virtual void changeLetterMode(LetterMode mode) { mLetterMode = mode; }           // 0x24
            virtual void ChangeDictionaryLanguage(u8 newLang);                               // 0x28
            virtual void setCellPhoneHoldingkey(void* key) { mCellPhoneHoldingkey = key; }   // 0x2C
            virtual u16 setElementBuffer();                                                  // 0x30
            virtual u8 getPredictLanguage();                                                 // 0x34

            virtual void pushBack(wchar_t ch) override;
            virtual void popBack() override;
            virtual void inputChar(wchar_t ch) override;
            virtual void backSpace() override;
            virtual void confirm(const wchar_t* string) override;
            virtual bool moveCursorRight() override;
            virtual bool moveCursorLeft() override;
            virtual void clear() override {}
            virtual bool canBackSpace() override { return mInputStringLen != 0; }
            virtual void EnableKSXFilter(bool) override {}

            void clearCandidates();
            void update();
            u32 getCurrentInput(wchar_t* out, u32 outLen);
            const wchar_t* getCurrentInput();
            void partialConfirmForKR();

            void openDictionary(void* ziDict, void* ziOemDict);

            s32 complementsCandidates_(s32);

            void setCurrentWord(const wchar_t* word);

        private:
            typedef struct {
                wchar_t ElementBuffer[0xFF];
                wchar_t unk_0x1FE;  // 0x1FE
                wchar_t CandidatesBuffer[0x100];
                wchar_t UnkBuffer[0xFF];
                wchar_t unk_0x3FE;  // 0x3FE
                wchar_t CandidatesBuffer2[0x100];
                wchar_t CandidatedWord[40][0x40];
                wchar_t LatestWord[0x40];
            } Buffers;

            typedef struct {
                u8 lang;    // 0x0
                u32* data;  // 0x4
            } OEMDictDataEntry;

            EZTXGetParam mGetParam;           // 0x4C
            bool mbDictOpen;                  // 0x78
            bool unk_0x79;                    // 0x79
            u32 mWordExtensionLen;            // 0x7C
            OEMDictDataEntry* mpOemDictData;  // 0x80
            void* mpEztxWork;                 // 0x84
            u16 mInputStringLen;              // 0x88
            u32 mCurrNumPredicted;            // 0x8C
            BOOL mOemDictAttached;            // 0x90
            u8 mCurrDictLang;                 // 0x94
            s32 mSelectedCandidate;           // 0x98
            PredictLanguage mPredictLang;     // 0x9C
            LetterMode mLetterMode;           // 0xA0
            void* mCellPhoneHoldingkey;       // 0xA4
            u8 unk_0xA8;                      // 0xA8

            static wchar_t ElementBuffer[0xFF];
            static wchar_t InputBuffer[0x100];
            static wchar_t UnkBuffer[0xFF];
            static wchar_t CandidatesBuffer[0x100];
            static wchar_t CandidatedWord[40][0x40];
            static wchar_t LatestWord[0x40];

            static u8 defaultLatinSearchOrder[10];

            bool elementsContainPadKey();
            u32 getCandidates();
            u32 copyWordExtensionToWord();
        };
    }  // namespace tistring
}  // namespace textinput

#endif  // TEXTINPUT_ZI_STRING_H
