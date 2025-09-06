#ifndef TEXTINPUT_NW4R_MANAGER_H
#define TEXTINPUT_NW4R_MANAGER_H

#include "tiTextInputBase.h"
#include "tiHKBManager.h"

namespace textinput {
    namespace nw4rmanager {
        class Layout {
            public:
                virtual ~Layout();

                void    createWithEventHandler();
                // todo
                void    dummy_0x10();
                void    dummy_0x14();
                void    dummy_0x18();
                void    dummy_0x1C();
                void    dummy_0x20();
                void    dummy_0x24();
                void    dummy_0x28();
                void    dummy_0x2C();
                void    dummy_0x30();
                void    dummy_0x34();
                void    dummy_0x38();
                void    dummy_0x3C();
                void    dummy_0x40();
                void    dummy_0x44();
                void    dummy_0x48();
                void    dummy_0x4C();
                void    dummy_0x50();
                void    dummy_0x54();
                void    dummy_0x58();
                void    dummy_0x5C();
                void    dummy_0x60();
                void    dummy_0x64();
                void    dummy_0x68();
                void    dummy_0x6C();
                void    dummy_0x70();
                void    createPaneManager();
                
            private:
                u8  unk_0x04[0xA4];
        };
    }
}

#endif // TEXTINPUT_NW4R_MANAGER_H
