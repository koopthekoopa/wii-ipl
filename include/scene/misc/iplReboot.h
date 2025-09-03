#ifndef IPL_REBOOT_H
#define IPL_REBOOT_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        enum {
            REBOOT_DATA_MANAGEMENT = 0,
            REBOOT_INTERNET_SETTINGS
        };
        SCENE_CLASS(Reboot) {
            public:
                Reboot(EGG::Heap* heap, int settingsType) : Base(heap), mSettingsType(settingsType) {}
                virtual void    calc();
            
            private:
                int     mSettingsType;
        };
    }
}

#endif // IPL_REBOOT_H
