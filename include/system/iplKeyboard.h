#ifndef IPL_KEYBOARD_H
#define IPL_KEYBOARD_H

#include <revolution/types.h>

#include "system/iplNand.h"

#include "SoftKeyboard.h"

namespace ipl {
    namespace keyboard {
        class EventObserver : public textinput::EventObserver {
            public:
                virtual void    onCommand(textinput::CommandReceiver::INPUT_COMMAND command, void* data);

                virtual void    onSE(textinput::sound::SE id);

                virtual void    onOK();

                virtual void    onCancel();

                virtual void    onOutOfLength();
        };

        class Manager {
            public:
                typedef enum KeyboardType {
                    KEYBOARD_TYPE_0 = 0,
                } KeyboardType;

                typedef struct KeyboardSetting {
                    u32 dummy_0x00[4];
                } KeyboardSetting;

                Manager() :
                unk_0x04(0),
                mEvent(),
                unk_0x20(0),
                unk_0x2C(0),
                unk_0x38(0) {}

                virtual void    create(nand::File* file, EGG::Heap* heap);  // 0x08

                virtual void    init();                                     // 0x0C
                virtual void    calc();                                     // 0x10

                virtual void    draw();                                     // 0x14
                virtual void    memoDraw();                                 // 0x18

                virtual void    changeAspectRatio();                        // 0x1C
                virtual void    setKeyboardType(int, KeyboardType type);    // 0x20

                virtual void    start(int, const KeyboardSetting& setting); // 0x24

                virtual void    ok();                                       // 0x28
                virtual void    cancel();                                   // 0x2C

                virtual void    doRumble();                                 // 0x30
                virtual int     getState();                                 // 0x34

                virtual void    setWCString(const wchar_t* wcString);       // 0x38
                virtual void    setLanguage(u32 language);                  // 0x3C

                virtual void    touchFormInDisp(int);                       // 0x40

                virtual void    setConfigure(KeyboardType type);            // 0x44

                virtual void    doSave();                                   // 0x48

            private:
                u32             unk_0x04;
                EventObserver   mEvent; // 0x08
                u32             unk_0x0C;
                u32             unk_0x10;
                u32             unk_0x14;
                u32             unk_0x18;
                u32             unk_0x1C;
                u32             unk_0x20;
                u32             unk_0x24;
                u32             unk_0x28;
                u8              unk_0x2C;
                u32             unk_0x30;
                u32             unk_0x34;
                u32             unk_0x38;
        };
    }
}

#endif // IPL_KEYBOARD_H
