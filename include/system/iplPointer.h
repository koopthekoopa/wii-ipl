#ifndef IPL_POINTER_H
#define IPL_POINTER_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/kpad.h>

#include <egg/core.h>

#include "system/iplNand.h"
#include "system/iplController.h"

#include "utility/iplMath.h"

#include "layout/iplLayout.h"

#define MAX_LAYOUT_FILES    9

namespace ipl {
    class Pointer;
    /**
     * @warning Do not use `ipl::PointerCoreObject`, Please instead use `ipl::Pointer`
     */
    class PointerCoreObject {
        public:
            PointerCoreObject();

            void    calc(Pointer* pPointer, const controller::Interface* pController);
            void    draw();
            
            void    setState(int newState)          { mState = newState; }
            void    changeType(int newLayoutType)   { mLayoutType = newLayoutType; }
            
            void    setChan(int newChan)            { mChan = newChan; }
            int     getChan()                       { return mChan; }

        private:
            layout::Object* mpLayout;       // 0x00
            
            int             mState;         // 0x04
            int             mLayoutType;    // 0x08
            int             mChan;          // 0x0C
            
            f32             unk_0x10;
    };
    
    /**
     * @warning Do not use `ipl::PointerCore`, Please instead use `ipl::Pointer`
     */
    class PointerCore {
        public:
            PointerCore();
            
            void    calc(Pointer* pPointer);
            void    draw();
            
            void    setState(int chan, int state);
            void    changeType(int chan, int type);
        
        private:
            PointerCoreObject   mCursors[WPAD_MAX_CONTROLLERS]; // 0x00
    };
    
    class Pointer {
        private:
            enum {
                LYT_POINT = 0,
                LYT_GRABBING,
                LYT_UNK2,
                LYT_UNK3
            };

            enum {
                POINT_DOWN = 0,
                POINT_UP
            };
            
        public:
            enum {
                LayoutPoint = LYT_POINT,
                LayoutGrab = LYT_GRABBING,
                LayoutUnknown2 = LYT_UNK2,
                LayoutUnknown3 = LYT_UNK3
            };

            /** @param pHeap The memory heap used for work. */
            Pointer(EGG::Heap* pHeap);

            /** @brief Updates the Wii Remote Pointers. */
            void            calc();
            /** @brief Draws the Wii Remote Pointers. */
            void            draw();

            /**
             * @brief Changes the state of a Wii Remote Pointer.
             * @param chan The Wii Remote Player (0 - 3)
             * @param state The state that will change to.
             */
            void            setState(int chan, int state);
            /**
             * @brief Changes the Layout Type of a Wii Remote Pointer.
             * @param chan The Wii Remote Player (1 - 4; exclusive)
             * @param type The layout type that will change to.
             */
            void            changeType(int chan, int type);
            /**
             * @brief Gets the Layout Data of a Wii Remote Pointer.
             * @param chan The Wii Remote Player (1 - 4; exclusive)
             * @param type The layout type that will return.
             * @return The Layout Data as `ipl::layout::Object`
             */
            layout::Object* get_layout(int chan, int type);

            void            setVisible(bool value) { mVisible = value; }
        
        private:
            nand::LayoutFile*   mpLayoutArchive;                    // 0x00
            layout::Object*     mpLayout[MAX_LAYOUT_FILES];         // 0x04
            
            int                 unk_0x28;
            math::VEC2          mOriginPos;                         // 0x2C

            f32                 mArrowLength;                       // 0x34
            int                 mPointDirection;                    // 0x38

            bool                mScrolling;                         // 0x3C
            bool                mVisible;                           // 0x3D
            
            u8                  unk_0x3E;
            u8                  unk_0x3F;
            
            PointerCore         mCore;                              // 0x40

            friend class PointerCoreObject;
            friend class PointerCore;
    };
}

#endif // IPL_POINTER_H


