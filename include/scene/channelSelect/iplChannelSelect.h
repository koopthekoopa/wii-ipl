#ifndef IPL_SCENE_CHANNEL_SELECT_H
#define IPL_SCENE_CHANNEL_SELECT_H

#include "iplSceneUIHeader.h"

#include "scene/button/iplButton.h"
#include "scene/channelSelect/iplChannelObj.h"
#include "scene/channelSelect/iplClock.h"

#include "system/iplChannelRsoThread.h"

#include "math/iplInterporation.h"

namespace ipl {
    namespace scene {
        class ChannelSelectEventHandler;
        class CsChanSelButtonEventHandler;
        class CsChanSelSDMenuEventHandler;

        FADER_SCENE_CLASS(ChannelSelect) {
        public:
            ChannelSelect(EGG::Heap * heap, int startup);
            virtual ~ChannelSelect();

            static void setInitFlag(BOOL value) {
                msInitFlag = value;
            }

            void prepare();
            void create();

            void calcCommon();
            FaderSceneCommand calcFadein();
            FaderSceneCommand calcNormal();
            void initCalcFadeout();
            FaderSceneCommand calcFadeout();

            void draw();
            void destroy();

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

            void createChannelModulesHeap();
            void createBaseLayout();
            void createDiskLayout();
            void createChannelThumbnails();
            void createChannelThumbnail(ChannelObj * channelObj);

            void calcChannelModules();
            void calcChannelThumbnails();
            void calcDiskLayout();

            void drawChannelThumbnails();
            void drawChannelOthers();

            void calcNormalNormal();  // yes
            void calcNormalWaitScrl();
            void calcNormalScrl();
            void calcNormalWaitLoading();
            void calcNormalFadeOutZoom();
            void calcNormalRestart();
            void calcNormalSafeModeDialog();

            void refreshChannelList(int page);
            void makeChannelList(int page, bool force);
            void appendToChannelList(int page, int index);
            void destroyChannelObj(ChannelObj * channelObj);
            void sortChannelList(int page);
            void sortChannelListByPage(int page, int unk);
            ChannelObj* searchList(int page, int index) const;

            void setupDiskChanObj();
            void updateDiskState();
            void startDiskInEvent();
            void startDiskOutEvent();

            void setChanFrameVisibility();

            BOOL isChannelInView(int page, int index) const;
            BOOL isChannelInCalc(int page, int index, int unk2) const;

            BOOL isPageCreated(int page) const;
            BOOL isPageCreatedAllDone(int page) const;

            void preparePageScrolling(int nextState);
            void startPageScroll(int nextState);

            void tryToStartBoardScene();
            void startChanTtlScene(int page, int index);
            void startChanTtlScene(ChannelObj * chanObj) {
                startChanTtlScene(chanObj->mChanPage, chanObj->mChanIndex);
            }

            void reserveSceneChangeDerived(int page, int index);

            BOOL tellStartingZoomAnm();

            BOOL prepareRestarting(int page);
            void restart(int page, int index);

            nw4r::lyt::Pane* getChannelBasePane(int page, int index, int unk3) const;
            const nw4r::lyt::Pane* getChannelBasePane(int index) const;
            nw4r::lyt::Pane* getChannelBasePane(int index);

            nw4r::math::VEC3 getDispChanTrans(int index) const;

            void setChannelScissor(const ChannelObj* channelObj) const;
            void initChanZoomParam(const math::VEC3& pos, BOOL unk);

            void calcChanZoomParam();
            void setChanZoomOrtho();

            int isInChannelPaneNames(const char* name) const;

            EGG::ExpHeap* getFreeModuleExHeap();
            void updateModuleExHeap(EGG::ExpHeap * heap1, EGG::ExpHeap * heap2);

            void restartChannelModules();
            void createChanMoveLayout();

            void calcNormalGrab();
            void calcNormalDrag();
            void calcNormalReleaseWait();
            void calcNormalRelease();
            void calcNormalMoveChanIn();
            void calcNormalMoveChanSave();
            void calcNormalMoveChanOut();
            void calcNormalDragScrl();

            BOOL onEventDrag(const char* paneName, u32 event, controller::Interface* con);
            void onEventDerivedDrag(const char* paneName, u32 event, const controller::Interface* con);

            void startDrag(const controller::Interface* con, int page, int index);
            void finishDrag();
            bool isReleasableArea(int page, int index);
            void moveDrag();

            void startResetting();

            bool unkBool() {
                return !unk_0x185 || unk_0x180 == 3;
            }
            void setSomething() {
                unk_0x184 = true;
                unk_0x185 = 1;
            }

            enum {
                START_NORMAL = 0,
                START_FROM_BOARD,
                START_FROM_CHJUMP
            };

        private:
            enum {
                CHAN_SCROLL_0,
                CHAN_SCROLL_1,
                CHAN_SCROLL_2,
                CHAN_SCROLL_3,
                CHAN_SCROLL_4,
                CHAN_SCROLL_MAX
            };

            enum {
                CLOCK_MINUTE,
                CLOCK_SECOND_1,
                CLOCK_SECOND_2,
                CLOCK_MAX
            };

            enum {
                STATE_NONE = 0,
                STATE_NORMAL,
                STATE_CREATE,
                STATE_FADING_IN,
                STATE_START_BOARD_SCENE,
                STATE_BOARD_SCENE,
                STATE_START_SETTING_SCENE,
                STATE_START_SD_MENU_SCENE = STATE_START_SETTING_SCENE, /* for readability */
                STATE_NORMAL_WAIT_LOADING,
                STATE_CHANNEL_TITLE,
                STATE_NORMAL_FADE_ZOOM,
                STATE_PREP_LEFT_PAGE_SCROLL,
                STATE_PREP_RIGHT_PAGE_SCROLL,
                STATE_LEFT_PAGE_SCROLL,
                STATE_RIGHT_PAGE_SCROLL,
                STATE_NORMAL_DONE_FADE_ZOOM,
                STATE_INACTIVE,
                STATE_NORMAL_RESTART,
                STATE_NORMAL_SAFE_MODE_DIALOG,
                STATE_NORMAL_GRAB,
                STATE_NORMAL_DRAG,
                STATE_NORMAL_RELEASE_WAIT,
                STATE_NORMAL_RELEASE,
                STATE_NORMAL_MOVE_CHAN_IN,
                STATE_NORMAL_MOVE_CHAN_SAVE,
                STATE_NORMAL_MOVE_CHAN_OUT,
                STATE_DRAG_SCROLL_LEFT,
                STATE_DRAG_SCROLL_RIGHT
            };

            enum {
                DISK_STATE_READ = 0,
                DISK_STATE_PLAY_THUMB,
                DISK_STATE_RVL_GAME,
                DISK_STATE_DISK_UPDATE,
                DISK_STATE_GC_GAME_WAIT,
                DISK_STATE_GC_GAME,
                DISK_STATE_DESTROY,
            };

            nw4r::ut::List mChanList;

            nand::LayoutFile* mpLayoutFile;  // 0x64
            layout::Object* mpLayout;        // 0x68

            math::HermiteIntp<math::VEC3>* mpChanZoomParams[4];

            gui::PaneManager* mpGui;  // 0x7C

            nand::LayoutFile* mpDiskThumbFile;  // 0x80

            layout::Object* mpNoDiskLayout;  // 0x84
            layout::Animator* mpNoDiskAnim;  // 0x88

            math::HermiteIntp<float>* mpDiskFadeAnim;  // 0x8C
            ChannelObj* mpDiskChanObj;                 // 0x90

            layout::Object* mpDiskLayout;  // 0x94
            layout::Animator* mpDiskAnim;  // 0x98

            layout::Object* mpDiskInOutLyt;   // 0x9C
            layout::Animator* mpDiskInAnim;   // 0xA0
            layout::Animator* mpDiskOutAnim;  // 0xA4

            u32 unused_0xA8;

            layout::Object* mpMoveLytMask;    // 0xAC
            layout::Object* mpMoveLytObject;  // 0xB0
            layout::Object* mpMoveLytDrop;    // 0xB4

            CsChanSelButtonEventHandler* mpButtonEvent;  // 0xB8
            CsChanSelSDMenuEventHandler* mpSDMenuEvent;  // 0xBC

            int mState;        // 0xC0
            int mStartType;    // 0xC4
            int mCurrentPage;  // 0xC8
            int mMaxPages;     // 0xCC

            f32 mChanThumbOff_X;  // 0xD0
            f32 mChanThumbOff_Y;  // 0xD4
            math::VEC3 unk_0xD8;
            math::VEC2 unk_0xE4;
            f32 mScaleAdjust;  // 0xEC

            int mDiskState;       // 0xF0
            bool mbDiskInserted;  // 0xF4
            char* mspDiskID;      // 0xF8
            char* mspDiskMaker;   // 0xFC

            bool mbLeftArrowVisible;   // 0x100
            bool mbRightArrowVisible;  // 0x101

            clock mClock;      // 0x108
            s32 mPrevSDState;  // 0x168

            EGG::Heap* unk_0x16C;

            EGG::Heap* mpDiskHeap;     // 0x170
            EGG::Heap* mpCursorHeap;   // 0x174
            EGG::Heap* mpBalloonHeap;  // 0x178

            EGG::Heap* unk_0x17C;

            int unk_0x180;

            bool unk_0x184;
            bool unk_0x185;
            ChannelObj* mpCurrentRsoChanObj;  // 0x188
            ChannelObj* unk_0x18C;

            EGG::Heap* mpModuleWorkHeap;         // 0x190
            channel::RsoThread* mpModuleThread;  // 0x194
            EGG::ExpHeap* mpModuleHeaps[49];     // 0x198
            bool unk_0x25C[49];

            nw4r::math::VEC2 mDragPos;  // 0x290
            int mConChan;               // 0x298
            int mMoveOldPage;           // 0x2A0
            int mMoveOldIndex;          // 0x2A0
            int mMoveNewPage;           // 0x2A4
            int mMoveNewIndex;          // 0x2A8
            int unk_0x2AC;
            int unk_0x2B0;
            int unk_0x2B4;
            bool unk_0x2B8;
            nand::File* mpSaveDataFile;  // 0x2BC
            ChannelObj* unk_0x2C0;
            layout::Object* unk_0x2C4;
            layout::Animator* unk_0x2C8;
            u32 unused_0x2CC;

            static BOOL msInitFlag;
            static const char* mscChanPaneNames[CHAN_SCROLL_MAX][MAX_CHANNEL_INDEX];
            static const char* mscBasePaneNames[CHAN_SCROLL_MAX];
            static const char* mscUnk0PaneNames[CHAN_SCROLL_MAX];
            static const char* mscUnk1PaneNames[CHAN_SCROLL_MAX];
            static const char* mscClockPaneNames[3];
            static const char* mscMaskPaneName;

            friend class ChannelTitle;

            friend class ChannelSelectEventHandler;
            friend class CsChanSelButtonEventHandler;
            friend class CsChanSelSDMenuEventHandler;
        };

        class ChannelSelectEventHandler : public ::gui::EventHandler {
        public:
            ChannelSelectEventHandler(ChannelSelect* instance) : ::gui::EventHandler() { mpInstance = instance; }

            void onEvent(u32 compId, u32 event, void* data);

        private:
            ChannelSelect* mpInstance;  // 0x10
        };

        class CsChanSelButtonEventHandler : public ButtonEventHandlerBase {
        public:
            CsChanSelButtonEventHandler(ChannelSelect* instance) : ButtonEventHandlerBase() { mpInstance = instance; }

            void onEventDerived(u32 compId, u32 event, const controller::Interface* con);

        private:
            ChannelSelect* mpInstance;  // 0x10
        };

        class CsChanSelSDMenuEventHandler : public SDMenuEventHandlerBase {
        public:
            CsChanSelSDMenuEventHandler(ChannelSelect* instance) : SDMenuEventHandlerBase() { mpInstance = instance; }

            void onEventDerived(u32 compId, u32 event, const controller::Interface* con);

            static const char* getPaneName(int index) NO_INLINE;

        private:
            ChannelSelect* mpInstance;  // 0x10
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHANNEL_SELECT_H
