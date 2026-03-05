#include "homebutton/HBMAnmController.h"

#include <nw4r/lyt.h>
#include <nw4r/ut.h>

namespace homebutton {

    GroupAnmController::GroupAnmController() :
    mpGroup(),
    mpAnimGroup() {}

    GroupAnmController::~GroupAnmController() {}

    void GroupAnmController::do_calc() {
        bool enable;

        if (mState == ANIM_STATE_PLAY) {
            calc();
            enable = true;

            mpAnimGroup->SetFrame(mFrame);
        }
        else {
            enable = false;
        }

        nw4r::lyt::PaneLinkList& rPaneList = mpGroup->GetPaneList();

        for (nw4r::lyt::PaneLinkList::Iterator it = rPaneList.GetBeginIter(); it != rPaneList.GetEndIter(); ++it) {
            it->mTarget->SetAnimationEnable(mpAnimGroup, enable, false);
        }
    }
}
