#ifndef IPL_SCENE_BOARD_OBJECT_H
#define IPL_SCENE_BOARD_OBJECT_H

#include "iplSceneUIHeader.h"

#include "system/iplNigaoe.h"
#include "system/RIPL_BoardRecord.h"

#include "utility/iplCalendar.h"
#include "utility/iplCapture.h"

#include "iplMath.h"

#include <revolution/cdb.h>
#include <revolution/arc.h>

namespace ipl {
    namespace scene {
        typedef struct picture {
            picture() :
            mpRGB565(NULL),
            mpWork(NULL),
            width(0),
            height(0) {}

            u8*         mpRGB565;   // 0x00
            u8*         mpWork;     // 0x04
            s32         width;      // 0x08
            s32         height;     // 0x0C
            GXTexObj    texObj;     // 0x10
        } picture;

        class BoardObject : public ::gui::EventHandler {
            public:
                BoardObject();

                void            create(nand::LayoutFile* file, u8* recordData, u32 gameCode, const CDBId& cdbId, const CDBRecordKey& recordKey, const ipl::utility::Date& date);
                void            init();

                void            calc(const math::VEC2& offsetPos);
                void            draw();
                void            update(int chan);

                void            destroy();

                virtual void    onEvent(u32 compId, u32 event, void* data);

                layout::Object* getLayout() const   { return mpLayout; }

                void            left_away();
                void            right_away();

                BOOL            get_nigaoe_name(wchar_t* name, int nameLen);

                BOOL            permit_reply() const;

                u16             get_addr_type() const;
                NWC24FriendAddr get_addr() const;

                void            delete_record();
                void            clean();

                BOOL            is_protected() const;

                void            startClean()        { clean(); mbCleaned = false; }

            private:
                void    stt_create();
                void    stt_make_thm();
                void    stt_fadein();
                void    stt_pinch();
                void    stt_stand();

                void    destroy_heap();

                void    capture();

                BOOL    create_picture(picture* picture, EGG::Heap* picHeap, EGG::Heap* workHeap, u8* src, u32 srcSize);

                void    reset_gui();

                void    set_thumb_text(const char* paneName, const wchar_t* thumbText);

                void    start_point_event(int index, controller::Interface* con);
                void    start_left_event(int index);

                void    change_ltrtex(layout::Object* layout, void* arcData);
                void    change_tex(layout::Object* layout, const char* paneName, TPLPalette* tplData, u32 tplSize);

                BOOL    arc_init_handle(void* buffer, ARCHandle* handle);

                enum {
                    STATE_CREATE,
                    STATE_MAKE_THUMB,
                    STATE_FADE_IN,
                    STATE_NORMAL,
                    STATE_PINCH,
                    STATE_STAND,
                };

                enum {
                    TYPE_MEMO = 0,
                    TYPE_LETTER,
                    TYPE_PLAYTIME,
                    TYPE_MAX,
                };

                enum {
                    ANIM_PASTE = 0,
                    ANIM_FOCUS_IN,
                    ANIM_FOCUS_OUT,
                    ANIM_FOCUS,
                    ANIM_EXIT,
                    ANIM_NEXT_PAGE,
                    ANIM_NEW,
                    ANIM_DEFAULT,
                    ANIM_SD,
                    ANIM_MAX,
                };

            public:
                nw4r::ut::Link                  mLinkNode;      // 0x0C

            private:
                layout::Object*                 mpLayout;       // 0x14
                gui::PaneManager*               mpGui;          // 0x18
                nand::LayoutFile*               mpLayoutFile;   // 0x1C

                nigaoe::Object*                 mpNigaoe;       // 0x20

                u8*                             mpRecordData;   // 0x24

                u8*                             mpThumbPtr;     // 0x28
                u8*                             mpUncompThumb;  // 0x2C
                u32                             mpThumbLength;  // 0x30

                math::VEC2                      mBoardPos;      // 0x34
                math::VEC2                      mMoveSpeed;     // 0x3C
                math::LinearIntp<math::VEC2>    mMoveAnim;      // 0x44

                CDBId                           mCDBId;         // 0x74
                u8                              unk_0x7C[4];
                CDBRecordKey                    mCDBRecordKey;  // 0x80
                u32                             mCDBGameCode;   // 0xB0

                utility::Date                   mBoardDate;     // 0xB4

                u8*                             mpHeapArena;    // 0xC0
                EGG::Heap*                      mpHeap;         // 0xC4
                EGG::Allocator*                 mpAllocator;    // 0xC8

                bool                            mbModifiedPos;  // 0xCC
                bool                            mbCleaned;      // 0xCD
                bool                            mbCreatedPic;   // 0xCE
                bool                            mbRightWay;     // 0xCF
                bool                            mbLeftWay;      // 0xD0
                BOOL                            mbHovered;      // 0xD4
                int                             mLetterType;    // 0xD8
                RBRRecordType                   mRecordType;    // 0xDC
                u32                             mOptOutFlag;    // 0xE0

                class {
                    public:
                        void init() {
                            unk_0x0C = -1;
                            pos.x = 0.0f;
                            pos.y = 0.0f;
                        }
                    
                        math::VEC2  pos;    // pos
                        int         unk_0x08;
                        int         unk_0x0C;
                }                               mStandData;     // 0xE4

                picture                         mPicture;       // 0xF4
                utility::Capture*               mpCapture;      // 0x124
                bool                            mbCaptured;     // 0x128

                int                             mState;         // 0x12C
                math::VEC2                      mConPos;        // 0x130
                int                             mConChan;       // 0x138
                u8                              unk_0x13C[4];

                static const char*              mAnimNames[TYPE_MAX][1+ANIM_MAX];

                static const int                THUMB_TEXT_LENGTH = 6;

                static const OSTime             NEW_MESSAGE_DURATION_SECONDS = 6 * 60 * 60; // 6 hours

                friend class button_event;
                friend class focus_object;
                friend class Board;
        };
    }
}

#endif // IPL_SCENE_BOARD_OBJECT_H
