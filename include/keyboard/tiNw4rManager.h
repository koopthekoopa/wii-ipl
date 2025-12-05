#ifndef TEXTINPUT_NW4R_MANAGER_H
#define TEXTINPUT_NW4R_MANAGER_H

#include "tiTextInputBase.h"
#include "tiHKBManager.h"

namespace textinput {
    namespace nw4rmanager {
        class Layout {
            public:
                virtual ~Layout();

                virtual void    createWithEventHandler();
                // todo
                virtual void    dummy_0x10();
                virtual void    dummy_0x14();
                virtual void    dummy_0x18();
                virtual void    dummy_0x1C();
                virtual void    dummy_0x20();
                virtual void    dummy_0x24();
                virtual void    dummy_0x28();
                virtual void    dummy_0x2C();
                virtual void    dummy_0x30();
                virtual void    dummy_0x34();
                virtual void    dummy_0x38();
                virtual void    dummy_0x3C();
                virtual void    dummy_0x40();
                virtual void    dummy_0x44();
                virtual void    dummy_0x48();
                virtual void    dummy_0x4C();
                virtual void    dummy_0x50();
                virtual void    dummy_0x54();
                virtual void    dummy_0x58();
                virtual void    dummy_0x5C();
                virtual void    dummy_0x60();
                virtual void    dummy_0x64();
                virtual void    dummy_0x68();
                virtual void    dummy_0x6C();
                virtual void    dummy_0x70();
                virtual void    createPaneManager();
                
            private:
                u8  unk_0x04[0xA4];
        };
    }
}

#endif // TEXTINPUT_NW4R_MANAGER_H
