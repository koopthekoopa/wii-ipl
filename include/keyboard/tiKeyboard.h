#ifndef TEXTINPUT_KEYBOARD_H
#define TEXTINPUT_KEYBOARD_H

#include "tiTextInputBase.h"

namespace textinput {
    namespace keyboard {

        enum VKeyCode {
            VCODE_RETURN = 0x00,
            VCODE_DELETE = 0x01,
            CODE_UNK_0x02 = 0x02,
            VCODE_MORE_CHARS = 0x09,
            CODE_UNK_0x0A = 0x0A,
            CODE_UNK_0x0B = 0x0B,
            CODE_UNK_0x0D = 0x0D,
            CODE_UNK_0x12 = 0x12,
            CODE_UNK_0x13 = 0x13,
            CODE_UNK_0x17 = 0x17,
            VCODE_SGNCLOSE = 0x18,
            VCODE_SGNNEXT = 0x19,
            VCODE_SGNPREV = 0x1A,
            CODE_UNK_0x1B = 0x1B,
        };

        class KeyboardBase : public CommandSender {
        public:
            virtual ~KeyboardBase() {}

            virtual void onKey(u32, void*);                                         // 0x20
            virtual int getType();                                                  // 0x24
            virtual void setLanguage(Language language) { meLanguage = language; }  // 0x28
            virtual Language getLanguage() const;                                   // 0x2C
            virtual void update();                                                  // 0x30
            virtual void onActive() {}                                              // 0x34

        protected:
            Language meLanguage;  // 0x10
        };

    }  // namespace keyboard
}  // namespace textinput

#endif  // TEXTINPUT_KEYBOARD_H
