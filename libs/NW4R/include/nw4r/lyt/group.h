#ifndef NW4R_LYT_GROUP_H
#define NW4R_LYT_GROUP_H

#include <revolution/types.h>

#include <nw4r/lyt/pane.h>

#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace lyt {
        namespace detail {
            struct PaneLink {
                NW4R_CREATE_LINKLIST;
                
                Pane*   mTarget;    // 0x08
            };
        }
        
        class Group {
            public:
                Group();
                virtual ~Group();

                NW4R_CREATE_LINKLIST;
                
            protected:
                NW4R_LINKLIST(detail::PaneLink) mPaneLinkList;              // 0x0C
                char                            mName[NW4R_RES_NAME_SIZE];  // 0x18
                
                bool                            mbUserAllocated;            // 0x29
                u8                              mPadding[2];                // 0x2A
        };
        
        class GroupContainer {
            public:
                GroupContainer();
            
            protected:
                NW4R_LINKLIST(Group)    mGroupList; // 0x00
        };
    }
}

#endif // NW4R_LYT_GROUP_H


