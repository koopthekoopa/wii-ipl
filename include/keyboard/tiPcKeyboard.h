#ifndef TEXTINPUT_PC_KEYBOARD_H
#define TEXTINPUT_PC_KEYBOARD_H

#include "tiNw4rManager.h"
#include "tiTextInputBase.h"

namespace textinput {
    class Manager;

    namespace keyboard {

        namespace pctype {

            // TODO
            class Base : public CommandSender {
            public:
                // This appears to be used as textinput::tistring::Decolated::TranslateMode.
                //
                // Should those be unified?
                enum TranslateMode {
                    TM_00 = 0,
                    TM_01,
                    TM_02,
                };

                enum InputType {
                    IT_00,
                    IT_01,
                    IT_02,
                    IT_03,
                    IT_04,
                };

                // I don't believe this is the right size, it's just
                // here to generate symbols
                class KeyState {
                public:
                    void andABCFlag(u32 value) { setABCFlag(unk_0x0 & value); }
                    void setABCFlag(u32);

                private:
                    u32 unk_0x0;  // 0x0
                };

                virtual ~Base();
                virtual void create(MEMAllocator* allocator);
                virtual void init();
                virtual void setCommandReceiver(textinput::CommandReceiver*);
                virtual void updateFromReceiver(u32, void*);
                virtual void onKey();
                virtual void getType();
                virtual void setLanguage(Language);
                virtual void getLanguage();
                virtual void update();
                virtual void onActive();
                virtual void inputCharCode();
                virtual void getState();
                virtual void isShiftOn() const;
                virtual void isCapsOn() const;
                virtual bool isABC();
                virtual void setABC(bool);
                virtual s32 getABCInputMode() const;
                virtual void getAIUInputMode() const;
                virtual TranslateMode getTranslateMode() const;
                virtual void setTranslateMode(TranslateMode);
                virtual void onlyQwerty();
                virtual void setLangKeyActive(bool);
                virtual void setInputModeJP();
                virtual void setInputModeCK();
                virtual void refreshState();
                virtual void changeABCInputMode();
                virtual void changeAIUInputMode();
                virtual void onClose();
                virtual void getWCCode();
                virtual void getControlKey();
                virtual void sendInputWChar();
                virtual void goSignInputMode();
                virtual void changePredictLanguage();
                virtual void updateFixMode();

                u8 getUnkValue() { return unk_0x24[0x10]; }
                u8 getUnkValue2() { return unk_0x24[0x18]; }
                u8 getUnkValue3() { return unk_0x24[0x19]; }

                KeyState* getKeyState() { return &unk_0x20; }

            protected:
                u8 unk_0x10[0x10];  // 0x10
                KeyState unk_0x20;  // 0x20
                u8 unk_0x24[0x20];  // 0x10
            };

            class UIObj : public gui::EventHandler {
            public:
                class Listener {
                public:
                    virtual void onEvent(UIObj*, u32, void*);
                };
            };

            // TODO
            class LayoutByNW4R : public Base, public nw4rmanager::Layout, public UIObj::Listener {
            public:
                // TODO - ...

                virtual void init() override;

                virtual void onClose() override;

                virtual void draw() override;
                virtual void calc() override;

                virtual void setPredictLanguageDialog(predictlang::LayoutByNW4R*);
                virtual void setSignWindow(signwindow::LayoutByNW4R*);

                virtual void setLineFeedButton(bool);
                virtual void setPredictLanguageButton(bool);
                virtual void setSignWindowButton(bool);
                virtual bool updateInput(int chan, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) override;
                virtual bool updateInput(input::HKBManager& hkbManager) override;

                void onPressedShift(bool shift);
                void onReleasedShift();

                void onPressedCaps();

                bool getUnkValue4() { return unk_0xFC; }

            protected:
                u8 unk_0xF0[0xC];
                bool unk_0xFC;  // 0xFC
            };

        }  // namespace pctype

    }  // namespace keyboard

}  // namespace textinput

#endif  // TEXTINPUT_HW_KEYBOARD_H
