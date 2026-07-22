#ifndef IPL_SCENE_CHANNEL_TITLE_H
#define IPL_SCENE_CHANNEL_TITLE_H

#include "iplSceneUIHeader.h"

#include "scene/button/iplButton.h"

#include "system/iplChannelManager.h"
#include "system/iplChannelRsoThread.h"

#include "utility/iplCapture.h"

#include "system/iplNandShared.h"

#include <private/es.h>
#include <revolution/rso.h>

#include <nw4r/snd/SoundHandle.h>

namespace ipl {
    namespace scene {
        class CsChanTtlButtonEventHandler;
        class ChannelSelect;

        class Button;
        class ParentalDialog;

        FADER_SCENE_CLASS(ChannelTitle) {
        public:
            ChannelTitle(EGG::Heap * heap, ChannelSelect * chanSel);
            ~ChannelTitle();

            void prepare();
            void create();

            void calcCommon();
            FaderSceneCommand calcFadein();
            FaderSceneCommand calcNormal();
            void initCalcFadeout();
            FaderSceneCommand calcFadeout();

            void draw();
            void destroy();

            BOOL isResetAcceptable() const;
            BOOL isInLaunching() const;
            BOOL isFirstCall() const;

            void getRsoExBufData(void* rsoExBuf) const;
            void setRsoExBufData(const void* rsoExBuf);
            void getRsoTitleDataPath(char* dataPath) const;
            layout::Animator* getRsoAnimator(int idx) const;
            BOOL isStartAnimFinished() const;
            void* allocFromRsoExHeap(u32 size, int align);
            void freeToRsoExHeap(void* buffer);
            u32 getAllocatableSizeForRsoExHeap() const;
            void setDebugRsoInterval(u32 val);

            void createChanLayout();
            void createDiskChanLayout();
            void createModuleChanLayout();

            void calcModuleChannel();

            void calcNormalNormal();  // yes
            void calcNormalChangeWait();
            void calcNormalChangeNext();
            void calcNormalParentalDialog();
            void calcNormalSettingDialog();
            void calcNormalControllerDialog();
            void calcNormalWaitTmd();
            void calcNormalWaitLockedTitle();
            void calcNormalLockedDiskDialog();
            void calcNormalUpdateDialog();
            void calcNormalUpdateAcceptDialog();
            void calcNormalUpdating();
            void calcNormalUpdateSucceeded();
            void calcNormalUpdateFailed();
            void calcNormalUpdateReset();
            void calcNormalUpdateWaiting();

            BOOL tryToStartScene();

            void tryToGoBackward();

            void loadModule(int page, int index);

            void calcChannelCS();
            void calcChannelRso();

            void calcModuleInit();

            void calcCSWait();
            void calcCSFinish();

            void initChanAnmAndSound();
            void startChanSound();

            void bindChanAnms();
            void bindChanBaseAnms();
            void bindDiskAnms();

            void updateDiskState(int page, int index);
            BOOL isDiskChannelByDraw(int page, int index);

            BOOL checkNetSetting(int page, int index);

            BOOL isSetParental();
            void startParentalDialog(int arg);

            BOOL searchChannel(BOOL backwards, int* page, int* index) const;

            void startChangeChannel(int page, int index);
            void reserveNextScene();
            void reserveSettingScene(bool unk);

            void prepareForBoot1(int sceneID);
            void prepareForBoot2(int sceneID);

            void rebootSystem();

            bool isEnableToExecute(int page, int index);
            bool isEnableAppStart();

            void changeStartButton();

            void drawPolygonAroundRect(const nw4r::ut::Rect& rect, GXColor color);

            void setMessage(nw4r::lyt::Pane * targetPane, u32 msgId, bool alloc = true);
            nand::LayoutFile* loadLayoutFileAsync(int page, int index, void** bannerBuf, ipl::nand::File** soundFile, void** diskSoundBuf);

            BOOL isTimeLimitedChannel(u32 * hour, u32 * minute);
            BOOL isLimitOutChannel();
            void startGetTicketLimitTask();

            void dispTimeLimitWindow();
            void getTimeLimitString(wchar_t * limitStr, u32 hour, u32 minute);

            enum {
                LOCKED_MSG_AUTO = 0,
                LOCKED_MSG_APPEAR,
                LOCKED_MSG_DISAPPEAR
            };

            void updateLockedMsg(int req);

            BOOL CheckParentalControl(ESTmdView * tmd);

            void startResetting();

        private:
            enum {
                PARENTAL_STATE_NONE = 0,
                PARENTAL_STATE_SUCCESS,
                PARENTAL_STATE_FAILED
            };

            enum {
                LIMIT_TYPE_COUNT,
                LIMIT_TYPE_TIME,
            };

            enum {
                MODULE_TYPE_NONE,
                MODULE_TYPE_RSO,
                MODULE_TYPE_CS
            };

            enum {
                STATE_INIT = 0,
                STATE_NORMAL,
                STATE_START_ZOOM_IN,
                STATE_ZOOMING_IN,
                STATE_PREPARE_BOOT,
                STATE_BOOT_SCENE,
                STATE_ZOOM_OUT,
                STATE_GOTO_SETTING,
                STATE_NORMAL_CHANGE_WAIT,
                STATE_NORMAL_CHANGE_NEXT,
                STATE_START_ZOOM_OUT,
                STATE_NORMAL_PARENTAL_DIALOG,
                STATE_NORMAL_SETTING_DIALOG,
                STATE_NORMAL_CONTROLLER_DIALOG,
                STATE_WAIT_TMD,
                STATE_WAIT_LOCKED_TITLE,
                STATE_NORMAL_LOCKED_DISK_DIALOG,
                STATE_NORMAL_UPDATE_DIALOG,
                STATE_NORMAL_UPDATE_ACCEPT_DIALOG,
                STATE_NORMAL_UPDATING,
                STATE_NORMAL_UPDATE_SUCCESS,
                STATE_NORMAL_UPDATE_FAIL,
                STATE_NORMAL_UPDATE_RESET,
                STATE_NORMAL_UPDATE_WAITING,
                STATE_DONE,
            };

            enum {
                DISK_STATE_INIT = 0,
                DISK_STATE_TRANS_IN,
                DISK_STATE_IDLE,
                // these three are unused...
                DISK_STATE_3,
                DISK_STATE_4,
                DISK_STATE_5,

                DISK_STATE_START_SPIN,
                DISK_STATE_SPINNING,
                DISK_STATE_INTERRUPT_EJECT,
                DISK_STATE_VALID_DISK,
                DISK_STATE_GOT_WII_DISK,
                DISK_STATE_WII_DISK_IDLE,
                DISK_STATE_GOT_GC_DISK,
                DISK_STATE_GC_DISK_IDLE,
                DISK_STATE_EJECT,
                DISK_STATE_GOT_INVALID,
                DISK_STATE_INVALID_IDLE,
                DISK_STATE_INVALID_EJECT
            };

            enum {
                MODULE_STATE_INIT = 0,
                MODULE_STATE_WAIT,
                MODULE_STATE_CALC,
                MODULE_STATE_FINISH,
                MODULE_STATE_4,
            };

            enum {
                BTN_A = 0,  //  "Start"/"Update"
                BTN_B,      // "Wii Menu"
                BTN_MAX,
            };

            enum {
                ANIM_GRP_FOCUS_BTN_A = 0,
                ANIM_GRP_FOCUS_BTN_B,
                ANIM_GRP_SELECT_BTN_A,
                ANIM_GRP_SELECT_BTN_B,
                ANIM_GRP_ONOFF_BTN_A,
                ANIM_GRP_ONOFF_BTN_B,
                ANIM_GRP_CHANGE_BTN_A,
                ANIM_GRP_CHANGE_BTN_B,
                ANIM_GRP_MAX,
            };

            enum {
                ANIM_BTM_FOCUS_IN = 0,
                ANIM_BTM_FOCUS_OUT,
                ANIM_SELECT_BTN,
                ANIM_OFF_BTN,
                ANIM_ON_BTN,
                ANIM_CHANGE_TEXT_IN,
                ANIM_CHANGE_TEXT_OUT,
                ANIM_CHANGE_IN,
                ANIM_CHANGE_LOOP,
                ANIM_CHANGE_OUT,
                ANIM_MAX,
            };

            enum {
                DISK_ANIM_GRP_COMMENT = 0,
                DISK_ANIM_GRP_WII,
                DISK_ANIM_GRP_GC,
                DISK_ANIM_GRP_DISK_IN,
                DISK_ANIM_GRP_ALL,
                DISK_ANIM_GRP_MAX,
            };

            enum {
                DISK_ANIM_START = 0,
                DISK_ANIM_DISK_START,
                DISK_ANIM_DISK_LOOP,
                DISK_ANIM_DISK_END,
                DISK_ANIM_DISK_LOST,
                DISK_ANIM_DISK_IN,
                DISK_ANIM_DISK_EJECT,
                DISK_ANIM_UNKNOWN,
                DISK_ANIM_UNKNOWN_LOOP,
                DISK_ANIM_UNKNOWN_EJECT,
                DISK_ANIM_MAX,
            };

            enum {
                BANNER_ANIM_LOOP = 0,
                BANNER_ANIM_START,
                BANNER_ANIM_LOOP_AFTER_START,
                BANNER_ANIM_MAX,
            };

            enum {
                LOCKED_DIALOG_ANIM_APPEAR = 0,
                LOCKED_DIALOG_ANIM_DISAPPEAR,
                LOCKED_DIALOG_ANIM_MAX,
            };

            static void iplChannelTitle_813BA684(void* work);
            static void iplChannelTitle_813BA784(void* work);
            static void getTmdTask(void* work);
            static void getTicketLimitTask(void* work);
            static BOOL isTimeLimitedTicket(ESTicketView * ticket, u32* remainTime = NULL);

            static Button* getButton();
            static ParentalDialog* getParentalDialog();

            int mState;  // 0x58

            EGG::Heap* mpPreviewBnrHeap;  // 0x5C

            int mChanPage;   // 0x60
            int mChanIndex;  // 0x64

            int mMaxPages;     // 0x68
            int mChanSceneID;  // 0x6C

            int mParentalState;  // 0x70

            int mDiskState;   // 0x74
            int mDiskState2;  // 0x78

            nw4r::math::VEC3 mDispTrans;  // 0x7C
            u32 unk_0x88;
            int unk_0x8C;
            bool unk_0x90;

            layout::GroupAnimator* mpGrpAnims[ANIM_GRP_MAX][ANIM_MAX];  // 0x94
            layout::Animator* mpChangeAnims[ANIM_MAX];                  // 0x1D4

            math::HermiteIntp<float>* mpZoomAnim;  // 0x1FC

            ChannelSelect* mpChanSelScn;  // 0x200

            nand::LayoutFile* mpLayoutFile;  // 0x204
            layout::Object* mpLayout;        // 0x208

            gui::PaneManager* mpGui;  // 0x20C

            layout::Object* mpLimitRemainLyt;  // 0x210
            layout::Object* mpLimitDoneLyt;    // 0x214

            int mLoadedIndex;                      // 0x218
            nand::LayoutFile* mpLoadedLytFile[2];  // 0x21C
            void* mpLoadedBanner[2];               // 0x224
            nand::File* mpLoadedBnrSound[2];       // 0x22C
            void* mpLoadedDiskSound[2];            // 0x234

            layout::Object* mpChanBannerLyt;                       // 0x23C
            layout::Animator* mpChanBannerAnims[BANNER_ANIM_MAX];  // 0x240

            nw4r::snd::SoundHandle* mpDiskBnrSound;  // 0x24C

            nand::LayoutFile* mpDiskBnrFile;                                     // 0x250
            layout::Object* mpDiskBnrLayout;                                     // 0x254
            layout::Animator* mpDiskBnrAnims[DISK_ANIM_GRP_MAX][DISK_ANIM_MAX];  // 0x258

            undefined unk_0x320[4];
            undefined unk_0x324;

            nand::LayoutFile* mpGCBannerFile;       // 0x328
            layout::Object* mpGCBannerLyt;          // 0x32C
            layout::GroupAnimator* mpGCBannerAnim;  // 0x330

            layout::Object* mpLockedDialogLyt;                             // 0x334
            layout::Animator* mpLockedDialogAnim[LOCKED_DIALOG_ANIM_MAX];  // 0x338
            bool mbDisplayLockedDialog;                                    // 0x340

            nand::File* mpSaveDataFile;  // 0x344

            int mFadeoutTick;  // 0x348

            BOOL mbHovered[BTN_MAX];                     // 0x34C
            CsChanTtlButtonEventHandler* mpButtonEvent;  // 0x354
            utility::Capture* mpCapture;                 // 0x358
            ESTmdView* mpCurTicket;                      // 0x35C
            bool unk_0x360;
            u16 mCurGameCode;  // 0x362

            ESTitleId mTmpTitleID;  // 0x368
            bool unk_0x370;
            bool unk_0x371;

            u32 mLimitType;        // 0x374
            u32 mTimeLimitRemain;  // 0x378

            bool unk_0x37C;

            int mModuleState;                   // 0x380
            int mModuleType;                    // 0x384
            volatile bool mbModuleSceneChange;  // 0x388
            bool mbRSODoneCalc;                 // 0x389
            u32 unk_0x38C;
            u32 unk_0x390;
            nand::SharedFile* mpModuleFile;                       // 0x394
            EGG::ExpHeap* mpRsoExpHeaps[2];                       // 0x398
            int mCurRsoExpHeap;                                   // 0x39C
            channel::RsoThread* mpModuleThread;                   // 0x3A4
            EGG::Heap* mpModuleWorkHeap;                          // 0x3A8
            layout::Animator* mpModuleAnims[channel::MAX_ANIMS];  // 0x3AC
            RSOObjectHeader* mpRSOHeader;                         // 0x3EC
            u8* mpRSOBss;                                         // 0x3F0
            channel::CalcFunc mpRSOCalc;                          // 0x3F4
            bool mbRSOThreadExit;                                 // 0x3F8
            bool mbModuleTerminated;                              // 0x3F9
            int mModulePage;                                      // 0x3FC
            int mModuleIndex;                                     // 0x400
            EGG::ExpHeap* mpCSHeap;                               // 0x404

            static ESTicketView msTicketView;
            static ESTicketView msUnlockTicket;

            static const char* mscBtnNames[BTN_MAX];

            static const char* mscChangeName[];

            static const char* mscAnimGroups[ANIM_GRP_MAX + 1];
            static const char* mscAnimNames[ANIM_MAX];

            static const char* mscBannerAnims[BANNER_ANIM_MAX];

            static const char* mscDiskGroups[DISK_ANIM_GRP_MAX];
            static const char* mscDiskAnimNames[DISK_ANIM_MAX];

            static const char* mscDiskLytFile[];

            static const char* mscGCAnimGroups[];
            static const char* mscGCAnimNames[];

            static const char* mscButtonTextName[];

            friend class ChannelTitleEventHandler;
            friend class CsChanTtlButtonEventHandler;
        };

        class ChannelTitleEventHandler : public ::gui::EventHandler {
        public:
            ChannelTitleEventHandler(ChannelTitle* instance) : ::gui::EventHandler() { mpInstance = instance; }

            void onEvent(u32 compId, u32 event, void* data);

        private:
            ChannelTitle* mpInstance;  // 0x10
        };

        class CsChanTtlButtonEventHandler : public ButtonEventHandlerBase {
        public:
            CsChanTtlButtonEventHandler(ChannelTitle* instance) : ButtonEventHandlerBase() { mpInstance = instance; }

            void onEventDerived(u32 compId, u32 event, const controller::Interface* con);

        private:
            ChannelTitle* mpInstance;  // 0x10
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHANNEL_TITLE_H
