#ifndef NW4R_LYT_LAYOUT_H
#define NW4R_LYT_LAYOUT_H

#include <decomp.h>

#include <revolution/types.h>

#include <nw4r/lyt/group.h>
#include <nw4r/lyt/types.h>

#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace lyt {
        class Layout {
            public:
                Layout();
                virtual ~Layout();
                
                nw4r::lyt::Pane*    GetRootPane() { return mpRootPane; }
            
            protected:
                ut::LinkList<undefined4, 4> mAnimTransList;     // 0x04
                
                Pane*                       mpRootPane;         // 0x10
                GroupContainer*             mpGroupContainer;   // 0x14
                
                Size*                       mLayoutSize;        // 0x18
        };
    }
}

#endif // NW4R_LYT_LAYOUT_H


