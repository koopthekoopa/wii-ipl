#include "scene/channelTitle/iplChannelTitle.h"
#include "scene/channelSelect/iplChannelSelect.h"

#include "iplSound.h"
#include "iplSystem.h"

#include "system/iplNandWall.h"

#include "scene/parentalDialog/iplParentalDialog.h"

#include "scene/setting/iplSetting.h"

#include "scene/setting/iplNCDSetting.h"

#include <private/os.h>
#include <private/wpad.h>

// :)
#define PREV_LOADED_INDEX (1 - mLoadedIndex)

namespace ipl {
    namespace scene {
        ESTicketView ChannelTitle::msTicketView;
        ESTicketView ChannelTitle::msUnlockTicket;

        // clang-format off
        const char* ChannelTitle::mscBtnNames[BTN_MAX] = {
            "B_BtnA",
            "B_BtnB",
        };

        const char* ChannelTitle::mscChangeName[] = {
            "Change"
        };

        const char* ChannelTitle::mscAnimGroups[ANIM_GRP_MAX+1] = {
            "G_FocusBtnA",
            "G_FocusBtnB",
            "G_SelectBtnA",
            "G_SelectBtnB",
            "G_OnOffBtnA",
            "G_OnOffBtnB",
            "G_ChangeTextA",
            "G_ChangeTextB",
            NULL // ?
        };

        const char* ChannelTitle::mscAnimNames[ANIM_MAX] = {
            "my_ChTop_a_FocusBtnA_off.brlan",
            "my_ChTop_a_FocusBtn_on.brlan",
            "my_ChTop_a_SelectBtn_Ac.brlan",
            "my_ChTop_a_OffBtn.brlan",
            "my_ChTop_a_OnBtn.brlan",
            "my_ChTop_a_ChangeTextOut.brlan",
            "my_ChTop_a_ChangeTextIn.brlan",
            "my_ChTop_a_ChangeIn.brlan",
            "my_ChTop_a_ChangeRoop.brlan",
            "my_ChTop_a_ChangeOut.brlan"
        };

        const char* ChannelTitle::mscBannerAnims[BANNER_ANIM_MAX] = {
            "banner.brlan",
            "banner_Start.brlan",
            "banner_Loop.brlan"
        };

        const char* ChannelTitle::mscDiskGroups[DISK_ANIM_GRP_MAX] = {
            "G_Comment0",
            "G_Wii",
            "G_GC",
            // Not including the unused "G_DVD"
            "G_DiskIn",
            NULL
        };

        const char* ChannelTitle::mscDiskAnimNames[DISK_ANIM_MAX] = {
            "my_DiskCh_a_Start.brlan",
            "my_DiskCh_a_DiskStart.brlan",
            "my_DiskCh_a_DiskLoop.brlan",
            "my_DiskCh_a_DiskEnd.brlan",
            "my_DiskCh_a_DiskLost.brlan",
            "my_DiskCh_a_DiskIn.brlan",
            "my_DiskCh_a_DiskEject.brlan",
            "my_DiskCh_a_Unknown.brlan",
            "my_DiskCh_a_UnknownLoop.brlan",
            "my_DiskCh_a_UnknwnEject.brlan"
        };

        const char* ChannelTitle::mscDiskLytFile[] = {
            "my_DiskCh_a.brlyt"
        };

        const char* ChannelTitle::mscGCAnimGroups[] = {
            "G_Back"
        };

        const char* ChannelTitle::mscGCAnimNames[] = {
            "my_GCTop_a_BackLoop.brlan"
        };

        static const char* scWidePanes[3][4] = {
            {
                "Fre_a",
                "Fre_d",
                "Fre_i",
                "Fre_l",
            }, {
                "Fre_e",
                "Fre_f",
                "Fre_g",
                "Fre_h",
            }, {
                "Fre_b",
                "Fre_c",
                "Fre_j",
                "Fre_k",
            }
        };

        const char* ChannelTitle::mscButtonTextName[BTN_MAX] = {
            "T_BtnA",
            "T_BtnB"
        };

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

        // Titles:
        // Tiger Woods PGA Tour 08
        // Tiger Woods PGA Tour 07
        static const ESTitleId scSoundSizeSkipTitles[] = {
            'RT8\0',
            'RT7\0'
        };
        // clang-format on

        Button* ChannelTitle::getButton() {
            return (Button*)System::getSceneManager()->getScene(SCENE_BUTTON);
        }

        ParentalDialog* ChannelTitle::getParentalDialog() {
            return (ParentalDialog*)System::getSceneManager()->getScene(SCENE_PARENTAL_DIALOG);
        }

        ChannelTitle::ChannelTitle(EGG::Heap* heap, ChannelSelect* chanSel) : scene::FaderSceneBase(heap) {
            mState = STATE_INIT;
            mChanSceneID = 0;
            mParentalState = PARENTAL_STATE_NONE;
            unk_0x88 = 0;
            unk_0x8C = 0;
            unk_0x90 = false;
            mpChanSelScn = chanSel;
            mLoadedIndex = 0;
            mpChanBannerLyt = NULL;
            mpDiskBnrSound = NULL;
            unk_0x324 = 0;
            mpGCBannerFile = NULL;
            mpGCBannerLyt = NULL;
            mbDisplayLockedDialog = false;
            mFadeoutTick = 0;
            mpButtonEvent = new CsChanTtlButtonEventHandler(this);
            mpCurTicket = NULL;
            unk_0x360 = false;
            mTmpTitleID = 0;
            unk_0x370 = false;
            unk_0x371 = false;
            mLimitType = LIMIT_TYPE_COUNT;
            unk_0x37C = false;
            mModuleState = MODULE_STATE_INIT;
            mModuleType = MODULE_TYPE_NONE;
            mbModuleSceneChange = false;
            mbRSODoneCalc = false;
            unk_0x38C = 0;
            mpModuleFile = NULL;
            mCurRsoExpHeap = 0;
            mpRSOHeader = NULL;
            mpRSOBss = NULL;
            mpRSOCalc = NULL;
            mbRSOThreadExit = false;
            mbModuleTerminated = false;
            mpCSHeap = NULL;
            channel::Manager::getCurrentChannel(&mChanPage, &mChanIndex);
            mMaxPages = mpChanSelScn->mMaxPages;
            mDispTrans.x = mpChanSelScn->getDispChanTrans(mChanIndex).x;
            mDispTrans.y = mpChanSelScn->getDispChanTrans(mChanIndex).y;
            mDispTrans.z = 0.0f;
            mpLoadedLytFile[0] = NULL;
            mpLoadedLytFile[1] = NULL;
            mpLoadedBanner[0] = NULL;
            mpLoadedBanner[1] = NULL;
            mpLoadedBnrSound[0] = NULL;
            mpLoadedBnrSound[1] = NULL;
            mpLoadedDiskSound[0] = NULL;
            mpLoadedDiskSound[1] = NULL;

            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = FALSE;
            }
            setSceneParentFlags(SCN_PARENTFLAG_DRAW | SCN_PARENTFLAG_CALC);

            if (mpChanSelScn->mDiskState == ChannelSelect::DISK_STATE_PLAY_THUMB || mpChanSelScn->mDiskState == ChannelSelect::DISK_STATE_RVL_GAME) {
                mDiskState = DISK_STATE_WII_DISK_IDLE;
                unk_0x324 = 1;
            } else if (mpChanSelScn->mDiskState == ChannelSelect::DISK_STATE_GC_GAME_WAIT ||
                       mpChanSelScn->mDiskState == ChannelSelect::DISK_STATE_GC_GAME) {
                mDiskState = DISK_STATE_GC_DISK_IDLE;
            } else {
                mDiskState = DISK_STATE_INIT;
            }

            mDiskState2 = DISK_STATE_INIT;

            mpModuleWorkHeap = mpChanSelScn->mpModuleWorkHeap;
            mpModuleThread = mpChanSelScn->mpModuleThread;
            memset(mpModuleAnims, 0, sizeof(mpModuleAnims));

            mpPreviewBnrHeap = EGG::ExpHeap::create(0x48000, getSceneHeap(), MEM_HEAP_OPT_THREAD_SAFE | MEM_HEAP_OPT_DEBUG_FILL);
        }

        ChannelTitle::~ChannelTitle() {
        }

        void ChannelTitle::prepare() {
            startGetTicketLimitTask();

            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "chanTtl.ash");
            mpDiskBnrFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "diskBann.ash");
            mpLoadedLytFile[mLoadedIndex] = loadLayoutFileAsync(mChanPage, mChanIndex, &mpLoadedBanner[mLoadedIndex], &mpLoadedBnrSound[mLoadedIndex],
                                                                &mpLoadedDiskSound[mLoadedIndex]);

            loadModule(mChanPage, mChanIndex);
        }

        void ChannelTitle::create() {
            GXTexObj texObj[3];

            mpLayout = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_ChTop_a.brlyt");

            if ((u8)SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                mpLayout->FindPaneByName("Picture_04")->GetMaterial()->GetTexture(&texObj[0], 0);
                mpLayout->FindPaneByName("Picture_05")->GetMaterial()->GetTexture(&texObj[1], 0);
                mpLayout->FindPaneByName("Picture_06")->GetMaterial()->GetTexture(&texObj[2], 0);

                for (int i = 0; i < (int)ARRAY_LENGTH(scWidePanes); i++) {
                    for (int j = 0; j < (int)ARRAY_LENGTH(scWidePanes[0]); j++) {
                        mpLayout->FindPaneByName(scWidePanes[i][j])->GetMaterial()->SetTexture(0, texObj[i]);
                    }
                }
            }

            setMessage(mpLayout->FindPaneByName(mscButtonTextName[0]), MESG_CMN_WII_MENU);

            if (System::getChannelManager()->checkNeedUpdate(mChanPage, mChanIndex)) {
                setMessage(mpLayout->FindPaneByName(mscButtonTextName[BTN_B]), MESG_CHAN_TTL_BTN_UPDATE);
            } else {
                setMessage(mpLayout->FindPaneByName(mscButtonTextName[BTN_B]), MESG_CMN_START);
            }

            if (isEnableToExecute(mChanPage, mChanIndex)) {
                unk_0x8C = 1;
            }

            mpGrpAnims[ANIM_GRP_FOCUS_BTN_A][ANIM_BTM_FOCUS_IN] =
                mpLayout->bindToGroup(mscAnimNames[ANIM_BTM_FOCUS_IN], mscAnimGroups[ANIM_GRP_FOCUS_BTN_A], false, false);
            mpGrpAnims[ANIM_GRP_FOCUS_BTN_A][ANIM_BTM_FOCUS_OUT] =
                mpLayout->bindToGroup(mscAnimNames[ANIM_BTM_FOCUS_OUT], mscAnimGroups[ANIM_GRP_FOCUS_BTN_A], false);

            if (mpChanSelScn->mStartType == ChannelSelect::START_FROM_CHJUMP && isEnableToExecute(mChanPage, mChanIndex)) {
                mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN] =
                    mpLayout->bindToGroup(mscAnimNames[ANIM_BTM_FOCUS_IN], mscAnimGroups[ANIM_GRP_FOCUS_BTN_B], false);
                mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_OUT] =
                    mpLayout->bindToGroup(mscAnimNames[ANIM_BTM_FOCUS_OUT], mscAnimGroups[ANIM_GRP_FOCUS_BTN_B], false, false);
            } else {
                mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN] =
                    mpLayout->bindToGroup(mscAnimNames[ANIM_BTM_FOCUS_IN], mscAnimGroups[ANIM_GRP_FOCUS_BTN_B], false, false);
                mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_OUT] = mpLayout->bindToGroup(
                    mscAnimNames[ANIM_BTM_FOCUS_OUT], mscAnimGroups[ANIM_GRP_FOCUS_BTN_B], false, isEnableToExecute(mChanPage, mChanIndex));
            }

            mpGrpAnims[ANIM_GRP_SELECT_BTN_A][ANIM_SELECT_BTN] =
                mpLayout->bindToGroup(mscAnimNames[ANIM_SELECT_BTN], mscAnimGroups[ANIM_GRP_SELECT_BTN_A], false, false);
            mpGrpAnims[ANIM_GRP_SELECT_BTN_B][ANIM_SELECT_BTN] =
                mpLayout->bindToGroup(mscAnimNames[ANIM_SELECT_BTN], mscAnimGroups[ANIM_GRP_SELECT_BTN_B], false, false);
            mpGrpAnims[ANIM_GRP_ONOFF_BTN_A][ANIM_OFF_BTN] =
                mpLayout->bindToGroup(mscAnimNames[ANIM_OFF_BTN], mscAnimGroups[ANIM_GRP_ONOFF_BTN_A], false, false);
            mpGrpAnims[ANIM_GRP_ONOFF_BTN_B][ANIM_OFF_BTN] =
                mpLayout->bindToGroup(mscAnimNames[ANIM_OFF_BTN], mscAnimGroups[ANIM_GRP_ONOFF_BTN_B], false, false);
            mpGrpAnims[ANIM_GRP_ONOFF_BTN_A][ANIM_ON_BTN] =
                mpLayout->bindToGroup(mscAnimNames[ANIM_ON_BTN], mscAnimGroups[ANIM_GRP_ONOFF_BTN_A], false, false);
            mpGrpAnims[ANIM_GRP_ONOFF_BTN_B][ANIM_ON_BTN] = mpLayout->bindToGroup(mscAnimNames[ANIM_ON_BTN], mscAnimGroups[ANIM_GRP_ONOFF_BTN_B],
                                                                                  false, !isEnableToExecute(mChanPage, mChanIndex));

            for (int i = ANIM_GRP_CHANGE_BTN_A; i <= ANIM_GRP_CHANGE_BTN_B; i++) {
                for (int j = ANIM_CHANGE_TEXT_IN; j <= ANIM_CHANGE_TEXT_OUT; j++) {
                    mpGrpAnims[i][j] = mpLayout->bindToGroup(mscAnimNames[j], mscAnimGroups[i], false, false);
                }
            }

            for (int i = ANIM_CHANGE_IN; i <= ANIM_CHANGE_OUT; i++) {
                mpChangeAnims[i] = mpLayout->bind(mscAnimNames[i], mscChangeName[0], false, false);
            }

            mpLayout->finishBinding();

            ChannelTitleEventHandler* event = new ChannelTitleEventHandler(this);
            mpGui = new gui::PaneManager(event, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->createLayoutScene(*mpLayout->getNW4RLyt());
            mpGui->setAllComponentTriggerTarget(false);

            mpGui->getPaneComponentByPane(mpLayout->FindPaneByName(mscBtnNames[BTN_A]))->setTriggerTarget(true);
            mpGui->getPaneComponentByPane(mpLayout->FindPaneByName(mscBtnNames[BTN_B]))->setTriggerTarget(true);

            mpLimitRemainLyt = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_Timer_a.brlyt");
            mpLimitDoneLyt = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_Timer_b.brlyt");

            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLimitDoneLyt->FindPaneByName("T_TimerMes"));
            textBox->SetString(System::getMessage(MESG_CHAN_SEL_LIMIT_DONE));

            mpLockedDialogLyt = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_ChTopMes_a.brlyt");
            mpLockedDialogAnim[LOCKED_DIALOG_ANIM_APPEAR] = mpLockedDialogLyt->bind("my_ChTopMes_a_Appear.brlan");
            mpLockedDialogAnim[LOCKED_DIALOG_ANIM_DISAPPEAR] = mpLockedDialogLyt->bind("my_ChTopMes_a_Lost.brlan", false);
            mpLockedDialogLyt->finishBinding();

            updateLockedMsg(LOCKED_MSG_AUTO);
            dispTimeLimitWindow();

            mpDiskBnrLayout = new layout::Object(getSceneHeap(), mpDiskBnrFile, "arc", mscDiskLytFile[0]);

            bindDiskAnms();

            setMessage(mpDiskBnrLayout->FindPaneByName("T_Bar"), MESG_DISK_CHANNEL_NAME);
            setMessage(mpDiskBnrLayout->FindPaneByName("T_Comment0"), MESG_CHAN_SEL_NO_DISK);
            setMessage(mpDiskBnrLayout->FindPaneByName("T_Comment1"), MESG_CHAN_SEL_BAD_DISK);

            if (!isDiskChannelByDraw(mChanPage, mChanIndex)) {
                mpDiskBnrLayout->GetRootPane()->SetVisible(false);
            }

            mpDiskBnrLayout->finishBinding();

            createChanLayout();

            mpZoomAnim = new math::HermiteIntp<float>();
            mpZoomAnim->init(0.0f, 255.0f, 28.0f, 0.0f, 0.0f, ANIM_TYPE_FORWARD);
            mpZoomAnim->setAnmType(ANIM_TYPE_FORWARD);

            mpCapture = new (System::getTreasureHeap(), 32) utility::Capture(System::getTreasureHeap(), 0, 0, System::getRenderModeObj()->fbWidth,
                                                                             System::getRenderModeObj()->efbHeight, GX_TF_RGB565);

            unk_0x390 = 36000;
            unk_0x38C = 36000;

            mState = STATE_START_ZOOM_IN;

            tryToStartScene();

            mpRsoExpHeaps[0] = EGG::ExpHeap::create(0x80000, System::getMem2App(), MEM_HEAP_OPT_THREAD_SAFE | MEM_HEAP_OPT_DEBUG_FILL);
            mpRsoExpHeaps[1] = EGG::ExpHeap::create(0x80000, System::getMem2App(), MEM_HEAP_OPT_THREAD_SAFE | MEM_HEAP_OPT_DEBUG_FILL);
            getButton()->setUnk_0x105(true);
        }

        void ChannelTitle::calcCommon() {
            mpGui->calc();
            mpLayout->calc();

            if (mModuleType != MODULE_TYPE_CS) {
                calcChannelRso();
            } else {
                calcChannelCS();
            }

            if (System::getChannelManager()->getSceneID(mChanPage, mChanIndex) == SCENE_DISK_CHANNEL ? TRUE : FALSE) {
                updateDiskState(mChanPage, mChanIndex);
                mpDiskBnrLayout->calc();
            } else {
                calcModuleChannel();
                System::getChannelManager()->setUnk_0x1B81(false);
            }

            if ((mState == STATE_NORMAL || mState == STATE_WAIT_TMD || mState == STATE_PREPARE_BOOT || mState == STATE_BOOT_SCENE) && !unk_0x90 &&
                mpChanBannerAnims[BANNER_ANIM_START] && !mpChanBannerAnims[BANNER_ANIM_START]->isPlaying()) {
                if (mpChanBannerAnims[BANNER_ANIM_LOOP_AFTER_START] != NULL) {
                    mpChanBannerAnims[BANNER_ANIM_LOOP_AFTER_START]->play();
                } else if (mpChanBannerAnims[BANNER_ANIM_LOOP] != NULL) {
                    mpChanBannerAnims[BANNER_ANIM_LOOP]->play();
                }
                mpChanBannerAnims[BANNER_ANIM_START] = NULL;
            }

            if (mState == STATE_BOOT_SCENE && !unk_0x37C && !mpGrpAnims[ANIM_GRP_SELECT_BTN_B][ANIM_SELECT_BTN]->isPlaying()) {
                mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN]->play();
                unk_0x37C = true;
            }

            if (mpChanBannerLyt != NULL) {
                mpChanBannerLyt->calc();
            }

            mpLimitRemainLyt->calc();
            mpLimitDoneLyt->calc();
            mpLockedDialogLyt->calc();
        }

        FaderSceneCommand ChannelTitle::calcFadein() {
            if (mState == STATE_START_ZOOM_IN) {
                tryToStartScene();
                return FADER_SCN_CONTINUE;
            }

            if (!mpZoomAnim->isPlaying()) {
                initChanAnmAndSound();

                Button* button = getButton();
                button->setEventHandler(mpButtonEvent);

                if (mpChanSelScn->mStartType != ChannelSelect::START_FROM_CHJUMP) {
                    button->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    button->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                }

                mState = STATE_NORMAL;

                return FADER_SCN_NEXT;

            } else {
                mpZoomAnim->calc();
                return FADER_SCN_CONTINUE;
            }
        }

        FaderSceneCommand ChannelTitle::calcNormal() {
            FaderSceneCommand result;

            switch (mState) {
                case STATE_NORMAL: {
                    calcNormalNormal();
                    break;
                }
                case STATE_PREPARE_BOOT: {
                    prepareForBoot2(mChanSceneID);
                    mState = STATE_BOOT_SCENE;
                    break;
                }
                case STATE_NORMAL_CHANGE_WAIT: {
                    calcNormalChangeWait();
                    break;
                }
                case STATE_NORMAL_CHANGE_NEXT: {
                    calcNormalChangeNext();
                    break;
                }
                case STATE_START_ZOOM_OUT: {
                    tryToGoBackward();
                    break;
                }
                case STATE_NORMAL_PARENTAL_DIALOG: {
                    calcNormalParentalDialog();
                    break;
                }
                case STATE_NORMAL_SETTING_DIALOG: {
                    calcNormalSettingDialog();
                    break;
                }
                case STATE_NORMAL_CONTROLLER_DIALOG: {
                    calcNormalControllerDialog();
                    break;
                }
                case STATE_WAIT_TMD: {
                    calcNormalWaitTmd();
                    break;
                }
                case STATE_WAIT_LOCKED_TITLE: {
                    calcNormalWaitLockedTitle();
                    break;
                }
                case STATE_NORMAL_LOCKED_DISK_DIALOG: {
                    calcNormalLockedDiskDialog();
                    break;
                }
                case STATE_NORMAL_UPDATE_DIALOG: {
                    calcNormalUpdateDialog();
                    break;
                }
                case STATE_NORMAL_UPDATE_ACCEPT_DIALOG: {
                    calcNormalUpdateAcceptDialog();
                    break;
                }
                case STATE_NORMAL_UPDATING: {
                    calcNormalUpdating();
                    break;
                }
                case STATE_NORMAL_UPDATE_SUCCESS: {
                    calcNormalUpdateSucceeded();
                    break;
                }
                case STATE_NORMAL_UPDATE_FAIL: {
                    calcNormalUpdateFailed();
                    break;
                }
                case STATE_NORMAL_UPDATE_RESET: {
                    calcNormalUpdateReset();
                    break;
                }
                case STATE_NORMAL_UPDATE_WAITING: {
                    calcNormalUpdateWaiting();
                    break;
                }
                case STATE_DONE: {
                    return FADER_SCN_CONTINUE;
                }
            }

            if (mState == STATE_BOOT_SCENE) {
                mbModuleSceneChange = true;
                unk_0x88++;
                System::getPointer()->setVisible(false);

                if (mTmpTitleID && unk_0x370) {
                    mTmpTitleID = 0;
                    SCFlushAsync(NULL);
                }

                if (isEnableAppStart() && unk_0x370) {
                    result = FADER_SCN_NEXT;
                } else {
                    result = FADER_SCN_CONTINUE;
                }
            } else if (mState == STATE_ZOOM_OUT || mState == STATE_GOTO_SETTING) {
                result = FADER_SCN_NEXT;
                mbModuleSceneChange = true;
            } else {
                result = FADER_SCN_CONTINUE;
            }
            return result;
        }

        void ChannelTitle::initCalcFadeout() {
            Button* button = getButton();
            if (mState == STATE_BOOT_SCENE || mState == STATE_GOTO_SETTING) {
                System::getFader()->fadeOut();
                snd::getSystem()->stopAllSound(20);
                OSReport("sound stopped\n");
            } else if (mState == STATE_ZOOM_OUT) {
                button->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                button->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
            }

            button->setEventHandler(NULL);
        }

        FaderSceneCommand ChannelTitle::calcFadeout() {
            if (mState == STATE_BOOT_SCENE) {
                if (mFadeoutTick == 0 && WPADGetStatus() == 0) {
                    mFadeoutTick = OSGetTick();
                }

                if (System::getFader()->getStatus() == EGG::Fader::PREPARE_IN && System::isReceiveScheduleStopped()) {
                    if (System::getNwc24Manager() && !System::getNwc24Manager()->isUnk0xA31()) {
                        goto scn_continue;
                    }

                    if (SCCheckStatus() != SC_STATUS_BUSY) {
                        OSReport("NWC24 Scheduler stopped.\n");
                        SDVFWorker* sdWorker = System::getCdbManager() ? System::getCdbManager()->getSDWorker() : NULL;
                        if (mChanSceneID == SCENE_UNLOCKED_TITLE) {
                            if (!nandwall::checkNandCapacityAppBootable()) {
                                OSReport("Nand full! OSRebootSystem.\n");
                                rebootSystem();
                            }

                            for (; WPADGetStatus() != 0 || System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_8 ||
                                   !System::getSaveData()->isFinished(mpSaveDataFile) ||
                                   (mModuleType != MODULE_TYPE_NONE && mModuleState != MODULE_STATE_4) ||
                                   (sdWorker != NULL && sdWorker->is_working());) {
                                snd::getSystem()->calc();
                                System::getBS2Manager()->update();
                                VIWaitForRetrace();
                                if (mModuleType != MODULE_TYPE_CS) {
                                    calcChannelRso();
                                } else {
                                    calcChannelCS();
                                }

                                if (WPADGetStatus() != 0) {
                                    OSReport("wait for WPAD\n");
                                }
                                if (System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_8) {
                                    OSReport("wait for BS2\n");
                                }
                            }

                            if (sdWorker != NULL) {
                                sdWorker->terminate_async();

                                while (!sdWorker->is_terminated()) {
                                    snd::getSystem()->calc();
                                    VIWaitForRetrace();
                                }

                                OSReport("SDVFWorker teminated.\n");
                            }

                            delete mpSaveDataFile;

                            VISetBlack(TRUE);
                            VIFlush();
                            VIWaitForRetrace();

                            OSReport("VI Black\n");
                            while (!__OSSyncSram()) {
                                OSReport("sync sram\n");
                            }

                            ESTitleId titleId = System::getChannelManager()->getTitleID(mChanPage, mChanIndex);

                            wchar_t titleName[2][channel::META_CHANNEL_NAME_LENGTH + 1];
                            memcpy(titleName[0], System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 0), sizeof(titleName[0]));
                            memcpy(titleName[1], System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 1), sizeof(titleName[1]));

                            char code[] = {((char*)&mCurGameCode)[0], ((char*)&mCurGameCode)[1]};
                            __OSCreatePlayRecord(titleName[0], &((char*)&titleId)[sizeof(ESTitleId32)] /* :( */, code);
                            OSReport("Create play recode\n");  // @BUG: recode instead of record

                            BS2SetStateFlags();

                            OSReport("Launch\n");

                            char* args = System::getChannelManager()->hasLoadedChJump() ? System::getChannelManager()->getChJumpData() : NULL;
                            if (args != NULL) {
                                __OSLaunchTitlelForSystem(titleId, TRUE, args, NULL);
                            } else {
                                __OSLaunchTitlevForSystem(titleId, FALSE, NULL);
                            }
                        } else if (mChanSceneID == SCENE_DISK_CHANNEL) {
                            if (!nandwall::checkNandCapacityAppBootable()) {
                                OSReport("Nand full! OSRebootSystem.\n");
                                rebootSystem();
                            }

                            while (sdWorker != NULL && sdWorker->is_working()) {
                                VIWaitForRetrace();
                            }

                            if (sdWorker != NULL) {
                                sdWorker->terminate_async();

                                while (!sdWorker->is_terminated()) {
                                    snd::getSystem()->calc();
                                    VIWaitForRetrace();
                                }

                                OSReport("SDVFWorker teminated.\n");
                            }

                            if (mDiskState == DISK_STATE_WII_DISK_IDLE) {
                                wchar_t titleName[2][channel::META_CHANNEL_NAME_LENGTH + 1];
                                memcpy(titleName[0], System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 0), sizeof(titleName[0]));
                                memcpy(titleName[1], System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 1), sizeof(titleName[1]));

                                char *gameCode, *makerCode;
                                System::getBS2Manager()->getDiskInfo(&gameCode, &makerCode);
                                __OSCreatePlayRecord(titleName[0], gameCode, makerCode);
                                OSReport("Create play recode\n");  // @BUG: recode instead of record

                                System::getBS2Manager()->startRVLGame();
                            } else if (mDiskState == DISK_STATE_GC_DISK_IDLE) {
                                System::getBS2Manager()->startGCGame();
                            }
                        } else if (mChanSceneID == SCENE_LOCKED_TITLE) {
                            if (!nandwall::checkNandCapacityAppBootable()) {
                                OSReport("Nand full! OSRebootSystem.\n");
                                rebootSystem();
                            }

                            for (; !System::getSaveData()->isFinished(mpSaveDataFile) ||
                                   (mModuleType != MODULE_TYPE_NONE && mModuleState != MODULE_STATE_4) ||
                                   (sdWorker != NULL && sdWorker->is_working());) {
                                snd::getSystem()->calc();
                                VIWaitForRetrace();
                                if (mModuleType != MODULE_TYPE_CS) {
                                    calcChannelRso();
                                } else {
                                    calcChannelCS();
                                }

                                if (WPADGetStatus() != 0) {
                                    OSReport("wait for WPAD\n");
                                }
                                if (System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_8) {
                                    OSReport("wait for BS2\n");
                                }
                            }

                            if (sdWorker != NULL) {
                                sdWorker->terminate_async();

                                while (!sdWorker->is_terminated()) {
                                    snd::getSystem()->calc();
                                    VIWaitForRetrace();
                                }

                                OSReport("SDVFWorker teminated.\n");
                            }

                            delete mpSaveDataFile;

                            ESTitleId titleId = System::getChannelManager()->getTitleID(mChanPage, mChanIndex);

                            wchar_t titleName[2][channel::META_CHANNEL_NAME_LENGTH + 1];
                            memcpy(titleName[0], System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 0), sizeof(titleName[0]));
                            memcpy(titleName[1], System::getChannelManager()->getTitleName(mChanPage, mChanIndex, 1), sizeof(titleName[1]));

                            char code[] = {((char*)&mCurGameCode)[0], ((char*)&mCurGameCode)[1]};
                            __OSCreatePlayRecord(titleName[0], &((char*)&titleId)[sizeof(ESTitleId32)] /* :( */, code);
                            OSReport("Create play recode\n");  // @BUG: recode instead of record

                            System::getBS2Manager()->startRVLGame();
                        } else {
                            math::VEC3 trans(0.0f, 0.0f, 0.0f);
                            math::VEC2 scale(1.0f, 1.0f);
                            utility::Graphics::setOrthoTrans(trans);
                            utility::Graphics::setOrthoScale(scale);
                        }

                        return FADER_SCN_NEXT;
                    }
                }
            } else if (mState == STATE_ZOOM_OUT) {
                if (!mpZoomAnim->isPlaying()) {
                    return FADER_SCN_NEXT;
                }
                mpZoomAnim->calc();
            } else if (mState == STATE_GOTO_SETTING) {
                if (System::getFader()->getStatus() == EGG::Fader::PREPARE_IN) {
                    math::VEC3 trans(0.0f, 0.0f, 0.0f);
                    utility::Graphics::setOrthoTrans(trans);

                    math::VEC2 scale(1.0f, 1.0f);
                    utility::Graphics::setOrthoScale(scale);

                    snd::getSystem()->initFx();
                    snd::getSystem()->startBGM("WIPL_BGM_MENU");

                    return FADER_SCN_NEXT;
                }
            }

        scn_continue:
            return FADER_SCN_CONTINUE;
        }

        void ChannelTitle::draw() {
            if (mState == STATE_START_ZOOM_IN) {
                return;
            }

            if (System::onDrawLayer(DRAW_LAYER_2)) {
                if (mState == STATE_ZOOMING_IN || mState == STATE_ZOOM_OUT) {
                    utility::Graphics::setOrtho();

                    nw4r::ut::Rect drawRect(mDispTrans.x - mpChanSelScn->mChanThumbOff_X, mDispTrans.y + mpChanSelScn->mChanThumbOff_Y,
                                            mDispTrans.x + mpChanSelScn->mChanThumbOff_X, mDispTrans.y - mpChanSelScn->mChanThumbOff_Y);

                    utility::Graphics::drawTexture(drawRect, mpCapture->getGXTex(), (GXColor){255, 255, 255, (u8)mpZoomAnim->get()}, 1);
                    drawPolygonAroundRect(drawRect, (GXColor){0, 0, 0, (u8)mpZoomAnim->get()});
                } else {
                    utility::Graphics::setDefaultOrtho();

                    if (mpChanBannerLyt != NULL) {
                        mpChanBannerLyt->draw();
                    }

                    mpDiskBnrLayout->draw();
                    mpLimitRemainLyt->draw();
                    mpLimitDoneLyt->draw();
                    mpLockedDialogLyt->draw();

                    mpLayout->draw();
                }
            } else if (System::onDrawLayer(DRAW_LAYER_1)) {
                if (mState == STATE_ZOOMING_IN || mState == STATE_ZOOM_OUT) {
                    utility::Graphics::setDefaultOrtho();

                    if (mpChanBannerLyt != NULL) {
                        mpChanBannerLyt->draw();
                    }

                    mpDiskBnrLayout->draw();
                    mpLimitRemainLyt->draw();
                    mpLimitDoneLyt->draw();
                    mpLockedDialogLyt->draw();

                    mpLayout->draw();

                    mpCapture->capture(TRUE);
                }
            }
        }

        void ChannelTitle::destroy() {
            if (mpLoadedLytFile[0] != NULL && mpLoadedLytFile[0] != mpDiskBnrFile && mpLoadedLytFile[0] != mpGCBannerFile) {
                delete mpLoadedLytFile[0];
            }
            if (mpLoadedLytFile[1] != NULL && mpLoadedLytFile[1] != mpDiskBnrFile && mpLoadedLytFile[1] != mpGCBannerFile) {
                delete mpLoadedLytFile[1];
            }

            if (mpChanBannerLyt != NULL && mpChanBannerLyt != mpDiskBnrLayout && mpChanBannerLyt != mpGCBannerLyt) {
                mpChanBannerLyt->destroyHeap();
            }

            if (mpGCBannerFile != NULL) {
                delete mpGCBannerFile;
            }
            if (mpGCBannerLyt != NULL) {
                mpGCBannerLyt->destroyHeap();
            }

            if (mpLoadedBnrSound[0] != NULL) {
                delete mpLoadedBnrSound[0];
            }
            if (mpLoadedBnrSound[1] != NULL) {
                delete mpLoadedBnrSound[1];
            }

            delete mpCapture;
            delete mpModuleFile;

            mpRsoExpHeaps[0]->destroy();
            mpRsoExpHeaps[1]->destroy();

            mpPreviewBnrHeap->destroy();

            System::getChannelManager()->resetChJumpLoad();

            getButton()->setUnk_0x105(false);
        }

        BOOL ChannelTitle::isResetAcceptable() const {
            if ((mState == STATE_BOOT_SCENE && (mChanSceneID == SCENE_DISK_CHANNEL || mChanSceneID == SCENE_UNLOCKED_TITLE)) ||
                (mState >= STATE_NORMAL_UPDATE_DIALOG && mState <= STATE_NORMAL_UPDATE_RESET)) {
                return FALSE;
            } else {
                return TRUE;
            }
        }

        BOOL ChannelTitle::isInLaunching() const {
            if (mState == STATE_BOOT_SCENE && System::getFader()->getStatus() != EGG::Fader::PREPARE_OUT) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        BOOL ChannelTitle::isFirstCall() const {
            return mbModuleTerminated == FALSE;
        }

        void ChannelTitle::getRsoExBufData(void* rsoExBuf) const {
            memcpy(rsoExBuf, System::getChannelManager()->getChannel(mModulePage, mModuleIndex).rsoExBuf, channel::RSO_EXTRA_BUFFER_LENGTH);
        }

        void ChannelTitle::setRsoExBufData(const void* rsoExBuf) {
            memcpy(System::getChannelManager()->getChannel(mModulePage, mModuleIndex).rsoExBuf, rsoExBuf, channel::RSO_EXTRA_BUFFER_LENGTH);
        }

        void ChannelTitle::getRsoTitleDataPath(char* dataPath) const {
            sprintf(dataPath, "/title/%08x/%08x/data/", (u32)ES_TITLE_TYPE(System::getChannelManager()->getTitleID(mModulePage, mModuleIndex)),
                    (u32)ES_TITLE_CODE(System::getChannelManager()->getTitleID(mModulePage, mModuleIndex)));
        }

        layout::Animator* ChannelTitle::getRsoAnimator(int idx) const {
            if (mModuleState != MODULE_STATE_4) {
                return mpModuleAnims[idx];
            }
            return NULL;
        }

        BOOL ChannelTitle::isStartAnimFinished() const {
            return !((mpChanBannerAnims[BANNER_ANIM_LOOP] == NULL && mpChanBannerAnims[BANNER_ANIM_START] == NULL) ||
                     (mpChanBannerAnims[BANNER_ANIM_START] != NULL && !mpChanBannerAnims[BANNER_ANIM_START]->isPlaying())) == FALSE ||
                   !(mpChanBannerAnims[BANNER_ANIM_LOOP] != NULL && !mpChanBannerAnims[BANNER_ANIM_LOOP]->isPlaying()) == FALSE;
        }

        void* ChannelTitle::allocFromRsoExHeap(u32 size, int align) {
            return mpRsoExpHeaps[mCurRsoExpHeap]->alloc(size, align);
        }

        void ChannelTitle::freeToRsoExHeap(void* buffer) {
            if (buffer != NULL) {
                return mpRsoExpHeaps[mCurRsoExpHeap]->free(buffer);
            }
        }

        u32 ChannelTitle::getAllocatableSizeForRsoExHeap() const {
            return mpRsoExpHeaps[mCurRsoExpHeap]->getAllocatableSize();
        }

        void ChannelTitle::setDebugRsoInterval(u32 val) {
        }

        void ChannelTitle::createChanLayout() {
            if ((System::getChannelManager()->getSceneID(mChanPage, mChanIndex) == SCENE_DISK_CHANNEL) ? TRUE : FALSE) {
                createDiskChanLayout();
            } else {
                createModuleChanLayout();
                if (mpChanBannerLyt != NULL) {
                    mpChanBannerLyt->finishBinding();
                }
            }
        }

        void ChannelTitle::createDiskChanLayout() {
            nand::LayoutFile* lytFile = mpLoadedLytFile[mLoadedIndex];
            if (lytFile == mpDiskBnrFile) {
                mpChanBannerLyt = mpDiskBnrLayout;

                for (int i = 0; i < BANNER_ANIM_MAX; i++) {
                    mpChanBannerAnims[i] = NULL;
                }

                for (int i = 0; i < DISK_ANIM_GRP_MAX; i++) {
                    for (int j = 0; j < DISK_ANIM_MAX; j++) {
                        layout::Animator* anim = mpDiskBnrAnims[i][j];
                        if (anim != NULL) {
                            anim->stop();
                        }
                    }
                }

                mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_START]->initAnmFrame();
                mpDiskBnrLayout->GetRootPane()->SetVisible(true);
                mpChanBannerLyt->calc();
            } else if (mpGCBannerFile != NULL && lytFile == mpGCBannerFile) {
                if (mpGCBannerLyt == NULL) {
                    mpGCBannerLyt = layout::Object::create(System::getMem2App(), 0x40000, lytFile, "arc", "my_GCTop_a.brlyt");
                    mpGCBannerAnim = mpGCBannerLyt->bindToGroup(mscGCAnimNames[0], mscGCAnimGroups[0], false);
                    mpGCBannerLyt->finishBinding();
                    mpGCBannerLyt->adjustHeap();
                }
                mpChanBannerLyt = mpGCBannerLyt;
                mpChanBannerAnims[BANNER_ANIM_LOOP] = mpGCBannerAnim;
                mpGCBannerAnim->setAnmType(ANIM_TYPE_LOOP);
                mpChanBannerAnims[BANNER_ANIM_START] = NULL;
                mpChanBannerAnims[BANNER_ANIM_LOOP_AFTER_START] = NULL;
                mpChanBannerAnims[BANNER_ANIM_LOOP]->initAnmFrame();
                mpChanBannerLyt->calc();
            } else {
                if (mpLoadedBanner[mLoadedIndex] != NULL) {
                    mpChanBannerLyt = layout::Object::create(mpPreviewBnrHeap, 0x40000, mpLoadedBanner[mLoadedIndex], "arc", "banner.brlyt");
                    ChannelObj::setLangPane(mpChanBannerLyt);
                    bindChanAnms();
                    mpChanBannerLyt->finishBinding();
                    unk_0x90 = true;
                } else {
                    mpChanBannerLyt = NULL;

                    for (int i = 0; i < BANNER_ANIM_MAX; i++) {
                        mpChanBannerAnims[i] = NULL;
                    }
                }
            }
        }

        void ChannelTitle::createModuleChanLayout() {
            if (mpLoadedLytFile[mLoadedIndex]->checkData() == nand::RESULT_SUCCESS) {
                mpChanBannerLyt = layout::Object::create(mpPreviewBnrHeap, 0x40000, mpLoadedLytFile[mLoadedIndex], "arc", "banner.brlyt");
                ChannelObj::setLangPane(mpChanBannerLyt);
                bindChanAnms();
            } else {
                mpChanBannerLyt = NULL;

                for (int i = 0; i < BANNER_ANIM_MAX; i++) {
                    mpChanBannerAnims[i] = NULL;
                }
            }
        }

        void ChannelTitle::calcModuleChannel() {
            if (mState == STATE_NORMAL) {
                if (System::getChannelManager()->getUnlockChannelState(mChanPage, mChanIndex)) {
                    if ((unk_0x8C == 0 && isEnableToExecute(mChanPage, mChanIndex)) || (unk_0x8C != 0 && !isEnableToExecute(mChanPage, mChanIndex))) {
                        updateLockedMsg(LOCKED_MSG_AUTO);
                        changeStartButton();
                    }
                }
            }
        }

        void ChannelTitle::calcNormalNormal() {
            if (mpChanSelScn->mStartType == ChannelSelect::START_FROM_CHJUMP) {
                if (!isEnableToExecute(mChanPage, mChanIndex)) {
                    getButton()->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    getButton()->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                    System::getChannelManager()->resetChJumpLoad();
                    snd::getSystem()->startSE("WIPL_SE_GRAY_BUTTON");
                } else {
                    reserveNextScene();
                    mpGrpAnims[ANIM_GRP_SELECT_BTN_B][ANIM_SELECT_BTN]->play();
                    snd::getSystem()->startSE("WIPL_SE_DECIDE");
                }
                mpChanSelScn->mStartType = ChannelSelect::START_FROM_BOARD;
            } else {
                Button* button = getButton();

                if (button != NULL && button->isActive()) {
                    button->update();
                }

                if (mState == STATE_NORMAL) {
                    controller::Interface* con = System::getMasterController();
                    int page, index;
                    if (con->down(controller::BTN_NEXT_LEFT)) {
                        searchChannel(TRUE, &page, &index);
                        startChangeChannel(page, index);
                        snd::getSystem()->startSE("WSD_SELECT");
                    } else if (con->down(controller::BTN_NEXT_RIGHT)) {
                        searchChannel(FALSE, &page, &index);
                        startChangeChannel(page, index);
                        snd::getSystem()->startSE("WSD_SELECT");
                    } else {
                        mpGui->update();
                        if (isEnableToExecute(mChanPage, mChanIndex)) {
                            if (unk_0x8C == 0) {
                                unk_0x8C = 1;
                            } else if (unk_0x8C == 1) {
                                unk_0x8C = 2;
                            }
                        }
                    }
                }
            }
        }

        void ChannelTitle::calcNormalChangeWait() {
            if (mpChangeAnims[ANIM_CHANGE_IN]->isPlaying()) {
                return;
            }

            if ((mpLoadedLytFile[PREV_LOADED_INDEX] == NULL || mpLoadedLytFile[PREV_LOADED_INDEX]->isFinished()) &&
                (mpLoadedBnrSound[PREV_LOADED_INDEX] == NULL || mpLoadedBnrSound[PREV_LOADED_INDEX]->isFinished()) &&
                (!mpGrpAnims[ANIM_GRP_CHANGE_BTN_B][ANIM_CHANGE_TEXT_IN]->isPlaying() &&
                 !mpGrpAnims[ANIM_GRP_CHANGE_BTN_B][ANIM_CHANGE_TEXT_OUT]->isPlaying() && unk_0x371) &&
                (System::getChannelManager()->isLoadedLockedMsg() && !mpLockedDialogAnim[LOCKED_DIALOG_ANIM_DISAPPEAR]->isPlaying()) &&
                (mModuleType == MODULE_TYPE_NONE || mModuleState == MODULE_STATE_4)) {
                if (mpChangeAnims[ANIM_CHANGE_LOOP]->isPlaying()) {
                    mpChangeAnims[ANIM_CHANGE_LOOP]->stop();
                }

                if (mpLoadedLytFile[mLoadedIndex] == mpDiskBnrFile) {
                    mpDiskBnrLayout->GetRootPane()->SetVisible(false);
                } else if (mpLoadedLytFile[mLoadedIndex] == NULL || mpLoadedLytFile[mLoadedIndex] != mpGCBannerFile) {
                    if (mpLoadedLytFile[mLoadedIndex] == NULL && mpLoadedBanner[mLoadedIndex] != NULL) {
                        if (mpChanBannerLyt != NULL) {
                            mpChanBannerLyt->destroyHeap();
                        }
                    } else if (mpLoadedLytFile[mLoadedIndex] != NULL && mpLoadedBanner[mLoadedIndex] == NULL) {
                        delete mpLoadedLytFile[mLoadedIndex];
                        if (mpChanBannerLyt != NULL) {
                            mpChanBannerLyt->destroyHeap();
                        }
                    }
                }

                mpLoadedLytFile[mLoadedIndex] = NULL;
                mpChanBannerLyt = NULL;

                mpRsoExpHeaps[mCurRsoExpHeap]->freeAll();
                mCurRsoExpHeap ^= 1;

                dispTimeLimitWindow();

                snd::getSystem()->stopBannerSound();
                snd::getSystem()->stopSE(mpDiskBnrSound);

                if (mpLoadedBnrSound[mLoadedIndex] != NULL) {
                    delete mpLoadedBnrSound[mLoadedIndex];
                }

                mpLoadedBnrSound[mLoadedIndex] = NULL;
                mpLoadedDiskSound[mLoadedIndex] = NULL;
                mLoadedIndex = PREV_LOADED_INDEX;
                loadModule(mChanPage, mChanIndex);
                createChanLayout();

                mpChangeAnims[ANIM_CHANGE_OUT]->play();

                if (mpGrpAnims[ANIM_GRP_CHANGE_BTN_B][ANIM_CHANGE_TEXT_IN]->getCurrentFrame() ==
                    mpGrpAnims[ANIM_GRP_CHANGE_BTN_B][ANIM_CHANGE_TEXT_IN]->getMaxFrame()) {
                    if (System::getChannelManager()->checkNeedUpdate(mChanPage, mChanIndex)) {
                        setMessage(mpLayout->FindPaneByName(mscButtonTextName[BTN_B]), MESG_CHAN_SEL_UPDATE_BTN, false);
                    } else {
                        setMessage(mpLayout->FindPaneByName(mscButtonTextName[BTN_B]), MESG_CHAN_SEL_START_BTN, false);
                    }
                    mpGrpAnims[ANIM_GRP_CHANGE_BTN_B][ANIM_CHANGE_TEXT_OUT]->play();
                    mpGrpAnims[ANIM_GRP_CHANGE_BTN_B][ANIM_CHANGE_TEXT_IN]->initAnmFrame();
                    mpGrpAnims[ANIM_GRP_CHANGE_BTN_B][ANIM_CHANGE_TEXT_IN]->stop();
                }

                changeStartButton();

                if (System::getChannelManager()->getUnlockChannelState(mChanPage, mChanIndex) == channel::UNLOCK_STATE_1) {
                    updateLockedMsg(LOCKED_MSG_APPEAR);
                }
                mState = STATE_NORMAL_CHANGE_NEXT;
            } else {
                if (!mpChangeAnims[ANIM_CHANGE_LOOP]->isPlaying()) {
                    mpChangeAnims[ANIM_CHANGE_LOOP]->play();
                }
            }
        }

        void ChannelTitle::calcNormalChangeNext() {
            if (!mpChangeAnims[ANIM_CHANGE_OUT]->isPlaying()) {
                initChanAnmAndSound();
                mState = STATE_NORMAL;
            }
        }

        void ChannelTitle::calcNormalParentalDialog() {
            if (mChanSceneID == SCENE_DISK_CHANNEL &&
                (System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_RVL_GAME || System::getChannelManager()->isUnk_0x1B81())) {
                mParentalState = PARENTAL_STATE_FAILED;
            }

            ParentalDialog* parentalDialog = getParentalDialog();
            if (parentalDialog == NULL && System::getReservedScene() == NULL) {
                if (mParentalState == PARENTAL_STATE_SUCCESS) {
                    if (mChanSceneID == SCENE_SETTING) {
                        reserveSettingScene(true);
                    } else if (mChanSceneID == SCENE_UNLOCKED_TITLE) {
                        prepareForBoot2(mChanSceneID);
                        mState = STATE_BOOT_SCENE;
                    } else if (mChanSceneID == SCENE_DISK_CHANNEL) {
                        prepareForBoot2(mChanSceneID);
                        System::getBS2Manager()->reserveRVLGame();
                        mState = STATE_BOOT_SCENE;
                    } else if (mChanSceneID == SCENE_LOCKED_TITLE) {
                        mState = STATE_WAIT_LOCKED_TITLE;
                    }
                } else {
                    getButton()->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    getButton()->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);

                    mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN]->play();

                    System::getHomeButtonMenu()->enable();
                    System::getChannelManager()->resetChJumpLoad();

                    mState = STATE_NORMAL;
                }
            } else if (parentalDialog != NULL) {
                switch (parentalDialog->getResult()) {
                    case ParentalDialog::RESULT_SUCCESS: {
                        if (mParentalState == PARENTAL_STATE_NONE) {
                            prepareForBoot1(mChanSceneID);
                            if (mChanSceneID == SCENE_LOCKED_TITLE) {
                                System::getChannelManager()->loadLockedTitleAsync(mChanPage, mChanIndex, msUnlockTicket);
                            }
                            mParentalState = PARENTAL_STATE_SUCCESS;
                        }
                        break;
                    }
                    case ParentalDialog::RESULT_OVER_ATTEMPTS: {
                        mParentalState = PARENTAL_STATE_FAILED;
                        break;
                    }
                    case ParentalDialog::RESULT_CANCELLED: {
                        mParentalState = PARENTAL_STATE_FAILED;
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }
        }

        void ChannelTitle::calcNormalSettingDialog() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    getButton()->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    getButton()->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);

                    mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN]->play();

                    System::getChannelManager()->resetChJumpLoad();

                    mState = STATE_NORMAL;
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    if (isSetParental()) {
                        startParentalDialog(ParentalDialog::TYPE_IPL);
                    } else {
                        reserveSettingScene(true);
                    }
                    break;
                }
            }
        }

        void ChannelTitle::calcNormalControllerDialog() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_WAIT: {
                    getButton()->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    getButton()->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);

                    mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN]->play();

                    mState = STATE_NORMAL;
                    break;
                }
            }
        }

        // uhh
#pragma push
#pragma ppc_iro_level 0
        void ChannelTitle::calcNormalWaitTmd() {
            if (!unk_0x360) {
                return;
            }

            if (mChanSceneID == SCENE_DISK_CHANNEL) {
                if (mpCurTicket != NULL) {
                    mpPreviewBnrHeap->free(mpCurTicket);
                }
                mState = STATE_PREPARE_BOOT;
                return;
            }

            // The infamous channel region lock out
            BOOL missingTicket;
            if (!System::getChannelManager()->getChannel(mChanPage, mChanIndex).missingTicket) {
                missingTicket = FALSE;
            } else {
                missingTicket = TRUE;
            }
            if (!missingTicket && utility::ESMisc::CheckTmdCountryCode(mpCurTicket) == FALSE) {
                IPLErrorDisplay(MESG_ERR_CHANNEL);
            }

            mCurGameCode = mpCurTicket->head.groupId;

            if (CheckParentalControl(mpCurTicket)) {
                prepareForBoot1(mChanSceneID);
                if (mChanSceneID == SCENE_LOCKED_TITLE) {
                    System::getChannelManager()->loadLockedTitleAsync(mChanPage, mChanIndex, msUnlockTicket);
                    mState = STATE_WAIT_LOCKED_TITLE;
                } else {
                    mState = STATE_PREPARE_BOOT;
                }
            } else {
                System::getHomeButtonMenu()->enable();
                startParentalDialog(ParentalDialog::TYPE_GAME);
            }

            if (mpCurTicket != NULL) {
                mpPreviewBnrHeap->free(mpCurTicket);
            }
        }
#pragma pop

        void ChannelTitle::calcNormalWaitLockedTitle() {
            if (!unk_0x37C) {
                if (getParentalDialog() == NULL && System::getReservedScene() == NULL &&
                    !mpGrpAnims[ANIM_GRP_SELECT_BTN_B][ANIM_SELECT_BTN]->isPlaying()) {
                    mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN]->play();
                    unk_0x37C = true;
                }
            } else {
                if (System::getChannelManager()->getUnlockChannelState(mChanPage, mChanIndex) == channel::UNLOCK_STATE_4) {
                    prepareForBoot2(mChanSceneID);
                    System::getBS2Manager()->reserveRVLGame();
                    mState = STATE_BOOT_SCENE;
                } else if (System::getChannelManager()->getUnlockChannelState(mChanPage, mChanIndex) != channel::UNLOCK_STATE_3) {
                    System::getHomeButtonMenu()->enable();
                    System::getChannelManager()->resetChJumpLoad();
                    if (System::getBS2Manager()->getIPLState() == bs2::IPL_STATE_BAD_DISK) {
                        if (getButton()->isArrowVisible(Button::ARROW_BTN_LEFT)) {
                            getButton()->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                            getButton()->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
                        }
                        System::getDialog()->callBtn1(6, MESG_CMN_OK);
                        mState = STATE_NORMAL_LOCKED_DISK_DIALOG;
                    } else {
                        if (mParentalState != PARENTAL_STATE_NONE) {
                            getButton()->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                            getButton()->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                        }
                        mState = STATE_NORMAL;
                    }
                }
            }
        }

        void ChannelTitle::calcNormalLockedDiskDialog() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_BUTTON: {
                    getButton()->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    getButton()->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                    mState = STATE_NORMAL;
                    break;
                }
            }
        }

        void ChannelTitle::calcNormalUpdateDialog() {
            if (System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_DISK_UPDATE) {
                System::getDialog()->terminate();
                mState = STATE_NORMAL_UPDATE_FAIL;
                return;
            }

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_BUTTON: {
                    if ((u32)System::getRegion() == SC_PRODUCT_AREA_EUR) {
                        if (System::getLanguage() == SC_LANG_GERMAN) {
                            System::getDialog()->callBtn1(MESG_CHAN_SEL_UPDATE_MOD_NOTICE, MESG_CHAN_SEL_UPDATE_ACCEPT_EUR, 63.f);
                        } else {
                            System::getDialog()->callBtn1Sml(MESG_CHAN_SEL_UPDATE_MOD_NOTICE, MESG_CHAN_SEL_UPDATE_ACCEPT_EUR);
                        }
                    } else {
                        if (System::getLanguage() == SC_LANG_SPANISH || System::getLanguage() == SC_LANG_FRENCH) {
                            System::getDialog()->callBtn1(MESG_CHAN_SEL_UPDATE_MOD_NOTICE, MESG_CHAN_SEL_UPDATE_ACCEPT, 63.f);
                        } else {
                            System::getDialog()->callBtn1Sml(MESG_CHAN_SEL_UPDATE_MOD_NOTICE, MESG_CHAN_SEL_UPDATE_ACCEPT);
                        }
                    }
                    mState = STATE_NORMAL_UPDATE_ACCEPT_DIALOG;
                    break;
                }
            }
        }

        void ChannelTitle::calcNormalUpdateAcceptDialog() {
            if (System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_DISK_UPDATE) {
                System::getDialog()->terminate();
                mState = STATE_NORMAL_UPDATE_FAIL;
                return;
            }

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_BUTTON: {
                    System::getNandManager()->closeContentsAll();
                    SCSetUpdateType(SC_UPDATE_TYPE_DISC);
                    SCFlush();

                    System::getBS2Manager()->startUpdate();

                    System::getDialog()->callBtnPrg(MESG_CHAN_SEL_UPDATING);
                    mState = STATE_NORMAL_UPDATING;
                    break;
                }
            }
        }

        void ChannelTitle::calcNormalUpdating() {
            int state = System::getBS2Manager()->getIPLState();

            int progressBar = System::getBS2Manager()->getCurUpdateEntryOffset() / (System::getBS2Manager()->getCurUpdateEntrySize() / 100);
            if (progressBar != 100) {
                System::getDialog()->setProgBarLength(progressBar);
            }

            if (state == bs2::IPL_STATE_NO_DISK || state == bs2::IPL_STATE_UPDATE_FAIL || state == bs2::IPL_STATE_FATAL) {
                System::getDialog()->terminate();
                mState = STATE_NORMAL_UPDATE_FAIL;
            } else if (state == bs2::IPL_STATE_RESTART_IPL || state == bs2::IPL_STATE_RVL_GAME) {
                System::getDialog()->setProgBarLength(100);
                mState = STATE_NORMAL_UPDATE_SUCCESS;
            }
        }

        void ChannelTitle::calcNormalUpdateSucceeded() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
                System::getDialog()->callBtn0(MESG_CHAN_SEL_UPDATE_SUCCESS, 180);
                mState = STATE_NORMAL_UPDATE_RESET;
            }
        }

        void ChannelTitle::calcNormalUpdateFailed() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
                System::getDialog()->callBtn1(MESG_CHAN_SEL_UPDATE_FAIL, MESG_CMN_WII_MENU);
                mState = STATE_NORMAL_UPDATE_WAITING;
            }
        }

        void ChannelTitle::calcNormalUpdateReset() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_WAIT: {
                    System::getResetHandler()->reset();
                    mState = STATE_DONE;
                    break;
                }
            }
        }

        void ChannelTitle::calcNormalUpdateWaiting() {
            if (System::getDialog()->getLastResult() > DialogWindow::RESULT_WAIT) {
                System::getResetHandler()->reset();
                mState = STATE_DONE;
            }
        }

        BOOL ChannelTitle::tryToStartScene() {
            if (!mpChanSelScn->tellStartingZoomAnm()) {
                return FALSE;
            }
            mpZoomAnim->play();
            mState = STATE_ZOOMING_IN;
            return TRUE;
        }

        void ChannelTitle::tryToGoBackward() {
            if (mModuleType == MODULE_TYPE_NONE || mModuleState == MODULE_STATE_4) {
                if (mpChanSelScn->prepareRestarting(mChanPage)) {
                    mpChanSelScn->restart(mChanPage, mChanIndex);

                    mpZoomAnim->init(0.0f, 255.f, 28.0f, 0.0f, 0.0f);
                    mpZoomAnim->setAnmType(ANIM_TYPE_BACKWARD);
                    mpZoomAnim->play();

                    mState = STATE_ZOOM_OUT;

                    snd::getSystem()->startSE("WIPL_SE_CH_UNSELECT");

                    if (snd::getBannerPlayer()->isStarted()) {
                        snd::getSystem()->stopBannerSound(28);
                    }

                    if (mpDiskBnrSound != NULL && mpDiskBnrSound->detail_GetAttachedSound() != NULL) {
                        snd::getSystem()->stopSE(mpDiskBnrSound, 28);
                    }
                }
            } else {
                mbModuleSceneChange = true;
            }
        }

        void ChannelTitle::loadModule(int page, int index) {
            if (System::isSafeMode()) {
                return;
            }

            if (mModuleType != MODULE_TYPE_NONE) {
                delete mpModuleFile;

                mpModuleFile = NULL;
                mpRSOHeader = NULL;
            }

            if (System::getChannelManager()->getBannerRSOIdx(page, index) != 0) {
                mpModuleFile = System::getChannelManager()->loadBannerRsoAsync(mpModuleWorkHeap, page, index);
                mbModuleTerminated = 0;
                mModuleType = MODULE_TYPE_RSO;
                mModuleState = MODULE_STATE_WAIT;
                mModulePage = page;
                mModuleIndex = index;
            } else if (System::getChannelManager()->getBannerCSIdx(page, index) != 0) {
                mpModuleFile = System::getChannelManager()->loadBannerCSAsync(mpModuleWorkHeap, page, index);
                mbModuleTerminated = 0;
                mModuleType = MODULE_TYPE_CS;
                mModuleState = MODULE_STATE_WAIT;
                mModulePage = page;
                mModuleIndex = index;
            } else {
                mModuleType = MODULE_TYPE_NONE;
                mModuleState = MODULE_STATE_INIT;
            }
        }

        void ChannelTitle::calcChannelCS() {
            if (mModuleType != MODULE_TYPE_CS) {
                return;
            }
            if (mState != STATE_START_ZOOM_IN && mState != STATE_ZOOMING_IN && mState != STATE_NORMAL_CHANGE_NEXT) {
                switch (mModuleState) {
                    case MODULE_STATE_INIT: {
                        calcModuleInit();
                        break;
                    }
                    case MODULE_STATE_WAIT: {
                        calcCSWait();
                        break;
                    }
                    case MODULE_STATE_CALC: {
                        System::getCSManager()->calc();
                        if (mpModuleThread->IsThreadTerminated()) {
                            if (System::getCSManager()->getAltSoundState() == channel::CHANS_VM_ALT_SND_STATE_UNK1) {
                                startChanSound();
                                System::getCSManager()->setAltSoundState(channel::CHANS_VM_ALT_SND_STATE_UNAVAILABLE);
                            }
                            System::getCSManager()->finish();
                            mModuleState = MODULE_STATE_FINISH;
                        }
                        break;
                    }
                    case MODULE_STATE_FINISH: {
                        calcCSFinish();
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }
        }

        void ChannelTitle::calcChannelRso() {
            if (mModuleType != MODULE_TYPE_RSO) {
                return;
            }
            if (mState != STATE_START_ZOOM_IN && mState != STATE_ZOOMING_IN && mState != STATE_NORMAL_CHANGE_NEXT) {
                switch (mModuleState) {
                    case MODULE_STATE_INIT: {
                        calcModuleInit();
                        break;
                    }
                    case MODULE_STATE_WAIT: {
                        // Check if we properly read the module file
                        if (mpModuleFile->isFinished()) {
                            if (mpModuleFile->checkData() != nand::RESULT_SUCCESS && mpModuleFile->checkData() != nand::RESULT_NONE) {
                                unk_0x38C = 0;
                                mbModuleTerminated = true;
                                mModuleState = MODULE_STATE_INIT;
                                break;
                            }

                            // Setup RSO module
                            mpRSOHeader = (RSOObjectHeader*)mpModuleFile->getBuffer();
                            mpRSOBss = NULL;

                            if (mpRSOHeader->bssSize != 0) {
                                mpRSOBss = new (mpModuleWorkHeap, DEFAULT_ALIGN) u8[mpRSOHeader->bssSize];
                                memset(mpRSOBss, 0, mpRSOHeader->bssSize);
                            }

                            RSOLinkList(mpRSOHeader, mpRSOBss);

                            if (RSOIsImportSymbolResolvedAll(mpRSOHeader)) {
                                OSReport("Module's ImportSymbol is resolved all.\n");
                            } else {
                                OSReport("%d module's ImportSymbols are not resolved.\n", RSOGetNumImportSymbolsUnresolved(mpRSOHeader));
                            }

                            // Import `int Calc(int)`
                            // This is during ChannelObj's loop.
                            mpRSOCalc = (channel::CalcFunc)RSOFindExportSymbolAddr(mpRSOHeader, "Calc");

                            // Import `void ThreadCalc()`
                            // This is executed on a seperate thread.
                            mpModuleThread->setCalcFunc((channel::ThreadCalcFunc)RSOFindExportSymbolAddr(mpRSOHeader, "ThreadCalc"));

                            ((void (*)())mpRSOHeader->prolog)();

                            // Import `void Create(nw4r::lyt::Layout*)`
                            // This is the initialization of the module.
                            channel::CreateFunc createFunc = (channel::CreateFunc)RSOFindExportSymbolAddr(mpRSOHeader, "Create");
                            if (createFunc != NULL) {
                                createFunc(mpChanBannerLyt->getNW4RLyt());
                            }

                            mpModuleThread->start();

                            mbRSODoneCalc = false;
                            mbRSOThreadExit = false;

                            mModuleState = MODULE_STATE_CALC;
                        }
                        break;
                    }
                    case MODULE_STATE_CALC: {
                        // Don't do anything until the thread is destroyed.
                        if (!mbRSOThreadExit && mpModuleThread->IsThreadTerminated()) {
                            mpModuleThread->WaitForThreadExit();
                            mbRSOThreadExit = true;
                        }

                        // If the calc function requested to exit (by returning a non-zero value)
                        if (!mbRSODoneCalc && mpRSOCalc(mbModuleSceneChange == true)) {
                            mbRSODoneCalc = true;
                        }

                        if (mbRSOThreadExit && mbRSODoneCalc) {
                            unk_0x38C = 0;
                            mbModuleTerminated = true;

                            ((void (*)())mpRSOHeader->epilog)();

                            RSOUnLinkList(mpRSOHeader);

                            mpRSOCalc = NULL;

                            mpModuleThread->setCalcFunc(NULL);

                            delete[] mpRSOBss;
                            mpRSOBss = NULL;

                            mpRsoExpHeaps[1 - mCurRsoExpHeap]->freeAll();

                            mModuleState = MODULE_STATE_INIT;
                        }

                        break;
                    }
                    default: {
                        break;
                    }
                }
            }
        }

        void ChannelTitle::calcModuleInit() {
            if (mbModuleSceneChange) {
                mbModuleSceneChange = false;
                unk_0x38C = 0;
                mModuleState = MODULE_STATE_4;
                return;
            }

            if ((unk_0x38C += 1) > unk_0x390) {
                mCurRsoExpHeap ^= 1;
                mModuleState = MODULE_STATE_WAIT;
            }

            if (System::getChannelManager()->checkUseAltSound(mChanPage, mChanIndex) && unk_0x38C == (unk_0x390 - 240)) {
                snd::getSystem()->stopBannerSound(180);
            }
        }

        void ChannelTitle::calcCSWait() {
            if (!mpModuleFile->isFinished()) {
                return;
            }

            if (mpModuleFile->checkData() != nand::RESULT_SUCCESS && mpModuleFile->checkData() != nand::RESULT_NONE) {
                unk_0x38C = 0;
                mbModuleTerminated = true;
                mModuleState = MODULE_STATE_INIT;
                return;
            }

            ESTitleId titleId = System::getChannelManager()->getTitleID(mChanPage, mChanIndex);

            if (mpCSHeap == NULL) {
                mpCSHeap = EGG::ExpHeap::create(-1, mpModuleWorkHeap);
            }

            // Start up CHANSVm system
            System::getCSManager()->create(mpCSHeap);

            // Module settings (for iplCS)
            channel::ChannelScriptManager::CSData data = {NULL, NULL, NULL, 0, false, false, true};
            data.heap = mpRsoExpHeaps[mCurRsoExpHeap];
            data.layout = mpChanBannerLyt;
            data.anims = mpModuleAnims;
            data.titleId = titleId;
            data.threadTerminated = mbModuleTerminated;

            if (System::getNwc24Manager() == NULL || !System::getNwc24Manager()->isNewMessageThere(ES_TITLE_CODE(data.titleId))) {
                data.unk_0x1A = false;
            }
            System::getCSManager()->setData(data);
            if (!System::getCSManager()->init(mpModuleFile, mpModuleThread)) {
                mModuleState = MODULE_STATE_FINISH;
            } else {
                mModuleState = MODULE_STATE_CALC;
            }
        }

        void ChannelTitle::calcCSFinish() {
            mbModuleTerminated = true;

            System::getCSManager()->destroy();

            unk_0x38C = 0;

            mpRsoExpHeaps[1 - mCurRsoExpHeap]->freeAll();
            mpCSHeap->destroy();
            mpCSHeap = NULL;

            mModuleState = MODULE_STATE_INIT;
        }

        void ChannelTitle::initChanAnmAndSound() {
            if (isDiskChannelByDraw(mChanPage, mChanIndex)) {
                return;
            }

            mpDiskBnrLayout->GetRootPane()->SetVisible(false);

            if (mpChanBannerAnims[BANNER_ANIM_START] != NULL) {
                mpChanBannerAnims[BANNER_ANIM_START]->play();
                unk_0x90 = false;
            } else if (mpChanBannerAnims[BANNER_ANIM_LOOP_AFTER_START] != NULL) {
                mpChanBannerAnims[BANNER_ANIM_LOOP_AFTER_START]->play();
            } else if (mpChanBannerAnims[BANNER_ANIM_LOOP] != NULL) {
                mpChanBannerAnims[BANNER_ANIM_LOOP]->play();
            }

            if (mState != STATE_ZOOM_OUT &&
                (!System::getChannelManager()->checkUseAltSound(mChanPage, mChanIndex) || mModuleType == MODULE_TYPE_NONE)) {
                startChanSound();
            }
        }

        void ChannelTitle::startChanSound() {
            if (mpLoadedBnrSound[mLoadedIndex] != NULL) {
                if (mpLoadedBnrSound[mLoadedIndex]->checkData() == nand::RESULT_SUCCESS) {
                    snd::getSystem()->startBannerSound(mpLoadedBnrSound[mLoadedIndex]->getBuffer(),
                                                       System::getChannelManager()->getSoundSize(mChanPage, mChanIndex));
                }
            } else {
                if (mDiskState == DISK_STATE_WII_DISK_IDLE) {
                    if (mpLoadedDiskSound[mLoadedIndex] != NULL) {
                        bool ignoreAlign = false;
                        u32* code;
                        System::getBS2Manager()->getDiskInfo((char**)&code, NULL);

                        // Ignore size check for a select amount of titles.
                        // (idk how those titles messed up)
                        for (int i = 0; i < (int)ARRAY_LENGTH(scSoundSizeSkipTitles); i++) {
                            if (scSoundSizeSkipTitles[i] == (*code & 0xFFFFFF00)) {
                                ignoreAlign = true;
                            }
                        }
                        snd::getSystem()->startBannerSound(mpLoadedDiskSound[mLoadedIndex],
                                                           System::getChannelManager()->getSoundSize(mChanPage, mChanIndex), ignoreAlign);
                    }
                } else if (mDiskState == DISK_STATE_GC_DISK_IDLE) {
                    mpDiskBnrSound = snd::getSystem()->startSE("WIPL_ME_GC_BANNER");
                }
            }
        }

        void ChannelTitle::bindChanAnms() {
            bindChanBaseAnms();
            if (mModuleType != MODULE_TYPE_NONE) {
                memset(mpModuleAnims, 0, sizeof(mpModuleAnims));
                ChannelObj::bindRsoAnm(mpChanBannerLyt, mpModuleAnims, "banner");
            }
        }

        void ChannelTitle::bindChanBaseAnms() {
            for (int i = 0; i < BANNER_ANIM_MAX; i++) {
                if (mpChanBannerLyt->searchFile(mscBannerAnims[i])) {
                    if (i == 0) {
                        mpChanBannerAnims[i] = mpChanBannerLyt->bind(mscBannerAnims[i]);
                        mpChanBannerAnims[i]->setAnmType(ANIM_TYPE_LOOP);
                    } else if (i == 1) {
                        mpChanBannerAnims[i] = mpChanBannerLyt->bind(mscBannerAnims[i]);
                        mpChanBannerAnims[i]->setAnmType(ANIM_TYPE_FORWARD);
                    } else {
                        if (mpChanBannerAnims[BANNER_ANIM_START] == NULL) {
                            mpChanBannerAnims[i] = mpChanBannerLyt->bind(mscBannerAnims[i], true);
                        } else {
                            mpChanBannerAnims[i] = mpChanBannerLyt->bind(mscBannerAnims[i], false);
                        }
                        mpChanBannerAnims[i]->setAnmType(ANIM_TYPE_LOOP);
                    }
                } else {
                    mpChanBannerAnims[i] = NULL;
                }
            }
        }

        void ChannelTitle::bindDiskAnms() {
            memset(mpDiskBnrAnims, 0, sizeof(mpDiskBnrAnims));

            mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_START] = mpDiskBnrLayout->bind(mscDiskAnimNames[DISK_ANIM_START]);
            mpDiskBnrAnims[DISK_ANIM_GRP_COMMENT][DISK_ANIM_START] =
                mpDiskBnrLayout->bindToGroup(mscDiskAnimNames[DISK_ANIM_START], mscDiskGroups[DISK_ANIM_GRP_COMMENT], false, false);

            for (int i = DISK_ANIM_GRP_COMMENT; i <= DISK_ANIM_GRP_GC; i++) {
                for (int j = DISK_ANIM_DISK_START; j <= DISK_ANIM_DISK_IN; j++) {
                    if (i == DISK_ANIM_GRP_COMMENT && j == DISK_ANIM_DISK_IN) {
                        break;
                    }

                    mpDiskBnrAnims[i][j] = mpDiskBnrLayout->bindToGroup(mscDiskAnimNames[j], mscDiskGroups[i], false, false);
                }
            }

            for (int i = DISK_ANIM_DISK_EJECT; i <= DISK_ANIM_UNKNOWN_EJECT; i++) {
                mpDiskBnrAnims[DISK_ANIM_GRP_ALL][i] = mpDiskBnrLayout->bind(mscDiskAnimNames[i], false);
            }

            mpDiskBnrAnims[DISK_ANIM_GRP_DISK_IN][DISK_ANIM_DISK_IN] =
                mpDiskBnrLayout->bindToGroup(mscDiskAnimNames[DISK_ANIM_DISK_IN], mscDiskGroups[DISK_ANIM_GRP_DISK_IN], false, false);
        }

        void ChannelTitle::updateDiskState(int page, int index) {
            BOOL flag = false;
            if ((mState == STATE_ZOOMING_IN && !mpZoomAnim->isPlaying()) ||
                (mState == STATE_NORMAL_CHANGE_NEXT && !mpChangeAnims[ANIM_CHANGE_OUT]->isPlaying())) {
                flag = true;
            }

            int BS2State = System::getBS2Manager()->getIPLState();
            if (mState == STATE_NORMAL && BS2State == bs2::IPL_STATE_DISK_UPDATE) {
                System::getHomeButtonMenu()->disable();

                getButton()->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                getButton()->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);

                if (System::getBS2Manager()->updateHasSeatTitles()) {
                    System::getDialog()->callBtn1(MESG_CHAN_SEL_UPD_DIALOG_SEAT, MESG_CMN_OK);
                } else {
                    System::getDialog()->callBtn1(MESG_CHAN_SEL_UPDATE_DIALOG, MESG_CMN_OK);
                }
                mState = STATE_NORMAL_UPDATE_DIALOG;
            }

            if (mState < STATE_NORMAL_UPDATE_DIALOG || mState > STATE_DONE) {
                switch (mDiskState) {
                    case DISK_STATE_INIT: {
                        if (flag || mDiskState2 == DISK_STATE_EJECT) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_START]->play();

                            bool noDisk = BS2State == bs2::IPL_STATE_NO_DISK;

                            nw4r::lyt::Group* group = mpDiskBnrLayout->FindGroupByName(mscDiskGroups[DISK_ANIM_GRP_COMMENT]);
                            for (nw4r::lyt::PaneLinkList::Iterator it = group->GetPaneList().GetBeginIter(); it != group->GetPaneList().GetEndIter();
                                 it++) {
                                it->mTarget->SetVisible(noDisk);
                            }

                            if (noDisk) {
                                mpDiskBnrSound = snd::getSystem()->startSE("WIPL_ME_NO_DISC_BANNER");
                            }

                            mDiskState = DISK_STATE_TRANS_IN;
                            mDiskState2 = DISK_STATE_INIT;
                        }
                        break;
                    }
                    case DISK_STATE_TRANS_IN: {
                        if (!mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_START]->isPlaying() &&
                            !mpDiskBnrAnims[DISK_ANIM_GRP_COMMENT][DISK_ANIM_START]->isPlaying()) {
                            mDiskState = DISK_STATE_IDLE;
                            if (BS2State == bs2::IPL_STATE_NO_DISK) {
                                nw4r::lyt::Group* group = mpDiskBnrLayout->FindGroupByName(mscDiskGroups[DISK_ANIM_GRP_COMMENT]);
                                for (nw4r::lyt::PaneLinkList::Iterator it = group->GetPaneList().GetBeginIter();
                                     it != group->GetPaneList().GetEndIter(); it++) {
                                    it->mTarget->SetVisible(true);
                                }
                            }
                        }
                        break;
                    }
                    case DISK_STATE_IDLE: {
                        if (BS2State != bs2::IPL_STATE_NO_DISK) {
                            for (int i = 0; i <= DISK_ANIM_GRP_GC; i++) {
                                mpDiskBnrAnims[i][DISK_ANIM_DISK_START]->play();
                                mDiskState = DISK_STATE_START_SPIN;
                            }
                        }
                        break;
                    }
                    case DISK_STATE_START_SPIN: {
                        if (!mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_START]->isPlaying()) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOOP]->play();
                            mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_LOOP]->play();
                            mpDiskBnrAnims[DISK_ANIM_GRP_COMMENT][DISK_ANIM_DISK_START]->stop();
                            mDiskState = DISK_STATE_SPINNING;
                        }
                        break;
                    }
                    case DISK_STATE_SPINNING: {
                        if (BS2State == bs2::IPL_STATE_RVL_GAME) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_LOOP]->stop();
                            mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_LOST]->play();
                            mDiskState = DISK_STATE_VALID_DISK;
                            mDiskState2 = DISK_STATE_GOT_WII_DISK;
                        } else if (BS2State == bs2::IPL_STATE_GC_GAME) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOOP]->stop();
                            mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOST]->play();
                            mDiskState = DISK_STATE_GC_DISK_IDLE;
                            mpLoadedLytFile[mLoadedIndex] = loadLayoutFileAsync(page, index, &mpLoadedBanner[mLoadedIndex],
                                                                                &mpLoadedBnrSound[mLoadedIndex], &mpLoadedDiskSound[mLoadedIndex]);
                            mDiskState = DISK_STATE_VALID_DISK;
                            mDiskState2 = DISK_STATE_GOT_GC_DISK;
                        } else if (BS2State == bs2::IPL_STATE_BAD_DISK) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOOP]->stop();
                            mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_LOOP]->stop();
                            mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOST]->play();
                            mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_LOST]->play();
                            mDiskState = DISK_STATE_VALID_DISK;
                            mDiskState2 = DISK_STATE_GOT_INVALID;
                        } else if (BS2State == bs2::IPL_STATE_NO_DISK) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOOP]->stop();
                            mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_LOOP]->stop();
                            mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_END]->play();
                            mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_END]->play();
                            mDiskState = DISK_STATE_INTERRUPT_EJECT;
                        }
                        break;
                    }
                    case DISK_STATE_INTERRUPT_EJECT: {
                        if (!mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_END]->isPlaying() &&
                            !mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_END]->isPlaying()) {
                            nw4r::lyt::Group* group = mpDiskBnrLayout->FindGroupByName(mscDiskGroups[DISK_ANIM_GRP_COMMENT]);
                            for (nw4r::lyt::PaneLinkList::Iterator it = group->GetPaneList().GetBeginIter(); it != group->GetPaneList().GetEndIter();
                                 it++) {
                                it->mTarget->SetVisible(true);
                            }
                            mpDiskBnrAnims[DISK_ANIM_GRP_COMMENT][DISK_ANIM_START]->play();
                            mDiskState = DISK_STATE_TRANS_IN;
                        }
                        break;
                    }
                    case DISK_STATE_VALID_DISK: {
                        if (mDiskState2 == DISK_STATE_GOT_WII_DISK) {
                            if (!mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_LOST]->isPlaying()) {
                                mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_IN]->play();
                                mpDiskBnrAnims[DISK_ANIM_GRP_DISK_IN][DISK_ANIM_DISK_IN]->play();
                                mDiskState = DISK_STATE_WII_DISK_IDLE;
                                mpLoadedLytFile[mLoadedIndex] = loadLayoutFileAsync(
                                    page, index, &mpLoadedBanner[mLoadedIndex], &mpLoadedBnrSound[mLoadedIndex], &mpLoadedDiskSound[mLoadedIndex]);
                                createChanLayout();
                                mDiskState = DISK_STATE_GOT_WII_DISK;
                                mDiskState2 = DISK_STATE_INIT;
                            }
                        } else if (mDiskState2 == DISK_STATE_GOT_GC_DISK) {
                            if (!mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOST]->isPlaying() &&
                                (mpGCBannerLyt != NULL || mpGCBannerFile->isFinished())) {
                                mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_IN]->play();
                                mpDiskBnrAnims[DISK_ANIM_GRP_DISK_IN][DISK_ANIM_DISK_IN]->play();
                                createChanLayout();
                                mDiskState = DISK_STATE_GOT_GC_DISK;
                                mDiskState2 = DISK_STATE_INIT;
                            }
                        } else if (mDiskState2 == DISK_STATE_GOT_INVALID) {
                            if (!mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOST]->isPlaying()) {
                                mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_UNKNOWN]->play();
                                snd::getSystem()->startSE("WIPL_ME_INVALID_DISC_BANNER");
                                mDiskState = DISK_STATE_GOT_INVALID;
                                mDiskState2 = DISK_STATE_INIT;
                            }
                        }
                        break;
                    }
                    case DISK_STATE_GOT_WII_DISK: {
                        if (!mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_IN]->isPlaying() &&
                            !mpDiskBnrAnims[DISK_ANIM_GRP_DISK_IN][DISK_ANIM_DISK_IN]->isPlaying()) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_WII][DISK_ANIM_DISK_LOOP]->stop();
                            mpDiskBnrLayout->GetRootPane()->SetVisible(false);
                            mDiskState = DISK_STATE_WII_DISK_IDLE;
                            initChanAnmAndSound();
                            changeStartButton();
                        }
                        break;
                    }
                    case DISK_STATE_WII_DISK_IDLE: {
                        if (BS2State != bs2::IPL_STATE_RVL_GAME || System::getChannelManager()->isUnk_0x1B81()) {
                            mDiskState = DISK_STATE_EJECT;
                            mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_DISK_EJECT]->play();
                            mpDiskBnrLayout->GetRootPane()->SetVisible(true);
                            changeStartButton();
                        }
                        break;
                    }
                    case DISK_STATE_GOT_GC_DISK: {
                        if (!mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_IN]->isPlaying() &&
                            !mpDiskBnrAnims[DISK_ANIM_GRP_DISK_IN][DISK_ANIM_DISK_IN]->isPlaying()) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_GC][DISK_ANIM_DISK_LOOP]->stop();
                            mpDiskBnrLayout->GetRootPane()->SetVisible(false);
                            mDiskState = DISK_STATE_GC_DISK_IDLE;
                            initChanAnmAndSound();
                            changeStartButton();
                        }
                        break;
                    }
                    case DISK_STATE_GC_DISK_IDLE: {
                        if (BS2State != bs2::IPL_STATE_GC_GAME) {
                            mDiskState = DISK_STATE_EJECT;
                            mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_DISK_EJECT]->play();
                            mpDiskBnrLayout->GetRootPane()->SetVisible(true);
                            changeStartButton();
                        }
                        break;
                    }
                    case DISK_STATE_EJECT: {
                        if (!mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_DISK_EJECT]->isPlaying()) {
                            snd::getSystem()->stopBannerSound();
                            snd::getSystem()->stopSE(mpDiskBnrSound);

                            if (mpChanBannerLyt != NULL && mpChanBannerLyt != mpGCBannerLyt) {
                                mpChanBannerLyt->destroyHeap();
                                mpChanBannerLyt = NULL;
                            }

                            mpLoadedLytFile[mLoadedIndex] = loadLayoutFileAsync(page, index, &mpLoadedBanner[mLoadedIndex],
                                                                                &mpLoadedBnrSound[mLoadedIndex], &mpLoadedDiskSound[mLoadedIndex]);

                            createChanLayout();

                            mDiskState2 = DISK_STATE_EJECT;
                        }
                        break;
                    }
                    case DISK_STATE_GOT_INVALID: {
                        if (!mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_UNKNOWN]->isPlaying()) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_UNKNOWN_LOOP]->play();
                            mDiskState = DISK_STATE_INVALID_IDLE;
                        }
                        break;
                    }
                    case DISK_STATE_INVALID_IDLE: {
                        if (BS2State != bs2::IPL_STATE_BAD_DISK) {
                            mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_UNKNOWN_LOOP]->stop();
                            mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_UNKNOWN_EJECT]->play();

                            nw4r::lyt::Group* group = mpDiskBnrLayout->FindGroupByName(mscDiskGroups[DISK_ANIM_GRP_COMMENT]);
                            for (nw4r::lyt::PaneLinkList::Iterator it = group->GetPaneList().GetBeginIter(); it != group->GetPaneList().GetEndIter();
                                 it++) {
                                it->mTarget->SetVisible(true);
                            }

                            mDiskState = DISK_STATE_INVALID_EJECT;
                        }
                        break;
                    }
                    case DISK_STATE_INVALID_EJECT: {
                        if (!mpDiskBnrAnims[DISK_ANIM_GRP_ALL][DISK_ANIM_UNKNOWN_EJECT]->isPlaying()) {
                            mDiskState = DISK_STATE_IDLE;
                        }
                        break;
                    }
                }
            }
        }

        BOOL ChannelTitle::isDiskChannelByDraw(int page, int index) {
            BOOL result = FALSE;

            if (System::getChannelManager()->getSceneID(page, index) == SCENE_DISK_CHANNEL && mDiskState != DISK_STATE_WII_DISK_IDLE &&
                mDiskState != DISK_STATE_GC_DISK_IDLE) {
                result = TRUE;
            }
            return result;
        }

        BOOL ChannelTitle::checkNetSetting(int page, int index) {
            // i hate this

            BOOL flag = System::getChannelManager()->getSceneID(page, index) == SCENE_DISK_CHANNEL;
            if (flag) {
                goto yes;
            } else {
                bool needNetSetting;
                if (System::getChannelManager()->checkNetSetting(page, index)) {
                    needNetSetting = true;
                } else {
                    needNetSetting = false;
                }

                if (!needNetSetting || ncd::NCDSetting::getConnectEnableFlag()) {
                yes:
                    return TRUE;
                } else {
                    return FALSE;
                }
            }
        }

        BOOL ChannelTitle::isSetParental() {
            SCParentalControlsInfo pcInfo;
            if (SCGetParentalControl(&pcInfo) && (pcInfo.enable & SC_PARENTAL_FLAG_ENABLED)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        void ChannelTitle::startParentalDialog(int arg) {
            if (getButton()->isArrowVisible(Button::ARROW_BTN_LEFT)) {
                getButton()->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                getButton()->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
            }
            createChildScene(SCENE_PARENTAL_DIALOG, this, NULL, (void*)arg);
            mParentalState = PARENTAL_STATE_NONE;
            mState = STATE_NORMAL_PARENTAL_DIALOG;
        }

        BOOL ChannelTitle::searchChannel(BOOL backwards, int* page, int* index) const {
            int start = mChanIndex + (mChanPage * MAX_CHANNEL_INDEX);
            int inc = backwards == TRUE ? -1 : 1;
            int result;

            for (int i = start + inc;; i += inc) {
                if (i < 0) {
                    i = (mMaxPages * MAX_CHANNEL_INDEX) - 1;
                }
                if (i >= (mMaxPages * MAX_CHANNEL_INDEX)) {
                    i = 0;
                }
                if (i == start) {
                    *page = mChanPage;
                    *index = mChanIndex;
                    result = FALSE;
                    break;
                }
                int searchPage = i / MAX_CHANNEL_INDEX;
                int searchIndex = i % MAX_CHANNEL_INDEX;
                if (System::getChannelManager()->getChannel(searchPage, searchIndex).loadedBnr) {
                    *page = searchPage;
                    *index = searchIndex;
                    result = TRUE;
                    break;
                }
            }
            return result;
        }

        void ChannelTitle::startChangeChannel(int page, int index) {
            BOOL flag = System::getChannelManager()->getSceneID(page, index) == SCENE_DISK_CHANNEL;
            if (flag) {
                if (System::getBS2Manager()->getIPLState() == bs2::IPL_STATE_RVL_GAME) {
                    mDiskState = DISK_STATE_WII_DISK_IDLE;
                } else if (System::getBS2Manager()->getIPLState() == bs2::IPL_STATE_GC_GAME) {
                    mDiskState = DISK_STATE_GC_DISK_IDLE;
                } else {
                    if (mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_OUT]->getCurrentFrame() == mpGrpAnims[1][1]->getMaxFrame()) {
                        if (mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN]->getCurrentFrame() != mpGrpAnims[1][0]->getMaxFrame()) {
                            mpGrpAnims[ANIM_GRP_FOCUS_BTN_B][ANIM_BTM_FOCUS_IN]->play();
                        }
                    }
                    mDiskState = DISK_STATE_INIT;
                }
            }

            mpChangeAnims[ANIM_CHANGE_IN]->play();

            if (System::getChannelManager()->checkNeedUpdate(mChanPage, mChanIndex) !=
                (u32)System::getChannelManager()->checkNeedUpdate(page, index)) {
                mpGrpAnims[ANIM_GRP_CHANGE_BTN_B][ANIM_CHANGE_TEXT_IN]->play();
            }

            if (mModuleType != MODULE_TYPE_NONE) {
                mbModuleSceneChange = true;
            }

            if (System::getChannelManager()->getUnlockChannelState(mChanPage, mChanIndex) == channel::UNLOCK_STATE_1) {
                updateLockedMsg(LOCKED_MSG_DISAPPEAR);
            }

            mChanPage = page;
            mChanIndex = index;
            channel::Manager::setCurrentChannel(page, index);

            startGetTicketLimitTask();

            mpLoadedLytFile[PREV_LOADED_INDEX] = loadLayoutFileAsync(mChanPage, mChanIndex, &mpLoadedBanner[PREV_LOADED_INDEX],
                                                                     &mpLoadedBnrSound[PREV_LOADED_INDEX], &mpLoadedDiskSound[PREV_LOADED_INDEX]);

            mDispTrans.x = mpChanSelScn->getDispChanTrans(mChanIndex).x;
            mDispTrans.y = mpChanSelScn->getDispChanTrans(mChanIndex).y;

            mState = STATE_NORMAL_CHANGE_WAIT;
        }

        void ChannelTitle::reserveNextScene() {
            int sceneID = System::getChannelManager()->getSceneID(mChanPage, mChanIndex);

            mParentalState = PARENTAL_STATE_NONE;
            unk_0x37C = false;

            BOOL flag = System::getChannelManager()->getSceneID(mChanPage, mChanIndex) == SCENE_DISK_CHANNEL;
            if (flag) {
                if (mDiskState == DISK_STATE_WII_DISK_IDLE) {
                    if (System::getBS2Manager()->checkParentalControl()) {
                        prepareForBoot1(SCENE_DISK_CHANNEL);
                        System::getBS2Manager()->reserveRVLGame();

                        unk_0x360 = false;

                        System::getTask1()->request(iplChannelTitle_813BA684, this, NULL);

                        mState = STATE_WAIT_TMD;
                    } else {
                        startParentalDialog(ParentalDialog::TYPE_GAME);
                    }
                } else if (mDiskState == DISK_STATE_GC_DISK_IDLE) {
                    prepareForBoot1(SCENE_DISK_CHANNEL);
                    System::getBS2Manager()->reserveGCGame();

                    unk_0x360 = false;

                    System::getTask1()->request(iplChannelTitle_813BA684, this, NULL);

                    mState = STATE_WAIT_TMD;
                }

                mChanSceneID = SCENE_DISK_CHANNEL;
            } else {
                if (sceneID == SCENE_NORMAL_CHANNEL) {
                    if (System::getChannelManager()->checkNeedUpdate(mChanPage, mChanIndex)) {
                        if (isSetParental()) {
                            startParentalDialog(ParentalDialog::TYPE_GAME);
                        } else {
                            reserveSettingScene(true);
                        }
                        mChanSceneID = SCENE_SETTING;
                    } else {
                        if (!checkNetSetting(mChanPage, mChanIndex)) {
                            reserveSettingScene(false);
                            mChanSceneID = SCENE_SETTING;
                        } else {
                            System::getHomeButtonMenu()->disable();
                            unk_0x360 = false;
                            mCurGameCode = 0;
                            System::getTask1()->request(getTmdTask, this, NULL);

                            if (System::getChannelManager()->getUnlockChannelState(mChanPage, mChanIndex) == channel::UNLOCK_STATE_INVALID) {
                                mChanSceneID = SCENE_UNLOCKED_TITLE;
                            } else {
                                mChanSceneID = SCENE_LOCKED_TITLE;
                            }

                            mState = STATE_WAIT_TMD;
                        }
                    }
                } else {
                    reserveAllSceneDestruction(sceneID);

                    if (snd::getBannerPlayer()->isStarted()) {
                        snd::getSystem()->stopBannerSound(28);
                    }

                    if (mpDiskBnrSound != NULL && mpDiskBnrSound->detail_GetAttachedSound() != NULL) {
                        snd::getSystem()->stopSE(mpDiskBnrSound, 28);
                    }

                    mChanSceneID = sceneID;

                    mState = STATE_BOOT_SCENE;
                }
            }
        }

        void ChannelTitle::reserveSettingScene(bool unk) {
            if (System::getChannelManager()->checkNeedUpdate(mChanPage, mChanIndex)) {
                reserveAllSceneDestruction(SCENE_SETTING, (void*)3);
                mState = STATE_GOTO_SETTING;
                return;
            }

            if (unk) {
                reserveAllSceneDestruction(SCENE_SETTING, (void*)1);
                mState = STATE_GOTO_SETTING;
                return;
            }

            if (getButton()->isArrowVisible(Button::ARROW_BTN_LEFT)) {
                getButton()->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                getButton()->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
            }

            System::getDialog()->callBtn2(MESG_CHAN_SEL_NO_INTERNET, MESG_NETWORK_SETTINGS_BTN, MESG_CMN_QUIT);

            mState = STATE_NORMAL_SETTING_DIALOG;
        }

        void ChannelTitle::prepareForBoot1(int sceneID) {
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                controller::Interface* con = System::getController(i);
                if (con != NULL) {
                    con->cancelRumbling();
                }
            }

            if (sceneID == SCENE_DISK_CHANNEL || sceneID == SCENE_UNLOCKED_TITLE || sceneID == SCENE_LOCKED_TITLE) {
                System::getHomeButtonMenu()->disable();
            }

            if (sceneID == SCENE_UNLOCKED_TITLE || sceneID == SCENE_LOCKED_TITLE) {
                System::getSaveData()->setPrevPage(mChanPage);
                System::getSaveData()->iplSavedata_813596B8(System::getChannelManager()->getTitleID(mChanPage, mChanIndex));
                mpSaveDataFile = System::getSaveData()->flushAsync(System::getMem2App());
            }
        }

        void ChannelTitle::prepareForBoot2(int sceneID) {
            if (sceneID == SCENE_UNLOCKED_TITLE) {
                System::getBS2Manager()->abort();
            }

            __WPADReconnect(TRUE);

            System::stopReceiveSchedule();

            mTmpTitleID = SCGetTmpTitleID();

            if (mTmpTitleID != 0) {
                SCSetTmpTitleID(0);
                System::getTask1()->request(iplChannelTitle_813BA784, this, NULL);
            } else {
                unk_0x370 = true;
            }
        }

        void ChannelTitle::rebootSystem() {
            snd::getSystem()->stopAllSound();
            snd::getSystem()->calc();

            VISetBlack(TRUE);
            VIFlush();
            VIWaitForRetrace();

            while (!__OSSyncSram()) {
            }

            OSRebootSystem();
        }

        bool ChannelTitle::isEnableToExecute(int page, int index) {
            if (isDiskChannelByDraw(page, index)) {
                return false;
            }

            BOOL flag = System::getChannelManager()->getSceneID(page, index) == SCENE_DISK_CHANNEL;
            if (flag) {
                if ((System::getBS2Manager()->getUnlockedState() == BS2_STT_DATA_DISK ||
                     System::getBS2Manager()->getUnlockedState() == BS2_STT_START_LOCKED_DISK) != 0) {
                    return false;
                }
            }

            if (isLimitOutChannel()) {
                return false;
            }

            return System::getChannelManager()->getUnlockChannelState(page, index) != channel::UNLOCK_STATE_1;
        }

        bool ChannelTitle::isEnableAppStart() {
            return (u32)(100.0f / System::getAnimDelta()) < unk_0x88;
        }

        void ChannelTitle::changeStartButton() {
            if (!isEnableToExecute(mChanPage, mChanIndex)) {
                if (unk_0x8C != 0) {
                    mpGrpAnims[ANIM_GRP_ONOFF_BTN_B][ANIM_ON_BTN]->stop();
                    mpGrpAnims[ANIM_GRP_ONOFF_BTN_B][ANIM_OFF_BTN]->play();
                    unk_0x8C = 0;
                }
                mbHovered[BTN_B] = FALSE;
            } else {
                if (unk_0x8C == 0) {
                    mpGrpAnims[ANIM_GRP_ONOFF_BTN_B][ANIM_OFF_BTN]->stop();
                    mpGrpAnims[ANIM_GRP_ONOFF_BTN_B][ANIM_ON_BTN]->play();
                    mpGui->initPane(mpLayout->FindPaneByName(mscBtnNames[BTN_B]));
                    mbHovered[BTN_B] = FALSE;
                }
                unk_0x8C = 1;
            }
        }

        void ChannelTitle::drawPolygonAroundRect(const nw4r::ut::Rect& rect, GXColor color) {
            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            nw4r::ut::Rect drawRect[4];
            drawRect[0].left = projRect.left;
            drawRect[0].top = projRect.bottom;
            drawRect[0].right = projRect.right;
            drawRect[0].bottom = rect.top;

            drawRect[1].left = rect.right;
            drawRect[1].top = rect.top;
            drawRect[1].right = projRect.right;
            drawRect[1].bottom = projRect.top;

            drawRect[2].left = projRect.left;
            drawRect[2].top = rect.bottom;
            drawRect[2].right = rect.right;
            drawRect[2].bottom = projRect.top;

            drawRect[3].left = projRect.left;
            drawRect[3].top = rect.top;
            drawRect[3].right = rect.left;
            drawRect[3].bottom = rect.bottom;

            for (int i = 0; i < (int)ARRAY_LENGTH(drawRect); i++) {
                utility::Graphics::drawPolygon(drawRect[i], color);
            }
        }

        void ChannelTitle::setMessage(nw4r::lyt::Pane* targetPane, u32 msgId, bool alloc) {
            static const int LENGTH = 255;

            wchar_t msg[LENGTH + 1];
            wcsncpy(msg, System::getMessage(msgId), LENGTH + 1);
            msg[LENGTH] = 0;

            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(targetPane);
            if (alloc) {
                int len = wcslen(msg);
                textBox->AllocStringBuffer(len & 0xFFFF);
            }

            textBox->SetString(msg);
        }

        nand::LayoutFile* ChannelTitle::loadLayoutFileAsync(int page, int index, void** bannerBuf, ipl::nand::File** soundFile, void** diskSoundBuf) {
            BOOL flag = System::getChannelManager()->getSceneID(page, index) == SCENE_DISK_CHANNEL;
            if (flag) {
                if (mDiskState == DISK_STATE_WII_DISK_IDLE) {
                    *bannerBuf = System::getChannelManager()->getDiskBanner(true);
                    *soundFile = NULL;
                    *diskSoundBuf = System::getChannelManager()->getDiskSound(true);
                    return NULL;
                } else if (mDiskState == DISK_STATE_GC_DISK_IDLE) {
                    if (mpGCBannerFile == NULL) {
                        mpGCBannerFile = System::getNandManager()->readLayoutAsync(System::getMem2App(), "GCBann.ash");
                    }
                    *bannerBuf = NULL;
                    *soundFile = NULL;
                    *diskSoundBuf = NULL;
                    return mpGCBannerFile;
                } else {
                    *bannerBuf = NULL;
                    *soundFile = NULL;
                    *diskSoundBuf = NULL;
                    mDiskState = DISK_STATE_INIT;
                    return mpDiskBnrFile;
                }
            } else {
                *bannerBuf = NULL;
                *soundFile = System::getChannelManager()->loadSoundAsync(System::getMem2App(), page, index);

                *diskSoundBuf = NULL;

                nand::MetaFile* bnrFile = System::getChannelManager()->loadBannerAsync(System::getMem2App(), page, index);
                System::getChannelManager()->loadLockedMsgAsync(page, index);

                return new (System::getMem2App()) nand::LayoutFile(bnrFile);
            }
        }

        BOOL ChannelTitle::isTimeLimitedChannel(u32* hour, u32* minute) {
            if (mLimitType == LIMIT_TYPE_TIME) {
                *hour = (u32)mTimeLimitRemain / (60 * 60);

                // FAKEMATCH: should be modular division. not whatever this is
                *minute = (mTimeLimitRemain - ((60 * 60) * *hour)) / 60;
                //*minute = (u32)(mTimeLimitRemain % (60 * 60)) / 60U;
                return TRUE;
            } else {
                return FALSE;
            }
        }

        BOOL ChannelTitle::isLimitOutChannel() {
            u32 hour, minute;
            if (isTimeLimitedChannel(&hour, &minute) && mTimeLimitRemain == 0) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        void ChannelTitle::dispTimeLimitWindow() {
            u32 hour, minute;
            wchar_t timeLimitStr[64];

            if (isTimeLimitedChannel(&hour, &minute)) {
                if (isLimitOutChannel()) {
                    mpLimitRemainLyt->GetRootPane()->SetVisible(false);
                    mpLimitDoneLyt->GetRootPane()->SetVisible(true);
                } else {
                    mpLimitRemainLyt->GetRootPane()->SetVisible(true);
                    mpLimitDoneLyt->GetRootPane()->SetVisible(false);
                    getTimeLimitString(timeLimitStr, hour, minute);
                    nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLimitRemainLyt->FindPaneByName("T_Timer"));
                    textBox->SetString(timeLimitStr);
                }
            } else {
                mpLimitRemainLyt->GetRootPane()->SetVisible(false);
                mpLimitDoneLyt->GetRootPane()->SetVisible(false);
            }
        }

        void ChannelTitle::getTimeLimitString(wchar_t* limitStr, u32 hour, u32 minute) {
            if (hour >= 100) {
                hour = 99;
                minute = 59;
            }

            memset(limitStr, 0, 130);

            wcscpy(limitStr, System::getMessage(MESG_CHAN_SEL_TIME_LIMIT));

            wchar_t local_38[16] = L"";
            wchar_t local_58[16] = L"";

            if (hour == 0 && minute == 0) {
                swprintf(limitStr, 65, L"%ls %ls", limitStr, System::getMessage(MESG_CHAN_SEL_LIMIT_UNDER_60));
            } else {
                if (System::getLanguage() == SC_LANG_ENGLISH) {
                    swprintf(limitStr, 65, L"%ls %d%ls%02d", limitStr, hour, System::getMessage(MESG_CHAN_SEL_SEPERATOR_2), minute);
                } else if (System::getLanguage() == SC_LANG_JAPANESE || System::getLanguage() == SC_LANG_KOREAN ||
                           System::getLanguage() == SC_LANG_GERMAN) {
                    if (hour == 1) {
                        swprintf(local_38, 16, L"1%ls", System::getMessage(MESG_CHAN_SEL_SEPERATOR));
                    } else if (hour != 0) {
                        swprintf(local_38, 16, L"%d%ls", hour, System::getMessage(MESG_CHAN_SEL_SEPERATOR_2));
                    }

                    if (minute == 1) {
                        swprintf(local_58, 16, L"1%ls", System::getMessage(MESG_CHAN_SEL_NO_SEPERATOR));
                    } else if (minute != 0) {
                        swprintf(local_58, 16, L"%d%ls", minute, System::getMessage(MESG_CHAN_SEL_NO_SEPERATOR_2));
                    }
                } else if (System::getLanguage() == SC_LANG_FRENCH || System::getLanguage() == SC_LANG_ITALIAN) {
                    if (hour == 1) {
                        swprintf(local_38, 16, L"01%ls", System::getMessage(MESG_CHAN_SEL_SEPERATOR));
                    } else if (hour != 0) {
                        swprintf(local_38, 16, L"%02d%ls", hour, System::getMessage(MESG_CHAN_SEL_SEPERATOR_2));
                    }

                    if (minute == 1) {
                        swprintf(local_58, 16, L"01%ls", System::getMessage(MESG_CHAN_SEL_NO_SEPERATOR));
                    } else if (minute != 0) {
                        swprintf(local_58, 16, L"%02d%ls", minute, System::getMessage(MESG_CHAN_SEL_NO_SEPERATOR_2));
                    }
                } else {
                    if (hour == 1) {
                        swprintf(local_38, 16, L"1%ls", System::getMessage(MESG_CHAN_SEL_SEPERATOR));
                    } else if (hour != 0) {
                        swprintf(local_38, 16, L"%d%ls", hour, System::getMessage(MESG_CHAN_SEL_SEPERATOR_2));
                    }

                    if (minute == 1) {
                        swprintf(local_58, 16, L"01%ls", System::getMessage(MESG_CHAN_SEL_NO_SEPERATOR));
                    } else if (minute != 0) {
                        swprintf(local_58, 16, L"%02d%ls", minute, System::getMessage(MESG_CHAN_SEL_NO_SEPERATOR_2));
                    }
                }

                swprintf(limitStr, 65, L"%ls %ls%ls", limitStr, local_38, local_58);
            }
        }

        void ChannelTitle::getTmdTask(void* work) {
            ChannelTitle* chanTtl = static_cast<ChannelTitle*>(work);
            if (System::getChannelManager()->getUnlockChannelState(chanTtl->mChanPage, chanTtl->mChanIndex) != channel::UNLOCK_STATE_INVALID) {
                if (System::getChannelManager()->getUnlockTicket(chanTtl->mChanPage, chanTtl->mChanIndex, &msUnlockTicket) < 0) {
                    IPLErrorLogAndDisplay(MESG_ERR_FILE, "BS2", false, 4738);
                }
            }

            ESError err = utility::ESMisc::GetTmdView(
                chanTtl->mpPreviewBnrHeap, System::getChannelManager()->getTitleID(chanTtl->mChanPage, chanTtl->mChanIndex), &chanTtl->mpCurTicket);
            if (err != ES_ERR_OK) {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", err, 4748);
            }

            chanTtl->unk_0x360 = true;
        }

        void ChannelTitle::iplChannelTitle_813BA684(void* work) {
            ChannelTitle* chanTtl = static_cast<ChannelTitle*>(work);
            chanTtl->unk_0x360 = true;
        }

        void ChannelTitle::getTicketLimitTask(void* work) {
            ChannelTitle* chanTtl = static_cast<ChannelTitle*>(work);

            ESTitleId titleId = System::getChannelManager()->getTitleID(chanTtl->mChanPage, chanTtl->mChanIndex);
            int ticketIdx = System::getChannelManager()->getChannel(chanTtl->mChanPage, chanTtl->mChanIndex).ticketIdx;
            ESError err = utility::ESMisc::GetTicketView(System::getMem2App(), titleId, &msTicketView, ticketIdx);
            if (err != ES_ERR_OK) {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", err, 4789);
            }

            if (chanTtl->isTimeLimitedTicket(&msTicketView, &chanTtl->mTimeLimitRemain)) {
                chanTtl->mLimitType = LIMIT_TYPE_TIME;
            } else {
                chanTtl->mLimitType = LIMIT_TYPE_COUNT;
            }
            chanTtl->unk_0x371 = true;
        }

        void ChannelTitle::iplChannelTitle_813BA784(void* work) {
            ChannelTitle* chanTtl = static_cast<ChannelTitle*>(work);

            if (chanTtl->mTmpTitleID != 0) {
                while (!System::isReceiveScheduleStopped()) {
                    OSSleepTicks(OSMillisecondsToTicks((OSTime)10));
                }

                ESError err = utility::ESMisc::DeleteTitleContent(System::getMem2App(), chanTtl->mTmpTitleID);
                if (err != ES_ERR_OK) {
                    IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", err, 4824);
                }
            }

            chanTtl->unk_0x370 = true;
        }

        BOOL ChannelTitle::isTimeLimitedTicket(ESTicketView* ticket, u32* remainTime) {
            ESError err;

            OSGetTick();

            err = ESP_InitLib();
            if (err != ES_ERR_OK) {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", err, 4851);
            }

            OSPlayTimeType type;
            err = __OSGetPlayTime(ticket, &type, remainTime);
            if (err != ES_ERR_OK) {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", err, 4860);
            }

            if (type == OS_PLAYTIME_TIME_LIMIT) {
                return TRUE;
            } else {
                return FALSE;
            }
        }

        void ChannelTitle::startGetTicketLimitTask() {
            mLimitType = LIMIT_TYPE_COUNT;

            BOOL flag = System::getChannelManager()->getSceneID(mChanPage, mChanIndex) == SCENE_DISK_CHANNEL;
            if (flag) {
                unk_0x371 = true;
            } else {
                unk_0x371 = false;
                System::getNandManager()->getTask()->request(getTicketLimitTask, this, NULL);
            }
        }

        void ChannelTitle::updateLockedMsg(int req) {
            if (req == LOCKED_MSG_AUTO) {
                if (System::getChannelManager()->getUnlockChannelState(mChanPage, mChanIndex) == channel::UNLOCK_STATE_1) {
                    req = LOCKED_MSG_APPEAR;
                } else if (System::getChannelManager()->getUnlockChannelState(mChanPage, mChanIndex) == channel::UNLOCK_STATE_2) {
                    req = LOCKED_MSG_DISAPPEAR;
                }
            }

            if (req == LOCKED_MSG_APPEAR) {
                if (!mbDisplayLockedDialog && !isLimitOutChannel() && System::getChannelManager()->getLockedMsg() != NULL) {
                    nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLockedDialogLyt->FindPaneByName("T_ChTopMes"));
                    textBox->SetString(System::getChannelManager()->getLockedMsg());

                    mpLockedDialogAnim[LOCKED_DIALOG_ANIM_DISAPPEAR]->stop();
                    mpLockedDialogAnim[LOCKED_DIALOG_ANIM_APPEAR]->play();

                    mbDisplayLockedDialog = true;
                }
            } else if (req == LOCKED_MSG_DISAPPEAR) {
                if (mbDisplayLockedDialog) {
                    mpLockedDialogAnim[LOCKED_DIALOG_ANIM_APPEAR]->stop();
                    mpLockedDialogAnim[LOCKED_DIALOG_ANIM_DISAPPEAR]->play();

                    mbDisplayLockedDialog = false;
                }
            }
        }

        BOOL ChannelTitle::CheckParentalControl(ESTmdView* tmd) {
            if (!utility::ESMisc::__IsPCEnable()) {
                return TRUE;
            }

            SCParentalControlsInfo pcInfo;
            if (!SCGetParentalControl(&pcInfo)) {
                return TRUE;
            }

            if (pcInfo.enable & SC_PARENTAL_FLAG_ENABLED) {
                // @typo & instead of &&
                if (SCGetNetContentRestrictions() & System::getChannelManager()->isParentalRestricted(mChanPage, mChanIndex)) {
                    return FALSE;
                }

                if (SCGetWwwRestriction() && System::getChannelManager()->isInternetChannel(mChanPage, mChanIndex)) {
                    return FALSE;
                }

                if (System::getChannelManager()->isInternetChannel(mChanPage, mChanIndex)) {
                    return TRUE;
                }

                return utility::ESMisc::CheckTmdParentalControl(tmd);
            }
            return TRUE;
        }

        void ChannelTitleEventHandler::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            controller::Interface* con = reinterpret_cast<controller::Interface*>(data);

            switch (event) {
                // Drag and trig events are swapped, but still act as intended?
                case ::gui::EventHandler::ON_TRIG: {
                    if (mpInstance->mState != ChannelTitle::STATE_NORMAL) {
                        break;
                    }
                    if (con->downTrg(controller::BTN_INTERACT)) {
                        if (strcmp(paneName, ChannelTitle::mscBtnNames[ChannelTitle::BTN_A]) == 0) {
                            mpInstance->mpGrpAnims[ChannelTitle::ANIM_GRP_SELECT_BTN_A][ChannelTitle::ANIM_SELECT_BTN]->play();
                            snd::getSystem()->startSE("WIPL_SE_BT_PUSH");
                            mpInstance->mState = ChannelTitle::STATE_START_ZOOM_OUT;
                            mpInstance->tryToGoBackward();
                        } else if (strcmp(paneName, ChannelTitle::mscBtnNames[ChannelTitle::BTN_B]) == 0) {
                            if (mpInstance->unk_0x8C != 2) {
                                snd::getSystem()->startSE("WIPL_SE_GRAY_BUTTON");
                            } else {
                                mpInstance->reserveNextScene();
                                mpInstance->mpGrpAnims[ChannelTitle::ANIM_GRP_SELECT_BTN_B][ChannelTitle::ANIM_SELECT_BTN]->play();
                                snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            }
                        }
                    }
                    break;
                }
                case ::gui::EventHandler::ON_POINT: {
                    for (int i = 0; i < ChannelTitle::BTN_MAX; i++) {
                        if (strcmp(paneName, ChannelTitle::mscBtnNames[i]) == 0) {
                            if (i == 0 || mpInstance->unk_0x8C > 0) {
                                mpInstance->mbHovered[i]++;
                                if (mpInstance->mbHovered[i] <= TRUE) {
                                    mpInstance->mpGrpAnims[i][ChannelTitle::ANIM_BTM_FOCUS_OUT]->play();
                                    snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                                    con->rumble();
                                    break;
                                }
                            }
                        }
                    }
                    break;
                }
                case ::gui::EventHandler::ON_LEFT: {
                    for (int i = 0; i < ChannelTitle::BTN_MAX; i++) {
                        if (strcmp(paneName, ChannelTitle::mscBtnNames[i]) == 0) {
                            if (i == 0 || mpInstance->unk_0x8C > 0) {
                                mpInstance->mbHovered[i]--;
                                if (mpInstance->mbHovered[i] <= FALSE) {
                                    mpInstance->mpGrpAnims[i][ChannelTitle::ANIM_BTM_FOCUS_IN]->play();
                                    break;
                                }
                            }
                        }
                    }
                    break;
                }
            }
        }

        void CsChanTtlButtonEventHandler::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            switch (event) {
                case ::gui::EventHandler::ON_TRIG: {
                    if (mpInstance->mState == ChannelTitle::STATE_NORMAL && con->downTrg(controller::BTN_INTERACT)) {
                        Button* button = ChannelTitle::getButton();
                        if (Button::cmpButtonName(paneName, Button::BTN_ARROW_LEFT) == 0) {
                            int page, index;
                            mpInstance->searchChannel(TRUE, &page, &index);
                            button->animation(Button::IDANIM_ARROW_LEFT_SELECT);
                            mpInstance->startChangeChannel(page, index);
                            snd::getSystem()->startSE("WSD_SELECT");
                        } else if (Button::cmpButtonName(paneName, Button::BTN_ARROW_RIGHT) == 0) {
                            int page, index;
                            mpInstance->searchChannel(FALSE, &page, &index);
                            button->animation(Button::IDANIM_ARROW_RIGHT_SELECT);
                            mpInstance->startChangeChannel(page, index);
                            snd::getSystem()->startSE("WSD_SELECT");
                        }
                    }
                    break;
                }
            }
        }

        void ChannelTitle::startResetting() {
            snd::getSystem()->resetAllSound();
        }
    }  // namespace scene
}  // namespace ipl
