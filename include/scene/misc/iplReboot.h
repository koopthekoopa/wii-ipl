#ifndef IPL_REBOOT_H
#define IPL_REBOOT_H

#include "scene/iplSceneBase.h"

namespace ipl {
    namespace scene {
        enum {
            REBOOT_SETTINGS_SELECT = 0,
            REBOOT_SETTINGS
        };
        SCENE_CLASS(Reboot) {
            public:
                virtual void    calc();
            
            private:
                int     mSettingsType;
        };
    }
}

#endif // IPL_REBOOT_H
