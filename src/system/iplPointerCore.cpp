#include "system/iplPointerCore.h"

#include <nw4r/math.h>
#include <nw4r/lyt.h>

#include "system/iplSystem.h"
#include "system/iplPointer.h"

#include "utility/iplMath.h"
#include "utility/iplUtility.h"
#include "utility/iplGraphics.h"

namespace ipl {
    /**
     * @note Address: 0x813444C4 (4.3U)
     * @note Size: 0x24
     */
    PointerCoreObject::PointerCoreObject()
    : mpLayout(NULL), mState(0), mLayoutType(POINTER_LYT_TYPE_UNK3), mChan(0), unk_0x10(0) {}

    /**
     * @note Address: 0x813444E8 (4.3U)
     * @note Size: 0x19C
     */
   void PointerCoreObject::calc(Pointer* pPointer, const controller::Interface* pController) {
        mpLayout = NULL;
        if (pController && pController->isValidDpd()) {
            nw4r::lyt::Pane *pCursorMovePane, *pCursorRotate, *pCursorRotateShadow;

            // Prepare layout
            mpLayout = pPointer->get_layout(mChan, mLayoutType);
            pCursorMovePane = mpLayout->GetRootPane()->FindPaneByName("N_Trans");

            // Set the position
            pCursorMovePane->SetTranslate(utility::get_cursor_pos(pController->getDpdProjectionPos()));

            // Set rotation
            math::VEC2 cursorHorizon(pController->getHorizon());
            math::VEC3 cursorRotateVec(0, 0, nw4r::math::Atan2Deg(-cursorHorizon.y, cursorHorizon.x));

            pCursorRotate = mpLayout->GetRootPane()->FindPaneByName("N_Rot");
            pCursorRotateShadow = mpLayout->GetRootPane()->FindPaneByName("N_SRot");

            pCursorRotate->SetRotate(cursorRotateVec);
            pCursorRotateShadow->SetRotate(cursorRotateVec);

            // Update the layout
            mpLayout->calc();
        }
    }
    
    /**
     * @note Address: 0x813446A0 (4.3U)
     * @note Size: 0x24
     */
    void PointerCoreObject::draw() {
        if (!mpLayout) return;
        if (mState != 0) return;

        mpLayout->draw();
    }
    
    /**
     * @note Address: 0x813446C4 (4.3U)
     * @note Size: 0x7C
     */
    PointerCore::PointerCore() : mCursors() {
        int chan = 0;
        for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; i--) {
            mCursors[chan].changeType(POINTER_LYT_TYPE_POINT);
            mCursors[chan].setChan(chan);
            chan++;
        }
    }

    /**
     * @note Address: 0x81344740 (4.3U)
     * @note Size: 0x10
     */
    void PointerCore::setState(int chan, int state) {
        mCursors[chan].setState(state);
    }

    /**
     * @note Address: 0x81344750 (4.3U)
     * @note Size: 0x64
     */
    void PointerCore::calc(Pointer* pPointer) {
        for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
            mCursors[i].calc(pPointer, System::getController(i));
        }
    }

    /**
     * @note Address: 0x813447B4 (4.3U)
     * @note Size: 0x54
     */
    void PointerCore::draw() {
        utility::Graphics::setDefaultOrtho(0);

        for (int i = WPAD_MAX_CONTROLLERS - 1; i >= 0; i--) {
            mCursors[i].draw();
        }
    }

    /**
     * @note Address: 0x81344808 (4.3U)
     * @note Size: 0x10
     */
    void PointerCore::changeType(int chan, int type) {
        mCursors[chan].changeType(type);
    }
}


