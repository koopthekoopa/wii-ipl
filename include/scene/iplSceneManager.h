#ifndef IPL_SCENE_MANAGER_H
#define IPL_SCENE_MANAGER_H

#include <decomp.h>

#include <revolution.h>

namespace ipl {
    namespace scene {
        class Base;

        struct Command {
            int     unk_0x00;
            int     unk_0x04;
            u32     unk_0x08;
            u32     unk_0x0C;
            Base*   unk_0x10;
            Base*   unk_0x14;
            void*   unk_0x18;

            void    clear();
        };

        class Manager {
            public:
                Manager();

                void        startResetting();
                
                BOOL        isResetProcessDone();
                BOOL        isResetAcceptable();
                
                undefined4* getScene();

                void        pushCommand(Command* pCommand);
                void        setDestructSync();

                BOOL        isDrawingScene() { return mDrawingScene; }

            private:
                u8      unk_0x00[0x100];
                BOOL    mDrawingScene;
                u8      unk_0x104[0x2C];
        };
    }
}

#endif // IPL_SCENE_MANAGER_H


