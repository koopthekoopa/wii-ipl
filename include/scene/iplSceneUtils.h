#ifndef IPL_SCENE_UTILITIES_H
#define IPL_SCENE_UTILITIES_H

#include "system/iplSystem.h"

namespace ipl {
    namespace scene {
        class Util {
            public:
                static bool resourceLoaded() {
                    bool allResLoaded = false;
                    bool cmnResLoaded = false;
                    if (System::isCmnResLoaded() && System::isFontResLoaded() && System::isSndResLoaded()) {
                        cmnResLoaded = true;
                    }
                    if (cmnResLoaded && System::isRsrcZi8Loaded()) {
                        allResLoaded = true;
                    }
                    if (allResLoaded) {
                        return true;
                    }
                    return false;
                }
        };
    }
}

#endif // IPL_SCENE_UTILITIES_H


