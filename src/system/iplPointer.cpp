#include "system/iplPointer.h"

#include <nw4r/math.h>
#include <nw4r/ut.h>
#include <nw4r/lyt.h>

#include "iplSystem.h"

namespace ipl {
    #define MIN_LENGTH    32.f
    #define MAX_LENGTH    128.f
    
    enum {
        POINT_DOWN = 0,
        POINT_UP
    };
            
    enum {
        POINT_NOT_SCROLLING = -1,
        POINT_SCROLLING,
    };

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

    Pointer::Pointer(EGG::Heap* heap) :
    mIsScrolling(POINT_NOT_SCROLLING),
    mOriginPos(0.f, 0.f),
    mArrowLength(MIN_LENGTH),
    mPointDirection(POINT_DOWN),
    mbScrolling(false),
    mbVisible(true),
    mCore() {
        mpLayoutArchive = System::getNandManager()->readLayout(heap, "cursor.ash");
        for (int i = 0; i < MAX_LAYOUT_FILES; i++) {
            mpLayout[i] = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutArchive, "arc", scLayoutName[i]);
            mpLayout[i]->finishBinding();
        }
    }

    void Pointer::calc() {
        // Update the pointer cursor
        mCore.calc(this);

        // Update the scrolling cursor
        if (mIsScrolling >= POINT_SCROLLING) {
            nw4r::lyt::Pane* pRootPane   = mpLayout[LYT_SCROLLER_ID]->FindPaneByName("N_BArw");
            nw4r::lyt::Pane* pLengthPane = mpLayout[LYT_SCROLLER_ID]->FindPaneByName("W_BArw");
            nw4r::lyt::Pane* pOriginPane = mpLayout[LYT_SCROLLER_ID]->FindPaneByName("BArwBase");

            // Arrow Position
            pRootPane->SetTranslate(mOriginPos);
            pOriginPane->SetTranslate(mOriginPos);

            // Arrow Length
            nw4r::lyt::Size arrowSize = pLengthPane->GetSize();   
            arrowSize.height          = IPL_MATH_CLAMP(mArrowLength, MIN_LENGTH, MAX_LENGTH);
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
            pRootPane->SetVisible(mbScrolling);
            pOriginPane->SetVisible(!mbScrolling);

            // Calculate the scroller layout
            mpLayout[LYT_SCROLLER_ID]->calc();
        }
    }

    void Pointer::draw() {
        if (mbVisible) {
            mCore.draw();
            
            // Draw the scroller
            if (mIsScrolling >= POINT_SCROLLING) {
                mpLayout[LYT_SCROLLER_ID]->draw();
            }
        }
    }

    void Pointer::setState(int chan, int state) {
        mCore.setState(chan, state);
    }

    void Pointer::changeType(int chan, int type) {
        mCore.changeType(chan, type);
    }

    layout::Object* Pointer::get_layout(int chan, int type) {
        int grabId = LYT_INVALID_ID;

        switch (type) {
            case PointerType::LayoutPoint: {
                grabId = LYT_POINT_ID;
                break;
            }
            case PointerType::LayoutGrab: {
                grabId = LYT_GRAB_ID;
                break;
            }
        }

        return mpLayout[grabId + chan];
    }
}
