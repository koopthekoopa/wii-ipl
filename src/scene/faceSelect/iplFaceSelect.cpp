#include "scene/faceSelect/iplFaceSelect.h"

#include "iplSceneUI.h"

#include "system/iplNigaoeManager.h"

#include "iplSystem.h"
#include "iplSound.h"

#include <revolution/mtx.h>

#include <RVLFaceLibInternal.h>

#include <cstring>

#define NO_MII_ICON         "NigaoeD_00"

#define LOADED_MIIS         (mCurrentPage * MAX_FACE_EACH_PAGE)
#define CAN_SCROLL_LEFT     ((mCurrentPage > 0))
#define CAN_SCROLL_RIGHT    ((mCurrentPage + 1) * MAX_FACE_EACH_PAGE < mFaceCount)

#define NIGAOE_ICON_SIZE    76

namespace ipl {
    namespace scene {
        const char* FaceSelect::mscButtonName[BTN_MAX] = {
            "B_NigaoeSel0",
            "B_NigaoeSel1",
            "B_NigaoeSel2",
            "B_NigaoeSel3",
            "B_NigaoeSel4",
            "B_NigaoeSel5",
            "B_NigaoeSel6",
            "B_NigaoeSel7",
            "B_NigaoeSel8",
            "B_NigaoeSel9",
            "B_ArwL",
            "B_ArwR",
        };

        const char* FaceSelect::mscFacePane[BTN_MAX_FACE] = {
            "NigaoeSel0",
            "NigaoeSel1",
            "NigaoeSel2",
            "NigaoeSel3",
            "NigaoeSel4",
            "NigaoeSel5",
            "NigaoeSel6",
            "NigaoeSel7",
            "NigaoeSel8",
            "NigaoeSel9",
        };

        const char* FaceSelect::mscLeftFacePane[BTN_MAX_FACE] = {
            "NigaoeSel0_01",
            "NigaoeSel1_01",
            "NigaoeSel2_01",
            "NigaoeSel3_01",
            "NigaoeSel4_01",
            "NigaoeSel5_01",
            "NigaoeSel6_01",
            "NigaoeSel7_01",
            "NigaoeSel8_01",
            "NigaoeSel9_01",
        };

        const char* FaceSelect::mscRightFacePane[BTN_MAX_FACE] = {
            "NigaoeSel0_02",
            "NigaoeSel1_02",
            "NigaoeSel2_02",
            "NigaoeSel3_02",
            "NigaoeSel4_02",
            "NigaoeSel5_02",
            "NigaoeSel6_02",
            "NigaoeSel7_02",
            "NigaoeSel8_02",
            "NigaoeSel9_02",
        };

        FaceSelect::FaceSelect(EGG::Heap* heap, int fadeType) :
        FaderSceneBase(heap),
        mpLayout(NULL),
        mpEvent(NULL),
        mpGui(NULL),
        mpButtonEvent(NULL),
        mState(STATE_NORMAL),
        mPrevState(STATE_NORMAL),
        mCurrentPage(0),
        mFaceCount(0),
        mSelectedFaceId(-1),
        mCachedPage(0),
        mbLeftArrowExit(false),
        mbRightArrowExit(false),
        mFadeType(fadeType) {
            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = FALSE;
            }
            
            for (int i = 0; i < RFL_MAX_DATABASE; i++) {
                mFaceIds[i] = -1;
            }

            memset(mpFaces, 0, sizeof(mpFaces));
        }

        void FaceSelect::prepare() {
            // Read the files!!!
            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "faceSel.ash");
            mpBalloonFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "balloon.ash");
        }

        void FaceSelect::create() {
            // Layout!!!
            mpLayout = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_selectNigaoe_a.brlyt");

            // Bind all of the animations
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeIn.brlan",           "G_All", false, mFadeType == FADE_FROM_MEMO);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeOut.brlan",          "G_All", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeIn_a.brlan",         "G_All", false, mFadeType == FADE_FROM_ADDRESS_EDIT);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeOut_a.brlan",        "G_All",false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeIn_b.brlan",         "G_All", false, mFadeType == FADE_FROM_ADDRESS_ADD);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeOut_b.brlan",        "G_All", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus0", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus1", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus2", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus3", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus4", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus5", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus6", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus7", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus8", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusIn.brlan",     "G_Foucus9", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus0", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus1", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus2", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus3", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus4", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus5", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus6", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus7", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus8", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_NigaoeFoucusOut.brlan",    "G_Foucus9", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_MoveArwR1.brlan",          "G_NigaoeAll", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_MoveArwL1.brlan",          "G_NigaoeAll", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_FocusOn.brlan",            "G_ArwL_Focus", false);
            mpLayout->bindToGroup("my_selectNigaoe_a_FocusOff.brlan",           "G_ArwL_Focus", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_Select.brlan",             "G_ArwL_Ac", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_HDActionStart.brlan",      "G_ArwL_HDAc", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_HDActionRepeat.brlan",     "G_ArwL_HDAc", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_Appear.brlan",             "G_ArwL_End", false);
            mpLayout->bindToGroup("my_selectNigaoe_a_Lost.brlan",               "G_ArwL_End", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_FocusOn.brlan",            "G_ArwR_Focus", false);
            mpLayout->bindToGroup("my_selectNigaoe_a_FocusOff.brlan",           "G_ArwR_Focus", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_Select.brlan",             "G_ArwR_Ac", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_HDActionStart.brlan",      "G_ArwR_HDAc", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_HDActionRepeat.brlan",     "G_ArwR_HDAc", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_Appear.brlan",             "G_ArwR_End", false);
            mpLayout->bindToGroup("my_selectNigaoe_a_Lost.brlan",               "G_ArwR_End", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_Loop.brlan",               "G_ArwRoop", false, false);
            mpLayout->bindToGroup("my_selectNigaoe_a_PageSwitch.brlan",         "G_Page", false, false);

            // Done binding animations
            mpLayout->finishBinding();

            // Create GUI and event
            mpEvent = new FaceSelectEvent(this);
            mpGui = new gui::PaneManager(mpEvent, mpLayout->getDrawInfo(), NULL, NULL, true);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);

            for (int i = 0; i < BTN_MAX; i++) {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[i]), true);
            }

            // Create event for button scene
            mpButtonEvent = new FaceSelectButtonEvent(this);

            // Setup Miis
            for (int i = 0; i < RFL_MAX_DATABASE; i++) {
                if (System::getMiiManager()->isAvalable(i)) {
                    mFaceIds[mFaceCount++] = i;
                }
            }
            read_face();

            // Preare UI
            reset_gui();
            set_page();

            switch (mFadeType) {
                case FADE_FROM_ADDRESS_EDIT: {
                    mFadeAnimIndex = ANIM_FADE_ADDRESS_EDIT;
                    break;
                }
                case FADE_FROM_ADDRESS_ADD: {
                    mFadeAnimIndex = ANIM_FADE_ADDRESS_ADD;
                    break;
                }
                default: {
                    mFadeAnimIndex = ANIM_FADE_MEMO;
                    break;
                }
            }

            mbPreparing = true;

            // Setup text balloons
            f32 unk4 = 30.0f;
            f32 unk3 = 120.0f;
            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i] = new TextBalloon(getSceneHeap(), mpBalloonFile, "arc", "my_IplTopBalloon_a.brlyt", math::VEC3(0.0f, 0.0f, 0.0f), unk3, unk4);
            }
        }

        SceneCommand FaceSelect::calcFadein() {
            SceneCommand command = SCENE_CONTINUE;

            if (mbPreparing) {
                bool result = true;
                for (int i = 0; i < MAX_FACE_EACH_PAGE; i++) {
                    // If face was created
                    result &= !mpFaces[mCachedPage][i].creating
                            || mpFaces[mCachedPage][i].created ? true : false;
                }
                if (result) {
                    mbPreparing = false;

                    set_face_pane(mscFacePane);

                    // Fade in!
                    mpLayout->getAnim(mFadeAnimIndex + ANIM_FADE_IN)->play();
                    mpLayout->getAnim(ANIM_APPEARING)->play();
                }
            }
            else {
                command = !mpLayout->getAnim(mFadeAnimIndex + ANIM_FADE_IN)->isPlaying() ? SCENE_NEXT : SCENE_CONTINUE;
            }

            return command;
        }

        
        void FaceSelect::initCalcNormal() {
            static_cast<Button*>(System::getScene(SCENE_BUTTON))->setEventHandler(mpButtonEvent);

            // Force right arrow to appear
            if (CAN_SCROLL_RIGHT) {
                mpLayout->getAnim(ANIM_RIGHT_ARROW_APPEAR)->play();
                mbRightArrowExit = true;
            }
        }

        SceneCommand FaceSelect::calcNormal() {
            switch (mState) {
                case STATE_NORMAL: {
                    stt_normal();
                    break;
                }
                case STATE_LEFT_LOAD: {
                    stt_wait_lloaded();
                    break;
                }
                case STATE_RIGHT_LOAD: {
                    stt_wait_rloaded();
                    break;
                }
                case STATE_LEFT_SCROLL: {
                    stt_wait_lscroll();
                    break;
                }
                case STATE_RIGHT_SCROLL: {
                    stt_wait_rscroll();
                    break;
                }
            }

            return mState == STATE_DONE ? SCENE_NEXT : SCENE_CONTINUE;
        }

        void FaceSelect::initCalcFadeout() {
            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i]->calc();
            }

            static_cast<Button*>(System::getScene(SCENE_BUTTON))->setEventHandler(NULL);

            mpLayout->getAnim(mFadeAnimIndex + ANIM_FADE_OUT)->play();
        }

        SceneCommand FaceSelect::calcFadeout() {
            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i]->calc();
            }

            return !mpLayout->getAnim(mFadeAnimIndex + ANIM_FADE_OUT)->isPlaying() ? SCENE_NEXT : SCENE_CONTINUE;
        }

        void FaceSelect::calcCommonAfter() {
            mpLayout->calc();
        }

        void FaceSelect::destroy() {
            for (int i = 0; i < (int)ARRSIZE(mpFaces); i++) {
                for (int j = 0; j < MAX_FACE_EACH_PAGE; j++) {
                    if (mpFaces[i][j].object != NULL) {
                        delete mpFaces[i][j].object;
                        mpFaces[i][j].object = NULL;
                    }
                }
            }
        }

        void FaceSelect::draw() {
            if (System::canDrawScene()) {
                u32 scLeft, scTop;
                u32 scWidth, scHeight;
                
                utility::Graphics::setOrtho();

                GXGetScissor(&scLeft, &scTop, &scWidth, &scHeight);

                GXRenderModeObj rMode = *System::getRenderModeObj();

                nw4r::ut::Rect projRect;
                System::getProjectionRect(&projRect);

                // ughhhh
                f32 val = 0.5f;
                f32 unk0 = projRect.GetWidth() * val;
                f32 unk1 = rMode.fbWidth / projRect.GetWidth();

                nw4r::lyt::Pane* cutPane = mpLayout->FindPaneByName("N_Cut_00");
                nw4r::ut::Rect paneRect = cutPane->GetPaneRect(*mpLayout->getDrawInfo());

                nw4r::math::MTX34 paneGlbMtx = cutPane->GetGlobalMtx();

                nw4r::math::VEC3 vec0(paneRect.left, paneRect.top, 0.0f);
                nw4r::math::VEC3 vec1(paneRect.right, paneRect.bottom, 0.0f);

                MTXMultVec(paneGlbMtx, vec0, vec0);
                MTXMultVec(paneGlbMtx, vec1, vec1);

                mpLayout->FindPaneByName("Mask_00")->SetVisible(true);
                mpLayout->draw("Mask_00");
                GXSetScissor((unk1 * (vec0.x + unk0)) + 0.5f, scTop, (unk1 * (vec1.x - vec0.x)) - 0.5f, scHeight);
                mpLayout->FindPaneByName("Mask_00")->SetVisible(false);

                mpLayout->FindPaneByName("N_TopBtn")->SetVisible(false);
                mpLayout->draw();
                GXSetScissor(scLeft, scTop, scWidth, scHeight);
                mpLayout->FindPaneByName("N_TopBtn")->SetVisible(true);
                mpLayout->draw("N_TopBtn");

                // draw balloooooons
                for (int i = 0; i < MAX_BALLOONS; i++) {
                    mpBalloons[i]->draw();
                }
            }
        }

        void FaceSelect::stt_normal() {
            if (static_cast<Button*>(System::getScene(SCENE_BUTTON))->isActive()) {
                static_cast<Button*>(System::getScene(SCENE_BUTTON))->update();
            }

            if (mState == STATE_NORMAL) {
                mpGui->update();
            }

            controller::Interface* con = System::getYoungController();
            if (mState == STATE_NORMAL && con != NULL) {
                // Scroll left when pressing Plus or L trigger
                if (con->downTrg(controller::BTN_NEXT_LEFT) && CAN_SCROLL_LEFT) {
                    start_lloaded();
                    change_state(STATE_LEFT_LOAD);
                }
                // Scroll left when holding Plus or L trigger
                else if (con->down(controller::BTN_NEXT_LEFT) && CAN_SCROLL_LEFT) {
                    if (mPrevState == STATE_LEFT_SCROLL) {
                        start_lloaded();
                        change_state(STATE_LEFT_LOAD);
                    }
                }
                else {
                    // Scroll right when pressing Minus or R trigger
                    if (con->downTrg(controller::BTN_NEXT_RIGHT) && CAN_SCROLL_RIGHT) {
                        start_rloaded();
                        change_state(STATE_RIGHT_LOAD);
                    }
                    // Scroll right when holding Minus or R trigger
                    else if (con->down(controller::BTN_NEXT_RIGHT) && CAN_SCROLL_RIGHT) {
                        if (mPrevState == STATE_RIGHT_SCROLL) {
                            start_rloaded();
                            change_state(STATE_RIGHT_LOAD);
                        }
                    }
                }
            }

            // Update text balloons
            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i]->calc();
            }
        }

        void FaceSelect::stt_wait_lloaded() {
            bool result = true;
            for (int i = 0; i < MAX_FACE_EACH_PAGE; i++) {
                // If face was created
                result &= !mpFaces[mCachedPage][i].creating
                        || mpFaces[mCachedPage][i].created ? true : false;
            }

            // Scroll to the left!
            if (result) {
                set_face_pane(mscLeftFacePane);
                start_lscroll();
                change_state(STATE_LEFT_SCROLL);
            }
        }

        void FaceSelect::stt_wait_rloaded() {
            bool result = true;
            for (int i = 0; i < MAX_FACE_EACH_PAGE; i++) {
                // If face was created
                result &= !mpFaces[mCachedPage][i].creating
                        || mpFaces[mCachedPage][i].created ? true : false;
            }

            // Scroll to the right!
            if (result) {
                set_face_pane(mscRightFacePane);
                start_rscroll();
                change_state(STATE_RIGHT_SCROLL);
            }
        }

        void FaceSelect::stt_wait_lscroll() {
            if (!mpLayout->getAnim(ANIM_PAGE_SCROLL_LEFT)->isPlaying()) {
                // Clear useless crap
                set_face_pane(mscFacePane);
                clear_face_pane(mscLeftFacePane);
                clear_face_pane(mscRightFacePane);
                destroy_object();

                // Whenever the left arrow should disappear
                if (!CAN_SCROLL_LEFT && mbLeftArrowExit == true) {
                    mpLayout->getAnim(ANIM_LEFT_ARROW_DISAPPEAR)->play();
                    mbLeftArrowExit = false;
                }

                // Whenever the left arrow should appear
                if (CAN_SCROLL_RIGHT && mbRightArrowExit != true) {
                    mpLayout->getAnim(ANIM_RIGHT_ARROW_APPEAR)->play();
                    mbRightArrowExit = true;
                }

                mpLayout->getAnim(ANIM_PAGE_SCROLL_LEFT)->initAnmFrame();
                change_state(STATE_NORMAL);
            }
        }

        void FaceSelect::stt_wait_rscroll() {
            if (!mpLayout->getAnim(ANIM_PAGE_SCROLL_RIGHT)->isPlaying()) {
                // Clear useless crap
                set_face_pane(mscFacePane);
                clear_face_pane(mscLeftFacePane);
                clear_face_pane(mscRightFacePane);
                destroy_object();

                // Whenever the left arrow should appear
                if (CAN_SCROLL_LEFT && mbLeftArrowExit != true) {
                    mpLayout->getAnim(ANIM_LEFT_ARROW_APPEAR)->play();
                    mbLeftArrowExit = true;
                }

                // Whenever the left arrow should disappear
                if (!CAN_SCROLL_RIGHT && mbRightArrowExit == true) {
                    mpLayout->getAnim(ANIM_RIGHT_ARROW_DISAPPEAR)->play();
                    mbRightArrowExit = false;
                }

                mpLayout->getAnim(ANIM_PAGE_SCROLL_LEFT)->initAnmFrame();
                change_state(STATE_NORMAL);
            }
        }

        void FaceSelect::start_lloaded() {
            reset_gui();

            snd::getSystem()->startSE("WIPL_SE_CALENDAR_SCROLL");

            // Next page!
            mCurrentPage--;
            mCachedPage = 1 - mCachedPage;

            // Change page number
            mpLayout->getAnim(ANIM_SWITCH_PAGE_NUMBER)->play();
            set_page();

            read_face();

            // Stop text balloons
            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i]->fadeoutForce();
            }
        }

        void FaceSelect::start_rloaded() {
            reset_gui();

            snd::getSystem()->startSE("WIPL_SE_CALENDAR_SCROLL");

            // Next page!
            mCurrentPage++;
            mCachedPage = 1 - mCachedPage;

            // Change page number
            mpLayout->getAnim(ANIM_SWITCH_PAGE_NUMBER)->play();
            set_page();

            read_face();

            // Stop text balloons
            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i]->fadeoutForce();
            }
        }

        void FaceSelect::start_lscroll() {
            mpLayout->getAnim(ANIM_PAGE_SCROLL_LEFT)->play();
        }

        void FaceSelect::start_rscroll() {
            mpLayout->getAnim(ANIM_PAGE_SCROLL_RIGHT)->play();
        }

        void FaceSelect::start_point_event(const char* paneName, controller::Interface* con) {
            int btnNo = get_button_no(paneName);
            int animIdx = -1;
            if (btnNo != -1) {
                if ((btnNo == BTN_ARROW_LEFT || btnNo == BTN_ARROW_RIGHT || is_exist(btnNo)) && mbHovered[btnNo] == FALSE) {
                    // Decide animation
                    switch (btnNo) {
                        case BTN_ARROW_LEFT: {
                            animIdx = ANIM_LEFT_ARROW_FOCUS_IN;
                            break;
                        }
                        case BTN_ARROW_RIGHT: {
                            animIdx = ANIM_RIGHT_ARROW_FOCUS_IN;
                            break;
                        }
                        default: {
                            animIdx = btnNo + ANIM_FOCUS_FACE_IN;

                            // Calculate balloon position
                            nw4r::lyt::Pane* paneObj = mpLayout->FindPaneByName(paneName);
                            math::VEC3 balloonPos(0.0f, 0.0f, 0.0f);
                            MTXMultVec(paneObj->GetGlobalMtx(), balloonPos, balloonPos);
                            
                            // UUGHHH
                            f32 y = 50.0f;
                            balloonPos.y += y;

                            // Change text balloon position
                            mpBalloons[btnNo]->setPos(balloonPos, false, 0);
                            mpBalloons[btnNo]->fadein();
                            break;
                        }
                    }

                    if (animIdx != -1) {
                        snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                        if (con) {
                            con->rumble();
                        }
                        mpLayout->getAnim(animIdx)->play();
                    }
                }
                mbHovered[btnNo]++;
            }
        }

        void FaceSelect::start_left_event(const char* paneName) {
            int btnNo = get_button_no(paneName);
            int animIdx = -1;
            if (btnNo != -1) {
                if ((btnNo == BTN_ARROW_LEFT || btnNo == BTN_ARROW_RIGHT || is_exist(btnNo)) && mbHovered[btnNo] == TRUE) {
                    // Decide animation
                    switch (btnNo) {
                        case BTN_ARROW_LEFT: {
                            animIdx = ANIM_LEFT_ARROW_FOCUS_OUT;
                            break;
                        }
                        case BTN_ARROW_RIGHT: {
                            animIdx = ANIM_RIGHT_ARROW_FOCUS_OUT;
                            break;
                        }
                        default: {
                            animIdx = btnNo + ANIM_FOCUS_FACE_OUT;
                            mpBalloons[btnNo]->fadeoutForce();
                            break;
                        }
                    }

                    if (animIdx != -1) {
                        mpLayout->getAnim(animIdx)->play();
                    }
                }
                mbHovered[btnNo]--;
            }
        }

        void FaceSelect::start_trig_event(const char* paneName) {
            int btnNo = get_button_no(paneName);
            if (btnNo != -1) {
                // Scroll to the left if pressed left arrow
                if (btnNo == BTN_ARROW_LEFT && CAN_SCROLL_LEFT) {
                    mpLayout->getAnim(ANIM_LEFT_ARROW_SELECT)->play();
                    start_lloaded();
                    change_state(STATE_LEFT_LOAD);
                }
                // Scroll to the right if pressed right arrow
                else if (btnNo == BTN_ARROW_RIGHT && CAN_SCROLL_RIGHT) {
                    mpLayout->getAnim(ANIM_RIGHT_ARROW_SELECT)->play();
                    start_rloaded();
                    change_state(STATE_RIGHT_LOAD);
                }
                else {
                    if (is_exist(btnNo)) {
                        // Button scene animation
                        Button* button = static_cast<Button*>(System::getScene(SCENE_BUTTON));
                        button->animation(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);
                        if (mFadeType == FADE_FROM_ADDRESS_EDIT) {
                            button->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);
                        }
                        else {
                            button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);
                        }

                        snd::getSystem()->startSE("WIPL_SE_DECIDE");

                        // Goodbye arrows.
                        if (mbRightArrowExit) {
                            mpLayout->getAnim(ANIM_RIGHT_ARROW_DISAPPEAR)->play();
                        }
                        if (mbLeftArrowExit) {
                            mpLayout->getAnim(ANIM_LEFT_ARROW_DISAPPEAR)->play();
                        }

                        // Save selected face ID
                        mSelectedFaceId = mFaceIds[btnNo + LOADED_MIIS];

                        // We are done!
                        change_state(STATE_DONE);

                        // Goodbye text balloons.
                        for (int i = 0; i < MAX_BALLOONS; i++) {
                            mpBalloons[i]->terminate();
                        }
                    }
                }
            }
        }

        int FaceSelect::get_button_no(const char* paneName) {
            int result = -1;
            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(mscButtonName[i], paneName) == 0) {
                    result = i;
                    break;
                }
            }
            return result;
        }

        BOOL FaceSelect::is_exist(int btnId) const {
            BOOL result = FALSE;
            if (btnId != BTN_ARROW_LEFT && btnId != BTN_ARROW_RIGHT) {
                result = mFaceIds[btnId + LOADED_MIIS] >= 0;
            }
            return result;
        }

        void FaceSelect::change_state(int state) {
            mPrevState = mState;
            mState = state;
        }

        void FaceSelect::set_page() {
            const wchar_t numbers[] = {'0','1','2','3','4','5','6','7','8','9'};

            wchar_t numStr[3] = L"";

            int index = 0;
            int num = mCurrentPage + 1;
            if (num >= 10) {
                index = 1;
                numStr[0] = numbers[(num / 10) % 10];
            }
            numStr[index++] = numbers[num % 10];
            numStr[index++] = 0;

            static_cast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_Page"))->SetString(numStr);
        }

        void FaceSelect::reset_gui() {
            for (int i = 0; i < BTN_MAX_FACE; i++) {
                mpGui->initPane(mpLayout->FindPaneByName(mscButtonName[i]));

                if (mbHovered[i] != FALSE) {
                    if (is_exist(i)) {
                        mpLayout->getAnim(i + ANIM_FOCUS_FACE_OUT)->play();
                    }
                    mbHovered[i] = FALSE;
                }
            }
        }

        void nigaoe_make_icon_cb_(nigaoe::Object* nigaoeObj, void* callbackWork) {
            FaceSelect::Face* face = static_cast<FaceSelect::Face*>(callbackWork);
            face->object = nigaoeObj;
            face->created = true;
        }

        void FaceSelect::set_face_pane(const char** facePaneList) {
            for (int i = 0; i < MAX_FACE_EACH_PAGE; i++) {
                nw4r::lyt::Pane* pane = mpLayout->FindPaneByName(facePaneList[i]);
                nw4r::lyt::Material* material = pane->FindMaterialByName(facePaneList[i]);

                if (mpFaces[mCachedPage][i].object != NULL) {
                    // Set mii face
                    pane->SetVisible(true);
                    material->SetTexture(GX_TEXMAP0, mpFaces[mCachedPage][i].object->getIconTexture());
                }
                else {
                    // Set "no mii" icon
                    GXTexObj texObj;
                    pane->SetVisible(false);
                    mpLayout->FindPaneByName(NO_MII_ICON)->FindMaterialByName(NO_MII_ICON)->GetTexture(&texObj, GX_TEXMAP0);
                    material->SetTexture(GX_TEXMAP0, texObj);
                }

                nigaoe::Object* object = mpFaces[mCachedPage][i].object;
                if (object != NULL) {
                    // Setup balloon text
                    mpBalloons[i]->init(object->getName(), RFL_NAME_LENGTH);
                }
                else {
                    mpBalloons[i]->terminate();
                }
            }
        }

        void FaceSelect::clear_face_pane(const char** facePaneList) {
            for (int i = 0; i < MAX_FACE_EACH_PAGE; i++) {
                GXTexObj texObj;

                // Set "no mii" icon
                nw4r::lyt::Pane* pane = mpLayout->FindPaneByName(facePaneList[i]);
                nw4r::lyt::Material* material = pane->FindMaterialByName(facePaneList[i]);
                mpLayout->FindPaneByName(NO_MII_ICON)->FindMaterialByName(NO_MII_ICON)->GetTexture(&texObj, GX_TEXMAP0);
                material->SetTexture(GX_TEXMAP0, texObj);
            }
        }

        void FaceSelect::destroy_object() {
            for (int i = 0; i < MAX_FACE_EACH_PAGE; i++) {
                if (mpFaces[!mCachedPage][i].object != NULL) {
                    delete mpFaces[!mCachedPage][i].object;
                    mpFaces[!mCachedPage][i].object = NULL;
                    mpFaces[!mCachedPage][i].created = false;
                    mpFaces[!mCachedPage][i].creating = false;
                }
            }
        }

        void FaceSelect::read_face() {
            for (int i = 0; i < MAX_FACE_EACH_PAGE; i++) {
                int index = i + LOADED_MIIS;
                if (mFaceIds[index] >= 0 && System::getMiiManager()->isAvalable(mFaceIds[index])) {
                    // Setup stage
                    mpFaces[mCachedPage][i].creating = true;
                    mpFaces[mCachedPage][i].created = false;
                    // Create!
                    System::getMiiManager()->create(System::getMem2App(), NIGAOE_ICON_SIZE, NIGAOE_ICON_SIZE, mFaceIds[index],
                                                    nigaoe_make_icon_cb_, (void*)&mpFaces[mCachedPage][i]);
                }
                else {
                    mpFaces[mCachedPage][i].creating = false;
                }
            }
        }

        void FaceSelectEvent::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            controller::Interface* con = reinterpret_cast<controller::Interface*>(data);

            switch (event) {
                // Pointer on button
                case ::gui::EventHandler::ON_POINT: {
                    mpInstance->start_point_event(paneName, con);
                    break;
                }
                // Pointer not on button anymore
                case ::gui::EventHandler::ON_LEFT: {
                    mpInstance->start_left_event(paneName);
                    break;
                }
                // Pointer click on button
                case ::gui::EventHandler::ON_TRIG: {
                    if (con->downTrg(controller::BTN_INTERACT)) {
                        if (mpInstance->mState == FaceSelect::STATE_NORMAL) {
                            mpInstance->start_trig_event(paneName);
                        }
                    }
                    break;
                }
            }
        }

        void FaceSelectButtonEvent::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            switch (event) {
                // Pointer click on button
                case ::gui::EventHandler::ON_TRIG: {
                    if (con->downTrg(controller::BTN_INTERACT)) {
                        if (mpInstance->mState == FaceSelect::STATE_NORMAL) {
                            Button* button = static_cast<Button*>(System::getScene(SCENE_BUTTON));

                            if (Button::cmpButtonName(paneName, Button::BTN_EXIT) == 0) {
                                snd::getSystem()->startSE("WIPL_SE_CANCEL");

                                // Button scene animation
                                button->animation(Button::IDANIM_SELECT_CALENDAR_EXIT);
                                button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);
                                if (mpInstance->mFadeType == FaceSelect::FADE_FROM_ADDRESS_EDIT) {
                                    button->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);
                                }
                                else {
                                    button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);
                                }

                                for (int i = 0; i < FaceSelect::MAX_BALLOONS; i++) {
                                    mpInstance->mpBalloons[i]->fadeoutForce();
                                }

                                // Done!
                                mpInstance->change_state(FaceSelect::STATE_DONE);
                            }
                        }
                    }

                    break;
                }
            }
        }
    }
}
