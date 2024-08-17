#ifndef IPL_LAYOUT_H
#define IPL_LAYOUT_H

#include <decomp.h>

#include <revolution.h>

#include <nw4r/lyt.h>

#include <egg/core.h>

#include "system/iplNand.h"

namespace ipl {
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

                /**
                 * @brief Lock up(?) until it has finished binding panes.
                 */
                void                    finishBinding();
                /**
                 * @brief Updates the Layout.
                 */
                void                    calc();
                /**
                 * @brief Draws the Layout.
                 */
                void                    draw();
                /**
                 * @brief Gets the root of the Layout.
                 */
                nw4r::lyt::Pane*        GetRootPane() { return mpRootPane; }
                
            private:
                undefined           unk_0x00[0x14]; // 0x00
                nw4r::lyt::Pane*    mpRootPane;     // 0x14
                undefined           unk_0x40[1384]; // 0x40
        };
    }
}

#endif // IPL_LAYOUT_H


