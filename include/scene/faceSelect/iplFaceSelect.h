#ifndef IPL_SCENE_FACE_SELECT_H
#define IPL_SCENE_FACE_SELECT_H

#include "iplSceneUIHeader.h"

#include "scene/button/iplButton.h"

#include "system/iplNigaoe.h"
#include "scene/textBalloon/iplBalloon.h"

#include <RFL_Database.h>

namespace ipl {
    namespace scene {
        class FaceSelectEvent;
        class FaceSelectButtonEvent;

        FADER_SCENE_CLASS(FaceSelect) {
            public:
                enum {
                    FADE_FROM_MEMO = 0,
                    FADE_FROM_ADDRESS_EDIT,
                    FADE_FROM_ADDRESS_ADD,
                };

                FaceSelect(EGG::Heap* heap, int fadeType);

                virtual void            prepare();
                virtual void            create();

                virtual SceneCommand    calcFadein();

                virtual void            initCalcNormal();
                virtual SceneCommand    calcNormal();

                virtual void            initCalcFadeout();
                virtual SceneCommand    calcFadeout();

                virtual void            calcCommonAfter();

                virtual void            destroy();

                virtual void            draw();

                int                     getSelectedFaceId() { return mSelectedFaceId; }

                typedef struct Face {
                    bool            creating;   // 0x00
                    bool            created;    // 0x01

                    nigaoe::Object* object;     // 0x04
                } Face;

            private:
                enum {
                    ANIM_FADE_IN = 0,
                    ANIM_FADE_OUT,
                    ANIM_FADE_MEMO = ANIM_FADE_IN,
                    ANIM_FADE_IN_FROM_MEMO = ANIM_FADE_MEMO,
                    ANIM_FADE_OUT_TO_MEMO = ANIM_FADE_OUT,
                    ANIM_FADE_ADDRESS_EDIT,
                    ANIM_FADE_IN_FROM_ADDRESS_EDIT = ANIM_FADE_ADDRESS_EDIT,
                    ANIM_FADE_OUT_TO_ADDRESS_EDIT,
                    ANIM_FADE_ADDRESS_ADD,
                    ANIM_FADE_IN_FROM_ADDRESS_ADD = ANIM_FADE_ADDRESS_ADD,
                    ANIM_FADE_OUT_TO_ADDRESS_ADD,
                    ANIM_FOCUS_FACE_IN,
                    ANIM_FOCUS_FACE_1_IN = ANIM_FOCUS_FACE_IN,
                    ANIM_FOCUS_FACE_2_IN,
                    ANIM_FOCUS_FACE_3_IN,
                    ANIM_FOCUS_FACE_4_IN,
                    ANIM_FOCUS_FACE_5_IN,
                    ANIM_FOCUS_FACE_6_IN,
                    ANIM_FOCUS_FACE_7_IN,
                    ANIM_FOCUS_FACE_8_IN,
                    ANIM_FOCUS_FACE_9_IN,
                    ANIM_FOCUS_FACE_10_IN,
                    ANIM_FOCUS_FACE_OUT,
                    ANIM_FOCUS_FACE_1_OUT = ANIM_FOCUS_FACE_OUT,
                    ANIM_FOCUS_FACE_2_OUT,
                    ANIM_FOCUS_FACE_3_OUT,
                    ANIM_FOCUS_FACE_4_OUT,
                    ANIM_FOCUS_FACE_5_OUT,
                    ANIM_FOCUS_FACE_6_OUT,
                    ANIM_FOCUS_FACE_7_OUT,
                    ANIM_FOCUS_FACE_8_OUT,
                    ANIM_FOCUS_FACE_9_OUT,
                    ANIM_FOCUS_FACE_10_OUT,
                    ANIM_PAGE_SCROLL_LEFT,
                    ANIM_PAGE_SCROLL_RIGHT,
                    ANIM_LEFT_ARROW_FOCUS_IN,
                    ANIM_LEFT_ARROW_FOCUS_OUT,
                    ANIM_LEFT_ARROW_SELECT,
                    ANIM_LEFT_ARROW_SELECT_ALT,
                    ANIM_LEFT_ARROW_SELECT_ALT_REPEAT,
                    ANIM_LEFT_ARROW_APPEAR,
                    ANIM_LEFT_ARROW_DISAPPEAR,
                    ANIM_RIGHT_ARROW_FOCUS_IN,
                    ANIM_RIGHT_ARROW_FOCUS_OUT,
                    ANIM_RIGHT_ARROW_SELECT,
                    ANIM_RIGHT_ARROW_SELECT_ALT,
                    ANIM_RIGHT_ARROW_SELECT_ALT_REPEAT,
                    ANIM_RIGHT_ARROW_APPEAR,
                    ANIM_RIGHT_ARROW_DISAPPEAR,
                    ANIM_APPEARING,
                    ANIM_SWITCH_PAGE_NUMBER,
                };

                enum {
                    STATE_NORMAL = 0,
                    STATE_LEFT_LOAD,
                    STATE_RIGHT_LOAD,
                    STATE_LEFT_SCROLL,
                    STATE_RIGHT_SCROLL,
                    STATE_DONE,
                };

                enum {
                    BTN_FACE_1 = 0,
                    BTN_FACE_2,
                    BTN_FACE_3,
                    BTN_FACE_4,
                    BTN_FACE_5,
                    BTN_FACE_6,
                    BTN_FACE_7,
                    BTN_FACE_8,
                    BTN_FACE_9,
                    BTN_FACE_10,
                    BTN_MAX_FACE,
                    BTN_ARROW_LEFT = BTN_MAX_FACE,
                    BTN_ARROW_RIGHT,
                    BTN_MAX,
                };

                static const int    MAX_FACE_EACH_PAGE = 10;
                static const int    MAX_PAGES = (RFL_MAX_DATABASE / MAX_FACE_EACH_PAGE); // (there really isn't a maximum amount of pages)
                
                static const int    MAX_BALLOONS = BTN_MAX_FACE;

                void                    stt_normal();
                void                    stt_wait_lloaded();
                void                    stt_wait_rloaded();
                void                    stt_wait_lscroll();
                void                    stt_wait_rscroll();

                void                    start_lloaded();
                void                    start_rloaded();
                void                    start_lscroll();
                void                    start_rscroll();

                void                    start_point_event(const char* paneName, controller::Interface* con);
                void                    start_left_event(const char* paneName);
                void                    start_trig_event(const char* paneName);

                int                     get_button_no(const char* paneName);

                BOOL                    is_exist(int btnId) const;

                void                    change_state(int state);

                void                    set_page();

                void                    reset_gui();

                void                    set_face_pane(const char** facePaneList);
                void                    clear_face_pane(const char** facePaneList);
                void                    destroy_object();
                void                    read_face();

                layout::Object*         mpLayout;                       // 0x58
                nand::LayoutFile*       mpLayoutFile;                   // 0x5C

                FaceSelectEvent*        mpEvent;                        // 0x60
                gui::PaneManager*       mpGui;                          // 0x64
                FaceSelectButtonEvent*  mpButtonEvent;                  // 0x68

                u32                     mState;                         // 0x6C
                int                     mPrevState;                     // 0x70

                int                     mCurrentPage;                   // 0x74
                int                     mFaceCount;                     // 0x78

                int                     mFaceIds[RFL_MAX_DATABASE];     // 0x7C
                int                     mbHovered[BTN_MAX];             // 0x20C

                int                     mSelectedFaceId;                // 0x23C
                u32                     mCachedPage;                    // 0x240

                Face                    mpFaces[2][MAX_FACE_EACH_PAGE]; // 0x244

                bool                    mbPreparing;                    // 0x2E4
                bool                    mbLeftArrowExit;                // 0x2E5
                bool                    mbRightArrowExit;               // 0x2E6

                int                     mFadeType;                      // 0x2E8
                u32                     mFadeAnimIndex;                 // 0x2EC

                TextBalloon*            mpBalloons[MAX_BALLOONS];       // 0x2F0
                nand::LayoutFile*       mpBalloonFile;                  // 0x318

                static const char*      mscButtonName[BTN_MAX];

                static const char*      mscFacePane[BTN_MAX_FACE];
                static const char*      mscLeftFacePane[BTN_MAX_FACE];
                static const char*      mscRightFacePane[BTN_MAX_FACE];

                friend class FaceSelectEvent;
                friend class FaceSelectButtonEvent;
        };

        class FaceSelectEvent : public ::gui::EventHandler {
            public:
                FaceSelectEvent(FaceSelect* instance) :
                ::gui::EventHandler(),
                mpInstance(instance) {}


                virtual void    onEvent(u32 compId, u32 event, void* data);

            private:
                FaceSelect* mpInstance; // 0x0C
        };

        class FaceSelectButtonEvent : public ButtonEventHandlerBase {
            public:
                FaceSelectButtonEvent(FaceSelect* instance) :
                ButtonEventHandlerBase(),
                mpInstance(instance) {}

                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);

            private:
                FaceSelect* mpInstance; // 0x0C
        };
    }
}

#endif // IPL_SCENE_FACE_SELECT_H
