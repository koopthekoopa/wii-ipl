#ifndef NW4R_LYT_GROUP_H
#define NW4R_LYT_GROUP_H

#include <revolution/types.h>

#include <nw4r/lyt/pane.h>

#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace lyt {
        namespace detail {
            struct PaneLink {
                ut::LinkListNode mLink;
                
                Pane*   mTarget;    // 0x08
            };
        }
        class Group;
        typedef ut::LinkList<detail::PaneLink, 0> PaneLinkList;
        typedef ut::LinkList<Group, 0> GroupList;
        
        class Group {
            public:
                Group();
                virtual ~Group();

                PaneLinkList&       GetPaneList() { return mPaneLinkList; };

                ut::LinkListNode mLink;
                
            protected:
                PaneLinkList                    mPaneLinkList;              // 0x0C
                char                            mName[NW4R_RES_NAME_SIZE];  // 0x18
                
                bool                            mbUserAllocated;            // 0x29
                u8                              mPadding[2];                // 0x2A
        };
        
        class GroupContainer {
            public:
                GroupContainer();

                GroupList&  GetGroupList()  { return mGroupList; }

                Group*      FindGroupByName(const char* findName);
            
            protected:
                GroupList   mGroupList; // 0x00
        };
    }
}

#endif // NW4R_LYT_GROUP_H
