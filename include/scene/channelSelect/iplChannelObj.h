#ifndef IPL_SCENE_CHANNEL_OBJECT_H
#define IPL_SCENE_CHANNEL_OBJECT_H

#include "layout/iplLayout.h"
#include "system/iplNand.h"
#include "system/iplNandShared.h"

#include "system/iplChannelManager.h"
#include "system/iplChannelRsoThread.h"

#include <revolution/rso.h>

#include <egg/core.h>

namespace ipl {
    namespace scene {
        class ChannelObj {
        public:
            static const int MAX_MODULE_FILL_COUNT = 36000;

            enum {
                EXT_MODULE_RESULT_UNAVAILABLE = 0,
                EXT_MODULE_RESULT_WAIT,
                EXT_MODULE_RESULT_CALC,
                EXT_MODULE_RESULT_DESTROY,
            };

            ChannelObj(EGG::Heap* heap, int page, int index);
            ~ChannelObj();

            void create(nand::LayoutFile* sysLayoutFile);
            void prepare();

            void calc();
            void calcNormal();

            void setHeaps(EGG::Heap* cursorHeap, EGG::Heap* balloonHeap);
            void setDiskLayouts(layout::Object* diskLyt, layout::Animator* diskAnim, EGG::Heap* diskHeap);
            void setBasePane(const nw4r::lyt::Pane* basePane);

            void initExtModule(EGG::Heap* workHeap, channel::RsoThread* thread);

            int calcExtModule(EGG::ExpHeap* expHeap, bool unk0, bool unk1);

            void drawThumbnail();
            void drawCursor();
            void drawBalloon();

            void createDiskLayout(void* data);
            void destroyDiskLayout();
            void changeDisk();
            void resetDiskTitleName();

            nw4r::math::VEC3& getTranslate() const;

            BOOL isLayoutCreated() const;
            BOOL isDiskChannel() const;
            BOOL isValid() const;

            void onPoint(int unk);
            void onLeft(int unk);
            void onPinch(bool unk);

            void setCursorDecideAnim();

            void initCursorAnim(bool unk);
            void initBalloonAnim(bool unk);

            void FillModuleCount();

            static void setLangPane(const layout::Object* layout);

            static void bindRsoAnm(layout::Object* layout, layout::Animator** anims, const char* layoutFile);

            int loadThumbnailAsync();

            void createThumbnail();

            f32 createWadThumbnail();
            f32 createWrongThumbnail();
            f32 createEmptyThumbnail();

            void initCursor();
            void calcCursor(const nw4r::math::VEC3& vec);

            void setCursorAnim(int unk) NO_INLINE;
            void calcCursorAnim();
            void startCursorAnim(int unk);

            void initBalloon();
            void setBalloonText(const wchar_t* text);
            void calcBalloon(const nw4r::math::VEC3& vec);

            void setBalloonAnim(int unk) NO_INLINE;
            void calcBalloonAnim();

            void clearModuleParam();

            void bindNewAnm(layout::Object* layout);

            BOOL setupNew();
            void updateNew();

        private:
            u8 unk_0x00[8];

            EGG::Heap* mpCursorHeap;   // 0x08
            EGG::Heap* mpBalloonHeap;  // 0x0C
            EGG::Heap* mpMainHeap;     // 0x10
            EGG::Heap* mpDiskHeap;     // 0x14

            enum {
                STATE_LOAD_THUMBNAIL = 0,
                STATE_WAIT_LOAD_THUMBNAIL,
                STATE_CREATE_THUMBNAIL,
                STATE_NORMAL,
            };

            int mState;  // 0x18

            int mChanPage;   // 0x1C
            int mChanIndex;  // 0x20

            nand::LayoutFile* mpSysLayoutFile;  // 0x24

            nw4r::lyt::Pane* mpBasePane;  // 0x28

            nand::File* mpThumbFile;        // 0x2C
            layout::Object* mpThumbLayout;  // 0x30
            layout::Animator* mpThumbAnim;  // 0x34

            layout::Object* mpNoDiskLayout;  // 0x38
            layout::Animator* mpNoDiskAnim;  // 0x3C

            layout::Object* mpDiskLayout;  // 0x40
            layout::Animator* mpDiskAnim;  // 0x44

            enum {
                ANIM_CURSOR_FOCUS_OFF = 0,
                ANIM_CURSOR_FOCUS_ON,
                ANIM_CURSOR_SELECT,
                ANIM_CURSOR_MAX,
            };

            layout::Object* mpCursorLayout;                    // 0x48
            layout::Animator* mpCursorAnims[ANIM_CURSOR_MAX];  // 0x4C
            int unk_0x58;
            int unk_0x5C;

            layout::Object* mpBalloonLayout;  // 0x60
            layout::Animator* mpBalloonAnim;  // 0x64
            int unk_0x68;
            int unk_0x6C;
            int unk_0x70;

            int unk_0x74;

            nw4r::lyt::Group* mpNwc24NewGroup;      // 0x78
            layout::GroupAnimator* mpNwc24NewAnim;  // 0x7C
            bool mpNwc24NewPlayAnim;                // 0x80
            int unk_0x84;
            u32 unk_0x88;

            f32 mThumbWidth;      // 0x8C
            f32 mThumbHeight;     // 0x90
            f32 mLocationAdjust;  // 0x94

            enum {
                EXT_MODULE_STATE_UNAVAILABLE = 0,
                EXT_MODULE_STATE_LOAD,
                EXT_MODULE_STATE_PREPARE_RSO,
                EXT_MODULE_STATE_RSO_CALC,
                EXT_MODULE_STATE_PREPARE_CS,
                EXT_MODULE_STATE_CS_CALC,
                EXT_MODULE_STATE_DESTROY_CS,
            };

            EGG::Heap* mpExtModuleWorkHeap;                       // 0x98
            EGG::ExpHeap* mpModuleHeap;                           // 0x9C
            EGG::ExpHeap* mpPrevModuleHeap;                       // 0xA0
            layout::Animator* mpModuleAnims[channel::MAX_ANIMS];  // 0xA4
            bool mbModuleTerminated;                              // 0xE4
            channel::RsoThread* mpModuleThread;                   // 0xE8
            int mExtModuleState;                                  // 0xEC
            nand::SharedFile* mpModuleFile;                       // 0xF0
            bool unk_0xF4;
            u32 mModuleFillCount;  // 0xF8
            u32 unk_0xFC;

            RSOObjectHeader* mpRSOHeader;  // 0x100
            u8* mpRSOBss;                  // 0x104
            channel::CalcFunc mpRSOCalc;   // 0x108
            bool mpRSOAfterCalc;           // 0x10C
            bool mbRSOThreadExit;          // 0x10D

            EGG::ExpHeap* mpCSHeap;  // 0x110

            friend class ChannelSelect;
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHANNEL_OBJECT_H
