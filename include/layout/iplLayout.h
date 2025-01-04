#ifndef IPL_LAYOUT_H
#define IPL_LAYOUT_H

#include <revolution.h>

#include <nw4r/ut.h>
#include <nw4r/lyt.h>

#include <egg/core.h>

#include "nw4r/lyt/drawInfo.h"
#include "revolution/types.h"
#include "system/iplNand.h"

#include "utility/iplFrameController.h"

namespace ipl {
    namespace layout {
        class Animator : public utility::FrameController {
            public:
                Animator(nw4r::lyt::AnimTransform* animTrans, bool bRecursive, bool bPlayNow);
                virtual ~Animator() {}

                virtual void    calc();
                virtual void    setFlag(bool flag);
                virtual void    bind();

                void            setFrame();

                void            initAnmFrame();
                void            initAnmFrame(float frame);

            protected:
                nw4r::lyt::AnimTransform*   mAnimTrans;   // 0x20
                
                u32                         unused_0x24;
                u32                         unused_0x28;

                u32                         mFlags;
        };

        class PaneAnimator : public Animator {
            public:
                PaneAnimator(nw4r::lyt::AnimTransform* animTrans, nw4r::lyt::Pane* pane, bool bRecursive, bool bPlayNow);
                virtual ~PaneAnimator();

                virtual void    setFlag(bool flag);
                virtual void    bind();
            
            private:
                nw4r::lyt::Pane* mPane;
        };

        class GroupAnimator : public Animator {
            public:
                GroupAnimator(nw4r::lyt::AnimTransform* animTrans, nw4r::lyt::Group* group, bool bRecursive, bool bPlayNow);
                virtual ~GroupAnimator();

                virtual void    setFlag(bool flag);
                virtual void    bind();
            
            private:
                nw4r::lyt::Group* mGroup;
        };

        class Object {
            public:
                /**
                 * @param heap The work heap.
                 * @param arcBuffer The layout archive buffer.
                 * @param directory The directory containing the layout.
                 * @param fileName The file name of the layout.
                 */
                Object(EGG::Heap* heap, void* arcBuffer, const char* directory, const char* fileName);
                /**
                 * @param heap The work heap.
                 * @param file The layout archive.
                 * @param directory The directory containing the layout.
                 * @param fileName The file name of the layout.
                 */
                Object(EGG::Heap* heap, nand::LayoutFile* file, const char* directory, const char* fileName);

                virtual ~Object();

                void                    initLocationAdjust();

                PaneAnimator*           bind(const char* fileName, bool bPlayNow = true);
                PaneAnimator*           bind(const char* fileNane, const char* paneName, bool bRecursive = true, bool bPlayNow = true);
                GroupAnimator*          bindToGroup(const char* fileName, const char* groupName, bool bRecursive = true, bool bPlayNow = true);
                GroupAnimator*          bindToGroup(const char* fileName, nw4r::lyt::Group* group, bool bRecursive = true, bool bPlayNow = true);
                void                    finishBinding();

                bool                    searchFile(const char* fileName);

                void                    calc();

                void                    draw();
                void                    draw(const char* paneName);
                void                    draw(nw4r::lyt::Pane* pane);
                
                void                    setMaxFrame(float maxFrame, int animIdx = -1);
                void                    setMinFrame(float minFrame, int animIdx = -1);
                void                    setAnmType(int type, int animIdx = -1);
                bool                    isPlaying(int animIdx = -1) const;

                void                    start(int animIdx = -1);

                void                    adjustHeap();
                void                    destroyHeap();
                
                static Object*          create(EGG::Heap* heap, u32 unk0, nand::LayoutFile* file, const char* directory, const char* fileName);
                static Object*          create(EGG::Heap* heap, u32 unk0, void* buffer, const char* directory, const char* fileName);

                /** @brief Gets the layout object. */
                nw4r::lyt::Layout*      getLayout()                 { return &mLayout; }
                /** @brief Gets the root of the layout. */
                nw4r::lyt::Pane*        getRoot()                   { return getLayout()->GetRootPane(); }
                
            private:
                void                    init_(const char* fileName);

                void                    attach(void* arcBuffer, const char* directory);
                void                    attach_font();

                PaneAnimator*           bind_(const char* fileName, nw4r::lyt::Pane* pane, bool bRecursive, bool bPlayNow);
                GroupAnimator*          bind_(const char* fileName, nw4r::lyt::Group* group, bool bRecursive, bool bPlayNow);

                nw4r::lyt::Layout                   mLayout;            // 0x04

                nw4r::lyt::MultiArcResourceAccessor mArc;               // 0x28

                nw4r::lyt::FontRefLink              mWBF1PrivateLink;   // 0x44
                nw4r::lyt::FontRefLink              mWBF2PrivateLink;   // 0xD0

                nw4r::lyt::FontRefLink              mWBF1PublicLink;    // 0x15C
                nw4r::lyt::FontRefLink              mWBF2PublicLink;    // 0x1E8

                EGG::Heap*                          mpHeap;             // 0x274
                EGG::Allocator                      mAllocator;         // 0x278

                nw4r::ut::List                      mAnims;             // 0x28C

                nw4r::lyt::DrawInfo                 mDrawInfo;          // 0x298

                s32                                 mCurLink;           // 0x2EC
                nw4r::lyt::ArcResourceLink          mArcLinks[4];       // 0x2F0
        };
    }
}

#endif // IPL_LAYOUT_H
