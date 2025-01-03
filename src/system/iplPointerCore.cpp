#include "system/iplPointer.h"

#include <revolution/gx.h>

#include <nw4r/math.h>
#include <nw4r/lyt.h>

#include "system/iplSystem.h"

#include "utility/iplUtility.h"
#include "utility/iplGraphics.h"

#include "iplMath.h"

namespace ipl {
    PointerCoreObject::PointerCoreObject() :
    mpLayout(NULL),
    mState(PointerType::StateNoScroll),
    mLayoutType(PointerType::LayoutMax),
    mChan(0),
    unused_0x10(0) {}

    void PointerCoreObject::calc(Pointer* pointer, const controller::Interface* pController) {
        mpLayout = NULL;

        if (pController && pController->isValidDpd()) {
            mpLayout = pointer->get_layout(mChan, mLayoutType);

            // Move
            nw4r::lyt::Pane* pMovePane = mpLayout->getRoot()->FindPaneByName("N_Trans");
            pMovePane->SetTranslate(utility::get_cursor_pos(pController->getDpdProjectionPos()));

            // Rotation
            math::VEC2 cursorHorizon(pController->getHorizon());
            math::VEC3 cursorRotateVec(0.f, 0.f, nw4r::math::Atan2Deg(-cursorHorizon.y, cursorHorizon.x));
            nw4r::lyt::Pane *pRotatePane = mpLayout->getRoot()->FindPaneByName("N_Rot");
            nw4r::lyt::Pane* pRotateShadowPane = mpLayout->getRoot()->FindPaneByName("N_SRot");

            pRotatePane->SetRotate(cursorRotateVec);
            pRotateShadowPane->SetRotate(cursorRotateVec);

            // Update the cursor layout
            mpLayout->calc();
        }
    }

    void PointerCoreObject::draw() {
        // Do not draw is the layout is invalid
        if (!mpLayout) {
            return;
        }
        // Do not draw if scrolling
        if (mState != PointerType::StateNoScroll) {
            return;
        }
        // Otherwise, do draw it.
        mpLayout->draw();
    }

    PointerCore::PointerCore() : mCursors() {
        int chan = 0;
        for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; i--) {
            mCursors[chan].changeType(PointerType::LayoutPoint);
            mCursors[chan].setChan(chan);
            chan++;
        }
    }

    void PointerCore::setState(int chan, int state) {
        mCursors[chan].setState(state);
    }

    void PointerCore::calc(Pointer* pointer) {
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            mCursors[i].calc(pointer, System::getController(i));
        }
    }

    void PointerCore::draw() {
        utility::Graphics::setDefaultOrtho();
        for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; i--) {
            mCursors[i].draw();
        }
    }

    void PointerCore::changeType(int chan, int type) {
        mCursors[chan].changeType(type);
    }
}


