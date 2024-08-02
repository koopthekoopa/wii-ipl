#include "system/iplPointer.h"

#include <nw4r/math.h>
#include <nw4r/ut.h>
#include <nw4r/lyt.h>

#include "system/iplSystem.h"

#include "utility/iplUtility.h"
#include "utility/iplMath.h"

namespace ipl {
    #define MINIMUM_LENGTH    32
    #define MAXIMUM_LENGTH    128

    /*
     * @note Address: 0x816354D4 (4.3U)
     * @note Size: 0x24
     */
    static const char* scLayoutName[MAX_LAYOUT_FILES] = {
        #define LYT_INVALID_ID     -1
    
        // Point
        #define LYT_POINT_ID       0
        "P1_Def.brlyt",
        "P2_Def.brlyt",
        "P3_Def.brlyt",
        "P4_Def.brlyt",
        
        // Grab
        #define LYT_GRAB_ID        4
        "P1_Cat.brlyt",
        "P2_Cat.brlyt",
        "P3_Cat.brlyt",
        "P4_Cat.brlyt",
        
        // Scroller
        #define LYT_SCROLLER_ID    8
         "my_BScroll_a.brlyt"
    };

    /*
     * @note Address: 0x81344188 (4.3U)
     * @note Size: 0xE8
     */
    Pointer::Pointer(EGG::Heap* pHeap)
    : unk_0x28(-1), mOriginPos(0, 0), mArrowLength(MINIMUM_LENGTH), mPointDirection(PNT_DOWN), mScrolling(false), unk_0x3D(true), mCore() {
        mLayoutArchive = System::getNandManager()->readLayout(pHeap, "cursor.ash", false);
        
        for (int i = 0; i < MAX_LAYOUT_FILES; i++) {
            mLayoutObject[i] = new(pHeap, 4) layout::Object(pHeap, mLayoutArchive, "arc", scLayoutName[i]);
            mLayoutObject[i]->finishBinding();
        }
    }

    /*
     * @note Address: 0x81344270 (4.3U)
     * @note Size: 0x174
     */
    void Pointer::calc() {
        mCore.calc(this);

        if (unk_0x28 >= 0) {
            nw4r::lyt::Pane *pArrowPane, *pArrowRoot, *pOriginPane;
            f32 newArrowLength, newYScale;

            // Get the Arrow Panes
            pArrowRoot =    mLayoutObject[LYT_SCROLLER_ID]->GetRootPane()->FindPaneByName("N_BArw");
            pArrowPane =    mLayoutObject[LYT_SCROLLER_ID]->GetRootPane()->FindPaneByName("W_BArw");
            pOriginPane =   mLayoutObject[LYT_SCROLLER_ID]->GetRootPane()->FindPaneByName("BArwBase");

            // Arrow Position
            pArrowRoot->SetTranslate(mOriginPos);
            pOriginPane->SetTranslate(mOriginPos);

            // Arrow Length
            nw4r::lyt::Size arrowSize = pArrowPane->GetSize();
            // Limit the length between 32 and 128
            newArrowLength = UTILITY_CLAMP(mArrowLength, MINIMUM_LENGTH, MAXIMUM_LENGTH);
            arrowSize.height = newArrowLength;

            // Set the new length
            pArrowPane->SetSize(arrowSize);

            // Arrow Scale
            // Y Scale:  1.0 = Down
            // Y Scale: -1.0 = Up
            if (mPointDirection == PNT_DOWN) {
                newYScale = 1.0;
            }
            else {
                newYScale = -1.0;
            }
            pArrowRoot->SetScale(math::VEC2(1.0, newYScale));


            pArrowRoot->SetVisible(mScrolling);
            pOriginPane->SetVisible(!mScrolling);

            mLayoutObject[LYT_SCROLLER_ID]->calc();
        }
    }

    /*
     * @note Address: 0x81344428 (4.3U)
     * @note Size: 0x50
     */
    void Pointer::draw() {
        if (unk_0x3D) {
            mCore.draw();
            if (unk_0x28 >= 0) {
                mLayoutObject[LYT_SCROLLER_ID]->draw();
            }
        }
    }
    
    /*
     * @note Address: 0x81344478 (4.3U)
     * @note Size: 0x8
     */
    void Pointer::setState(int chan, int state) {
        mCore.setState(chan, state);
    }

    /*
     * @note Address: 0x81344480 (4.3U)
     * @note Size: 0x8
     */
    void Pointer::changeType(int chan, int type) {
        mCore.changeType(chan, type);
    }

    /*
     * @note Address: 0x81344488 (4.3U)
     * @note Size: 0x3C
     */
    layout::Object* Pointer::get_layout(int chan, int type) {
        int grabId = LYT_INVALID_ID;

        switch (type) {
            case POINTER_LYT_TYPE_POINT: grabId = LYT_POINT_ID; break;
            case POINTER_LYT_TYPE_GRABBING: grabId = LYT_GRAB_ID; break;
        }

        return mLayoutObject[grabId + chan];
    }
}


