#ifndef IPL_LAYOUT_H
#define IPL_LAYOUT_H

#include <revolution.h>

#include <nw4r/ut.h>
#include <nw4r/lyt.h>

#include <egg/core.h>

#include "system/iplNand.h"

#include "utility/iplFrameController.h"
#include "utility/iplGraphics.h"

// TODO?: Should reduce the amount of inline functions which just call SetVisible.

namespace ipl {
    namespace layout {
        class Wrapper {
            public:
                static inline void SetVisible(nw4r::lyt::Pane* pane, bool flag) {
                    pane->SetVisible(flag);
                }
                static inline void SetVisibleSafe(nw4r::lyt::Pane* pane, bool flag) {
                    if (pane) {
                        pane->SetVisible(flag);
                    }
                }

                static inline void Show(nw4r::lyt::Pane* pane) {
                    pane->SetVisible(true);
                }
                static inline void Hide(nw4r::lyt::Pane* pane) {
                    pane->SetVisible(false);
                }
        };

        class Animator : public utility::FrameController {
            public:
                Animator(nw4r::lyt::AnimTransform* animTrans, bool bRecursive, bool bUnused);
                virtual ~Animator() {}

                virtual void    calc();
                virtual void    setFlag(bool flag);
                virtual void    bind();

                void            setFrame();

                void            initAnmFrame();
                void            initAnmFrame(f32 frame);

                inline void     init()          { initAnmFrame(); }

            protected:
                nw4r::lyt::AnimTransform*   mAnimTrans; // 0x20
                
                nw4r::ut::Link              mLink;      // 0x24

                u32                         mFlags;     // 0x2C
            
            friend class Object;
        };

        class PaneAnimator : public Animator {
            public:
                PaneAnimator(nw4r::lyt::AnimTransform* animTrans, nw4r::lyt::Pane* pane, bool bRecursive, bool bUnused);
                virtual ~PaneAnimator();

                virtual void    setFlag(bool flag);
                virtual void    bind();
            
            private:
                nw4r::lyt::Pane* mPane;
        };

        class GroupAnimator : public Animator {
            public:
                GroupAnimator(nw4r::lyt::AnimTransform* animTrans, nw4r::lyt::Group* group, bool bRecursive, bool bUnused);
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

                /**
                 * Bind an animation to the Layout by BRLAN file.
                 * @param fileName The BRLAN filename
                 * @param bUnused Unused. Default is true.
                 */
                PaneAnimator*           bind(const char* fileName, bool bUnused = true);
                /**
                 * Bind an animation to the Layout by BRLAN file.
                 * @param fileName The BRLAN filename
                 * @param paneName The Pane to bind by name
                 * @param bRecursive Recursive animation. Default is true.
                 * @param bUnused Unused. Default is true.
                 */
                PaneAnimator*           bind(const char* fileName, const char* paneName, bool bRecursive = true, bool bUnused = true);
                GroupAnimator*          bindToGroup(const char* fileName, const char* groupName, bool bRecursive = true, bool bUnused = true);
                GroupAnimator*          bindToGroup(const char* fileName, nw4r::lyt::Group* group, bool bRecursive = true, bool bUnused = true);
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

                /** @brief Prepare the camera for the layout. */
                static void             setCamera()                                                 { utility::Graphics::setOrtho(); }

                /**
                 * @brief Prepare the camera for the layout.
                 * @param ortho Orthographic view
                 */
                static void             setCamera(u32 ortho)                                        { utility::Graphics::setOrtho(ortho); }

                /** @brief Prepare the default camera for the layout. */
                static void             setDefaultCamera()                                          { utility::Graphics::setDefaultOrtho(); }

                /**
                 * @brief Prepare the default camera for the layout.
                 * @param ortho Orthographic view
                 */
                static void             setDefaultCamera(u32 ortho)                                 { utility::Graphics::setDefaultOrtho(ortho); }

                /** @brief Gets the layout object. */
                nw4r::lyt::Layout*      getNW4RLyt()                                                { return &mLayout; }
                /** @brief Gets the draw info object. */
                nw4r::lyt::DrawInfo*    getDrawInfo()                                               { return &mDrawInfo; }

                /** @brief Calculate the Layout matrix for rendering. */
                void                    calcMtx()                                                   { getNW4RLyt()->CalculateMtx(mDrawInfo); }

                /**
                 * @brief Prepare the default camera for the layout.
                 * @param ortho Orthographic view
                 */
                Animator*               getAnim(int idx = 0)                                        { return static_cast<Animator*>(nw4r::ut::List_GetNth(&mAnims, idx)); }

                /*** TODO: These always generate a weak. Try and make them not do that. ***/
                const nw4r::ut::Rect    getTextDrawRect(const nw4r::lyt::TextBox* textBox) const    { return textBox->GetTextDrawRect(mDrawInfo); }
                const nw4r::ut::Rect    getTextDrawRect(const char* paneName) const                 { return getTextDrawRect(nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mLayout.GetRootPane()->FindPaneByName(paneName))); }

                const nw4r::ut::Rect    getPaneRect(nw4r::lyt::Pane* pane) const                    { return pane->GetPaneRect(mDrawInfo); }
                const nw4r::ut::Rect    getPaneRect(const char* paneName) const                     { return getPaneRect(mLayout.GetRootPane()->FindPaneByName(paneName)); }

                void                    show(const char* paneName)                                  { layout::Wrapper::Show(FindPaneByName(paneName)); }
                void                    hide(const char* paneName)                                  { layout::Wrapper::Hide(FindPaneByName(paneName)); }

                void                    setVisible(const char* paneName, bool flag)                 { layout::Wrapper::SetVisible(FindPaneByName(paneName), flag); }

                nw4r::lyt::Pane*        GetRootPane()                                               { return mLayout.GetRootPane(); }
                nw4r::lyt::Pane*        FindPaneByName(const char* findName)                        { return GetRootPane()->FindPaneByName(findName); }

                void                    SetTranslate(const math::VEC3& translate)                   { SetTranslate(translate); }
                void                    SetTranslate(const math::VEC2& translate)                   { SetTranslate(math::VEC3(translate.x, translate.y, 0.0f)); }

            private:
                void                    init_(const char* fileName);

                void                    attach(void* arcBuffer, const char* directory);
                void                    attach_font();

                PaneAnimator*           bind_(const char* fileName, nw4r::lyt::Pane* pane, bool bRecursive, bool bUnused);
                GroupAnimator*          bind_(const char* fileName, nw4r::lyt::Group* group, bool bRecursive, bool bUnused);

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
