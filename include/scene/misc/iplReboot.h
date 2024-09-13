#ifndef IPL_REBOOT_H
#define IPL_REBOOT_H

#include "scene/iplSceneBase.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(Reboot) {
            public:
                virtual ~Reboot() {}

                virtual void    calc();
            
            private:
                BOOL    unk_0x54;
        };
    }
}

#endif // IPL_REBOOT_H


