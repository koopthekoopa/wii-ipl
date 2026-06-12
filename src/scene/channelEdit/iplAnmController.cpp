#include "scene/channelEdit/iplAnmController.h"

#include "system/iplSystem.h"

namespace ipl {
    namespace scene {
        void AnmPane::calc() {
            if (pAnmCurr != NULL && !pAnmCurr->animator->isPlaying()) {
                pAnmCurr = NULL;
                on_cmd_recv(ANIM_CMD_CANCEL);
            }
            on_cmd_recv(mCurrCmd);
        }
        void AnmPane::on_cmd_recv(AnimCommand cmd) {
            if (cmd == ANIM_CMD_POINT || cmd == ANIM_CMD_LEFT) {
                mCurrCmd = cmd;
            }
            switch (mCurrState) {
                case ANIM_STATE_IDLE:
                    if (cmd == ANIM_CMD_POINT) {
                        pAnmCurr = pAnmIn;
                        pAnmCurr->animator->play();

                        mPrevState = mCurrState;
                        mCurrState = ANIM_STATE_POINT;
                    } else if (cmd == ANIM_CMD_LEFT) {
                        pAnmCurr = pAnmOut;
                        pAnmCurr->animator->play();

                        mPrevState = mCurrState;
                        mCurrState = ANIM_STATE_LEFT;
                    }
                    break;

                case ANIM_STATE_POINT:
                    if (cmd != ANIM_CMD_CANCEL)
                        break;

                    if (mCurrCmd == ANIM_CMD_POINT)
                        mCurrCmd = ANIM_CMD_NONE;

                    mPrevState = mCurrState;
                    mCurrState = ANIM_STATE_IDLE;
                    break;

                case ANIM_STATE_LEFT:
                    if (cmd != ANIM_CMD_CANCEL)
                        break;

                    if (mCurrCmd == ANIM_CMD_LEFT)
                        mCurrCmd = ANIM_CMD_NONE;

                    mPrevState = mCurrState;
                    mCurrState = ANIM_STATE_IDLE;
                    break;
            }
        }

        void AnmController::add_animation(const char* brlan, const char* group) {
            layout::GroupAnimator* animator = pLytObj->bindToGroup(brlan, group, false);
            nw4r::ut::List_Append(&mAnmList, new (pHeap) Anm(animator));
        }

        void AnmController::do_animation(int idx, int anmType, bool calc) {
            Anm* anm = (Anm*)nw4r::ut::List_GetNth(&mAnmList, idx);
            anm->animator->setAnmType(anmType);

            anm->animator->play();
            if (calc)
                pLytObj->calc();
        }

        void AnmController::stop_animation(int idx) {
            Anm* anm = (Anm*)nw4r::ut::List_GetNth(&mAnmList, idx);
            anm->animator->stop();
        }

        bool AnmController::is_animation(int idx) {
            Anm* anm = (Anm*)nw4r::ut::List_GetNth(&mAnmList, idx);
            return anm->animator->isPlaying();
        }

        Anm* AnmController::get_animation(int idx) {
            return (Anm*)nw4r::ut::List_GetNth(&mAnmList, idx);
        }

        void AnmController::add_anmpane(const char* name, Anm* anmIn, Anm* anmOut) {
            nw4r::ut::List_Append(&mPaneList, new (pHeap) AnmPane(name, anmIn, anmOut));
        }

        AnmPane* AnmController::get_anmpane(const char* name) {
            AnmPane* currPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, NULL);
            while (currPane != NULL) {
                if (strcmp(currPane->getName(), name) == 0)
                    return currPane;

                currPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, currPane);
            }
            return currPane;
        }

        void AnmController::clear_anmpane(const char* name) {
            AnmPane* pane = get_anmpane(name);
            pPaneManager->initPane(pLytObj->FindPaneByName(name));
            if (pane->hoverCount() >= 1) {
                pane->on_cmd_recv(AnmPane::ANIM_CMD_LEFT);
            }
            pane->setHoverCount(0);
        }

        void AnmController::set_textbox(const char* name, u32 msgId) {
            nw4r::lyt::TextBox* textbox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(pLytObj->FindPaneByName(name));
            textbox->SetString(System::getMessage(msgId));
        }
        void AnmController::set_textbox(const char* name, const wchar_t* msg) {
            nw4r::lyt::TextBox* textbox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(pLytObj->FindPaneByName(name));
            textbox->SetString(msg);
        }

        void AnmController::set_texture(const char* name, const GXTexObj& tex) {
            pLytObj->FindPaneByName(name)->FindMaterialByName(name)->SetTexture(0, tex);
        }

        void AnmController::set_visible(const char* name, bool visibility) {
            pLytObj->FindPaneByName(name)->SetVisible(visibility);
        }
        bool AnmController::get_visible(const char* name) {
            return pLytObj->FindPaneByName(name)->IsVisible();
        }

        void AnmController::set_translate(const char* name, const nw4r::math::VEC3& translate) {
            pLytObj->FindPaneByName(name)->SetTranslate(translate);
        }
        const nw4r::math::VEC3& AnmController::get_translate(const char* name) {
            return pLytObj->FindPaneByName(name)->GetTranslate();
        }

        const nw4r::math::VEC2& AnmController::get_scale(const char* name) {
            return pLytObj->FindPaneByName(name)->GetScale();
        }
    }  // namespace scene
}  // namespace ipl
