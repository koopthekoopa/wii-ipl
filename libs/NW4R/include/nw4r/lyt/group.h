#ifndef NW4R_LYT_GROUP_H
#define NW4R_LYT_GROUP_H

#include <revolution/types.h>

#include <nw4r/lyt/pane.h>

#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace lyt {
        namespace detail {
            typedef struct PaneLink {
                ut::LinkListNode    mLink;
                
                Pane*               mTarget;    // 0x08
            } PaneLink;
        }
        typedef ut::LinkList<detail::PaneLink, offsetof(detail::PaneLink, mLink)> PaneLinkList;
        
        class Group {
            public:
                Group();
                Group(const res::Group* pResGroup, Pane* pRootPane);
                virtual ~Group();

                const char*     GetName() const         { return mName; }
                bool            IsUserAllocated() const { return mbUserAllocated; }

                PaneLinkList&   GetPaneList()           { return mPaneLinkList; };

                void            Init();
                void            AppendPane(Pane* pane);

                ut::LinkListNode mLink; // 0x04
                
            protected:
                PaneLinkList    mPaneLinkList;      // 0x0C
                char            mName[16];          // 0x18
                
                bool            mbUserAllocated;    // 0x29

                u8              mPadding[2];        // 0x2A
        };
        typedef ut::LinkList<Group, offsetof(Group, mLink)> GroupList;
        
        class GroupContainer {
            public:
                GroupContainer() {}
                ~GroupContainer();

                GroupList&  GetGroupList()  { return mGroupList; }

                void        AppendGroup(Group* pGroup);
                Group*      FindGroupByName(const char* findName);
            
            protected:
                GroupList   mGroupList; // 0x00
        };
    }
}

#endif // NW4R_LYT_GROUP_H
