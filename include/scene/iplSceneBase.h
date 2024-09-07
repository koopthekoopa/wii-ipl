#ifndef BASE_SCENE_H
#define BASE_SCENE_H

#include "scene/iplSceneManager.h"

#include "utility/iplTree.h"

#include <egg/core/eggHeap.h>
#include <egg/core/eggDisposer.h>

#define SCENE_CLASS(x)  class x : public ipl::scene::Base

namespace ipl {
    namespace scene {
        class Base : utility::Tree, EGG::Disposer {
            public:
                Base(EGG::Heap* pHeap);
                virtual ~Base();

                virtual BOOL    isReady() const;

                virtual BOOL    isResetAcceptable() const;
                virtual void    startResetting();
                virtual BOOL    isResetProcessDone() const;

                virtual void    prepare();
                virtual void    create();
                virtual void    calc();
                virtual void    draw();         
                virtual void    destroy();

                void            do_prepare();
                void            do_create();
                void            do_calc();
                void            do_draw();
                void            do_destroy();

                void            createChildScene(int arg0, Base* pArg1, Base* pArg2, void* pArg3);
                void            reserveSceneChange(int arg0, void* pArg1);
                void            reserveAllSceneDestruction(int arg0, void* pArg1);

            private:
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


