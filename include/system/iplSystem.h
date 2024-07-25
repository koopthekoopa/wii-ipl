#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <revolution.h>
#include "system/iplNand.h"
#include "system/iplController.h"
#include <nw4r/ut/Rect.h>

namespace ipl {
    namespace System {
        typedef struct {
            u8 pad0[0x6C];                      // 0x00
            ipl::nand::Manager* nandManager;    // 0x6C
            u8 pad1[0x0268];                    // 0x70
        } ArgData;
        
        extern ArgData smArg;
        
        class Arg {
            public:
                Arg();
            
            private:
                u8 unkData[0x01E0];     // 0x0000
                
                OSAlarm unkAlarm;       // 0x01E0
        };
        
        void init(int argc, char** argv);
        void run();
        
        // stubs for now
        GXRenderModeObj* getRenderModeObj();
        controller::Interface* getController(int chan);
        void getProjectionRect(nw4r::ut::Rect* prjRect);
        void getProjectionRect4x3(nw4r::ut::Rect* prjRect);

        // Inlines

        inline nand::Manager* GetNANDManager() { return smArg.nandManager; }
    }
}

#endif // IPL_SYSTEM_H


#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <revolution.h>

typedef struct {
    u8 pad0[0x02D8];
} IplSystemArg;

namespace ipl {
    namespace System {
        extern IplSystemArg smArg;
        
        class Arg {
            public:
                Arg();
            
            private:
                u8 unkData[0x01E0];     // 0x0000
                
                OSAlarm unkAlarm;       // 0x01E0
        };
        
        void init(int argc, char** argv);
        void run();
        
        GXRenderModeObj* getRenderModeObj(); // STUB
    }
}

#endif // IPL_SYSTEM_H


