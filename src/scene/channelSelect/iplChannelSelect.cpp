#include "iplSceneUI.h"

#include "scene/channelSelect/iplChannelSelect.h"

#include "iplSound.h"
#include "iplSystem.h"

#include "utility/iplCSFlags.h"

#include "scene/board/iplBoard.h"
#include "scene/button/iplButton.h"
#include "scene/channelTitle/iplChannelTitle.h"

#include <cstring>

// #pragma sym on

namespace ipl {
    namespace scene {
        static Board* getBoard() {
            return (Board*)System::getSceneManager()->getScene(SCENE_BOARD);
        }
        static Button* getButton() {
            return (Button*)System::getSceneManager()->getScene(SCENE_BUTTON);
        }
        static ChannelTitle* getChannelTitle() {
            return (ChannelTitle*)System::getSceneManager()->getScene(SCENE_CHANNEL_TITLE);
        }

        BOOL ChannelSelect::msInitFlag = FALSE;

        // clang-format off
        const char* ChannelSelect::mscChanPaneNames[CHAN_SCROLL_MAX][MAX_CHANNEL_INDEX] = {
            {
                "" /*"N_Ch_a01"*/,
                "" /*"N_Ch_a02"*/,
                "" /*"N_Ch_a03"*/,
                "N_Ch_a04",
                "" /*"N_Ch_a05"*/,
                "" /*"N_Ch_a06"*/,
                "" /*"N_Ch_a07"*/,
                "N_Ch_a08",
                "" /*"N_Ch_a09"*/,
                "" /*"N_Ch_a10"*/,
                "" /*"N_Ch_a11"*/,
                "N_Ch_a12"
            },
        {
                "N_Ch_b01",
                "N_Ch_b02",
                "N_Ch_b03",
                "N_Ch_b04",
                "N_Ch_b05",
                "N_Ch_b06",
                "N_Ch_b07",
                "N_Ch_b08",
                "N_Ch_b09",
                "N_Ch_b10",
                "N_Ch_b11",
                "N_Ch_b12"
            },
            {
                "N_Ch_c01",
                "N_Ch_c02",
                "N_Ch_c03",
                "N_Ch_c04",
                "N_Ch_c05",
                "N_Ch_c06",
                "N_Ch_c07",
                "N_Ch_c08",
                "N_Ch_c09",
                "N_Ch_c10",
                "N_Ch_c11",
                "N_Ch_c12"
            },
            {
                "N_Ch_d01",
                "N_Ch_d02",
                "N_Ch_d03",
                "N_Ch_d04",
                "N_Ch_d05",
                "N_Ch_d06",
                "N_Ch_d07",
                "N_Ch_d08",
                "N_Ch_d09",
                "N_Ch_d10",
                "N_Ch_d11",
                "N_Ch_d12"
            },
            {
                "N_Ch_e01",
                "" /*"N_Ch_e02"*/,
                "" /*"N_Ch_e03"*/,
                "" /*"N_Ch_e04"*/,
                "N_Ch_e05",
                "" /*"N_Ch_e06"*/,
                "" /*"N_Ch_e07"*/,
                "" /*"N_Ch_e08"*/,
                "N_Ch_e09",
                "" /*"N_Ch_e10"*/,
                "" /*"N_Ch_e11"*/,
                "" /*"N_Ch_e12"*/
            }
        };
        
        const char* ChannelSelect::mscBasePaneNames[CHAN_SCROLL_MAX] = {
            "BaseMask0",
            "BaseMask1",
            "BaseMask2",
            "BaseMask3",
            "BaseMask4"
        };
        
        const char* ChannelSelect::mscUnk0PaneNames[CHAN_SCROLL_MAX] = {
            "Picture_00",
            "Picture_01",
            "Picture_02",
            "Picture_03",
            "Picture_04"
        };
        
        const char* ChannelSelect::mscUnk1PaneNames[CHAN_SCROLL_MAX] = {
            "Edge0",
            "Edge1",
            "Edge2",
            "Edge3",
            "Edge4"
        };
        
        const char* ChannelSelect::mscClockPaneNames[3] = {
            "N_Clock0",
            "N_Clock1",
            "N_Clock2"
        };
        
        const char* ChannelSelect::mscMaskPaneName ="ChMask";

        static const f32 cfChanThumbOfss[2][2] = {
            {
                64.0f,
                48.0f,
            },
            {
                85.0f,
                48.0f,
            }
        };

        // clang-format on

#define FOREACH_CHANNEL_OBJ(chanObj) while (chanObj = (ChannelObj*)nw4r::ut::List_GetNext(&mChanList, chanObj), chanObj != NULL)

        ChannelSelect::ChannelSelect(EGG::Heap* heap, int startup) : scene::FaderSceneBase(heap), mpDiskChanObj(NULL) {
            mpButtonEvent = new CsChanSelButtonEventHandler(this);
            mpSDMenuEvent = new CsChanSelSDMenuEventHandler(this);

            mState = STATE_NONE;

            mStartType = startup;

            mChanThumbOff_X = cfChanThumbOfss[SCGetAspectRatio()][0];
            mChanThumbOff_Y = cfChanThumbOfss[SCGetAspectRatio()][1];

            mDiskState = DISK_STATE_READ;
            mpDiskID = NULL;
            mpDiskMaker = NULL;

            // mClock = clock();

            mPrevSDState = 0;

            unk_0x180 = 1;
            unk_0x184 = false;
            mpCurrentRsoChanObj = NULL;
            unk_0x18C = NULL;

            mMaxPages = MAX_CHANNEL_PAGE;

            mCurrentPage = System::getSaveData()->getPrevPage();
            if (mCurrentPage == 0) {
                mbLeftArrowVisible = false;
            } else {
                mbLeftArrowVisible = true;
            }

            if (mCurrentPage == mMaxPages + -1) {
                mbRightArrowVisible = false;
            } else {
                mbRightArrowVisible = true;
            }

            setSceneParentFlags(SCN_PARENTFLAG_DRAW | SCN_PARENTFLAG_CALC);

            unk_0xD8 = math::VEC3(0.0f, 0.0f, 0.0f);
            unk_0xE4 = math::VEC2(1.0f, 1.0f);

            nw4r::ut::Rect proj4x3;
            System::getProjectionRect4x3(&proj4x3);
            nw4r::ut::Rect proj16x9;
            System::getProjectionRect16x9(&proj16x9);

            f32 scale16x9 = proj16x9.GetWidth() / proj4x3.GetWidth();
            mScaleAdjust = (u8)SCGetAspectRatio() == SC_ASPECT_RATIO_16x9 ? scale16x9 : 1.0f;

            // ??? (although nothing really happens)
            memset(&mDragPos, 0, 0x34);

            unk_0x17C = EGG::ExpHeap::create(0x3D28, heap, MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
            unk_0x16C = EGG::UnitHeap::create(EGG::UnitHeap::calcHeapSize(0x212B8, 0x31, 32), 0x212B8, System::getMem2App(), 32, 2);

            nw4r::ut::List_Init(&mChanList, 0);
            makeChannelList(mCurrentPage, true);
            setupDiskChanObj();

            if (mStartType != START_FROM_CHJUMP) {
                TVRCManager::getHandle()->setEnable(TRUE);
            }
        }

        ChannelSelect::~ChannelSelect() {
        }

        void ChannelSelect::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "chanSel.ash");
            mpDiskThumbFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "diskThum.ash");

            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                chanObj->prepare();
            }
        }

        void ChannelSelect::create() {
            mpDiskHeap = EGG::ExpHeap::create(0x19100, getSceneHeap(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
            mpCursorHeap = EGG::ExpHeap::create(0x25900, getSceneHeap(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
            mpBalloonHeap = EGG::ExpHeap::create(0x32100, getSceneHeap(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);

            createChannelModulesHeap();

            for (int page = 0; page < mMaxPages; page++) {
                for (int index = 0; index < MAX_CHANNEL_INDEX; index++) {
                    System::getChannelManager()->clearRsoExBuf(page, index);
                }
            }

            mpModuleThread = new (System::getMem2App(), 32) channel::RsoThread(mpModuleWorkHeap);

            System::getChannelManager()->setDiskChannelName();

            createBaseLayout();
            createDiskLayout();

            if (mCurrentPage < mMaxPages - 1) {
                makeChannelList(mCurrentPage + 1, false);
            }
            if (mCurrentPage > 0) {
                makeChannelList(mCurrentPage - 1, false);
            }

            createChannelThumbnails();
            calcDiskLayout();
            createChanMoveLayout();

            mClock.init(getSceneHeap(), mpLayoutFile);

            mState = STATE_CREATE;

            utility::CSFlags::UpdateFlagsFile();
        }

        void ChannelSelect::calcCommon() {
            if (mState == STATE_CREATE && !mpLayout->isPlaying(0)) {
                Button* button = getButton();
                if (button != NULL) {
                    button->setEventHandler(mpButtonEvent);
                    if (!System::isSafeMode()) {
                        button->get_sd_menu_btn()->setEventHandler(mpSDMenuEvent);
                    }

                    mState = STATE_FADING_IN;

                    if (mStartType == START_NORMAL) {
                        if (mCurrentPage > 0) {
                            button->initArrowAppearance(Button::ARROW_BTN_LEFT, true);
                        } else {
                            button->initArrowAppearance(Button::ARROW_BTN_LEFT, false);
                        }
                        if (mMaxPages > 1 && mCurrentPage < mMaxPages - 1) {
                            button->initArrowAppearance(Button::ARROW_BTN_RIGHT, true);
                        } else {
                            button->initArrowAppearance(Button::ARROW_BTN_RIGHT, false);
                        }

                        if (!msInitFlag) {
                            snd::getSystem()->startSE("WIPL_SE_WII_START");
                            msInitFlag = snd::getSystem()->startBGM("WIPL_BGM_MENU");
                        }
                    } else if (mStartType == START_FROM_BOARD) {
                        if (mCurrentPage > 0) {
                            button->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                        }
                        if (mMaxPages > 1 && mCurrentPage < mMaxPages - 1) {
                            button->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                        }
                        if (!System::isSafeMode()) {
                            if (getBoard()->getSDState() == BoardSD::SD_STATE_INSERTED) {
                                button->get_sd_menu_btn()->toggle_insert(TRUE);
                            } else {
                                button->get_sd_menu_btn()->toggle_insert(FALSE);
                            }
                            button->animation(Button::IDANIM_SD_BUTTON_BTN_IN);
                        }
                    } else if (mStartType == START_FROM_CHJUMP) {
                        mbLeftArrowVisible = false;
                        mbRightArrowVisible = false;
                    }
                }
            }

            if (mState == STATE_FADING_IN && System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                mState = STATE_NORMAL;
            }

            mpLayout->calc();
            mpGui->calc();

            updateDiskState();
            calcChannelModules();
            calcChannelThumbnails();

            mpMoveLytMask->calc();
            mpMoveLytObject->calc();
            mpMoveLytDrop->calc();
            unk_0x2C4->calc();

            mClock.calc();

            s32 sdState = getBoard()->getSDState();

            if (sdState != mPrevSDState && !System::isSafeMode()) {
                if (sdState == 1) {
                    getButton()->get_sd_menu_btn()->toggle_insert(TRUE);
                } else {
                    getButton()->get_sd_menu_btn()->toggle_insert(FALSE);
                }

                switch (mState) {
                    case STATE_NORMAL_DONE_FADE_ZOOM:
                    case STATE_INACTIVE:
                    case STATE_NORMAL_RESTART: {
                        break;
                    }
                    case STATE_NORMAL_FADE_ZOOM:
                    case STATE_CHANNEL_TITLE:
                    case STATE_NORMAL_WAIT_LOADING:
                    case STATE_START_SETTING_SCENE:
                    case STATE_BOARD_SCENE:
                    case STATE_START_BOARD_SCENE: {
                        break;
                    }
                    case STATE_NONE: {
                        break;
                    }
                    case STATE_CREATE:
                    case STATE_FADING_IN: {
                        if (mStartType == START_FROM_BOARD) {
                            break;
                        }
                    }
                    case STATE_NORMAL:
                    default: {
                        if (sdState == 1 && mPrevSDState) {
                            if (!getButton()->playingSdAnim(40)) {
                                snd::getSystem()->startSE("WIPL_SE_SDCARD_IN");
                                getButton()->animation(Button::IDANIM_SD_BUTTON_INSERT);
                            }
                        } else if (mPrevSDState) {
                            snd::getSystem()->startSE("WIPL_SE_SDCARD_OUT");
                        }
                        break;
                    }
                }
            }

            mPrevSDState = sdState;
        }

        FaderSceneCommand ChannelSelect::calcFadein() {
            return mpLayout->isPlaying(0) ? FADER_SCN_CONTINUE : FADER_SCN_NEXT;
        }

        FaderSceneCommand ChannelSelect::calcNormal() {
            int state = mState;
            if (mState == STATE_INACTIVE) {
                return FADER_SCN_CONTINUE;
            }

            switch (state) {
                case STATE_NORMAL: {
                    calcNormalNormal();
                    break;
                }
                case STATE_PREP_LEFT_PAGE_SCROLL:
                case STATE_PREP_RIGHT_PAGE_SCROLL: {
                    calcNormalWaitScrl();
                    break;
                }
                case STATE_LEFT_PAGE_SCROLL:
                case STATE_RIGHT_PAGE_SCROLL: {
                    calcNormalScrl();
                    break;
                }
                case STATE_START_BOARD_SCENE: {
                    tryToStartBoardScene();
                    break;
                }
                case STATE_NORMAL_WAIT_LOADING: {
                    calcNormalWaitLoading();
                    break;
                }
                case STATE_NORMAL_FADE_ZOOM: {
                    calcNormalFadeOutZoom();
                    break;
                }
                case STATE_NORMAL_DONE_FADE_ZOOM: {
                    mState = STATE_INACTIVE;
                    break;
                }
                case STATE_NORMAL_RESTART: {
                    calcNormalRestart();
                    break;
                }
                case STATE_NORMAL_SAFE_MODE_DIALOG: {
                    calcNormalSafeModeDialog();
                    break;
                }
                case STATE_NORMAL_GRAB: {
                    calcNormalGrab();
                    break;
                }
                case STATE_NORMAL_DRAG: {
                    calcNormalDrag();
                    break;
                }
                case STATE_NORMAL_RELEASE_WAIT: {
                    calcNormalReleaseWait();
                    break;
                }
                case STATE_NORMAL_RELEASE: {
                    calcNormalRelease();
                    break;
                }
                case STATE_NORMAL_MOVE_CHAN_IN: {
                    calcNormalMoveChanIn();
                    break;
                }
                case STATE_NORMAL_MOVE_CHAN_SAVE: {
                    calcNormalMoveChanSave();
                    break;
                }
                case STATE_NORMAL_MOVE_CHAN_OUT: {
                    calcNormalMoveChanOut();
                    break;
                }
                case STATE_DRAG_SCROLL_LEFT:
                case STATE_DRAG_SCROLL_RIGHT: {
                    calcNormalDragScrl();
                    break;
                }
            }

            if (state == STATE_NORMAL) {
                if (mState != STATE_NORMAL && mState != STATE_NORMAL_GRAB) {
                    int page, index;
                    channel::Manager::getCurrentChannel(&page, &index);

                    ChannelObj* chanObj = NULL;
                    FOREACH_CHANNEL_OBJ(chanObj) {
                        int chanPage = chanObj->mChanPage;
                        int chanIndex = chanObj->mChanIndex;
                        if (chanPage == mCurrentPage) {
                            if (mState != STATE_NORMAL_WAIT_LOADING || chanIndex != index) {
                                chanObj->initCursorAnim(TRUE);
                            }
                            chanObj->initBalloonAnim(TRUE);
                        }
                    }

                    for (int i = 0; i < 12; i++) {
                        mpGui->initPane(getChannelBasePane(i));
                    }
                }
            }

            if (mState == STATE_BOARD_SCENE || mState == STATE_START_SETTING_SCENE) {
                unk_0x184 = true;
                unk_0x185 = true;
                return FADER_SCN_NEXT;
            } else {
                return FADER_SCN_CONTINUE;
            }
        }

        void ChannelSelect::initCalcFadeout() {
        }

        FaderSceneCommand ChannelSelect::calcFadeout() {
            FaderSceneCommand result = FADER_SCN_CONTINUE;

            if (isPageCreatedAllDone(mCurrentPage)) {
                if (mState == STATE_BOARD_SCENE) {
                    result = !mpLayout->isPlaying(0) ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
                } else if (mState == STATE_START_SETTING_SCENE) {
                    result = System::getFader()->getStatus() == EGG::Fader::PREPARE_IN ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
                }
            } else {
                result = FADER_SCN_CONTINUE;
            }

            if (!unkBool()) {
                result = FADER_SCN_CONTINUE;
            }

            return result;
        }

        void ChannelSelect::draw() {
            if (mState != STATE_INACTIVE && System::getSceneManager()->onDrawLayer(scene::DRAW_LAYER_DEFAULT)) {
                if (mState == STATE_NORMAL_FADE_ZOOM || mState == STATE_NORMAL_DONE_FADE_ZOOM || mState == STATE_NORMAL_RESTART) {
                    utility::Graphics::setOrthoTransAndScale(unk_0xD8, unk_0xE4);
                }
                utility::Graphics::setOrtho();

                for (int i = 0; i < CHAN_SCROLL_MAX; i++) {
                    nw4r::lyt::Pane* pane = mpLayout->FindPaneByName(mscBasePaneNames[i]);
                    pane->SetVisible(true);
                    mpLayout->draw(pane);
                    pane->SetVisible(false);
                }

                drawChannelThumbnails();
                setChanFrameVisibility();

                GXSetScissor(0, 0, System::getRenderModeObj()->fbWidth, System::getRenderModeObj()->efbHeight);

                nw4r::lyt::Pane* maskPane = mpLayout->FindPaneByName(mscMaskPaneName);
                maskPane->SetVisible(false);

                mpLayout->draw();
                mpDiskInOutLyt->draw();

                for (int i = 0; i < CLOCK_MAX; i++) {
                    nw4r::lyt::Pane* pane = mpLayout->FindPaneByName(mscClockPaneNames[i]);
                    mClock.draw(pane);
                }

                drawChannelOthers();

                maskPane->SetVisible(true);

                mpLayout->draw(maskPane);
                mpMoveLytObject->draw();
            } else if (mState == STATE_INACTIVE && System::getSceneManager()->onDrawLayer(scene::DRAW_LAYER_DEFAULT)) {
                utility::Graphics::setOrtho();

                GXColor color = {0, 0, 0, 255};
                nw4r::ut::Rect pos;
                System::getProjectionRect(&pos);

                utility::Graphics::drawPolygon(pos, color);
            }
        }

        void ChannelSelect::destroy() {
            System::getSaveData()->setLastPrevPage(mCurrentPage);

            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                nw4r::ut::List_Remove(&mChanList, chanObj);
                destroyChannelObj(chanObj);
                chanObj = NULL;
            }

            unk_0x16C->destroy();

            for (int i = 0; i < 49; i++) {
                mpModuleHeaps[i]->destroy();
            }

            delete mpModuleThread;

            mpModuleWorkHeap->destroy();
            unk_0x17C->destroy();
            mpDiskHeap->destroy();
            mpCursorHeap->destroy();
            mpBalloonHeap->destroy();
        }

        BOOL ChannelSelect::isFirstCall() const {
            return !mpCurrentRsoChanObj->mbModuleTerminated;
        }

        void ChannelSelect::getRsoExBufData(void* rsoExBuf) const {
            memcpy(rsoExBuf, System::getChannelManager()->getChannel(mpCurrentRsoChanObj->mChanPage, mpCurrentRsoChanObj->mChanIndex).rsoExBuf,
                   channel::RSO_EXTRA_BUFFER_LENGTH);
        }

        void ChannelSelect::setRsoExBufData(const void* rsoExBuf) {
            memcpy(System::getChannelManager()->getChannel(mpCurrentRsoChanObj->mChanPage, mpCurrentRsoChanObj->mChanIndex).rsoExBuf, rsoExBuf,
                   channel::RSO_EXTRA_BUFFER_LENGTH);
        }

        void ChannelSelect::getRsoTitleDataPath(char* dataPath) const {
            int page = mpCurrentRsoChanObj->mChanPage;
            int index = mpCurrentRsoChanObj->mChanIndex;
            sprintf(dataPath, "/title/%08x/%08x/data/", (u32)ES_TITLE_TYPE(System::getChannelManager()->getTitleID(page, index)),
                    (u32)ES_TITLE_CODE(System::getChannelManager()->getTitleID(page, index)));
        }

        layout::Animator* ChannelSelect::getRsoAnimator(int idx) const {
            return mpCurrentRsoChanObj->mpModuleAnims[idx];
        }

        BOOL ChannelSelect::isStartAnimFinished() const {
            BOOL result = TRUE;
            layout::Animator* anim = mpCurrentRsoChanObj->mpThumbAnim;
            if (anim != NULL && anim->isPlaying()) {
                result = FALSE;
            }
            return result;
        }

        void* ChannelSelect::allocFromRsoExHeap(u32 size, int align) {
            return mpCurrentRsoChanObj->mpModuleHeap->alloc(size, align);
        }

        void ChannelSelect::freeToRsoExHeap(void* buffer) {
            if (buffer) {
                mpCurrentRsoChanObj->mpModuleHeap->free(buffer);
            }
        }

        u32 ChannelSelect::getAllocatableSizeForRsoExHeap() const {
            return mpCurrentRsoChanObj->mpModuleHeap->getAllocatableSize();
        }

        void ChannelSelect::setDebugRsoInterval(u32 val) {
            /* stripped out code*/
        }

        void ChannelSelect::createChannelModulesHeap() {
            mpModuleWorkHeap = EGG::ExpHeap::create(System::getChannelArena(), 0x200000, 0);
            for (int i = 0; i < 49; i++) {
                mpModuleHeaps[i] = EGG::ExpHeap::create(0x10000, System::getMem2App(), MEM_HEAP_OPT_DEBUG_FILL | MEM_HEAP_OPT_THREAD_SAFE);
                unk_0x25C[i] = false;
            }
        }

        void ChannelSelect::createBaseLayout() {
            GXTexObj texObj[2];

            mpLayout = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_IplTop_a.brlyt");

            // Change pane textures for widescreen
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                mpLayout->FindPaneByName("ChangeTex16x9")->GetMaterial()->GetTexture(&texObj[1], GX_TEXMAP0);
                mpLayout->FindPaneByName("Picture_16")->GetMaterial()->GetTexture(&texObj[0], GX_TEXMAP0);

                for (int i = 0; i < CHAN_SCROLL_MAX; i++) {
                    mpLayout->FindPaneByName(mscUnk0PaneNames[i])->GetMaterial()->SetTexture(GX_TEXMAP0, texObj[1]);
                    mpLayout->FindPaneByName(mscUnk1PaneNames[i])->GetMaterial()->SetTexture(GX_TEXMAP0, texObj[0]);
                }
            }

            mpLayout->bind("my_IplTop_a.brlan");

            if (mStartType == START_FROM_BOARD || mStartType == START_FROM_CHJUMP) {
                mpLayout->setMinFrame(100.0f);
                mpLayout->setMaxFrame(120.0f);
                mpLayout->setAnmType(ANIM_TYPE_FORWARD);
                mpLayout->start();
            }

            mpLayout->finishBinding();

            ChannelSelectEventHandler* event = new ChannelSelectEventHandler(this);
            mpGui = new gui::PaneManager(event, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->createLayoutScene(*mpLayout->getNW4RLyt());
            mpGui->setAllComponentTriggerTarget(false);

            for (int i = 0; i < MAX_CHANNEL_INDEX; i++) {
                mpGui->getPaneComponentByPane(getChannelBasePane(i))->setTriggerTarget(true);
            }

            for (int i = 0; i < MAX_CHANNEL_PAGE; i++) {
                mpChanZoomParams[i] = new math::HermiteIntp<math::VEC3>();
            }
        }

        void ChannelSelect::createDiskLayout() {
            int state = System::getBS2Manager()->getIPLState();
            if (state == bs2::IPL_STATE_RVL_GAME || state == bs2::IPL_STATE_GC_GAME || state == bs2::IPL_STATE_DISK_UPDATE) {
                mbDiskInserted = true;
            } else {
                mbDiskInserted = false;
            }

            mpNoDiskLayout = new layout::Object(getSceneHeap(), mpDiskThumbFile, "arc", "my_DiskCh_b.brlyt");
            mpNoDiskAnim = mpNoDiskLayout->bind("my_DiskCh_b.brlan");
            mpNoDiskLayout->setAnmType(ANIM_TYPE_LOOP);
            mpNoDiskLayout->start();
            mpNoDiskLayout->getDrawInfo()->SetInfluencedAlpha(true);
            mpNoDiskLayout->GetRootPane()->SetInfluencedAlpha(true);
            mpNoDiskLayout->finishBinding();

            mpDiskFadeAnim = new math::HermiteIntp<f32>();
            mpDiskFadeAnim->init(255.0f, 0.0f, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD, 1.0f);
            if (mbDiskInserted) {
                mpDiskFadeAnim->setCurrentFrame(mpDiskFadeAnim->getMaxFrame());
            }

            mpDiskLayout = new layout::Object(getSceneHeap(), mpDiskThumbFile, "arc", "my_GCIcon_a.brlyt");
            mpDiskAnim = mpDiskLayout->bind("my_GCIcon_a.brlan");
            mpDiskAnim->play();
            mpDiskLayout->finishBinding();

            mpDiskInOutLyt = new layout::Object(getSceneHeap(), mpDiskThumbFile, "arc", "my_DiskCh_In.brlyt");
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                GXTexObj tex;
                mpDiskInOutLyt->FindPaneByName("16x9")->GetMaterial()->GetTexture(&tex, GX_TEXMAP0);
                mpDiskInOutLyt->FindPaneByName("DiskIn")->GetMaterial()->SetTexture(GX_TEXMAP0, tex);
            }
            mpDiskInAnim = mpDiskInOutLyt->bind("my_DiskCh_In_DiskIn.brlan", !mbDiskInserted);
            mpDiskOutAnim = mpDiskInOutLyt->bind("my_DiskCh_In_DiskOut.brlan", mbDiskInserted);
            mpDiskInOutLyt->finishBinding();
        }

        void ChannelSelect::createChannelThumbnails() {
            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                createChannelThumbnail(chanObj);
            }
        }

        void ChannelSelect::createChannelThumbnail(ChannelObj* channelObj) {
            channelObj->prepare();
            channelObj->setHeaps(mpCursorHeap, mpBalloonHeap);
            channelObj->setBasePane(getChannelBasePane(channelObj->mChanPage, channelObj->mChanIndex, mCurrentPage));
            if (channelObj->isDiskChannel()) {
                channelObj->setDiskLayouts(mpDiskLayout, mpDiskAnim, mpDiskHeap);
            }
            channelObj->initExtModule(mpModuleWorkHeap, mpModuleThread);
            channelObj->create(mpLayoutFile);
        }

        void ChannelSelect::calcChannelModules() {
            if (unk_0x180 == 3) {
                return;
            }

            if (!System::isSafeMode()) {
                bool result = true;
                EGG::ExpHeap* expHeap = getFreeModuleExHeap();
                ChannelObj* chanObj = NULL;
                FOREACH_CHANNEL_OBJ(chanObj) {
                    if (unk_0x18C == NULL || chanObj == unk_0x18C) {
                        if (unk_0x180 == 2) {
                            result = false;
                        }

                        int state = chanObj->calcExtModule(expHeap, result, unk_0x184);
                        if (state == 3) {
                            updateModuleExHeap(chanObj->mpPrevModuleHeap, expHeap);
                            mpCurrentRsoChanObj = NULL;
                            unk_0x180 = 1;
                        } else if (state == 2 && unk_0x180 == 1) {
                            unk_0x180 = 2;
                            mpCurrentRsoChanObj = chanObj;
                        }
                    }
                }
            }

            unk_0x18C = NULL;
            if (unk_0x184 && unk_0x180 == 1) {
                unk_0x184 = false;
                unk_0x180 = 3;
            }
        }

        void ChannelSelect::calcChannelThumbnails() {
            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                chanObj->calc();
            }

            if (unk_0x2C0 != NULL) {
                unk_0x2C0->calc();
            }

            calcDiskLayout();
        }

        void ChannelSelect::calcDiskLayout() {
            int page = mpDiskChanObj->mChanPage;
            int index = mpDiskChanObj->mChanIndex;
            if (isChannelInCalc(page, index, mCurrentPage)) {
                mpNoDiskLayout->GetRootPane()->SetVisible(true);
                mpDiskInOutLyt->GetRootPane()->SetVisible(true);

                nw4r::math::VEC3 vec(0.0f, 0.0f, 0.0f);
                MTXMultVec(getChannelBasePane(page, index, mCurrentPage)->GetGlobalMtx(), vec, vec);

                mpNoDiskLayout->GetRootPane()->SetTranslate(vec);
                mpDiskInOutLyt->GetRootPane()->SetTranslate(vec);
            } else {
                mpNoDiskLayout->GetRootPane()->SetVisible(false);
                mpDiskInOutLyt->GetRootPane()->SetVisible(false);
            }

            mpDiskFadeAnim->calc();
            int frame = mpDiskFadeAnim->get();
            mpNoDiskLayout->GetRootPane()->SetAlpha(frame);

            mpNoDiskLayout->calc();
            mpDiskInOutLyt->calc();
        }

        void ChannelSelect::drawChannelThumbnails() {
            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                int chanPage = chanObj->mChanPage;
                int chanIndex = chanObj->mChanIndex;
                if (isChannelInView(chanPage, chanIndex)) {
                    setChannelScissor(chanObj);

                    chanObj->drawThumbnail();

                    if (chanObj->isDiskChannel()) {
                        mpNoDiskLayout->draw();
                    }

                    if (chanObj->isValid()) {
                        switch (mState) {
                            case STATE_DRAG_SCROLL_RIGHT:
                            case STATE_DRAG_SCROLL_LEFT:
                            case STATE_NORMAL_MOVE_CHAN_OUT:
                            case STATE_NORMAL_MOVE_CHAN_SAVE:
                            case STATE_NORMAL_MOVE_CHAN_IN:
                            case STATE_NORMAL_RELEASE:
                            case STATE_NORMAL_RELEASE_WAIT:
                            case STATE_NORMAL_DRAG:
                            case STATE_NORMAL_GRAB: {
                                if (chanPage != mMoveOldPage || chanIndex != mMoveOldIndex) {
                                    nw4r::math::VEC3 trans = chanObj->getTranslate();
                                    mpMoveLytMask->GetRootPane()->SetTranslate(trans);
                                    mpMoveLytMask->calcMtx();
                                    mpMoveLytMask->draw();
                                }
                            }
                        }
                    }

                    switch (mState) {
                        case STATE_NORMAL_GRAB:
                        case STATE_NORMAL_DRAG:
                        case STATE_NORMAL_MOVE_CHAN_IN:
                        case STATE_NORMAL_MOVE_CHAN_SAVE:
                        case STATE_DRAG_SCROLL_LEFT:
                        case STATE_DRAG_SCROLL_RIGHT: {
                            if (chanPage == mMoveOldPage && chanIndex == mMoveOldIndex) {
                                nw4r::math::VEC3 trans = chanObj->getTranslate();
                                unk_0x2C4->GetRootPane()->SetTranslate(trans);
                                unk_0x2C4->calcMtx();
                                unk_0x2C4->draw();
                            }
                        }
                    }

                    switch (mState) {
                        case STATE_NORMAL_MOVE_CHAN_OUT:
                        case STATE_NORMAL_MOVE_CHAN_SAVE:
                        case STATE_NORMAL_MOVE_CHAN_IN: {
                            if (chanPage == mMoveNewPage && chanIndex == mMoveNewIndex) {
                                mpMoveLytDrop->draw();
                            }
                        }
                    }
                }
            }
        }

        void ChannelSelect::drawChannelOthers() {
            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                if (isChannelInView(chanObj->mChanPage, chanObj->mChanIndex)) {
                    chanObj->drawCursor();
                }
            }
            chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                if (isChannelInView(chanObj->mChanPage, chanObj->mChanIndex)) {
                    chanObj->drawBalloon();
                }
            }
        }

        void ChannelSelect::calcNormalNormal() {
            if (mStartType == START_FROM_CHJUMP) {
                startChanTtlScene(System::getChannelManager()->getChJumpChanPage(), System::getChannelManager()->getChJumpChanIndex());
                return;
            }

            Button* button = getButton();
            if (button != NULL && button->isActive()) {
                button->update();
            }

            if (mState == STATE_NORMAL) {
                controller::Interface* con = System::getMasterController();
                if (con->down(controller::BTN_NEXT_LEFT)) {
                    if (mCurrentPage > 0) {
                        preparePageScrolling(STATE_PREP_LEFT_PAGE_SCROLL);
                        return;
                    }
                } else if (con->down(controller::BTN_NEXT_RIGHT)) {
                    if (mCurrentPage < (mMaxPages - 1)) {
                        preparePageScrolling(STATE_PREP_RIGHT_PAGE_SCROLL);
                        return;
                    }
                }
            }

            mpGui->update();
        }

        void ChannelSelect::calcNormalWaitScrl() {
            if (mState == STATE_PREP_LEFT_PAGE_SCROLL) {
                if (isPageCreatedAllDone(mCurrentPage)) {
                    if (unkBool()) {
                        startPageScroll(STATE_LEFT_PAGE_SCROLL);
                    }
                }
            } else {
                if (isPageCreatedAllDone(mCurrentPage)) {
                    if (unkBool()) {
                        startPageScroll(STATE_RIGHT_PAGE_SCROLL);
                    }
                }
            }
        }

        void ChannelSelect::calcNormalScrl() {
            if (mpLayout->isPlaying(0)) {
                return;
            }

            Button* button = getButton();

            if (mState == STATE_LEFT_PAGE_SCROLL) {
                if (--mCurrentPage == 0) {
                    button->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                    mbLeftArrowVisible = false;
                } else if (!mbRightArrowVisible) {
                    button->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                    mbRightArrowVisible = true;
                }
            } else {
                if (++mCurrentPage == mMaxPages - 1) {
                    button->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
                    mbRightArrowVisible = false;
                } else if (!mbLeftArrowVisible) {
                    button->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    mbLeftArrowVisible = true;
                }
            }

            mpLayout->finishBinding();

            refreshChannelList(mCurrentPage);
            restartChannelModules();
            mState = STATE_NORMAL;
        }

        void ChannelSelect::calcNormalWaitLoading() {
            if (isPageCreatedAllDone(mCurrentPage)) {
                if (unkBool()) {
                    int page, index;
                    channel::Manager::getCurrentChannel(&page, &index);
                    reserveSceneChangeDerived(page, index);
                    mState = STATE_CHANNEL_TITLE;
                }
            }
        }

        void ChannelSelect::calcNormalFadeOutZoom() {
            // unused
            int page, index;
            channel::Manager::getCurrentChannel(&page, &index);

            calcChanZoomParam();
            setChanZoomOrtho();

            if (!mpChanZoomParams[0]->isPlaying()) {
                mState = STATE_NORMAL_DONE_FADE_ZOOM;
            }
        }

        void ChannelSelect::calcNormalRestart() {
            if (!mpChanZoomParams[0]->isPlaying() && getChannelTitle() == NULL) {
                Button* button = getButton();
                button->enableBtn();

                if (mCurrentPage > 0) {
                    button->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    mbLeftArrowVisible = true;
                } else {
                    mbLeftArrowVisible = false;
                }

                if (mMaxPages > 1 && mCurrentPage < mMaxPages - 1) {
                    button->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                    mbRightArrowVisible = true;
                } else {
                    mbRightArrowVisible = false;
                }

                button->setEventHandler(mpButtonEvent);

                if (!System::isSafeMode()) {
                    button->get_sd_menu_btn()->setEventHandler(mpSDMenuEvent);
                }

                restartChannelModules();

                TVRCManager::getHandle()->setEnable(TRUE);
                snd::getSystem()->startBGM("WIPL_BGM_MENU");

                mState = STATE_NORMAL;
            } else {
                calcChanZoomParam();
                setChanZoomOrtho();
            }
        }

        void ChannelSelect::calcNormalSafeModeDialog() {
            if (System::getDialog()->getLastResult() == DialogWindow::RESULT_WAIT) {
                mState = STATE_NORMAL;
            }
        }

        void ChannelSelect::refreshChannelList(int page) {
            makeChannelList(page, false);

            if (page < mMaxPages - 1) {
                makeChannelList(page + 1, false);
            }
            if (page > 0) {
                makeChannelList(page - 1, false);
            }

            sortChannelList(page);
            createChannelThumbnails();
        }

        void ChannelSelect::makeChannelList(int page, bool force) {
            for (int i = 0; i < MAX_CHANNEL_INDEX; i++) {
                if (force || searchList(page, i) == NULL) {
                    appendToChannelList(page, i);
                }
            }

            if (page < mMaxPages - 1) {
                for (int i = 0; i < MAX_CHANNEL_INDEX; i += MAX_CHANNEL_ROW) {
                    if (force || searchList(page + 1, i) == NULL) {
                        appendToChannelList(page + 1, i);
                    }
                }
            }

            if (page > 0) {
                for (int i = MAX_CHANNEL_COLUMN; i < MAX_CHANNEL_INDEX; i += MAX_CHANNEL_ROW) {
                    if (force || searchList(page - 1, i) == NULL) {
                        appendToChannelList(page - 1, i);
                    }
                }
            }
        }

        void ChannelSelect::appendToChannelList(int page, int index) {
            bool isDisk = false;
            EGG::FrmHeap* frmHeap;
            int diskPage, diskIndex;
            System::getChannelManager()->getDiskChannelLocation(&diskPage, &diskIndex);

            if (diskPage == page && diskIndex == index) {
                isDisk = true;
                frmHeap = NULL;
            } else {
                frmHeap = EGG::FrmHeap::create(0x212B8, unk_0x16C, 2);
            }

            ChannelObj* chanObj = new (unk_0x17C, 4) ChannelObj(frmHeap, page, index);
            nw4r::ut::List_Append(&mChanList, chanObj);

            if (isDisk) {
                mpDiskChanObj = chanObj;
            }
        }

        void ChannelSelect::destroyChannelObj(ChannelObj* channelObj) {
            EGG::Heap* heap = channelObj->mpMainHeap;
            delete channelObj;
            if (heap != NULL) {
                heap->destroy();
            }
        }

        void ChannelSelect::sortChannelList(int page) {
            sortChannelListByPage(page, 0);

            if (page < mMaxPages - 1) {
                sortChannelListByPage(page + 1, -1);
            }
            if (page > 0) {
                sortChannelListByPage(page - 1, 1);
            }

            if (page < mMaxPages - 2 && isPageCreated(page + 2)) {
                sortChannelListByPage(page + 2, -1);
            }
            if (page > 1 && isPageCreated(page - 2)) {
                sortChannelListByPage(page - 2, 1);
            }

            if (page < mMaxPages - 3 && isPageCreated(page + 3)) {
                sortChannelListByPage(page + 3, -1);
            }
            if (page > 2 && isPageCreated(page - 3)) {
                sortChannelListByPage(page - 3, 1);
            }
        }

        void ChannelSelect::sortChannelListByPage(int page, int unk) {
            for (int i = 0; i < MAX_CHANNEL_INDEX; i++) {
                // TODO: fix this ugly madness
                if (unk == -1) {
                    if (!(i & 3)) {
                        continue;
                    }
                } else {
                    goto block_6;
                }

                goto block_7;
            block_6:
                if (!(unk != 1 || (i & 3) != 3)) {
                    continue;
                }
            block_7:
                ChannelObj* chanObj = searchList(page, i);
                nw4r::ut::List_Remove(&mChanList, chanObj);
                nw4r::ut::List_Append(&mChanList, chanObj);
            }

            if (unk != 1 && page + 1 < mMaxPages) {
                for (int i = 0; i < MAX_CHANNEL_INDEX; i += MAX_CHANNEL_ROW) {
                    ChannelObj* chanObj = searchList(page + 1, i);
                    nw4r::ut::List_Remove(&mChanList, chanObj);
                    nw4r::ut::List_Append(&mChanList, chanObj);
                }
            }

            if (unk != -1 && page - 1 >= 0) {
                for (int i = MAX_CHANNEL_COLUMN; i < MAX_CHANNEL_INDEX; i += MAX_CHANNEL_ROW) {
                    ChannelObj* chanObj = searchList(page - 1, i);
                    nw4r::ut::List_Remove(&mChanList, chanObj);
                    nw4r::ut::List_Append(&mChanList, chanObj);
                }
            }
        }

        ChannelObj* ChannelSelect::searchList(int page, int index) const {
            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                int chanPage = chanObj->mChanPage;
                int chanIndex = chanObj->mChanIndex;
                if (chanPage == page && chanIndex == index) {
                    return chanObj;
                }
            }
            return NULL;
        }

        void ChannelSelect::setupDiskChanObj() {
            if (mpDiskChanObj == NULL) {
                int page, index;
                System::getChannelManager()->getDiskChannelLocation(&page, &index);
                appendToChannelList(page, index);
            }
        }

        void ChannelSelect::updateDiskState() {
            int state = System::getBS2Manager()->getIPLState();

            switch (mDiskState) {
                case DISK_STATE_READ: {
                    if (!mpDiskOutAnim->isPlaying()) {
                        mpDiskLayout->FindPaneByName("N_GCIcon")->SetVisible(true);
                        mpDiskLayout->FindPaneByName("N_DiscUpdateIcon")->SetVisible(false);
                        if (state == bs2::IPL_STATE_RVL_GAME) {
                            void* thumb = System::getChannelManager()->getDiskThumbnail(mState != STATE_INACTIVE);
                            if (mState == STATE_INACTIVE) {
                                System::getBS2Manager()->getDiskInfo(&mpDiskID, &mpDiskMaker);
                            }
                            if (thumb != NULL) {
                                mpDiskChanObj->createDiskLayout(thumb);
                            }

                            if (!mbDiskInserted) {
                                startDiskInEvent();
                            }

                            mbDiskInserted = false;
                            mDiskState = DISK_STATE_PLAY_THUMB;
                        } else if (state == bs2::IPL_STATE_DISK_UPDATE) {
                            System::getChannelManager()->setUnk_0x1B81(false);

                            mpDiskLayout->FindPaneByName("N_GCIcon")->SetVisible(false);
                            mpDiskLayout->FindPaneByName("N_DiscUpdateIcon")->SetVisible(true);

                            ChannelObj::setLangPane(mpDiskLayout);

                            if (mpDiskAnim != NULL) {
                                mpDiskAnim->setAnmType(ANIM_TYPE_LOOP);
                                mpDiskAnim->play();
                            }

                            if (!mbDiskInserted) {
                                startDiskInEvent();
                            }

                            mbDiskInserted = false;
                            mDiskState = DISK_STATE_PLAY_THUMB;
                        } else if (state == bs2::IPL_STATE_GC_GAME) {
                            if (!mbDiskInserted) {
                                startDiskInEvent();
                            }

                            mbDiskInserted = false;
                            mDiskState = DISK_STATE_GC_GAME_WAIT;
                        }
                    }
                    break;
                }
                case DISK_STATE_PLAY_THUMB: {
                    if (!mpDiskFadeAnim->isPlaying()) {
                        mpDiskChanObj->resetDiskTitleName();
                        if (state == bs2::IPL_STATE_RVL_GAME) {
                            if (mpDiskChanObj->mpThumbAnim != NULL) {
                                mpDiskChanObj->mpThumbAnim->setAnmType(ANIM_TYPE_LOOP);
                                mpDiskChanObj->mpThumbAnim->play();
                            }
                            mDiskState = DISK_STATE_RVL_GAME;
                        } else {
                            mDiskState = DISK_STATE_DISK_UPDATE;
                        }
                    }
                    break;
                }
                case DISK_STATE_RVL_GAME: {
                    if ((state != bs2::IPL_STATE_RVL_GAME || System::getChannelManager()->isUnk_0x1B81()) && !mpDiskInAnim->isPlaying()) {
                        startDiskOutEvent();
                        mpDiskChanObj->changeDisk();
                        mDiskState = DISK_STATE_DESTROY;
                    }
                    break;
                }
                case DISK_STATE_DISK_UPDATE: {
                    if ((state != bs2::IPL_STATE_DISK_UPDATE || System::getChannelManager()->isUnk_0x1B81()) && !mpDiskInAnim->isPlaying()) {
                        startDiskOutEvent();
                        mpDiskChanObj->changeDisk();
                        mDiskState = DISK_STATE_DESTROY;
                    }
                    break;
                }
                case DISK_STATE_GC_GAME_WAIT: {
                    if (!mpDiskFadeAnim->isPlaying()) {
                        mDiskState = DISK_STATE_GC_GAME;
                    }
                    break;
                }
                case DISK_STATE_GC_GAME: {
                    if (state != bs2::IPL_STATE_GC_GAME && !mpDiskInAnim->isPlaying()) {
                        startDiskOutEvent();
                        mpDiskChanObj->changeDisk();
                        mDiskState = DISK_STATE_DESTROY;
                    }
                    break;
                }
                case DISK_STATE_DESTROY: {
                    if (!mpDiskFadeAnim->isPlaying()) {
                        mpDiskChanObj->destroyDiskLayout();
                        mpDiskChanObj->resetDiskTitleName();
                        mDiskState = DISK_STATE_READ;
                    }
                    break;
                }
            }
        }

        void ChannelSelect::startDiskInEvent() {
            mpDiskFadeAnim->setAnmType(ANIM_TYPE_FORWARD);
            mpDiskFadeAnim->play();
            mpDiskInAnim->play();
        }

        void ChannelSelect::startDiskOutEvent() {
            mpDiskFadeAnim->setAnmType(ANIM_TYPE_BACKWARD);
            mpDiskFadeAnim->play();
            mpDiskOutAnim->play();
        }

        void ChannelSelect::setChanFrameVisibility() {
            int neg;
            if (mState == STATE_LEFT_PAGE_SCROLL || mState == STATE_DRAG_SCROLL_LEFT) {
                neg = 1;
            } else {
                neg = 0;
            }

            if ((mCurrentPage - 1) - neg >= 0) {
                mpLayout->FindPaneByName(mscUnk1PaneNames[0])->SetVisible(true);
                mpLayout->FindPaneByName(mscUnk1PaneNames[1])->SetVisible(true);
            } else {
                mpLayout->FindPaneByName(mscUnk1PaneNames[1 - neg])->SetVisible(false);
            }

            if (mState == STATE_RIGHT_PAGE_SCROLL || mState == STATE_DRAG_SCROLL_RIGHT) {
                neg = 1;
            } else {
                neg = 0;
            }

            if ((mCurrentPage + 1) + neg < mMaxPages) {
                mpLayout->FindPaneByName(mscUnk1PaneNames[3])->SetVisible(true);
                mpLayout->FindPaneByName(mscUnk1PaneNames[4])->SetVisible(true);
            } else {
                mpLayout->FindPaneByName(mscUnk1PaneNames[3 + neg])->SetVisible(false);
            }
        }

        BOOL ChannelSelect::isChannelInView(int page, int index) const {
            int unk = mCurrentPage;
            if (page == unk) {
                return TRUE;
            }

            if (page == unk - 1) {
                if (mState == STATE_LEFT_PAGE_SCROLL || mState == STATE_DRAG_SCROLL_LEFT) {
                    return TRUE;
                }
                unk = 3;
                for (int i = 0; i < MAX_CHANNEL_COLUMN; i++) {
                    if (unk == index) {
                        return TRUE;
                    }
                    unk += MAX_CHANNEL_ROW;
                }
            }

            else if (page == unk - 2) {
                if (mState == STATE_LEFT_PAGE_SCROLL || mState == STATE_DRAG_SCROLL_LEFT) {
                    unk = 3;
                    for (int i = 0; i < MAX_CHANNEL_COLUMN; i++) {
                        if (unk == index) {
                            return TRUE;
                        }
                        unk += MAX_CHANNEL_ROW;
                    }
                }
            }

            else if (page == unk + 1) {
                if (mState == STATE_RIGHT_PAGE_SCROLL || mState == STATE_DRAG_SCROLL_RIGHT) {
                    return TRUE;
                }
                unk = 0;
                for (int i = 0; i < MAX_CHANNEL_COLUMN; i++) {
                    if (unk == index) {
                        return TRUE;
                    }
                    unk += MAX_CHANNEL_ROW;
                }
            }

            else if (page == unk + 2) {
                if (mState == STATE_RIGHT_PAGE_SCROLL || mState == STATE_DRAG_SCROLL_RIGHT) {
                    unk = 0;
                    for (int i = 0; i < MAX_CHANNEL_COLUMN; i++) {
                        if (unk == index) {
                            return TRUE;
                        }
                        unk += MAX_CHANNEL_ROW;
                    }
                }
            }

            return FALSE;
        }

        BOOL ChannelSelect::isChannelInCalc(int page, int index, int unk2) const {
            int unk = page - unk2;
            if (unk <= -3 || unk >= 3 || strcmp(mscChanPaneNames[unk + 2][index], "") == 0) {
                return FALSE;
            } else {
                return TRUE;
            }
        }

        BOOL ChannelSelect::isPageCreated(int page) const {
            for (int i = 0; i < MAX_CHANNEL_INDEX; i++) {
                ChannelObj* chanObj = searchList(page, i);
                if (chanObj == NULL || !chanObj->isLayoutCreated()) {
                    return FALSE;
                }
            }
            if (page + 1 < mMaxPages) {
                for (int i = 0; i < MAX_CHANNEL_INDEX; i += MAX_CHANNEL_ROW) {
                    ChannelObj* chanObj = searchList(page + 1, i);
                    if (chanObj == NULL || !chanObj->isLayoutCreated()) {
                        return FALSE;
                    }
                }
            }
            if (page - 1 >= 0) {
                for (int i = 3; i < MAX_CHANNEL_INDEX; i += MAX_CHANNEL_ROW) {
                    ChannelObj* chanObj = searchList(page - 1, i);
                    if (chanObj == NULL || !chanObj->isLayoutCreated()) {
                        return FALSE;
                    }
                }
            }
            return TRUE;
        }

        BOOL ChannelSelect::isPageCreatedAllDone(int page) const {
            if (!isPageCreated(page)) {
                return FALSE;
            } else if (page < mMaxPages - 1 && !isPageCreated(page + 1)) {
                return FALSE;
            } else if (page > 0 && !isPageCreated(page - 1)) {
                return FALSE;
            } else {
                return TRUE;
            }
        }

        void ChannelSelect::preparePageScrolling(int nextState) {
            unk_0x184 = true;
            mState = nextState;
            unk_0x185 = false;
            snd::getSystem()->startSE("WSD_SELECT");
        }

        void ChannelSelect::startPageScroll(int nextState) {
            if (nextState == STATE_LEFT_PAGE_SCROLL) {
                mpLayout->setMinFrame(0.0f);
                mpLayout->setMaxFrame(20.0f);
            } else {
                mpLayout->setMinFrame(40.0f);
                mpLayout->setMaxFrame(60.0f);
            }
            mpLayout->setAnmType(ANIM_TYPE_FORWARD);
            mpLayout->start();
            mState = nextState;
        }

        void ChannelSelect::tryToStartBoardScene() {
            if (unkBool()) {
                Button* button = getButton();
                button->animation(Button::IDANIM_FROM_CH_SEL_TO_BOARD);
                if (mbLeftArrowVisible) {
                    button->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                }
                if (mbRightArrowVisible) {
                    button->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
                }
                button->animation(Button::IDANIM_SD_BUTTON_BTN_OUT);
                button->setEventHandler(NULL);
                button->get_sd_menu_btn()->setEventHandler(NULL);

                mpLayout->setMinFrame(70.0f);
                mpLayout->setMaxFrame(90.0f);
                mpLayout->setAnmType(ANIM_TYPE_FORWARD);
                mpLayout->start();

                mState = STATE_BOARD_SCENE;
            }
        }

        void ChannelSelect::startChanTtlScene(int page, int index) {
            ChannelObj* chanObj = searchList(page, index);

            initChanZoomParam(math::VEC3(chanObj->mpThumbLayout->GetRootPane()->GetTranslate()), 0);
            chanObj->setCursorDecideAnim();

            Button* button = getButton();
            if (mbLeftArrowVisible) {
                button->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
            }
            if (mbRightArrowVisible) {
                button->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
            }

            button->disableBtn();
            button->setEventHandler(NULL);
            button->get_sd_menu_btn()->setEventHandler(NULL);
            channel::Manager::setCurrentChannel(page, index);

            mState = STATE_NORMAL_WAIT_LOADING;
            unk_0x184 = true;
            unk_0x185 = true;

            snd::getSystem()->startSE("WIPL_SE_BT_PUSH");
            snd::getSystem()->stopBGM(5);
        }

        void ChannelSelect::reserveSceneChangeDerived(int page, int index) {
            channel::SEntry& entry = System::getChannelManager()->getChannel(page, index);
            s32 sceneID = entry.loadedBnr ? entry.info.sceneID : 0;

            if (sceneID != 0) {
                createChildScene(SCENE_CHANNEL_TITLE, this, NULL, this);
            }
        }

        BOOL ChannelSelect::tellStartingZoomAnm() {
            mpLayout->setMinFrame(200.0f);
            mpLayout->setMaxFrame(228.0f);
            mpLayout->setAnmType(ANIM_TYPE_FORWARD);
            mpLayout->start();

            snd::getSystem()->startSE("WIPL_SE_CH_SELECT");

            mState = STATE_NORMAL_FADE_ZOOM;
            return TRUE;
        }

        BOOL ChannelSelect::prepareRestarting(int page) {
            if (page == mCurrentPage) {
                return isPageCreated(page);
            } else {
                mCurrentPage = page;
                refreshChannelList(page);
                return isPageCreated(page);
            }
        }

        void ChannelSelect::restart(int page, int index) {
            mpLayout->setAnmType(ANIM_TYPE_BACKWARD);
            mpLayout->start();

            math::VEC3 myVec(getDispChanTrans(index));
            initChanZoomParam(myVec, 1);
            setChanZoomOrtho();

            if (System::getChannelManager()->isUnk_0x1B81()) {
                if (System::getBS2Manager()->getIPLState() == bs2::IPL_STATE_RVL_GAME ||
                    System::getBS2Manager()->getIPLState() == bs2::IPL_STATE_DISK_UPDATE) {
                    if (mpDiskID != NULL) {
                        if (mpDiskMaker != NULL) {
                            // unused
                            char* diskID;
                            char* diskMaker;
                            System::getBS2Manager()->getDiskInfo((char**)&diskID, (char**)&diskMaker);

                            if (strncmp(diskID, mpDiskID, 4) == 0) {
                                if (strncmp(diskMaker, mpDiskMaker, 2) == 0) {
                                    System::getChannelManager()->setUnk_0x1B81(false);
                                }
                            }
                        }
                    }
                }
            }

            unk_0x18C = searchList(page, index);

            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                chanObj->FillModuleCount();
            }

            mState = STATE_NORMAL_RESTART;
        }

        nw4r::lyt::Pane* ChannelSelect::getChannelBasePane(int page, int index, int unk3) const {
            if (isChannelInCalc(page, index, unk3)) {
                return mpLayout->FindPaneByName(mscChanPaneNames[(page - unk3) + 2][index]);
            } else {
                return mpLayout->FindPaneByName("Picture_16");
            }
        }

        const nw4r::lyt::Pane* ChannelSelect::getChannelBasePane(int index) const {
            return mpLayout->FindPaneByName(mscChanPaneNames[2][index]);
        }

        nw4r::lyt::Pane* ChannelSelect::getChannelBasePane(int index) {
            return mpLayout->FindPaneByName(mscChanPaneNames[2][index]);
        }

        nw4r::math::VEC3 ChannelSelect::getDispChanTrans(int index) const {
            nw4r::math::VEC3 vec(0.0f, 0.0f, 0.0f);
            MTXMultVec(getChannelBasePane(index)->GetGlobalMtx(), vec, vec);
            return vec;
        }

        void ChannelSelect::setChannelScissor(const ChannelObj* channelObj) const {
            nw4r::math::VEC3 vec(channelObj->getTranslate());

            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            GXRenderModeObj* rMode = System::getRenderModeObj();

            f32 var_f29;
            f32 var_f30;
            f32 var_f31;
            f32 var_f1;

            u16 var_r0;
            u16 var_r3;

            if (mState == STATE_NORMAL_FADE_ZOOM || mState == STATE_NORMAL_DONE_FADE_ZOOM || mState == STATE_NORMAL_RESTART) {
                nw4r::math::MTX44 mtx;
                f32 fVar1 = unk_0xE4.x;
                f32 fVar2 = unk_0xE4.y;
                f32 fVar3 = unk_0xD8.x;
                f32 fVar4 = unk_0xD8.y;
                MTXOrtho(mtx, fVar4 - projRect.top / fVar2, fVar4 - projRect.bottom / fVar2, fVar3 + projRect.left / fVar1,
                         fVar3 + projRect.right / fVar1, -100.0f, 100.0f);
                nw4r::math::VEC4 vec4;
                nw4r::math::VEC4 vec4_in(vec.x, vec.y, 0.0f, 1.0f);
                nw4r::math::VEC4Transform(&vec4, &mtx, &vec4_in);

                var_r0 = rMode->fbWidth;
                var_r3 = rMode->efbHeight;
                var_f29 = projRect.GetWidth();
                f32 temp_f7_2 = var_r0 / var_f29;
                var_f29 = 2.0f * (mChanThumbOff_X * unk_0xE4.x) * (var_r0 / var_f29);
                var_f1 = 2.0f * (mChanThumbOff_Y * unk_0xE4.y);
                var_f30 = (var_r3 - ((1.0f + vec4.y) * var_r3 / 2)) - (mChanThumbOff_Y * unk_0xE4.y);
                var_f31 = ((1.0f + vec4.x) * var_r0 / 2) - ((mChanThumbOff_X * unk_0xE4.x) * (temp_f7_2));
            } else {
                var_r0 = rMode->fbWidth;
                var_r3 = rMode->efbHeight;
                var_f29 = 2.0f * mChanThumbOff_X * (var_r0 / projRect.GetWidth());
                var_f30 = (((f32)var_r3 / 2) - vec.y) - mChanThumbOff_Y;
                var_f31 = ((f32)var_r0 / 2) + ((vec.x - mChanThumbOff_X) * (var_r0 / projRect.GetWidth()));
                var_f1 = 2.0f * mChanThumbOff_Y;
            }

            var_f31 -= 1.0f;
            var_f30 -= 1.0f;
            var_f29 += 2.0f;
            var_f1 += 2.0f;

            if (var_f31 >= var_r0 || (var_f31 + var_f29) <= 0.0f || var_f30 >= var_r3 || (var_f30 + var_f1) <= 0.0f) {
                GXSetScissor(0, 0, 0, 0);
            } else {
                if (var_f31 < 0.0f) {
                    var_f29 += var_f31;
                    var_f31 = 0.0f;
                }
                if (var_f30 < 0.0f) {
                    var_f1 += var_f30;
                    var_f30 = 0.0f;
                }

                if ((var_f31 + var_f29) > 1705.0f) {
                    var_f29 -= (var_f31 + var_f29) - 1705.0f;
                }
                if ((var_f30 + var_f1) > 1705.0f) {
                    var_f1 -= (var_f30 + var_f1) - 1705.0f;
                }
                GXSetScissor(var_f31, var_f30, var_f29, var_f1);
            }
        }

        void ChannelSelect::initChanZoomParam(const math::VEC3& pos, BOOL unk) {
            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            math::VEC3 iStack_34(projRect.left, -projRect.top, 0.0f);
            math::VEC3 iStack_40(pos.x - mChanThumbOff_X, pos.y + mChanThumbOff_Y, 0.0f);
            math::VEC3 iStack_4C(projRect.right, -projRect.top, 0.0f);
            math::VEC3 iStack_58(pos.x + mChanThumbOff_X, pos.y + mChanThumbOff_Y, 0.0f);
            math::VEC3 iStack_64(projRect.left, -projRect.bottom, 0.0f);
            math::VEC3 iStack_70(pos.x - mChanThumbOff_X, pos.y - mChanThumbOff_Y, 0.0f);
            math::VEC3 iStack_7C(projRect.right, -projRect.bottom, 0.0f);
            math::VEC3 iStack_88(pos.x + mChanThumbOff_X, pos.y - mChanThumbOff_Y, 0.0f);

            if (!unk) {
                mpChanZoomParams[0]->init(iStack_34, iStack_40, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
                mpChanZoomParams[1]->init(iStack_4C, iStack_58, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
                mpChanZoomParams[2]->init(iStack_64, iStack_70, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
                mpChanZoomParams[3]->init(iStack_7C, iStack_88, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
            } else {
                mpChanZoomParams[0]->init(iStack_40, iStack_34, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
                mpChanZoomParams[1]->init(iStack_58, iStack_4C, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
                mpChanZoomParams[2]->init(iStack_70, iStack_64, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
                mpChanZoomParams[3]->init(iStack_88, iStack_7C, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
            }

            for (int i = 0; i < 4; i++) {
                mpChanZoomParams[i]->play();
            }
        }

        void ChannelSelect::calcChanZoomParam() {
            for (int i = 0; i < 4; i++) {
                mpChanZoomParams[i]->calc();
            }
        }

        void ChannelSelect::setChanZoomOrtho() {
            nw4r::math::VEC3 frames[4];
            for (int i = 0; i < 4; i++) {
                frames[i] = mpChanZoomParams[i]->get();
            }

            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            unk_0xD8 = math::VEC3((frames[0].x + frames[1].x) / 2, (frames[0].y + frames[2].y) / 2, 0.0f);
            unk_0xE4 = math::VEC2(projRect.GetWidth() / (frames[1].x - frames[0].x), projRect.GetHeight() / (frames[0].y - frames[2].y));
        }

        int ChannelSelect::isInChannelPaneNames(const char* name) const {
            int i = 0;
            for (i = 0; i < MAX_CHANNEL_INDEX; i++) {
                if (strcmp(name, mscChanPaneNames[2][i]) == 0) {
                    break;
                }
            }
            return i < MAX_CHANNEL_INDEX ? i : -1;
        }

        EGG::ExpHeap* ChannelSelect::getFreeModuleExHeap() {
            int i = 0;
            for (i = 0; i < 49; i++) {
                if (!unk_0x25C[i]) {
                    break;
                }
            }
            return mpModuleHeaps[i];
        }

        void ChannelSelect::updateModuleExHeap(EGG::ExpHeap* heap1, EGG::ExpHeap* heap2) {
            if (heap1 != NULL || heap2 != NULL) {
                for (int i = 0; i < 49; i++) {
                    if (heap1 != NULL && mpModuleHeaps[i] == heap1) {
                        unk_0x25C[i] = false;
                        heap1->freeAll();
                    }
                    if (heap2 != NULL && mpModuleHeaps[i] == heap2) {
                        unk_0x25C[i] = true;
                    }
                }
            }
        }

        void ChannelSelect::restartChannelModules() {
            if (!unk_0x184) {
                unk_0x180 = 1;
            }
            unk_0x184 = false;
            unk_0x185 = true;
        }

        void ChannelSelect::createChanMoveLayout() {
            unk_0x2C4 = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_IplTop_b.brlyt");
            unk_0x2C8 = unk_0x2C4->bind("my_IplTop_b.brlan");

            f32 frame = System::getRndm()->get_u16() % 2000;
            unk_0x2C8->play();
            unk_0x2C4->finishBinding();
            unk_0x2C8->setCurrentFrame(frame);

            mpMoveLytMask = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_TVMask_a.brlyt");
            mpMoveLytMask->bind("my_TVMask_a_Apear.brlan", "Picture_00", false);
            mpMoveLytMask->bind("my_TVMask_a_Lost.brlan", "Picture_00", false, false);
            mpMoveLytMask->finishBinding();
            mpMoveLytMask->getAnim()->initAnmFrame();

            mpMoveLytObject = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_TVShade_a.brlyt");
            mpMoveLytObject->bind("my_TVShade_a_Apear.brlan", "4x3", true);
            mpMoveLytObject->bind("my_TVShade_a_Lost.brlan", "4x3", true, false);
            mpMoveLytObject->finishBinding();

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                GXTexObj tex;
                mpMoveLytObject->FindPaneByName("16x9")->GetMaterial()->GetTexture(&tex, GX_TEXMAP0);
                mpMoveLytObject->FindPaneByName("4x3")->GetMaterial()->SetTexture(GX_TEXMAP0, tex);
                mpMoveLytObject->FindPaneByName("4x3_dummy")->GetMaterial()->SetTexture(GX_TEXMAP0, tex);
            }

            mpMoveLytObject->getAnim()->initAnmFrame();

            mpMoveLytDrop = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_TVApear_a.brlyt");
            mpMoveLytDrop->bind("my_TVApear_a_Apear.brlan", "Picture_00", false);
            mpMoveLytDrop->bind("my_TVApear_a_Lost.brlan", "Picture_00", false, false);
            mpMoveLytDrop->finishBinding();
            mpMoveLytDrop->getAnim()->initAnmFrame();
        }

        void ChannelSelect::calcNormalGrab() {
            Button* button = getButton();
            if (button != NULL && button->isActive()) {
                button->update();
            }

            mpGui->update();

            if (System::getControllerManager()->getController(mConChan) == NULL ||
                !System::getControllerManager()->getController(mConChan)->pinch()) {
                unk_0x2B8 = true;
            }

            if (unk_0x2B0 >= 0) {
                unk_0x2B0++;
            }
            if (unk_0x2AC >= 0) {
                unk_0x2AC++;
            }

            moveDrag();

            if (!mpMoveLytMask->getAnim(0)->isPlaying() && !mpMoveLytObject->getAnim(0)->isPlaying()) {
                mState = STATE_NORMAL_DRAG;
            }
        }

        void ChannelSelect::calcNormalDrag() {
            Button* button = getButton();
            if (button != NULL && button->isActive()) {
                button->update();
            }

            mpGui->update();

            if (System::getControllerManager()->getController(mConChan) == NULL ||
                !System::getControllerManager()->getController(mConChan)->pinch()) {
                unk_0x2B8 = true;
            }

            if (unk_0x2B0 >= 0) {
                unk_0x2B0++;
            }
            if (unk_0x2AC >= 0) {
                unk_0x2AC++;
            }

            moveDrag();

            if (unk_0x2B8) {
                finishDrag();
                return;
            }

            if (mCurrentPage > 0 && unk_0x2B0 >= 15 && isPageCreatedAllDone(mCurrentPage)) {
                if (unkBool()) {
                    button->animation(Button::IDANIM_ARROW_LEFT_SELECT);
                    mpLayout->setMinFrame(0.0f);
                    mpLayout->setMaxFrame(20.0f);
                    mpLayout->setAnmType(ANIM_TYPE_FORWARD);
                    mpLayout->start();

                    mState = STATE_DRAG_SCROLL_LEFT;

                    unk_0x2B0 = 0;
                    unk_0x2AC = -1;

                    ChannelObj* chanObj = NULL;
                    FOREACH_CHANNEL_OBJ(chanObj) {
                        chanObj->initCursorAnim(true);
                    }

                    for (int i = 0; i < MAX_CHANNEL_INDEX; i++) {
                        mpGui->initPane(getChannelBasePane(i));
                    }
                    snd::getSystem()->startSE("WSD_SELECT");
                    return;
                }
            }

            if (mCurrentPage < mMaxPages - 1 && unk_0x2AC >= 15 && isPageCreatedAllDone(mCurrentPage)) {
                if (unkBool()) {
                    button->animation(Button::IDANIM_ARROW_RIGHT_SELECT);
                    mpLayout->setMinFrame(40.0f);
                    mpLayout->setMaxFrame(60.0f);
                    mpLayout->setAnmType(ANIM_TYPE_FORWARD);
                    mpLayout->start();

                    mState = STATE_DRAG_SCROLL_RIGHT;

                    unk_0x2B0 = -1;
                    unk_0x2AC = 0;

                    ChannelObj* chanObj = NULL;
                    FOREACH_CHANNEL_OBJ(chanObj) {
                        chanObj->initCursorAnim(true);
                    }

                    for (int i = 0; i < MAX_CHANNEL_INDEX; i++) {
                        mpGui->initPane(getChannelBasePane(i));
                    }
                    snd::getSystem()->startSE("WSD_SELECT");
                    return;
                }
            }
        }

        void ChannelSelect::calcNormalReleaseWait() {
            unk_0x2B4++;
            if (unk_0x2B4 > 20) {
                mpMoveLytMask->getAnim(1)->play();
                mState = STATE_NORMAL_RELEASE;
            }
        }

        void ChannelSelect::calcNormalRelease() {
            if (!mpMoveLytMask->getAnim(1)->isPlaying() && !mpMoveLytObject->getAnim(1)->isPlaying()) {
                restartChannelModules();
                mState = STATE_NORMAL;
            }
        }

        void ChannelSelect::calcNormalMoveChanIn() {
            if (!mpMoveLytDrop->getAnim(0)->isPlaying()) {
                if (mMoveOldPage == mMoveNewPage && mMoveOldIndex == mMoveNewIndex) {
                    mpMoveLytDrop->getAnim(1)->play();
                    mState = STATE_NORMAL_MOVE_CHAN_OUT;
                } else {
                    System::getChannelManager()->moveChannelInfo(mMoveOldPage, mMoveOldIndex, mMoveNewPage, mMoveNewIndex);
                    unk_0x2C0 = searchList(mMoveOldPage, mMoveOldIndex);
                    if (unk_0x2C0 == NULL) {
                        EGG::FrmHeap* heap = EGG::FrmHeap::create(0x212B8, unk_0x16C, MEM_HEAP_OPT_DEBUG_FILL);
                        unk_0x2C0 = new (unk_0x17C, 4) ChannelObj(heap, mMoveNewPage, mMoveNewIndex);
                        createChannelThumbnail(unk_0x2C0);
                    } else {
                        ChannelObj* chanObj = searchList(mMoveNewPage, mMoveNewIndex);
                        unk_0x2C0->setBasePane(getChannelBasePane(mMoveNewPage, mMoveNewIndex, mCurrentPage));
                        chanObj->setBasePane(getChannelBasePane(mMoveOldPage, mMoveOldIndex, mCurrentPage));

                        unk_0x2C0->setPageIndex(mMoveNewPage, mMoveNewIndex);
                        chanObj->setPageIndex(mMoveOldPage, mMoveOldIndex);

                        unk_0x2C0->calc();
                        chanObj->calc();

                        unk_0x2C0 = NULL;
                        chanObj->mpThumbAnim->setCurrentFrame(unk_0x2C8->getCurrentFrame());
                    }

                    mpSaveDataFile = System::getSaveData()->flushAsync(System::getMem2App());
                    mState = STATE_NORMAL_MOVE_CHAN_SAVE;
                }
            }
        }

        void ChannelSelect::calcNormalMoveChanSave() {
            if (System::getSaveData()->isFinished(mpSaveDataFile) && (unk_0x2C0 == NULL || unk_0x2C0->isLayoutCreated())) {
                if (unk_0x2C0 != NULL) {
                    ChannelObj* chanObj = searchList(mMoveNewPage, mMoveNewIndex);
                    nw4r::ut::List_Insert(&mChanList, chanObj, unk_0x2C0);
                    nw4r::ut::List_Remove(&mChanList, chanObj);
                    destroyChannelObj(chanObj);
                    unk_0x2C0 = NULL;
                } else {
                    ChannelObj* chanObj = searchList(mMoveOldPage, mMoveOldIndex);
                    ChannelObj* chanObj2 = searchList(mMoveNewPage, mMoveNewIndex);
                    ChannelObj* chanObj3 = (ChannelObj*)nw4r::ut::List_GetNext(&mChanList, chanObj2);
                    if (chanObj3 == chanObj) {
                        chanObj3 = chanObj2;
                    }
                    nw4r::ut::List_Remove(&mChanList, chanObj2);
                    nw4r::ut::List_Insert(&mChanList, chanObj, chanObj2);
                    nw4r::ut::List_Remove(&mChanList, chanObj);
                    nw4r::ut::List_Insert(&mChanList, chanObj3, chanObj);
                }

                delete mpSaveDataFile;
                mpSaveDataFile = NULL;

                mpMoveLytDrop->getAnim(1)->play();
                mState = STATE_NORMAL_MOVE_CHAN_OUT;
            }
        }

        void ChannelSelect::calcNormalMoveChanOut() {
            if (!mpMoveLytMask->getAnim(1)->isPlaying() && !mpMoveLytObject->getAnim(1)->isPlaying() && !mpMoveLytDrop->getAnim(1)->isPlaying()) {
                f32 frame = System::getRndm()->get_u16() % 2000;
                unk_0x2C8->setCurrentFrame(frame);
                restartChannelModules();
                mState = STATE_NORMAL;
            }
        }

        void ChannelSelect::calcNormalDragScrl() {
            Button* button = getButton();
            if (button != NULL && button->isActive()) {
                button->update();
            }

            if (System::getControllerManager()->getController(mConChan) == NULL ||
                !System::getControllerManager()->getController(mConChan)->pinch()) {
                unk_0x2B8 = true;
            }

            moveDrag();

            if (mpLayout->isPlaying(0)) {
                return;
            }

            button = getButton();

            if (mState == STATE_DRAG_SCROLL_LEFT) {
                if (--mCurrentPage == 0) {
                    button->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                    mbLeftArrowVisible = false;
                } else if (!mbRightArrowVisible) {
                    button->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                    mbRightArrowVisible = true;
                }
            } else {
                if (++mCurrentPage == mMaxPages - 1) {
                    button->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
                    mbRightArrowVisible = false;
                } else if (mbLeftArrowVisible == 0) {
                    button->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    mbLeftArrowVisible = true;
                }
            }

            mpLayout->finishBinding();

            refreshChannelList(mCurrentPage);
            mState = STATE_NORMAL_DRAG;
        }

        BOOL ChannelSelect::onEventDrag(const char* paneName, u32 event, controller::Interface* con) {
            if (con != NULL && con != System::getControllerManager()->getController(mConChan)) {
                return TRUE;
            }

            int id = isInChannelPaneNames(paneName);

            if (id >= 0) {
                switch (event) {
                    case ::gui::EventHandler::ON_RELEASE: {
                        if (!con->pinch()) {
                            mMoveNewIndex = id;
                            mMoveNewPage = mCurrentPage;
                            unk_0x2B8 = true;
                            break;
                        }
                        break;
                    }
                    case ::gui::EventHandler::ON_POINT: {
                        if (isReleasableArea(mCurrentPage, id) || (mCurrentPage == mMoveOldPage && id == mMoveOldIndex)) {
                            searchList(mCurrentPage, id)->onPoint(2);
                            snd::getSystem()->startSE("WIPL_SE_CH_TARGETTING");
                            con->rumble(1);
                            break;
                        }
                        break;
                    }
                    case ::gui::EventHandler::ON_LEFT: {
                        if (isReleasableArea(mCurrentPage, id) || (mCurrentPage == mMoveOldPage && id == mMoveOldIndex)) {
                            searchList(mCurrentPage, id)->onLeft(2);
                            break;
                        }
                        break;
                    }
                }
            }

            return TRUE;
        }

        void ChannelSelect::onEventDerivedDrag(const char* paneName, u32 event, const controller::Interface* con) {
            if (con == NULL || con == System::getControllerManager()->getController(mConChan)) {
                switch (event) {
                    case ::gui::EventHandler::ON_LEFT: {
                        if (Button::cmpButtonName(paneName, Button::BTN_ARROW_LEFT) == 0 && mCurrentPage > 0) {
                            unk_0x2B0 = -1;
                        } else if (Button::cmpButtonName(paneName, Button::BTN_ARROW_RIGHT) == 0 && mCurrentPage < mMaxPages - 1) {
                            unk_0x2AC = -1;
                        }
                        break;
                    }
                    case ::gui::EventHandler::ON_POINT: {
                        if (Button::cmpButtonName(paneName, Button::BTN_ARROW_LEFT) == 0 && mCurrentPage > 0) {
                            if (unk_0x2B0 < 0) {
                                unk_0x2B0 = 0;
                            }
                        } else if (Button::cmpButtonName(paneName, Button::BTN_ARROW_RIGHT) == 0 && mCurrentPage < mMaxPages - 1) {
                            if (unk_0x2AC < 0) {
                                unk_0x2AC = 0;
                            }
                        }
                        break;
                    }
                }
            }
        }

        void ChannelSelect::startDrag(const controller::Interface* con, int page, int index) {
            if (con->getChannel() >= 0) {
                if (con->isValidDpd()) {
                    mDragPos = con->getDpdPos();
                } else {
                    mDragPos = nw4r::math::VEC2(0.0f, 0.0f);
                }

                mConChan = con->getChannel();
                mMoveOldPage = page;
                mMoveOldIndex = index;
                mMoveNewPage = -1;
                mMoveNewIndex = -1;
                unk_0x2AC = -1;
                unk_0x2B0 = -1;
                unk_0x2B4 = 0;
                unk_0x2B8 = false;

                System::getPointer()->changeType(con->getChannel(), PointerType::LayoutGrab);

                mpMoveLytMask->getAnim(0)->play();
                mpMoveLytObject->getAnim(0)->play();

                getButton()->disableBtn();

                ChannelObj* chanObj = NULL;
                FOREACH_CHANNEL_OBJ(chanObj) {
                    int chanPage = chanObj->mChanPage;
                    int chanIndex = chanObj->mChanIndex;
                    chanObj->onPinch(chanPage == page && chanIndex == index);
                }

                unk_0x184 = true;
                unk_0x185 = true;

                snd::getSystem()->startSEwithPos("WIPL_SE_CH_HOLD", mDragPos.x);

                mState = STATE_NORMAL_GRAB;
            }
        }

        void ChannelSelect::finishDrag() {
            if (isReleasableArea(mMoveNewPage, mMoveNewIndex)) {
                nw4r::math::VEC3 translate = searchList(mMoveNewPage, mMoveNewIndex)->getTranslate();
                mpMoveLytDrop->GetRootPane()->SetTranslate(translate);
                mpMoveLytDrop->getAnim(0)->play();

                snd::getSystem()->startSEwithPos("WIPL_SE_CH_SET", mDragPos.x);

                mpMoveLytMask->getAnim(1)->play();

                mState = STATE_NORMAL_MOVE_CHAN_IN;
            } else {
                snd::getSystem()->startSEwithPos("WIPL_SE_CH_NOT_MOVE", mDragPos.x);

                mState = STATE_NORMAL_RELEASE_WAIT;
            }

            System::getPointer()->changeType(mConChan, PointerType::LayoutPoint);

            mpMoveLytObject->getAnim(1)->play();

            getButton()->enableBtn();

            unk_0x2B8 = false;

            ChannelObj* chanObj = NULL;
            FOREACH_CHANNEL_OBJ(chanObj) {
                chanObj->initCursorAnim(TRUE);
            }

            for (int i = 0; i < MAX_CHANNEL_INDEX; i++) {
                mpGui->initPane(getChannelBasePane(i));
            }
        }

        bool ChannelSelect::isReleasableArea(int page, int index) {
            if (page < 0 || page >= mMaxPages) {
                return false;
            }

            if (index < 0 || index >= MAX_CHANNEL_INDEX) {
                return false;
            }
            if (page == mMoveOldPage && index == mMoveOldIndex) {
                return true;
            }
            return System::getChannelManager()->getChannel(page, index).loadedBnr == false;
        }

        void ChannelSelect::moveDrag() {
            if (System::getControllerManager()->getController(mConChan) && System::getControllerManager()->getController(mConChan)->isValidDpd()) {
                math::VEC2 pos = System::getControllerManager()->getController(mConChan)->getDpdProjectionPos();
                nw4r::math::VEC3 newPos(pos.x, -pos.y, 0.0f);
                mpMoveLytObject->GetRootPane()->SetTranslate(newPos);
                mpMoveLytObject->calcMtx();

                f32 speed = 0.0f;

                f32 newY = pos.y - mDragPos.y;
                f32 newX = pos.x - mDragPos.x;

                f32 val = (newX * newX) + (newY * newY);

                if (val > 0.0f) {
                    speed = (val * nw4r::math::FrSqrt(val));
                }

                snd::getSystem()->holdSEwithPosDis("WIPL_SE_CH_DRAG", pos.x, speed);
                mDragPos = pos;
            }
        }

        void ChannelSelectEventHandler::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            controller::Interface* con = reinterpret_cast<controller::Interface*>(data);

            BOOL result = FALSE;
            switch (mpInstance->mState) {
                case ChannelSelect::STATE_NORMAL_DRAG:
                case ChannelSelect::STATE_NORMAL_GRAB: {
                    result = mpInstance->onEventDrag(paneName, event, con);
                    break;
                }
            }

            if (!result) {
                int index = mpInstance->isInChannelPaneNames(paneName);
                if (index >= 0) {
                    ChannelObj* chanObj = mpInstance->searchList(mpInstance->mCurrentPage, index);
                    switch (event) {
                        // Drag and trig events are swapped, but still act as intended?
                        case ::gui::EventHandler::ON_TRIG: {
                            if (mpInstance->mState == ChannelSelect::STATE_NORMAL && con != NULL && con->pinchTrg() &&
                                System::getChannelManager()->isNormalChannel(mpInstance->mCurrentPage, index) &&
                                mpInstance->mMaxPages * 12 != (u32)System::getSaveData()->getNumValidChannel()) {
                                mpInstance->startDrag(con, mpInstance->mCurrentPage, index);
                            }
                            break;
                        }
                        case ::gui::EventHandler::ON_DRAG: {
                            if (mpInstance->mState == ChannelSelect::STATE_NORMAL && con != NULL && con->decide() && chanObj->isValid()) {
                                mpInstance->startChanTtlScene(chanObj);
                                TVRCManager::getHandle()->setEnable(FALSE);
                            }
                            break;
                        }
                        case ::gui::EventHandler::ON_POINT: {
                            if (mpInstance->mState == ChannelSelect::STATE_NORMAL && chanObj->isValid()) {
                                chanObj->onPoint(0);
                                snd::getSystem()->startSE("WIPL_SE_CH_TARGETTING");
                                con->rumble(1);
                            }
                            break;
                        }
                        case ::gui::EventHandler::ON_LEFT: {
                            if (mpInstance->mState == ChannelSelect::STATE_NORMAL && chanObj->isValid()) {
                                chanObj->onLeft(0);
                            }
                            break;
                        }
                    }
                }
            }
        }

        void CsChanSelButtonEventHandler::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            switch (mpInstance->mState) {
                case ChannelSelect::STATE_DRAG_SCROLL_RIGHT:
                case ChannelSelect::STATE_DRAG_SCROLL_LEFT:
                case ChannelSelect::STATE_NORMAL_GRAB:
                case ChannelSelect::STATE_NORMAL_DRAG: {
                    mpInstance->onEventDerivedDrag(paneName, event, con);
                    break;
                }
                default: {
                    switch (event) {
                        case ::gui::EventHandler::ON_TRIG: {
                            if (mpInstance->mState == ChannelSelect::STATE_NORMAL && System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT &&
                                con != NULL && con->downTrg(controller::BTN_INTERACT)) {
                                Button* button = getButton();
                                if (Button::cmpButtonName(paneName, Button::BTN_BBS_BOARD) == 0) {
                                    if (System::isSafeMode()) {
                                        System::getDialog()->callBtn0(MESG_CHAN_SEL_SAFE_MODE, 180);
                                        mpInstance->mState = ChannelSelect::STATE_NORMAL_SAFE_MODE_DIALOG;
                                        snd::getSystem()->startSE("WIPL_SE_GRAY_BUTTON");
                                    } else {
                                        mpInstance->setSomething();
                                        mpInstance->mState = ChannelSelect::STATE_START_BOARD_SCENE;
                                        mpInstance->tryToStartBoardScene();
                                        TVRCManager::getHandle()->setEnable(FALSE);
                                        snd::getSystem()->startSE("WIPL_SE_DECIDE");
                                    }
                                } else if (Button::cmpButtonName(paneName, Button::BTN_SETTING) == 0) {
                                    button->setEventHandler(NULL);
                                    button->get_sd_menu_btn()->setEventHandler(NULL);
                                    mpInstance->reserveAllSceneDestruction(SCENE_SETTING_BG, NULL);
                                    getBoard()->requestExit();
                                    System::getFader()->fadeOut();
                                    TVRCManager::getHandle()->setEnable(FALSE);
                                    mpInstance->mState = ChannelSelect::STATE_START_SETTING_SCENE;
                                    snd::getSystem()->startSE("WIPL_SE_DECIDE");
                                } else if (Button::cmpButtonName(paneName, Button::BTN_ARROW_LEFT) == 0 && mpInstance->mCurrentPage > 0) {
                                    button->animation(Button::IDANIM_ARROW_LEFT_SELECT);
                                    mpInstance->preparePageScrolling(ChannelSelect::STATE_PREP_LEFT_PAGE_SCROLL);
                                } else if (Button::cmpButtonName(paneName, Button::BTN_ARROW_RIGHT) == 0 &&
                                           mpInstance->mCurrentPage < mpInstance->mMaxPages - 1) {
                                    button->animation(Button::IDANIM_ARROW_RIGHT_SELECT);
                                    mpInstance->preparePageScrolling(ChannelSelect::STATE_PREP_RIGHT_PAGE_SCROLL);
                                }
                            }
                            break;
                        }
                    }
                }
            }
        }

        void CsChanSelSDMenuEventHandler::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            switch (event) {
                case ::gui::EventHandler::ON_TRIG: {
                    if (mpInstance->mState == ChannelSelect::STATE_NORMAL && System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT &&
                        con != NULL && con->downTrg(controller::BTN_INTERACT)) {
                        Button* button = getButton();
                        if (strcmp(paneName, getPaneName(SDMenuButton::BTN_SD_CARD)) == 0) {
                            button->animation(Button::IDANIM_SD_BUTTON_SELECT);
                            button->setEventHandler(NULL);
                            button->get_sd_menu_btn()->setEventHandler(NULL);
                            mpInstance->reserveAllSceneDestruction(SCENE_SD_BUTTON, NULL);
                            getBoard()->requestExit();
                            System::getFader()->fadeOut();
                            TVRCManager::getHandle()->setEnable(FALSE);
                            mpInstance->mState = ChannelSelect::STATE_START_SD_MENU_SCENE;
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                        }
                    }
                    break;
                }
            }
        }

        const char* CsChanSelSDMenuEventHandler::getPaneName(int index) {
            return SDMenuButton::getButtonName(index);
        }

        void ChannelSelect::startResetting() {
            snd::getSystem()->resetAllSound();
        }

        // Stripped out function generated a weak of math::VEC2().
#ifndef NON_MATCHING
        math::VEC2 ForceCTORWeak() {
            return math::VEC2(NULL, NULL);
        }
#endif  // NON_MATCHING
    }  // namespace scene
}  // namespace ipl
