#ifndef IPL_SCENE_ROOT_H
#define IPL_SCENE_ROOT_H

#include "scene/iplSceneBase.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(RootScene) {
            public:
                static void proc_boot_scene(int* initialScene, int* initialSubScene);
            
            private:
                void*   mInitialArgs;   // 0x54
                void*   unk_0x58;
            
            friend class Manager;
        };
    }
}

#endif // IPL_SCENE_ROOT_H
