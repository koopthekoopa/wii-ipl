
#ifndef TEXTINPUT_ATOK_STRING_H
#define TEXTINPUT_ATOK_STRING_H

#include "keyboard/tiString.h"

#include <eztx.h>
#include <revolution/mem/allocator.h>

namespace textinput {
    namespace tistring {
        class WithAtok : public Decolated {
        public:
            struct DrawInfo {};

            WithAtok(u16 maxLen) : Decolated(maxLen) {}

            virtual void pushBack(wchar_t ch) override {}                // 0x010
            virtual void popBack() override {}                           // 0x014
            virtual void inputChar(wchar_t ch) override {}               // 0x050
            virtual void backSpace() override {}                         // 0x05C
            virtual void confirm(const wchar_t* string) override {}      // 0x060
            virtual bool moveCursorRight() override { return false; }    // 0x064
            virtual bool moveCursorLeft() override { return false; }     // 0x068
            virtual void getCursorPos(u32* start, u32* end) override {}  // 0x080

            virtual bool isFix() { return true; }                                 // 0x0D0
            virtual void setFix(bool _) {}                                        // 0x0D4
            virtual void initConverting() {}                                      // 0x0D8
            virtual bool isConverting() { return false; }                         // 0x0DC
            virtual const wchar_t* getConfirmedWCString() const { return NULL; }  // 0x0E0
            virtual s32 getCurrentNumPredicted() { return NULL; }                 // 0x0E4
            virtual void getPredicted(int, wchar_t*) {}                           // 0x0E8
            virtual void commitPredicted(int) {}                                  // 0x0EC
            virtual void setSelectedCandidate(s32) {}                             // 0x0F0
            virtual bool isCandidateSelected() { return false; }                  // 0x0F4
            virtual s32 getSelectedCandidate() { return 0; }                      // 0x0F8
            virtual void init() {}                                                // 0x0FC
            virtual void setInputting(wchar_t) {}                                 // 0x100
            virtual void getDrawString(DrawInfo&) {}                              // 0x104
            virtual void openDictionary(void* atokDict, int atokDictSize, void* apotDict, int apotDictSize, void* nintendoDict,
                                        int nintendoDictSize) {}     // 0x108
            virtual void closeDictionary() {}                        // 0x10C
            virtual bool hasConfirmedString() { return false; }      // 0x110
            virtual void enableConfirmedString(bool enabled) {}      // 0x114
            virtual void startConverting() {}                        // 0x118
            virtual bool isDictionaryOpened() { return false; }      // 0x11C
            virtual void changeKanaMode(bool) {}                     // 0x120
            virtual u16 getInputStringLength() { return 0; }         // 0x124
            virtual void resetRelation() {}                          // 0x128
            virtual void setFixMode(bool) {}                         // 0x12C
            virtual void setFixPrediction(int, const char**) {}      // 0x130
            virtual void setDefaultPrediction(int, const char**) {}  // 0x134
            virtual s16 getSelectedConverting() { return 0; }        // 0x138
            virtual u32 getFixedPredictionNum() { return 0; }        // 0x13C
        };
    }  // namespace tistring
}  // namespace textinput

#endif  // TEXTINPUT_ATOK_STRING_H
