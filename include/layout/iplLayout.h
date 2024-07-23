#ifndef IPL_LAYOUT_H
#define IPL_LAYOUT_H

#include <decomp.h>
#include <revolution.h>
#include <egg/core.h>
#include <nw4r/lyt/Pane.h>
#include "system/iplNand.h"

namespace ipl {
    namespace layout {
        class Object {
            public:
                Object(EGG::Heap* pHeap, ipl::nand::LayoutFile* layoutArchive, const char* layoutDirectory, const char* layoutFileName);
                void finishBinding();
                void calc();
                void draw();

                inline nw4r::lyt::Pane* GetRootPane() { return mpRootPane; }
                
            private:
                undefined pad0[0x14];           // 0x00
                nw4r::lyt::Pane* mpRootPane;    // 0x14
                undefined pad1[1384];           // 0x40
        };
    }
}

#endif // IPL_LAYOUT_H


