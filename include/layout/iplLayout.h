#ifndef IPL_LAYOUT_H
#define IPL_LAYOUT_H

#include <decomp.h>

#include <revolution.h>

#include <nw4r/lyt.h>

#include <egg/core.h>

#include "system/iplNand.h"

#include "utility/iplFrameController.h"

namespace ipl {
    namespace layout {
        class Animator : utility::FrameController {
            public:
                Animator(nw4r::lyt::AnimTransform* animTrans, bool, bool);
                virtual ~Animator();

                virtual void    calc();
                virtual void    setFlag(bool flag);
                virtual void    bind();

                void            setFrame();

                void            initAnmFrame();
                void            initAnmFrame(float frame);
            private:
                nw4r::lyt::AnimTransform*   mAnimTrans;   // 0x20
                undefined4                  unk_0x24;
                undefined4                  unk_0x28;
                u32                         unk_0x2C;
        };

        class Object {
            public:
                /**
                 * @param heap The work heap.
                 * @param pLayoutArchive The layout archive.
                 * @param layoutDirectory The directory containing the layout.
                 * @param layoutFileName The file name of the layout.
                 */
                Object(EGG::Heap* heap, nand::LayoutFile* pLayoutArchive, const char* layoutDirectory, const char* layoutFileName);
                /**
                 * @param heap The work heap.
                 * @param pLayoutArcBuffer The layout archive buffer.
                 * @param layoutDirectory The directory containing the layout.
                 * @param layoutFileName The file name of the layout.
                 */
                Object(EGG::Heap* heap, void* pLayoutArcBuffer, const char* layoutDirectory, const char* layoutFileName);

                virtual ~Object();

                /** @brief Bind animation to layout */
                void                    start(int lytId = -1);
                /**
                 * @brief Bind an animation to the layout
                 * @param fileName The file name of the Layout animation.
                 */
                void                    bind(const char* fileName, bool unk = true);
                /** @brief Lock up until it has finished binding animation. */
                void                    finishBinding();
                /** @brief Updates the Layout. */
                void                    calc();
                /** @brief Draws the Layout. */
                void                    draw();
                /**
                 * @brief Bind an animation to a specific group from the layout
                 * @param fileName The file name of the Layout animation.
                 * @param groupName The group name to bind the animation to.
                 */
                void                    bindToGroup(const char* fileName, const char* groupName, bool unk0 = true, bool unk1 = true);
                void                    setAnmType(int arg0, int arg1);
                BOOL                    isPlaying(int arg0) const;

                /** @brief Gets the layout object. */
                nw4r::lyt::Layout*      getLayout()                 { return &mLayout; }
                /** @brief Gets the root of the layout. */
                nw4r::lyt::Pane*        getRoot()                   { return getLayout()->GetRootPane(); }
                
            private:
                nw4r::lyt::Layout mLayout;  // 0x04
                undefined   unk_0x20[0x580 - 0x20];
        };
    }
}

#endif // IPL_LAYOUT_H
