#ifndef HOME_BUTTON_MINI_LIB_BASE_H
#define HOME_BUTTON_MINI_LIB_BASE_H

#include "homebutton/HBMGUIManager.h"
#include "homebutton/HBMBase.h"

#include "homebutton/internal/HBMRes.h"

#include <nw4r/lyt.h>

#include <nw4r/snd.h>
#include <nw4r/snd/DvdSoundArchive.h>
#include <nw4r/snd/NandSoundArchive.h>
#include <nw4r/snd/MemorySoundArchive.h>

#include <nw4r/ut.h>

#include <revolution/axfx.h>
#include <revolution/wpad.h>
#include <revolution/sc.h>

#define HBM_MAX_VOLUME 10

namespace homebutton {
    class HomeButton;
    class Controller;
    class GroupAnmController;
    class RemoteSpk;

    /****************
    * EVENT HANDLER
    *****************/
    class HomeButtonEventHandler : public gui::EventHandler {
        public:
            HomeButtonEventHandler(homebutton::HomeButton* pHomeButton) :
            mpHomeButton(pHomeButton) {}

            virtual void            onEvent(u32 ud, u32 event, void* pData);    // 0x08

            homebutton::HomeButton* getHomeButton() { return mpHomeButton; }

        private:
            HomeButton* mpHomeButton;   // 0x08
    };

    /************
    * MAIN CLASS
    *************/
    class HomeButton {
        public:
            enum {
                SYNC_START,
                SYNC_STOP,
            };

        private:
            enum {
                SEQ_NORMAL,
                SEQ_CONTROL,
                SEQ_COMMON,
            };

        private:
            class BlackFader {
            public:
                BlackFader(int maxFrame) {
                    init(maxFrame);
                    setColor(0, 0, 0);
                }

                int     getFrame() const    { return frame_; }
                int     getMaxFrame() const { return maxFrame_; }

                void setColor(u8 r, u8 g, u8 b) {
                    red_ = r;
                    green_ = g;
                    blue_ = b;
                }

                bool    isDone();

                void    init(int maxFrame);
                void    calc();
                void    draw();

                void    start()             { state_ = 1; }

            private:
                int frame_;     // 0x00
                int maxFrame_;  // 0x04
                int state_;     // 0x08
                u8  red_;       // 0x0D
                u8  green_;     // 0x0E
                u8  blue_;      // 0x0F
            };

        public:
            static void         createInstance(const HBMDataInfo* pDataInfo);
            static HomeButton*  getInstance();
            static void         deleteInstance();

            HomeButton(const HBMDataInfo* pDataInfo);
            ~HomeButton();

            const HBMDataInfo*              getHBMDataInfo()                    { return mpHBInfo; }
            Controller*                     getController(int chan)             { return mpController[chan]; }
            int                             getVolume();

            HBMSelectBtnNum                 getSelectBtnNum();

            const char*                     getFuncPaneName(int no)             { return scFuncTouchPaneName[no]; }
            const char*                     getPaneName(int no)                 { return scBtnName[no]; }

            bool                            getReassignedFlag() const           { return mReassignedFlag; }

            HomeButtonEventHandler*         getEventHandler() const             { return mpHomeButtonEventHandler; }

            bool                            isActive() const;
            bool                            isUpBarActive() const;
            bool                            isDownBarActive();

            void                            setAdjustFlag(int flag);
            void                            setEndSimpleSyncFlag(bool flag)     { mEndSimpleSyncFlag = flag; }

            void                            setForcusSE();
            void                            setReassignedFlag(bool flag)        { mReassignedFlag = flag; }
            nw4r::snd::SoundArchivePlayer*  getSoundArchivePlayer() const       { return mpSoundArchivePlayer; }

            void                            setSimpleSyncAlarm(int type);
            void                            setSimpleSyncFlag(bool flag)        { mSimpleSyncFlag = flag; }

            void                            setSpeakerAlarm(int chan, int msec);
            void                            setVolume(int vol);

            bool                            getVibFlag();
            int                             getPaneNo(const char* pName);

            void                            setVibFlag(bool flag);

            void                            create();
            void                            init();
            void                            calc(const HBMControllerData* pController);
            void                            draw();
            void                            update(const HBMControllerData* pController);
            void                            updateTrigPane();

            void                            startPointEvent(const char* pName, void* pData);
            void                            startLeftEvent(const char* pName);
            void                            startTrigEvent(const char* pName);

            int                             findAnimator(int pane, int anm);
            int                             findGroupAnimator(int grPane, int grAnm);

            void                            callSimpleSyncCallback(s32 result, s32 num);

            void                            startBlackOut();
            void                            setBlackOutColor(u8 r, u8 g, u8 b)  { mFader.setColor(r, g, b); }

        private:
            void    init_battery(const HBMControllerData* pController);
            void    calc_battery(int chan);
            void    reset_battery();

            void    init_sound();
            void    play_sound(int id);
            void    fadeout_sound(f32 gain);

            void    init_msg();
            void    init_vib();
            void    init_volume();

            void    set_config();
            void    set_text();

            void    calc_fadeoutAnm();
            void    calc_letter();

            void    update_controller(int id);
            void    update_posController(int id);

            void    reset_btn();
            void    reset_control();
            void    reset_guiManager(int num);
            void    reset_window();

        public:
            void    update_sound();

        private:
            static HomeButton*                      spHomeButtonObj;

            int                                     mSequence;                                              // 0x00
            const HBMDataInfo*                      mpHBInfo;                                               // 0x04
            int                                     mButtonNum;                                             // 0x08
            int                                     mAnmNum;                                                // 0x0C
            int                                     mState;                                                 // 0x10
            int                                     mSelectAnmNum;                                          // 0x14
            int                                     mMsgCount;                                              // 0x18
            int                                     mPaneCounter[res::eBtn_Max + res::eFuncTouchPane_Max];  // 0x1C
            int                                     mPadDrawTime[WPAD_MAX_CONTROLLERS];                     // 0x54
            int                                     mForcusSEWaitTime;                                      // 0x64
            int                                     mBar0AnmRev;                                            // 0x68
            int                                     mBar1AnmRev;                                            // 0x6C
            int                                     mBar0AnmRevHold;                                        // 0x70
            int                                     mBar1AnmRevHold;                                        // 0x74
            int                                     mGetPadInfoTime;                                        // 0x78
            bool                                    mControllerFlag[WPAD_MAX_CONTROLLERS];                  // 0x7C
            int                                     mVolumeNum;                                             // 0x80
            bool                                    mVibFlag;                                               // 0x84
            bool                                    mControlFlag;                                           // 0x85
            bool                                    mLetterFlag;                                            // 0x86
            bool                                    mAdjustFlag;                                            // 0x87
            bool                                    mReassignedFlag;                                        // 0x88
            bool                                    mSimpleSyncFlag;                                        // 0x89
            bool                                    mEndSimpleSyncFlag;                                     // 0x8A
            bool                                    mInitFlag;                                              // 0x8B
            bool                                    mForceSttInitProcFlag;                                  // 0x8C
            bool                                    mForceSttFadeInProcFlag;                                // 0x8D
            bool                                    mEndInitSoundFlag;                                      // 0x8E
            bool                                    mForceStopSyncFlag;                                     // 0x8F
            bool                                    mForceEndMsgAnmFlag;                                    // 0x90
            int                                     mSoundRetryCnt;                                         // 0x94
            int                                     mDialogFlag[res::eBtn_Max];                             // 0x98
            char*                                   mpLayoutName;                                           // 0xA8
            char*                                   mpAnmName;                                              // 0xAC
            HBMSelectBtnNum                         mSelectBtnNum;                                          // 0xB0
            wchar_t*                                mpText[SC_LANG_DUTCH+1][6];                             // 0xBC

            // Only IPL's HBM has this....... and it's unused! Yippee!
            u8                                      unused_0x15C[0x48];

            WPADInfo                                mWpadInfo[WPAD_MAX_CONTROLLERS];                        // 0x1A4
            WPADSyncDeviceCallback                  mSimpleSyncCallback;                                    // 0x204
            f32                                     mOnPaneVibFrame[WPAD_MAX_CONTROLLERS];                  // 0x208
            f32                                     mOnPaneVibWaitFrame[WPAD_MAX_CONTROLLERS];              // 0x218
            int                                     mWaitStopMotorCount;                                    // 0x228
            nw4r::lyt::Layout*                      mpLayout;                                               // 0x22C
            nw4r::lyt::Layout*                      mpCursorLayout[res::eCursorLyt_Max];                    // 0x230
            nw4r::lyt::MultiArcResourceAccessor*    mpResAccessor;                                          // 0x240
            gui::PaneManager*                       mpPaneManager;                                          // 0x244
            HomeButtonEventHandler*                 mpHomeButtonEventHandler;                               // 0x248
            nw4r::lyt::DrawInfo                     mDrawInfo;                                              // 0x24C
            Controller*                             mpController[WPAD_MAX_CONTROLLERS];                     // 0x2A0
            RemoteSpk*                              mpRemoteSpk;                                            // 0x2B0

            GroupAnmController*                     mpAnmController[res::eAnimator_Max];                    // 0x2B4
            GroupAnmController*                     mpGroupAnmController[res::eGrAnimator_Max];             // 0x2E4
            GroupAnmController*                     mpPairGroupAnmController[res::ePairAnm_Max];            // 0x40C

            BlackFader                              mFader;                                                 // 0x448

            OSAlarm                                 mAlarm[WPAD_MAX_CONTROLLERS];                           // 0x458
            OSAlarm                                 mSpeakerAlarm[WPAD_MAX_CONTROLLERS];                    // 0x518
            OSAlarm                                 mSimpleSyncAlarm;                                       // 0x5D8

            nw4r::snd::SoundArchivePlayer*          mpSoundArchivePlayer;                                   // 0x608
            nw4r::snd::DvdSoundArchive*             mpDvdSoundArchive;                                      // 0x60C
            nw4r::snd::MemorySoundArchive*          mpMemorySoundArchive;                                   // 0x610
            nw4r::snd::NandSoundArchive*            mpNandSoundArchive;                                     // 0x614

            nw4r::snd::SoundHeap*                   mpSoundHeap;                                            // 0x618
            nw4r::snd::SoundHandle*                 mpSoundHandle;                                          // 0x61C

            u16                                     mAppVolume[nw4r::snd::AUX_BUS_NUM];                     // 0x620

            AXFXAllocHook                           mAxFxAlloc;                                             // 0x628
            AXFXFreeHook                            mAxFxFree;                                              // 0x62C
            AXFX_REVERBHI                           mAxFxReverb;                                            // 0x630
            AXAuxCallback                           mAuxCallback;                                           // 0x790
            void*                                   mpAuxContext;                                           // 0x794

            f32                                     mFadeOutSeTime;                                         // 0x798

        private:
            static const int scSoundHeapSize_but2;
            static const int scSoundHeapSize_but3;
            static const int scSoundThreadPrio;
            static const int scDvdThreadPrio;

            static const int scReConnectTime;
            static const int scReConnectTime2;
            static const int scPadDrawWaitTime;
            static const int scGetPadInfoTime;
            static const int scForcusSEWaitTime;
            static const f32 scOnPaneVibTime;
            static const f32 scOnPaneVibWaitTime;
            static const int scWaitStopMotorTime;
            static const int scWaitDisConnectTime;

            static const char* scCursorLytName[res::eCursorLyt_Max];
            static const char* scCursorPaneName;
            static const char* scCursorRotPaneName;
            static const char* scCursorSRotPaneName;

            static const char* scBtnName[res::eBtn_Max];
            static const char* scTxtName[res::eTxt_Max];
            static const char* scGrName[res::eGroup_Max];
            static const char* scAnimName[res::eAnim_Max];

            static const char* scPairGroupAnimName[res::ePairAnm_Max];
            static const char* scPairGroupName[res::ePairAnm_Max];

            static const char* scGroupAnimName[res::eGrAnim_Max];
            static const char* scGroupName[res::eGrPane_Max];

            static const char* scFuncPaneName[res::eFuncPane_Max];
            static const char* scFuncTouchPaneName[res::eFuncTouchPane_Max];
            static const char* scFuncTextPaneName[res::eFuncTextPane_Max];

            static const char* scBatteryPaneName[WPAD_MAX_CONTROLLERS][res::eBatteryPane_Max];
    };
}

#endif
