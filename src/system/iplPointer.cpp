#include "system/iplPointer.h"

#include <nw4r/math.h>
#include <nw4r/ut.h>
#include <nw4r/lyt.h>

#include "system/iplSystem.h"
#include "system/iplNand.h"

#include "utility/iplUtility.h"
#include "utility/iplMath.h"

namespace ipl {
    #define MINIMUM_SCROLL_LENGTH    32.f
    #define MAXIMUM_SCROLL_LENGTH    128.f

    /**
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

    /**
     * @note Address: 0x81344188 (4.3U)
     * @note Size: 0xE8
     */
    Pointer::Pointer(EGG::Heap* pHeap) :
    unk_0x28(-1),
    mOriginPos(0.f, 0.f),
    mArrowLength(MINIMUM_SCROLL_LENGTH),
    mPointDirection(POINT_DOWN),
    mScrolling(false),
    mVisible(true),
    mCore() {
        mpLayoutArchive = System::getNand()->readLayout(pHeap, "cursor.ash", false);
        
        for (int i = 0; i < MAX_LAYOUT_FILES; i++) {
            mpLayout[i] = new(pHeap, CLASS_HEAP) layout::Object(pHeap, mpLayoutArchive, "arc", scLayoutName[i]);
            mpLayout[i]->finishBinding();
        }
    }

    /**
     * @note Address: 0x81344270 (4.3U)
     * @note Size: 0x174
     */
    void Pointer::calc() {
        // Update the pointer cursor
        mCore.calc(this);

        // Update the scrolling cursor
        if (unk_0x28 >= 0) {
            nw4r::lyt::Pane* pRootPane =    mpLayout[LYT_SCROLLER_ID]->GetRootPane()->FindPaneByName("N_BArw");
            nw4r::lyt::Pane* pLengthPane =  mpLayout[LYT_SCROLLER_ID]->GetRootPane()->FindPaneByName("W_BArw");
            nw4r::lyt::Pane* pOriginPane =  mpLayout[LYT_SCROLLER_ID]->GetRootPane()->FindPaneByName("BArwBase");

            // Arrow Position
            pRootPane->SetTranslate(mOriginPos);
            pOriginPane->SetTranslate(mOriginPos);

            // Arrow Length
            nw4r::lyt::Size arrowSize =     pLengthPane->GetSize();
            f32 newArrowLength =            UTILITY_CLAMP(mArrowLength, MINIMUM_SCROLL_LENGTH, MAXIMUM_SCROLL_LENGTH);
            arrowSize.height =              newArrowLength;

            pLengthPane->SetSize(arrowSize);

            // Arrow Scale
            // Y Scale:  1.0 = Down
            // Y Scale: -1.0 = Up
            f32 arrowDirection;
            if (mPointDirection == POINT_DOWN) {
                arrowDirection = 1.0f;
            }
            else {
                arrowDirection = -1.0f;
            }
            pRootPane->SetScale(math::VEC2(1.0f, arrowDirection));

            // Visible panes
            pRootPane->SetVisible(mScrolling);
            pOriginPane->SetVisible(!mScrolling);

            // Calculate the scroller layout
            mpLayout[LYT_SCROLLER_ID]->calc();
        }
    }

    /**
     * @note Address: 0x81344428 (4.3U)
     * @note Size: 0x50
     */
    void Pointer::draw() {
        if (mVisible) {
            mCore.draw();
            
            if (unk_0x28 >= 0) {
                mpLayout[LYT_SCROLLER_ID]->draw();
            }
        }
    }
    
    /**
     * @note Address: 0x81344478 (4.3U)
     * @note Size: 0x8
     */
    void Pointer::setState(int chan, int state) {
        mCore.setState(chan, state);
    }

    /**
     * @note Address: 0x81344480 (4.3U)
     * @note Size: 0x8
     */
    void Pointer::changeType(int chan, int type) {
        mCore.changeType(chan, type);
    }

    /**
     * @note Address: 0x81344488 (4.3U)
     * @note Size: 0x3C
     */
    layout::Object* Pointer::get_layout(int chan, int type) {
        int grabId = LYT_INVALID_ID;

        switch (type) {
            case LYT_POINT: {
                grabId = LYT_POINT_ID;
                break;
            }
            case LYT_GRABBING: {
                grabId = LYT_GRAB_ID;
                break;
            }
        }

        return mpLayout[grabId + chan];
    }
}


