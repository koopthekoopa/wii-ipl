#ifndef IPL_LAYOUT_H
#define IPL_LAYOUT_H

#include <decomp.h>

#include <revolution.h>

#include <nw4r/lyt.h>

#include <egg/core.h>

#include "system/iplNand.h"

namespace ipl {
    enum {
        ANIM_TYPE_FORWARD = 0,
        ANIM_TYPE_BACKWARD,
        ANIM_TYPE_LOOP,
        ANIM_TYPE_ALTERNATE
    };
    namespace layout {
        class Object {
            public:
                /**
                 * @param pHeap The work heap.
                 * @param pLayoutArchive The layout archive.
                 * @param layoutDirectory The directory containing the layout.
                 * @param layoutFileName The file name of the layout.
                 */
                Object(EGG::Heap* pHeap, nand::LayoutFile* pLayoutArchive, const char* layoutDirectory, const char* layoutFileName);
                /**
                 * @param pHeap The work heap.
                 * @param pLayoutArcBuffer The layout archive buffer.
                 * @param layoutDirectory The directory containing the layout.
                 * @param layoutFileName The file name of the layout.
                 */
                Object(EGG::Heap* pHeap, void* pLayoutArcBuffer, const char* layoutDirectory, const char* layoutFileName);

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


                /** @brief Gets the root of the Layout. */
                nw4r::lyt::Pane*        GetRootPane() { return mpRootPane; }
                
            private:
                undefined           unk_0x00[0x14]; // 0x00
                nw4r::lyt::Pane*    mpRootPane;     // 0x14
                undefined           unk_0x40[1384]; // 0x40
        };
    }
}

#endif // IPL_LAYOUT_H


