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
    mState(0),
    mLayoutType(Pointer::LYT_UNK3),
    mChan(0),
    unk_0x10(0) {}


   void PointerCoreObject::calc(Pointer* pPointer, const controller::Interface* pController) {
        mpLayout = NULL;
        if (pController && pController->isValidDpd()) {
            mpLayout = pPointer->get_layout(mChan, mLayoutType);

            // Move
            nw4r::lyt::Pane* pMovePane = mpLayout->GetRootPane()->FindPaneByName("N_Trans");
            
            pMovePane->SetTranslate(utility::get_cursor_pos(pController->getDpdProjectionPos()));

            // Rotation
            math::VEC2 cursorHorizon(pController->getHorizon());
            math::VEC3 cursorRotateVec(0.f, 0.f, nw4r::math::Atan2Deg(-cursorHorizon.y, cursorHorizon.x));
            nw4r::lyt::Pane *pRotatePane = mpLayout->GetRootPane()->FindPaneByName("N_Rot");
            nw4r::lyt::Pane* pRotateShadowPane = mpLayout->GetRootPane()->FindPaneByName("N_SRot");

            pRotatePane->SetRotate(cursorRotateVec);
            pRotateShadowPane->SetRotate(cursorRotateVec);

            // Update the cursor layout
            mpLayout->calc();
        }
    }

    void PointerCoreObject::draw() {
        if (!mpLayout) return;
        if (mState != 0) return;

        mpLayout->draw();
    }

    PointerCore::PointerCore() : mCursors() {
        int chan = 0;
        for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; i--) {
            mCursors[chan].changeType(Pointer::LYT_POINT);
            mCursors[chan].setChan(chan);
            chan++;
        }
    }

    void PointerCore::setState(int chan, int state) {
        mCursors[chan].setState(state);
    }

    void PointerCore::calc(Pointer* pPointer) {
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            mCursors[i].calc(pPointer, System::getController(i));
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


