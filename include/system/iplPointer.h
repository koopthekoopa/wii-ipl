#ifndef IPL_POINTER_H
#define IPL_POINTER_H

#include <decomp_types.h>

#include <revolution.h>

#include <egg/core.h>

#include "system/iplNand.h"
#include "system/iplPointerCore.h"

#include "utility/iplMath.h"

#include "layout/iplLayout.h"

#define MAX_LAYOUT_FILES    9

namespace ipl {
    enum PointerDirection {
        PNT_DOWN = 0,
        PNT_UP
    };

    class Pointer {
        public:
            /**
             * @param pHeap The memory heap used for work.
             */
            Pointer(EGG::Heap* pHeap);

            /**
             * @brief Updates the Wii Remote Pointers.
             */
            void            calc();
            /**
             * @brief Draws the Wii Remote Pointers.
             */
            void            draw();
            /**
             * @brief Changes the state of a Wii Remote Pointer.
             * 
             * @param chan The Wii Remote Player (0 - 3)
             * @param state The state that will change to.
             */
            void            setState(int chan, int state);
            /**
             * @brief Changes the Layout Type of a Wii Remote Pointer.
             *
             * @param chan The Wii Remote Player (0 - 3)
             * @param type The layout type that will change to.
             */
            void            changeType(int chan, int type);
            /**
             * @brief Gets the Layout Data of a Wii Remote Pointer.
             *
             * @param chan The Wii Remote Player (0 - 3)
             * @param type The layout type that will return.
             * 
             * @return The Layout Data as `ipl::layout::Object`
             */
            layout::Object* get_layout(int chan, int type);
        
        public:
            nand::LayoutFile*   mLayoutArchive;                     // 0x00
            layout::Object*     mLayoutObject[MAX_LAYOUT_FILES];    // 0x04
            
            int                 unk_0x28;
            math::VEC2          mOriginPos;                         // 0x2C

            f32                 mArrowLength;                       // 0x34
            PointerDirection    mPointDirection;

            bool                mScrolling;                         // 0x3C
            bool                unk_0x3D;
            
            u8                  unk_0x3E;
            u8                  unk_0x3F;
            
            PointerCore         mCore;                              // 0x40
    };
}

#endif // IPL_POINTER_H


