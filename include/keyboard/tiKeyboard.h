#ifndef TEXTINPUT_KEYBOARD_H
#define TEXTINPUT_KEYBOARD_H

#include "tiTextInputBase.h"

namespace textinput {
    namespace keyboard {

        class KeyboardBase : public CommandSender {
        public:
            virtual ~KeyboardBase() {}
            virtual void create(MEMAllocator* alloc) override;
            virtual void init() override;
            virtual void setCommandReceiver(CommandReceiver* receiver) override;
            virtual void sendCommand(u32 command, void*) override;
            virtual void updateFromReceiver(u32, void*) override;
            virtual void onKey(u32);
            virtual void getType();
            virtual void setLanguage(Language language);
            virtual Language getLanguage() const;
            virtual void update();
            virtual void onActive();

        protected:
            Language meLanguage;  // 0x10
        };

    }  // namespace keyboard
}  // namespace textinput

#endif  // TEXTINPUT_KEYBOARD_H
