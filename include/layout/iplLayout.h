#ifndef IPL_LAYOUT_H
#define IPL_LAYOUT_H

#include <decomp.h>

#include <revolution.h>

#include <nw4r/lyt.h>

#include <egg/core.h>

#include "system/iplNand.h"

namespace ipl {
    namespace layout {
        class Object {
            public:
                Object(EGG::Heap* pHeap, nand::LayoutFile* pLayoutArchive, const char* layoutDirectory, const char* layoutFileName);
                
                void                    finishBinding();
                void                    calc();
                void                    draw();

                nw4r::lyt::Pane*        GetRootPane() { return mpRootPane; }
                
            private:
                undefined           unk_0x00[0x14]; // 0x00
                nw4r::lyt::Pane*    mpRootPane;     // 0x14
                undefined           unk_0x40[1384]; // 0x40
        };
    }
}

#endif // IPL_LAYOUT_H


