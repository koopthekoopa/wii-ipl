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
#ifdef USE_ZI8
                    if (System::isCmnResLoaded() && System::isFontResLoaded() && System::isSndResLoaded()) {
                        cmnResLoaded = true;
                    }
                    if (cmnResLoaded && System::isZi8ResLoaded()) {
                        allResLoaded = true;
                    }
#else
                    if (System::isCmnResLoaded() && System::isFontResLoaded()) {
                        cmnResLoaded = true;
                    }
                    if (cmnResLoaded && System::isSndResLoaded()) {
                        allResLoaded = true;
                    }
#endif
                    if (allResLoaded) {
                        return true;
                    }

                    return false;
                }
        };
    }
}

#endif // IPL_SCENE_UTILITIES_H


