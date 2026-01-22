#ifndef IPL_BASE_SCENE_H
#define IPL_BASE_SCENE_H

#include <egg/core.h>

#include "utility/iplTree.h"

#include <revolution.h>
#include <revolution/kpad.h>
#include <revolution/sc.h>

#define SCENE_USING_GUI     \
namespace ipl {             \
    namespace gui {         \
        class PaneManager;  \
    }                       \
}                           \
namespace gui {             \
    class EventHandler;     \
}                           

#define SCENE_CLASS(x)      class x : public scene::Base
#define SCENE_GUI_CLASS(x)  class x : public scene::Base, public ::gui::EventHandler

namespace ipl {
    namespace scene {
        class Base;
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
        } Command;

        class Base : public utility::Tree, EGG::Disposer {
            /* PUBLIC FUNCTIONS */

            public:
                /** @brief If the scene is ready */
                Base(EGG::Heap* heap);
                virtual ~Base();

                /** @brief If the scene is ready */
                virtual BOOL    isReady() const             { return FALSE; }

                /** @brief If the user can power off/reset the system */
                virtual BOOL    isResetAcceptable() const   { return TRUE; }
                /** @brief The scene running code when powering off/resetting the system */
                virtual void    startResetting()            {}
                /** @brief If the scene has finished its powering off/resetting task */
                virtual BOOL    isResetProcessDone()        { return TRUE; }

                /** @brief Prepare to create scene */
                virtual void    prepare()   {}
                /** @brief Creating the scene */
                virtual void    create()    {}
                /** @brief Update the scene */
                virtual void    calc()      {}
                /** @brief Rendering the scene */
                virtual void    draw()      {}
                /** @brief Destroy the scene and clear from memory */
                virtual void    destroy()   {}

                virtual Base*   getParent()                 { return (Base*)mpParent; }
                virtual Base*   getChild()                  { return (Base*)mpChild; }
                virtual Base*   getNext()                   { return (Base*)mpNext; }
                virtual Base*   getPrev()                   { return (Base*)mpPrev; }

                /** @brief Check if scene has been created.*/
                bool            isSceneCreated() const          { return (mScnState & SCN_STATE_CREATED); }

                /* TREE CLASSES */

                class iterator : public utility::Tree::iterator {
                    typedef Base        value_type;
                    typedef value_type* pointer;
                    typedef value_type& reference;

                    public:
                        explicit inline iterator(pointer ptr) : utility::Tree::iterator(ptr) {}

                        virtual reference   operator*()                             { return (Base&)*mPtr; }
                        pointer             operator->()                            { return (Base*)mPtr;  }

                        pointer             getPtr()                                { return (pointer)mPtr; }
                        void                setPtr(pointer p)                       { mPtr = p; }
                };

                class reverse_iterator : public utility::Tree::reverse_iterator {
                    typedef Base        value_type;
                    typedef value_type* pointer;
                    typedef value_type& reference;

                    public:
                        explicit inline reverse_iterator(pointer ptr) : utility::Tree::reverse_iterator(ptr) {}

                        virtual reference   operator*()                             { return (reference)*mPtr; }
                        pointer             operator->()                            { return (pointer)mPtr;  }

                        pointer             getPtr()                                { return (pointer)mPtr; }
                        void                setPtr(pointer p)                       { mPtr = p; }
                };

            /* PRIVATE STUFF */

            private:
                enum {
                    SCN_STATE_CREATED       = (1 << 0),
                    SCN_STATE_DESTROY_REQ   = (1 << 1),
                };

                void    do_prepare();
                void    do_create();
                void    do_calc();
                void    do_draw();
                void    do_destroy();

                EGG::Heap*  mpHeap;         // 0x24

                u32         mParentFlags;   // 0x28
                u32         mScnState;      // 0x2C
                int         mSceneID;       // 0x30
                u32         mPrevSceneID;   // 0x34

                Command     mCommand;       // 0x38
            
            /* FUNCTIONS FOR SCENES */

            protected:
                enum {
                    SCN_PARENTFLAG_CALC = (1 << 0),
                    SCN_PARENTFLAG_DRAW = (1 << 1),
                };

                /**
                 * @brief Creates a child scene.
                 * @param sceneId The target scene ID (refer to iplSceneCreator.h)
                 * @param arg Arguments for the scene
                */
                void        createChildScene(int sceneId, Base* parent, Base* child, void* args = NULL);

                /**
                 * @brief Sends a request to change scene.
                 * @param sceneId The target scene ID (refer to iplSceneCreator.h)
                 * @param arg Arguments for the scene
                */
                void        reserveSceneChange(int sceneId, void* args = NULL);

                /**
                 * @brief Sends a request to destroy every active scene, then change scene.
                 * @param sceneId The target scene ID (refer to iplSceneCreator.h)
                 * @param arg Arguments for the scene
                */
                void        reserveAllSceneDestruction(int sceneId, void* args = NULL);

                /**
                 * Sets flags for it's parent scene.
                 * SCN_PARENTFLAG_CALC = The parent scene can run `calc()`
                 * SCN_PARENTFLAG_DRAW = The parent scene can run `draw()`
                 * @param flag The flags
                 * @note You must execute this in the scene's constructor.
                */
                void        setSceneParentFlags(u32 flag)   { mParentFlags = flag; }

                /**
                 * @brief Request scene to be destroyed.
                */
                void        requestSceneDestruction()       { mScnState |= SCN_STATE_DESTROY_REQ; }

                EGG::Heap*  getSceneHeap()                  { return mpHeap; }
                int         getSceneID() const              { return mSceneID; }
                u32         getPrevSceneID() const          { return mPrevSceneID; }

            friend class Manager;
        };
    }
}

#endif // IPL_BASE_SCENE_H
