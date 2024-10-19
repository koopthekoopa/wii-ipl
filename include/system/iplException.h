#ifndef IPL_EXCEPTION_HANDLER_H
#define IPL_EXCEPTION_HANDLER_H

#include <revolution.h>

#include <nw4r/db.h>

#include <egg/core.h>

namespace ipl {
    class Exception {
        public:
            Exception(EGG::Heap* pHeap, const GXRenderModeObj& rMode);

            void    exception_callback(nw4r::db::ConsoleHandle console);

        private:
            void    setConsole(const GXRenderModeObj& rMode);
            void    key_input();
            void    wait(u32 ticks);

            nw4r::db::ConsoleHandle         mConsole;   // 0x00
            
            undefined4                      unk_0x04;
            
            u8*                             mpBuffer;   // 0x08
            
            undefined4                      unk_0x0C;
    };
}

#endif // IPL_MESSAGE_H


