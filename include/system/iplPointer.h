#ifndef IPL_POINTER_H
#define IPL_POINTER_H

#include <decomp_types.h>
#include <revolution.h>
#include <egg/core.h>
#include <nw4r/math/types.h>
#include "system/iplSystem.h"
#include "system/iplPointerCore.h"
#include "system/iplNand.h"
#include "layout/iplLayout.h"

#define MAX_LAYOUT_FILES    9

namespace ipl {
    enum PointerDirection {
        PNT_DOWN = 0,
        PNT_UP
    };

    class Pointer {
        public:
            Pointer(EGG::Heap* pHeap);

            void calc();
            void draw();
            
            void setState(int chan, int unk1);
            void changeType(int chan, int unk1);

            layout::Object* get_layout(int chan, BOOL grabbing = FALSE);
        
        public:
            nand::LayoutFile* mLayoutArchive;                   // 0x00
            layout::Object* mLayoutObject[MAX_LAYOUT_FILES];    // 0x04
            
            int unk_0x28;
            nw4r::math::VEC2 mOriginPos;                        // 0x2C
            f32 mArrowLength;                                   // 0x34
            PointerDirection mPointDirection;
            bool mScrolling;                                    // 0x3C
            bool unk_0x3D;
            u8 unk_0x3E;
            u8 unk_0x3F;
            
            PointerCore mCore;                                  // 0x40
    };
}

#endif // IPL_POINTER_H


