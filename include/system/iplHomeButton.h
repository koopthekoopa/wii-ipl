#ifndef IPL_HOME_BUTTON_H
#define IPL_HOME_BUTTON_H

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    class HomeButtonMenu {
        public:
            HomeButtonMenu();

            void    enable();
            void    disable();

            void    setUnk_0x05(bool value) { unk_0x05 = value; }
            bool    isUnk_0x05() const      { return unk_0x05; }
        
        private:
            undefined4  unk_0x00;
            undefined   unk_0x04;
            bool        unk_0x05;
            undefined   unk_0x08[0x6C];
    };
}

#endif // IPL_HOME_BUTTON_H


