#ifndef IPL_SCENE_CHANNEL_SELECT_H
#define IPL_SCENE_CHANNEL_SELECT_H

#include "iplSceneHeader.h"

#include "scene/button/iplButton.h"
#include "scene/channelSelect/iplChannelObj.h"
#include "scene/channelSelect/iplClock.h"

#include "system/iplChannelRsoThread.h"

#include "math/iplInterporation.h"

namespace ipl {
    namespace scene {
        class ChannelSelect;

        class ChannelSelectEventHandler : public ::gui::EventHandler {
        private:
            ChannelSelect* mpInstance;  // 0x10
        };

        class CsChanSelButtonEventHandler : public ButtonEventHandlerBase {
        private:
            ChannelSelect* mpInstance;  // 0x10
        };

        class CsChanSelUnk : public SDMenuEventHandlerBase {
        private:
            ChannelSelect* mpInstance;  // 0x10
        };

        FADER_SCENE_CLASS(ChannelSelect) {
        public:
            ChannelSelect(EGG::Heap * heap, int page);
            virtual ~ChannelSelect() {
            }

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
            layout::Animator* getRsoAnimator(int idx);
            BOOL isStartAnimFinished() const;
            void* allocFromRsoExHeap(u32 size, int align);
            void freeToRsoExHeap(void* buffer);
            u32 getAllocatableSizeForRsoExHeap() const;
            void setDebugRsoIntrval(u32 val);

            void createChannelModulesHeap();
            void createBaseLayout();
            void createDiskLayout();
            void createChannelThumbnails();
            void createChannelThumbnails(ChannelObj * channelObj);

            void calcChannelModules();
            void calcChannelThumbnails();
            void calcDiskLayout();

            void drawChannelThumbnails();
            void drawChannelOthers();

            void calcNormalNormal();  // yes
            void calcNormalWaitScrl();
            void calcNormalWaitLoading();
            void calcNormalFadeOutZoom();
            void calcNormalRestart();
            void calcNormalSafeModeDialog();

            void refreshChannelList(int unk);
            void makeChannelList(int unk, bool unk2);
            void appendToChannelList(int unk0, int unk1);
            void destroyChannelObj(ChannelObj * channelObj);
            void sortChannelList(int unk);
            void sortChannelListByPage(int page, int unk);
            ChannelObj* searchList(int page, int unk) const;

            void setupDiskChanObj();
            void updateDiskState();
            void startDiskInEvent();
            void startDiskOutEvent();

            void setChanFrameVisibility();

            BOOL isChannelInView(int unk0, int unk1) const;
            BOOL isChannelInCalc(int unk0, int unk1, int unk2) const;

            BOOL isPageCreated(int page) const;
            BOOL isPageCreatedAllDone(int page) const;

            void preparePageScrolling(int page);
            void startPageScroll(int page);

            void tryToStartBoardScene();

            void reserveSceneChangeDerived(int unk0, int unk1);

            void tellStartingZoomAnm();

            void prepareResarting(int page);
            void restart(int page, int unk);

            nw4r::lyt::Pane* getChannelBasePane(int unk1, int unk2, int unk3) const;
            nw4r::lyt::Pane* getChannelBasePane(int unk) const;
            nw4r::lyt::Pane* getChannelBasePane(int unk);

            nw4r::math::VEC3 getDispChanTrans(int unk) const;

            void setChannelScissor(const ChannelObj* channelObj) const;
            void initChanZoomParam(const math::VEC3& pos, int unk);

            void calcChanZoomParam();
            void setChanZoomOrtho();

            BOOL isInChannelPaneNames(const char* name) const;

            void getFreeModuleExHeap();
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

            void onEventDrag(const char* paneName, u32 event, controller::Interface* con);
            void onEventDerivedDrag(const char* paneName, u32 event, controller::Interface* con);

            void startDrag(const controller::Interface* con, int page, int index);
            void finishDrag();
            bool isReleasableArea(int page, int index);
            void moveDrag();

            const char* iplChannelSelect_813B08AC(int index);

            void startResetting();

        private:
            nw4r::ut::List unk_0x58;
            nand::LayoutFile* mpLayoutFile;  // 0x64
            layout::Object* mpLayout;        // 0x68
            math::HermiteIntp<math::VEC3>* unk_0x6C[4];
            gui::PaneManager* mpGui;            // 0x7C
            nand::LayoutFile* mpDiskThumbFile;  // 0x80
            layout::Object* unk_0x84;
            layout::Animator* unk_0x88;
            math::HermiteIntp<float>* unk_0x8C;
            int* unk_0x90;
            layout::Object* unk_0x94;
            layout::Animator* unk_0x98;
            layout::Object* unk_0x9C;
            layout::Animator* unk_0xA0;
            layout::Animator* unk_0xA4;
            u8 unk_0xA8;
            u8 unk_0xA9;
            u8 unk_0xAA;
            u8 unk_0xAB;
            layout::Object* unk_0xAC;
            layout::Object* unk_0xB0;
            layout::Object* unk_0xB4;
            CsChanSelButtonEventHandler* unk_0xB8;
            CsChanSelUnk* unk_0xBC;
            u32 mState;  // 0xC0
            int unk_0xC4;
            int unk_0xC8;
            int unk_0xCC;
            f32 unk_0xD0;
            f32 unk_0xD4;
            math::VEC3 unk_0xD8;
            math::VEC2 unk_0xE4;
            f32 unk_0xEC;
            u32 unk_0xF0;
            u8 unk_0xF4;
            u8 unk_0xF5;
            u8 unk_0xF6;
            u8 unk_0xF7;
            u8 unk_0xF8;
            u8 unk_0xFC;
            u8 unk_0x100;
            u8 unk_0x101;
            u8 unk_0x102;
            u8 unk_0x103;
            u8 unk_0x104;
            u8 unk_0x105;
            u8 unk_0x106;
            u8 unk_0x107;
            clock mClock;  // 0x108
            u32 unk_0x168;
            EGG::Heap* unk_0x16C;
            EGG::Heap* unk_0x170;
            EGG::Heap* unk_0x174;
            EGG::Heap* unk_0x178;
            EGG::Heap* unk_0x17C;
            u32 unk_0x180;
            u8 unk_0x184;
            u8 unk_0x185;
            ChannelObj* unk_0x188;
            ChannelObj* unk_0x18C;
            EGG::Heap* unk_0x190;
            channel::RsoThread* unk_0x194;
            EGG::ExpHeap* unk_0x198[49];
            u8 unk_0x25C[49];
            nw4r::math::VEC2 unk_0x290;
            int unk_0x298;
            int unk_0x29C;
            int unk_0x2A0;
            int unk_0x2A4;
            int unk_0x2A8;
            int unk_0x2AC;
            int unk_0x2B0;
            int unk_0x2B4;
            u8 unk_0x2B8;
            nand::File* unk_0x2BC;
            ChannelObj* unk_0x2C0;
            layout::Object* unk_0x2C4;
            layout::Animator* unk_0x2C8;
            u8 unk_0x2CC;
            u8 unk_0x2CD;
            u8 unk_0x2CE;
            u8 unk_0x2CF;

            static BOOL msInitFlag;
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHANNEL_SELECT_H
