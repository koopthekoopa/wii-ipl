#include "scene/channelEdit/iplChanAppBox.h"

#include "scene/channelEdit/iplChannelEdit.h"

namespace ipl {
    namespace scene {
        enum SavedataBoxAnimIdx {
            ANIM_DATA_IN = 0x0,         // 0x0
            ANIM_DATA_OUT = 0x1,        // 0x1
            ANIM_DATA_FOCUS_IN = 0x2,   // 0x2
            ANIM_DATA_FOCUS_OUT = 0x3,  // 0x3
        };

        // FIXME: Figure out how to do this in a less fakematch-y way
        void SAVEDATA_BOX_floatHoisting(u32 in) {
            f32 a = 0.5f;
            f32 b = 2.0f;
            f32 c = in;
        }

        ChanAppBox::ChanAppBox(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(BOX_STATE_HIDDEN), pThumbnail(NULL), pTextBalloon(NULL),
              mTextBalloonInitialized(false) {
            pLytObj = new (heap) layout::Object(heap, lytFile, lytFolder, lytFileName);

            add_animation("it_ObjChannelEdit_b_SaveDataIn.brlan", "G_Data");
            add_animation("it_ObjChannelEdit_b_SaveDataOut.brlan", "G_Data");
            add_animation("it_ObjChannelEdit_b_SaveDataFoucusIn.brlan", "G_Data");
            add_animation("it_ObjChannelEdit_b_SaveDataFoucusOut.brlan", "G_Data");

            pLytObj->finishBinding();

            set_visible("N_Data16x9", false);
            set_visible("N_Data4x3", false);

            pPaneManager = new ipl::gui::PaneManager(this, pLytObj->getDrawInfo(), NULL, NULL, true);
            pPaneManager->createLayoutScene(*pLytObj->getNW4RLyt());
            pPaneManager->setAllComponentTriggerTarget(false);

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_Data_01"), true);
                add_anmpane("B_Data_01", get_animation(ANIM_DATA_FOCUS_IN), get_animation(ANIM_DATA_FOCUS_OUT));
            } else {
                pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_Data_00"), true);
                add_anmpane("B_Data_00", get_animation(ANIM_DATA_FOCUS_IN), get_animation(ANIM_DATA_FOCUS_OUT));
            }
        }

        // static wchar_t CORRUPT_TITLE[] = L"???";

        ChanAppBox::~ChanAppBox() {
            delete pLytObj;
            delete pPaneManager;
        }

        void ChanAppBox::calc() {
            AnmPane* anmPane;

            pLytObj->calc();
            pPaneManager->calc();

            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != 0)
                anmPane->calc();

            if (mState != BOX_STATE_HIDDEN && pThumbnail != NULL && pThumbnail->getLytObj() != NULL) {
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

                pThumbnail->getLytObj()->GetRootPane()->SetTranslate(translate);
                pThumbnail->calc();

                nw4r::math::VEC2 scale = pThumbnail->getLytObj()->GetRootPane()->GetScale();
                if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                    scale *= get_scale("N_Atari16x9").x;
                    scale *= get_scale("N_Data_01").x;
                } else {
                    scale *= get_scale("N_Atari4x3").x;
                    scale *= get_scale("N_Data_00").x;
                }
                pThumbnail->getLytObj()->GetRootPane()->SetScale(scale);
            }

            switch (mState) {
                case BOX_STATE_HIDDEN:
                case BOX_STATE_IDLE:
                    break;
                case BOX_STATE_FADEIN:
                    on_fadein();
                    break;
                case BOX_STATE_FADEOUT:
                    on_fadeout();
                    break;
            }
        }

        const f32 offsets[2][2] = {
            {38.400000f, 28.800001f},
            {51.000004f, 28.800001f},
        };
        void ChanAppBox::draw() {
            if (mState == BOX_STATE_HIDDEN)
                return;
            pLytObj->draw();

            set_visible("DataBaseCover_00", false);
            set_visible("DataBaseCover_01", false);

            ChannelEdit* sceneChannelEdit = get_channel_edit();
            if (sceneChannelEdit->getState() == ChannelEdit::CHANEDIT_STATE_ON_SCROLL_R ||
                sceneChannelEdit->getState() == ChannelEdit::CHANEDIT_STATE_ON_SCROLL_L)
                return;
            if (mState == BOX_STATE_FADEIN)
                return;
            if (mState == BOX_STATE_FADEOUT)
                return;

            if (!get_visible("N_Data4x3") && !get_visible("N_Data16x9"))
                return;

            if (pThumbnail == NULL)
                return;
            if (pThumbnail->getLytObj() == NULL)
                return;

            f32 fScisHalfW;
            f32 fScisHalfH;
            fScisHalfW = offsets[SCGetAspectRatio()][0];
            fScisHalfH = offsets[SCGetAspectRatio()][1];

            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            GXRenderModeObj* renderModeObj = System::getRenderModeObj();

            u32 fbW = renderModeObj->fbWidth;
            u32 efbH = renderModeObj->efbHeight;

            nw4r::math::VEC3 translate = pThumbnail->getLytObj()->GetRootPane()->GetTranslate();

            f32 scisL = (translate.x - fScisHalfW) * (fbW / projRect.GetWidth()) + fbW / 2.f;
            f32 scisT = efbH / 2.f - translate.y - fScisHalfH;
            f32 scisW = fScisHalfW * 2.f * (fbW / projRect.GetWidth());
            f32 scisH = fScisHalfH * 2.f;
            GXSetScissor(scisL, scisT, scisW, scisH);

            pThumbnail->getLytObj()->GetRootPane()->CalculateMtx(*pLytObj->getDrawInfo());
            pThumbnail->draw();

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                set_visible("DataBaseCover_01", true);
                pLytObj->draw("DataBaseCover_01");
            } else {
                set_visible("DataBaseCover_00", true);
                pLytObj->draw("DataBaseCover_00");
            }

            GXSetScissor(0, 0, System::getRenderModeObj()->fbWidth, System::getRenderModeObj()->efbHeight);
        }

        void ChanAppBox::update() {
            pPaneManager->update();
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
            mState = BOX_STATE_FADEIN;
        }

        void ChanAppBox::anmFadeout() {
            if (pTextBalloon != NULL)
                pTextBalloon->terminate();
            do_animation(ANIM_DATA_OUT, ANIM_TYPE_FORWARD, true);
            mState = BOX_STATE_FADEOUT;
        }

        void ChanAppBox::onEvent(u32 compId, u32 event, void* data) {
            const char* paneName;
            gui::PaneComponent* paneComponent;
            // ChannelEdit* sceneChannelEdit;
            // AnmPane* anmPane;

            paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            paneName = paneComponent->getPane()->GetName();

            switch (event) {
                case ON_POINT: {
                    AnmPane* anmPane = get_anmpane(paneName);
                    if (anmPane == NULL)
                        break;

                    anmPane->incHoverCount();
                    get_channel_edit()->onPoint(anmPane);

                    if (pTextBalloon == NULL || pThumbnail == NULL || mTextBalloonInitialized)
                        break;

                    mTextBalloonInitialized = true;
                    if (pThumbnail->getIsCorrupt()) {
                        pTextBalloon->init(L"???");
                    } else {
                        if (pThumbnail->getMatchesTmpTitle()) {
                            pTextBalloon->init(System::getMessage(MESG_CHAN_EDIT_SD_CARD_MENU));
                        } else {
                            pTextBalloon->init(pThumbnail->getTitle(0));
                        }
                    }
                    pTextBalloon->fadein();
                    break;
                }

                case ON_MOVE: {
                    AnmPane* anmPane = get_anmpane(paneName);
                    if (anmPane == NULL)
                        break;
                    if (pTextBalloon == NULL || pThumbnail == NULL)
                        break;
                    if (mTextBalloonInitialized)
                        break;

                    mTextBalloonInitialized = true;
                    if (pThumbnail->getIsCorrupt()) {
                        pTextBalloon->init(L"???");
                    } else {
                        if (pThumbnail->getMatchesTmpTitle()) {
                            pTextBalloon->init(System::getMessage(MESG_CHAN_EDIT_SD_CARD_MENU));
                        } else {
                            pTextBalloon->init(pThumbnail->getTitle(0));
                        }
                    }

                    pTextBalloon->fadein();
                    break;
                }

                case ON_LEFT: {
                    AnmPane* anmPane = get_anmpane(paneName);
                    if (anmPane == NULL)
                        break;

                    anmPane->decHoverCount();
                    get_channel_edit()->onLeft(anmPane);

                    mTextBalloonInitialized = false;
                    if (pTextBalloon == NULL || pThumbnail == NULL)
                        break;

                    pTextBalloon->fadeout();
                    break;
                }

                case ON_TRIG: {
                    if (!((controller::Interface*)data)->downTrg(controller::BTN_INTERACT))
                        break;

                    AnmPane* anmPane = get_anmpane(paneName);
                    if (anmPane == NULL || pThumbnail == NULL)
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

            if (pTextBalloon != NULL) {
                pTextBalloon->terminate();
                mTextBalloonInitialized = false;
            }
        }

        ChannelEdit* ChanAppBox::get_channel_edit() {
            return (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
        }

        WAIT_FOR_ANIM_STATE(ChanAppBox::on_fadein, ANIM_DATA_IN, mState = BOX_STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppBox::on_fadeout, ANIM_DATA_OUT, {
            set_visible("N_Data16x9", false);
            set_visible("N_Data4x3", false);
            mState = BOX_STATE_IDLE;
        });

        char ChanAppBox::s_all_pane_name[6] = "N_All";
    }  // namespace scene
}  // namespace ipl
