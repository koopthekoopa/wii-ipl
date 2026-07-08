#include "scene/channelEdit/iplChanAppBox.h"

#include "scene/channelEdit/iplChannelEdit.h"

namespace ipl {
    namespace scene {
        DECOMP_FORCE_LITERAL(iplChanAppBox_cpp, 0.5f);
        DECOMP_FORCE_LITERAL(iplChanAppBox_cpp, 2.0f);

        // FIXME: Figure out how to do this in a less fakematch-y way
        void SAVEDATA_BOX_floatHoisting(u32 in) {
            f32 c = in;
        }

        ChanAppBox::ChanAppBox(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(STATE_HIDDEN), mpThumbnail(NULL), mpBalloon(NULL), mbInitBalloon(false) {
            mpLayout = new (heap) layout::Object(heap, layoutFile, layoutDir, layoutFileName);

            add_animation("it_ObjChannelEdit_b_SaveDataIn.brlan", "G_Data");
            add_animation("it_ObjChannelEdit_b_SaveDataOut.brlan", "G_Data");
            add_animation("it_ObjChannelEdit_b_SaveDataFoucusIn.brlan", "G_Data");
            add_animation("it_ObjChannelEdit_b_SaveDataFoucusOut.brlan", "G_Data");

            mpLayout->finishBinding();

            set_visible("N_Data16x9", false);
            set_visible("N_Data4x3", false);

            mpGui = new gui::PaneManager(this, mpLayout->getDrawInfo(), NULL, NULL, true);
            mpGui->createLayoutScene(*mpLayout->getNW4RLyt());
            mpGui->setAllComponentTriggerTarget(false);

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Data_01"), true);
                add_anmpane("B_Data_01", get_animation(ANIM_DATA_FOCUS_IN), get_animation(ANIM_DATA_FOCUS_OUT));
            } else {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Data_00"), true);
                add_anmpane("B_Data_00", get_animation(ANIM_DATA_FOCUS_IN), get_animation(ANIM_DATA_FOCUS_OUT));
            }
        }

        ChanAppBox::~ChanAppBox() {
            delete mpLayout;
            delete mpGui;
        }

        void ChanAppBox::calc() {
            AnmPane* anmPane;

            mpLayout->calc();
            mpGui->calc();

            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL) {
                anmPane->calc();
            }

            if (mState != STATE_HIDDEN && mpThumbnail != NULL && mpThumbnail->getLytObj() != NULL) {
                nw4r::ut::Rect rect4x3;
                System::getProjectionRect4x3(&rect4x3);
                nw4r::ut::Rect rect16x9;
                System::getProjectionRect16x9(&rect16x9);

                f32 width4x3 = rect4x3.right - rect4x3.left;
                f32 width16x9 = rect16x9.right - rect16x9.left;
                f32 widescreenScale = width16x9 / width4x3;

                nw4r::math::VEC3 translate = get_translate(s_all_pane_name);
                if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                    translate.x *= widescreenScale;
                }

                mpThumbnail->getLytObj()->GetRootPane()->SetTranslate(translate);
                mpThumbnail->calc();

                nw4r::math::VEC2 scale = mpThumbnail->getLytObj()->GetRootPane()->GetScale();
                if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                    scale *= get_scale("N_Atari16x9").x;
                    scale *= get_scale("N_Data_01").x;
                } else {
                    scale *= get_scale("N_Atari4x3").x;
                    scale *= get_scale("N_Data_00").x;
                }
                mpThumbnail->getLytObj()->GetRootPane()->SetScale(scale);
            }

            switch (mState) {
                case STATE_HIDDEN:
                case STATE_IDLE: {
                    break;
                }
                case STATE_FADE_IN: {
                    on_fadein();
                    break;
                }
                case STATE_FADE_OUT: {
                    on_fadeout();
                    break;
                }
            }
        }

        const f32 offsets[2][2] = {
            {38.400000f, 28.800001f},
            {51.000004f, 28.800001f},
        };

        void ChanAppBox::draw() {
            if (mState == STATE_HIDDEN)
                return;
            mpLayout->draw();

            set_visible("DataBaseCover_00", false);
            set_visible("DataBaseCover_01", false);

            ChannelEdit* sceneChannelEdit = get_channel_edit();
            if (sceneChannelEdit->getState() == ChannelEdit::STATE_ON_SCROLL_R || sceneChannelEdit->getState() == ChannelEdit::STATE_ON_SCROLL_L)
                return;
            if (mState == STATE_FADE_IN)
                return;
            if (mState == STATE_FADE_OUT)
                return;

            if (!get_visible("N_Data4x3") && !get_visible("N_Data16x9"))
                return;

            if (mpThumbnail == NULL) {
                return;
            }
            if (mpThumbnail->getLytObj() == NULL) {
                return;
            }

            f32 fScisHalfW = offsets[SCGetAspectRatio()][0];
            f32 fScisHalfH = offsets[SCGetAspectRatio()][1];

            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            GXRenderModeObj* renderModeObj = System::getRenderModeObj();

            u32 fbW = renderModeObj->fbWidth;
            u32 efbH = renderModeObj->efbHeight;

            nw4r::math::VEC3 translate = mpThumbnail->getLytObj()->GetRootPane()->GetTranslate();

            f32 scisL = (translate.x - fScisHalfW) * (fbW / projRect.GetWidth()) + fbW / 2.f;
            f32 scisT = efbH / 2.f - translate.y - fScisHalfH;
            f32 scisW = fScisHalfW * 2.f * (fbW / projRect.GetWidth());
            f32 scisH = fScisHalfH * 2.f;
            GXSetScissor(scisL, scisT, scisW, scisH);

            mpThumbnail->getLytObj()->GetRootPane()->CalculateMtx(*mpLayout->getDrawInfo());
            mpThumbnail->draw();

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                set_visible("DataBaseCover_01", true);
                mpLayout->draw("DataBaseCover_01");
            } else {
                set_visible("DataBaseCover_00", true);
                mpLayout->draw("DataBaseCover_00");
            }

            GXSetScissor(0, 0, System::getRenderModeObj()->fbWidth, System::getRenderModeObj()->efbHeight);
        }

        void ChanAppBox::update() {
            mpGui->update();
        }

        void ChanAppBox::anmFadein() {
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                set_visible("N_Data16x9", true);
                set_visible("N_Data4x3", false);
            } else {
                set_visible("N_Data16x9", false);
                set_visible("N_Data4x3", true);
            }
            do_animation(ANIM_DATA_IN, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADE_IN;
        }

        void ChanAppBox::anmFadeout() {
            if (mpBalloon != NULL) {
                mpBalloon->terminate();
            }
            do_animation(ANIM_DATA_OUT, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADE_OUT;
        }

        void ChanAppBox::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            const char* paneName = paneComponent->getPane()->GetName();

            controller::Interface* con = (controller::Interface*)data;

            switch (event) {
                case ON_POINT: {
                    AnmPane* anmPane = get_anmpane(paneName);
                    if (anmPane == NULL)
                        break;

                    anmPane->incHoverCount();
                    get_channel_edit()->onPoint(anmPane);

                    if (mpBalloon == NULL || mpThumbnail == NULL || mbInitBalloon) {
                        break;
                    }

                    mbInitBalloon = true;
                    if (mpThumbnail->getIsCorrupt()) {
                        mpBalloon->init(L"???");
                    } else {
                        if (mpThumbnail->getMatchesTmpTitle()) {
                            mpBalloon->init(System::getMessage(MESG_CHAN_EDIT_SD_CARD_MENU));
                        } else {
                            mpBalloon->init(mpThumbnail->getTitle(0));
                        }
                    }
                    mpBalloon->fadein();
                    break;
                }
                case ON_MOVE: {
                    AnmPane* anmPane = get_anmpane(paneName);
                    if (anmPane == NULL) {
                        break;
                    }
                    if (mpBalloon == NULL || mpThumbnail == NULL) {
                        break;
                    }
                    if (mbInitBalloon) {
                        break;
                    }

                    mbInitBalloon = true;
                    if (mpThumbnail->getIsCorrupt()) {
                        mpBalloon->init(L"???");
                    } else {
                        if (mpThumbnail->getMatchesTmpTitle()) {
                            mpBalloon->init(System::getMessage(MESG_CHAN_EDIT_SD_CARD_MENU));
                        } else {
                            mpBalloon->init(mpThumbnail->getTitle(0));
                        }
                    }

                    mpBalloon->fadein();
                    break;
                }
                case ON_LEFT: {
                    AnmPane* anmPane = get_anmpane(paneName);
                    if (anmPane == NULL) {
                        break;
                    }

                    anmPane->decHoverCount();
                    get_channel_edit()->onLeft(anmPane);

                    mbInitBalloon = false;
                    if (mpBalloon == NULL || mpThumbnail == NULL) {
                        break;
                    }

                    mpBalloon->fadeout();
                    break;
                }
                case ON_TRIG: {
                    if (!con->downTrg(controller::BTN_INTERACT)) {
                        break;
                    }

                    AnmPane* anmPane = get_anmpane(paneName);
                    if (anmPane == NULL || mpThumbnail == NULL)
                        break;

                    get_channel_edit()->onTrig(this);
                    break;
                }
            }
        }

        void ChanAppBox::clearEvent() {
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                clear_anmpane("B_Data_01");
            } else {
                clear_anmpane("B_Data_00");
            }

            if (mpBalloon != NULL) {
                mpBalloon->terminate();
                mbInitBalloon = false;
            }
        }

        ChannelEdit* ChanAppBox::get_channel_edit() {
            return (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
        }

        WAIT_FOR_ANIM_STATE(ChanAppBox::on_fadein, ANIM_DATA_IN, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppBox::on_fadeout, ANIM_DATA_OUT, {
            set_visible("N_Data16x9", false);
            set_visible("N_Data4x3", false);
            mState = STATE_IDLE;
        });

        char ChanAppBox::s_all_pane_name[6] = "N_All";
    }  // namespace scene
}  // namespace ipl
