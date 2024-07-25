
#include "system/iplPointerCore.h"
#include "utility/iplUtility.h"
#include "utility/iplGraphics.h"
#include <nw4r/lyt/types.h>
#include <nw4r/math/types.h>
#include <nw4r/math/triangular.h>
#include <nw4r/lyt/pane.h>

namespace ipl {
    PointerCoreObject::PointerCoreObject()
    : mLayoutObject(NULL), mState(0), mLayoutType(POINTER_LYT_TYPE_UNK3), mChan(0), unk_0x10(0) {}

   void PointerCoreObject::calc(Pointer* pPointer, const controller::Interface* pController) {
        mLayoutObject = NULL;
        if (pController && pController->Active()) {
            nw4r::lyt::Pane *pCursorMovePane, *pCursorRotate, *pCursorRotateShadow;

            // Prepare layout
            mLayoutObject = pPointer->get_layout(mChan, mLayoutType);
            pCursorMovePane = mLayoutObject->GetRootPane()->FindPaneByName("N_Trans");

            // Set the position
            pCursorMovePane->SetTranslate(utility::get_cursor_pos(pController->getIRPos()));

            // Prepare rotation
            math::VEC2 cursorHorizon(pController->getHorizon());
            math::VEC3 cursorRotateVec(0, 0, nw4r::math::Atan2Deg(-cursorHorizon.y, cursorHorizon.x));

            pCursorRotate = mLayoutObject->GetRootPane()->FindPaneByName("N_Rot");
            pCursorRotateShadow = mLayoutObject->GetRootPane()->FindPaneByName("N_SRot");

            // Set rotation
            pCursorRotate->SetRotate(cursorRotateVec);
            pCursorRotateShadow->SetRotate(cursorRotateVec);

            mLayoutObject->calc();
        }
    }

    void PointerCoreObject::draw() {
        if (!mLayoutObject) return;
        if (mState != 0) return;

        mLayoutObject->draw();
    }
    
    

    PointerCore::PointerCore() : mCursors() {
        int chan = 0;
        for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; i--) {
            mCursors[chan].setLayoutType(POINTER_LYT_TYPE_POINT);
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
        utility::Graphics::setDefaultOrtho(0);

        for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; i--) {
            mCursors[i].draw();
        }
    }

    void PointerCore::changeType(int chan, int type) {
        mCursors[chan].setLayoutType(type);
    }
}


