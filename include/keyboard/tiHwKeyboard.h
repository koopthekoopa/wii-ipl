#ifndef TEXTINPUT_HW_KEYBOARD_H
#define TEXTINPUT_HW_KEYBOARD_H

#include "tiTextInputBase.h"
#include "tiHKBManager.h"

namespace textinput {
    class Manager;
    namespace keyboard {
        namespace hwkey {
            class HWKeyboard : CommandSender {
                public:
                    ~HWKeyboard();

                    virtual void    init();

                    virtual bool    updateInput(input::HKBManager& hkbManager);
                        
                private:
                    Manager*    mpManager;  // 0x00
            };
        }
    }
}

#endif // TEXTINPUT_HW_KEYBOARD_H
