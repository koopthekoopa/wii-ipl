#ifndef IPL_SCENE_CHANNEL_OBJECT_H
#define IPL_SCENE_CHANNEL_OBJECT_H

#include "layout/iplLayout.h"
#include "system/iplNand.h"
#include "system/iplNandShared.h"

#include "system/iplChannelRsoThread.h"

#include <revolution/rso.h>

#include <egg/core.h>

namespace ipl {
    namespace scene {
        class ChannelObj {
            public:
                ChannelObj(EGG::Heap* heap, int page, int index);
                ~ChannelObj();

                void                create(nand::LayoutFile* layoutFile);
                void                prepare();

                void                calc();
                void                calcNormal();

                void                setHeaps(EGG::Heap* heap0, EGG::Heap* heap1);
                void                setDiskLayouts(layout::Object* diskLyt, layout::Animator* diskAnim, EGG::Heap* diskHeap);
                void                setBasePane(const nw4r::lyt::Pane* basePane);

                void                initExtModule(EGG::Heap* moduleHeap, channel::RsoThread* moduleThread);

                int                 calcExtModule(EGG::ExpHeap* expHeap, bool unk0, bool unk1);

                void                drawThumbnail();
                void                drawCursor();
                void                drawBalloon();

                void                createDiskLayout(void* data);
                void                destroyDiskLayout();
                void                changeDisk();
                void                resetDiskTitleName();

                nw4r::math::VEC3&   getTranslate() const;

                BOOL                isLayoutCreated() const;
                BOOL                isDiskChannel() const;
                BOOL                isValid() const;

                void                onPoint(int unk);
                void                onLeft(int unk);
                void                onPinch(bool unk);

                void                setCursorDecideAnim();

                void                initCursorAnim(bool unk);
                void                initBalloonAnim(bool unk);

                void                FillModuleCount();

                static void         setLangPane(const layout::Object* layout);

                static void         bindRsoAnm(layout::Object* layout, layout::Animator** anims, const char* unk);

                int                 loadThumbnailAsync();

                void                createThumbnail();

                f32                 createWadThumbnail();
                f32                 createWrongThumbnail();
                f32                 createEmptyThumbnail();

                void                initCursor();
                void                calcCursor(const nw4r::math::VEC3& vec);

                void                setCursorAnim(int unk);
                void                calcCursorAnim();
                void                startCursorAnim(int unk);

                void                initBalloon();
                void                setBalloonText(const wchar_t* text);
                void                calcBalloon(const nw4r::math::VEC3& vec);

                void                setBalloonAnim(int unk);
                void                calcBalloonAnim(int unk);

                void                clearModuleParam();

                void                bindNewAnm(layout::Object* layout);

                void                setupNew();
                void                updateNew();

            private:
                u8                  unk_0x00[8];

                EGG::Heap*          unk_0x08;
                EGG::Heap*          unk_0x0C;
                EGG::Heap*          unk_0x10;
                EGG::Heap*          mpDiskHeap;         // 0x14

                int                 unk_0x18;

                int                 mChanPage;          // 0x1C
                int                 mChanIndex;         // 0x20

                nand::LayoutFile*   unk_0x24;

                nw4r::lyt::Pane*    mpBasePane;         // 0x28

                nand::File*         unk_0x2C;
                layout::Object*     unk_0x30;
                layout::Animator*   unk_0x34;
                layout::Object*     mpDiskLyt;          // 0x38
                layout::Animator*   mpDiskAnim;         // 0x3C
                layout::Object*     unk_0x40;
                layout::Animator*   unk_0x44;
                layout::Object*     unk_0x48;
                layout::Animator*   unk_0x4C[3];
                int                 unk_0x58;
                int                 unk_0x5C;
                layout::Object*     unk_0x60;
                u8                  unk_0x64[4];
                int                 unk_0x68;
                int                 unk_0x6C;
                int                 unk_0x70;
                int                 unk_0x74;
                nw4r::lyt::Group*   unk_0x78;
                int                 unk_0x7C;
                u8                  unk_0x80;
                int                 unk_0x84;
                int                 unk_0x88;
                f32                 unk_0x8C;
                f32                 unk_0x90;
                f32                 mLocationAdjust;    // 0x94
                EGG::Heap*          mpModuleHeap;       // 0x98
                EGG::ExpHeap*       unk_0x9C;
                EGG::ExpHeap*       unk_0xA0;
                layout::Animator*   unk_0xA4[16];
                u8                  unk_0xE4;
                channel::RsoThread* unk_0xE8;
                int                 unk_0xEC;
                nand::SharedFile*   unk_0xF0;
                u8                  unk_0xF4;
                u32                 unk_0xF8;
                u32                 unk_0xFC;
                RSOObjectHeader*    unk_0x100;
                u8*                 unk_0x104;
                channel::CalcFunc   unk_0x108;
                u8                  unk_0x10C;
                u8                  unk_0x10D;
                EGG::ExpHeap*       unk_0x110;
        };
    }
}

#endif // IPL_SCENE_CHANNEL_OBJECT_H
