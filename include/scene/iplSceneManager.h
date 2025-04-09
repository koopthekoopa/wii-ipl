#ifndef IPL_SCENE_MANAGER_H
#define IPL_SCENE_MANAGER_H

#define INCLUDED_SCENE_MANAGER

#include <decomp.h>

#include <revolution.h>

#include <egg/core.h>

#include "scene/iplSceneCreator.h"

#include "utility/iplQueue.h"

namespace ipl {
    namespace scene {
        class   Base;
        typedef Base SceneObj;

        enum {
            DRAW_LAYER_1 = 0,
            DRAW_LAYER_2,
            DRAW_LAYER_3,
            DRAW_LAYER_MAX,
        };

        enum {
            COMMAND_NONE = 0,
            COMMAND_CREATE_CHILD,
            COMMAND_RESERVE_CHANGE,
            COMMAND_RESERVE_ALL_DESTRUCT,
        };

        typedef struct Command {
            int     type;           // 0x00

            int     newSceneID;     // 0x04
            int     prevSceneID;    // 0x08
            int     newRootID;      // 0x0C

            Base*   parent;         // 0x10
            Base*   child;          // 0x14
            
            void*   args;           // 0x18

            void        clear();

            Command()   { clear(); }

            inline void operator=(const Command& rhs) {
                /* https://decomp.me/scratch/KrtbJ */
            }
        } Command;

        #define MAX_COMMANDS 8
        typedef utility::Queue<Command, MAX_COMMANDS> CommandList;

        class Manager {
            public:
                Manager(EGG::Heap* heap);

                void        init();

                void        calc();
                void        calc(SceneObj* scene);

                void        draw();
                void        draw(SceneObj* scene);

                SceneObj*   createScene(int sceneId, int prevSceneId, void* args);
                SceneObj*   createScene(int sceneId, void* args) { return createScene(sceneId, SCENE_NONE, args); }
                void        createScene(const Command& command);

                void        destroyScene(SceneObj* scene);
                void        detach(SceneObj* scene);

                void        startResetting();
                BOOL        isResetProcessDone();
                BOOL        isResetAcceptable();

                BOOL        pushCommand(const Command& pCommand);

                void        setDestructSync();
                void        doDestructSync() { mbDestroySyncTask = true; }

                SceneObj*   getScene(int sceneId);
                SceneObj*   getScene(int sceneId, SceneObj* obj);

                bool        canDrawScene() { return mDrawMode == DRAW_LAYER_2; }

                void        attachReservedScene();

                BOOL        isReady(int sceneId);
            
            private:
                void        createRootScene(int sceneId, void* args);

                EGG::UnitHeap*  mpBigSceneHeap;     // 0x00
                EGG::UnitHeap*  mpMdmSceneHeap;     // 0x04
                EGG::UnitHeap*  mpSmlSceneHeap;     // 0x08

                SceneObj*       mpRootScene;        // 0x0C

                CommandList     mCommands;          // 0x10

                BOOL            mDrawMode;          // 0x100

                SceneObj*       mpReservedScene;    // 0x104
                Command         mReservedCommand;   // 0x108
                bool            mbCreatedReserved;  // 0x124

                bool            mbDestroySyncTask;  // 0x125

                int             mRootSceneID;       // 0x128
                int             mPrevRootSceneID;   // 0x12C
        };
    }
}

#ifndef IPL_BASE_SCENE_H
#include "scene/iplSceneBase.h"
#endif // IPL_BASE_SCENE_H

#endif // IPL_SCENE_MANAGER_H
