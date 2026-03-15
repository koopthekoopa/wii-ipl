#ifndef NW4R_LYT_LAYOUT_H
#define NW4R_LYT_LAYOUT_H

#include <decomp.h>

#include <revolution/mem.h>
#include <revolution/types.h>

#include <nw4r/lyt/animation.h>
#include <nw4r/lyt/drawInfo.h>
#include <nw4r/lyt/group.h>
#include <nw4r/lyt/resourceAccessor.h>
#include <nw4r/lyt/types.h>

#include <nw4r/ut/LinkList.h>
#include <nw4r/ut/TagProcessorBase.h>

namespace nw4r {
    namespace lyt {
        class Layout {
        public:
            Layout();
            virtual ~Layout();  // 0x08

            const ut::Rect GetLayoutRect() const;

            virtual bool Build(const void* lytResBuf, ResourceAccessor* pResAcsr);  // 0x0C

            virtual AnimTransform* CreateAnimTransform(const void* anmResBuf, ResourceAccessor* pResAcsr);  // 0x10

            virtual void BindAnimation(AnimTransform* animTrans);    // 0x14
            virtual void UnbindAnimation(AnimTransform* animTrans);  // 0x18
            virtual void UnbindAllAnimation();                       // 0x1C

            virtual void SetAnimationEnable(AnimTransform* animTrans, bool bEnable = true);  // 0x20

            virtual void CalculateMtx(const DrawInfo& drawInfo);  // 0x24
            virtual void Draw(const DrawInfo& drawInfo);          // 0x28

            virtual void Animate(u32 option = 0);  // 0x2C

            virtual void SetTagProcessor(ut::WideTagProcessor* pTagProcessor) NO_INLINE;  // 0x30

            Pane* GetRootPane() const { return mpRootPane; }
            GroupContainer* GetGroupContainer() const { return mpGroupContainer; }

            static MEMAllocator* GetAllocator() { return mspAllocator; }
            static void SetAllocator(MEMAllocator* allocator) { mspAllocator = allocator; }

            static void* AllocMemory(u32 size) { return MEMAllocFromAllocator(mspAllocator, size); }
            static void FreeMemory(void* ptr) { MEMFreeToAllocator(mspAllocator, ptr); }

        protected:
            static Pane* BuildPaneObj(s32 kind, const void* dataPtr, const ResBlockSet& resBlockSet) NO_INLINE;

            AnimTransformList mAnimTransList;  // 0x04

            Pane* mpRootPane;                  // 0x10
            GroupContainer* mpGroupContainer;  // 0x14

            Size mLayoutSize;  // 0x18

            u8 mOriginType;  // 0x20

            static MEMAllocator* mspAllocator;
        };
    }  // namespace lyt
}  // namespace nw4r

#endif  // NW4R_LYT_LAYOUT_H
