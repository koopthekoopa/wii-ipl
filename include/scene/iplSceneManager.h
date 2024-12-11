#ifndef IPL_SCENE_MANAGER_H
#define IPL_SCENE_MANAGER_H

#include <decomp.h>

#include <revolution.h>

#include "scene/iplSceneCreator.h"

namespace ipl {
    namespace scene {
        class Base;

        enum {
            COMMAND_NONE = 0,
            COMMAND_CREATE_CHILD,
            COMMAND_RESERVE_CHANGE,
            COMMAND_RESERVE_ALL_DESTRUCT,
        };

        struct Command {
            int     mType;      // 0x00
            int     mNextScene; // 0x04 (name unsure)
            u32     mNandToken; // 0x08
            u32     mNewScene;  // 0x0C (name unsure)
            Base*   mParent;    // 0x10
            Base*   mChild;     // 0x14
            void*   mArgs;      // 0x18

            void    clear();
        };

        class Manager {
            public:
                Manager();

                void        startResetting();
                
                BOOL        isResetProcessDone();
                BOOL        isResetAcceptable();
                
                undefined4* getScene();

                void        pushCommand(const Command& pCommand);
                void        setDestructSync();

                BOOL        isDrawingScene() { return mDrawingScene; }

            private:
                u8      mType[0x100];
                BOOL    mDrawingScene;
                u8      mParentScene4[0x2C];
        };
    }
}

#include "system/iplSystem.h"

#endif // IPL_SCENE_MANAGER_H


