#ifndef TEXTINPUT_HW_KEYBOARD_H
#define TEXTINPUT_HW_KEYBOARD_H

#include "tiHKBManager.h"
#include "tiTextInputBase.h"

namespace textinput {
    class Manager;
    namespace keyboard {
        namespace hwkey {
            class HWKeyboard : CommandSender {
            public:
                HWKeyboard(Manager*);

                virtual void init();

                virtual bool updateInput(input::HKBManager& hkbManager);
                void updateInput(int chan, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data);

                void resetQuotes() {
                    mbSingleQuoteR = false;
                    mbDoubleQuoteR = false;
                }

                wchar_t convertWCCode(wchar_t code) const;
                void setLanguage(textinput::Destination destination, textinput::Language language);

            private:
                typedef struct CtrlCodeMap {
                    u8 nonModifier[0x98 - 0x20];
                    u8 modifier[0x10];
                } CtrlCodeMap;

                void updateShift(input::HKBManager& hkbManager);
                void controlKeyTriggeredHandler(input::HKBManager);

                Manager* mgr() { return mpManager; }
                const Manager* mgr() const { return mpManager; }

                bool updateFinalizeKey_(input::HKBManager& hkbManager);  // Guessed at the name, it's inlined
                bool updateRepeatKey_(input::HKBManager& hkbManager);
                bool updateTriggerKey_(input::HKBManager& hkbManager);
                bool updateTappingShift_(input::HKBManager& hkbManager);

                static HVKCode hidCodeToHwKeycode_(u8 key);

                Manager* mpManager;   // 0x10
                bool mbShiftHeld;     // 0x14
                bool mbSingleQuoteR;  // 0x15
                bool mbDoubleQuoteR;  // 0x16

                static const u8 sKbdCountryCodesEur[textinput::LanguageEnd];
                static const u8 sKbdCountryCodesAll[textinput::LanguageEnd];
                static const CtrlCodeMap sCtrlCodeMap;
            };
        }  // namespace hwkey
    }  // namespace keyboard
}  // namespace textinput

#endif  // TEXTINPUT_HW_KEYBOARD_H
