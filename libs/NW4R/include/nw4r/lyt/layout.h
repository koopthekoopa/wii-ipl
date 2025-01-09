#ifndef NW4R_LYT_LAYOUT_H
#define NW4R_LYT_LAYOUT_H

#include <decomp.h>

#include <revolution/types.h>
#include <revolution/mem.h>

#include <nw4r/lyt/types.h>
#include <nw4r/lyt/drawInfo.h>
#include <nw4r/lyt/group.h>
#include <nw4r/lyt/animation.h>
#include <nw4r/lyt/resourceAccessor.h>

#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace lyt {
        class Layout {
            public:
                Layout();
                virtual ~Layout();
                
                const ut::Rect          GetLayoutRect() const;

                virtual void            Build(const void* lytResBuf, ResourceAccessor* pResAcsr);
                
                virtual AnimTransform*  CreateAnimTransform(const void* anmResBuf, ResourceAccessor* pResAcsr);
                virtual void            BindAnimation(AnimTransform* pAnimTrans, bool bRecursive = true);
                virtual void            UnbindAnimation(AnimTransform* pAnimTrans, bool bRecursive = true);
                virtual void            UnbindAllAnimation();
                virtual void            SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable = true);

                virtual void            CalculateMtx(const DrawInfo& drawInfo);
                virtual void            Draw(const DrawInfo& drawInfo);

                virtual void            Animate(u32 option = 0);

                Pane*                   GetRootPane() const         { return mpRootPane; }
                GroupContainer*         GetGroupContainer() const   { return mpGroupContainer; }

                static void             SetAllocator(MEMAllocator* pAllocator) { mspAllocator = pAllocator; }
            
            private:
                AnimTransformList           mAnimTransList;     // 0x04

                Pane*                       mpRootPane;         // 0x10
                GroupContainer*             mpGroupContainer;   // 0x14

                Size                        mLayoutSize;        // 0x18

                u8                          mOrigin;            // (?) 0x20

                static MEMAllocator*        mspAllocator;
        };
    }
}

#endif // NW4R_LYT_LAYOUT_H
