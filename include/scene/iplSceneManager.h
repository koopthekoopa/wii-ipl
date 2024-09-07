#ifndef IPL_SCENE_MANAGER_H
#define IPL_SCENE_MANAGER_H

#include <decomp.h>

#include <revolution.h>

namespace ipl {
    namespace scene {
        class Manager {
            public:
                Manager();

                void        startResetting();
                
                BOOL        isResetProcessDone();
                BOOL        isResetAcceptable();
                
                undefined4* getScene();
        };
    }
}

#endif // IPL_SCENE_MANAGER_H


