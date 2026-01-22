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
#include <nw4r/ut/TagProcessorBase.h>

namespace nw4r {
    namespace lyt {
        class Layout {
        public:
            Layout();
            virtual ~Layout();
            
            const ut::Rect          GetLayoutRect() const;

            virtual bool            Build(const void* lytResBuf, ResourceAccessor* pResAcsr);
            
            virtual AnimTransform*  CreateAnimTransform(const void* anmResBuf, ResourceAccessor* pResAcsr);

            virtual void            BindAnimation(AnimTransform* animTrans);
            virtual void            UnbindAnimation(AnimTransform* animTrans);
            virtual void            UnbindAllAnimation();

            virtual void            SetAnimationEnable(AnimTransform* animTrans, bool bEnable = true);

            virtual void            CalculateMtx(const DrawInfo& drawInfo);
            virtual void            Draw(const DrawInfo& drawInfo);

            virtual void            Animate(u32 option = 0);

            virtual void            SetTagProcessor(ut::WideTagProcessor* pTagProcessor) NO_INLINE;

            Pane*                   GetRootPane() const                     { return mpRootPane; }
            GroupContainer*         GetGroupContainer() const               { return mpGroupContainer; }

            static MEMAllocator*    GetAllocator()                          { return mspAllocator; }
            static void             SetAllocator(MEMAllocator* allocator)   { mspAllocator = allocator; }
        
            static void*            AllocMemory(u32 size)                   { return MEMAllocFromAllocator(mspAllocator, size); }
            static void             FreeMemory(void* ptr)                   { MEMFreeToAllocator(mspAllocator, ptr); }

        private:
            static Pane*            BuildPaneObj(s32 kind, const void* dataPtr, const ResBlockSet& resBlockSet) NO_INLINE;

            AnimTransformList       mAnimTransList;     // 0x04

            Pane*                   mpRootPane;         // 0x10
            GroupContainer*         mpGroupContainer;   // 0x14

            Size                    mLayoutSize;        // 0x18

            u8                      mOriginType;        // 0x20

            static MEMAllocator*    mspAllocator;
        };
    }
}

#endif // NW4R_LYT_LAYOUT_H
