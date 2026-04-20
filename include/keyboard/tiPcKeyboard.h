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
                enum TranslateMode {
                    TM_00,
                };

                enum InputType {
                    IT_00,
                    IT_01,
                    IT_02,
                    IT_03,
                    IT_04,
                };

                virtual ~Base();
                virtual void create(MEMAllocator* allocator);
                virtual void init();
                virtual void setCommandReceiver(textinput::CommandReceiver*);
                virtual void updateFromReceiver(u32, void*);
                virtual void onKey();
                virtual void getType();
                virtual void setLanguage();
                virtual void getLanguage();
                virtual void update();
                virtual void onActive();
                virtual void inputCharCode();
                virtual void getState();
                virtual void isShiftOn();
                virtual void isCapsOn();
                virtual void isABC();
                virtual void setABC();
                virtual void getABCInputMode();
                virtual void getAIUInputMode();
                virtual TranslateMode getTranslateMode();
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
            };

            // TODO
            class LayoutByNW4R : public Base, public nw4rmanager::Layout {
            public:
                // TODO - ...

                virtual void onClose();

                void onPressedShift(bool shift);
                void onReleasedShift();
            };

        }  // namespace pctype

    }  // namespace keyboard

}  // namespace textinput

#endif  // TEXTINPUT_HW_KEYBOARD_H
