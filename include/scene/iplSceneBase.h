#ifndef BASE_SCENE_H
#define BASE_SCENE_H

#include "scene/iplSceneManager.h"

#include "utility/iplTree.h"

#include <revolution.h>
#include <revolution/gx.h>
#include <revolution/kpad.h>
#include <revolution/sc.h>

#include <egg/core/eggHeap.h>
#include <egg/core/eggDisposer.h>

#define SCENE_CLASS(x)  class x : public ipl::scene::Base

namespace ipl {
    namespace scene {
        class Base : utility::Tree, EGG::Disposer {
            public:
                /** @brief If the scene is ready */
                Base(EGG::Heap* pHeap);
                virtual ~Base();

                /** @brief If the scene is ready */
                virtual BOOL    isReady() const             { return FALSE; }

                /** @brief If the user can power off/reset the system */
                virtual BOOL    isResetAcceptable() const   { return TRUE; }
                /** @brief The scene running code when powering off/resetting the system */
                virtual void    startResetting() {}
                /** @brief If the scene has finished its powering off/resetting task */
                virtual BOOL    isResetProcessDone() const  { return TRUE; }

                /** @brief Prepare to create scene */
                virtual void    prepare() {}
                /** @brief Creating the scene */
                virtual void    create() {}
                /** @brief Update the scene */
                virtual void    calc() {}
                /** @brief Rendering the scene */
                virtual void    draw();
                /** @brief Destroy the scene and clear from memory */
                virtual void    destroy() {}

                void            do_prepare();
                void            do_create();
                void            do_calc();
                void            do_draw();
                void            do_destroy();

                void            createChildScene(int arg0, Base* pArg1, Base* pArg2, void* pArg3);
                void            reserveSceneChange(int arg0, void* pArg1);
                void            reserveAllSceneDestruction(int arg0, void* pArg1);
                
            protected:
                EGG::Heap*  mpHeap;     // 0x24
                u32         unk_0x28;
                u32         unk_0x2C;
                u32         mNandToken; // 0x30
                u32         unk_0x34;
                Command     mCommand;   // 0x38
            
            friend class FaderSceneBase;
        };
    }
}

#endif // BASE_SCENE_H


