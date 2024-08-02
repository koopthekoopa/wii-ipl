#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <revolution.h>

#include <nw4r/ut.h>

#include "system/iplNand.h"

#include "system/iplController.h"

namespace ipl {
    class System {
        public:
            class Arg {
                public:
                    Arg();
                
                private:
                    u8      unk_0x00[0x1E0];
                    OSAlarm mUnkAlarm;      // 0x1E0
            };
        
            static void init(int argc, char** argv);
            static void run();

            static GXRenderModeObj*         getRenderModeObj();
            static nand::Manager*           getNandManager()    { return smArg.mpNandManager; }
            static controller::Interface*   getController(int chan);
            
            static bool                     isResetAcceptable();
        
        private:
            typedef struct {
                u8                  unk_0x00[0x6C];
                ipl::nand::Manager* mpNandManager;      // 0x6C
                u8                  unk_0x70[0x249];
                bool                mCanReset;          // 0x2B9
                u8                  unk_0x2BA[0x1C];
            } ArgData;

            static ArgData  smArg;
    };
}

#endif // IPL_SYSTEM_H


