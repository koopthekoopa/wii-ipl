#ifndef IPL_SCENE_ADDRESS_ADD_SELECT_H
#define IPL_SCENE_ADDRESS_ADD_SELECT_H

#include "iplSceneHeader.h"
#include "scene/button/iplButton.h"

namespace ipl {
    namespace scene {
        class AddressAddSelEvent;

        FADER_SCENE_CLASS(AddressAddSel), public ButtonEventHandlerBase {
            public:
                AddressAddSel(EGG::Heap* heap);

                virtual void            create();

                virtual SceneCommand    calcFadein();

                virtual void            initCalcNormal();
                virtual SceneCommand    calcNormal();

                virtual void            initCalcFadeout();
                virtual SceneCommand    calcFadeout();

                virtual void            calcCommonAfter();

                virtual void            draw();

                virtual void            onEventDerived(u32 compId, u32 event, const controller::Interface* con);

            private:
                enum {
                    STATE_NORMAL = 0,
                    STATE_WAIT_DECIDE_ANM,
                    STATE_DONE,
                };

                enum {
                    BTN_WII = 0,
                    BTN_EMAIL,
                    BTN_MAX
                };

                enum {
                    ANIM_FADE_IN = 0,
                    ANIM_FADE_OUT,
                    ANIM_BTN_FOCUS_IN,
                    ANIM_WII_BTN_FOCUS_IN = ANIM_BTN_FOCUS_IN,
                    ANIM_EMAIL_BTN_FOCUS_IN,
                    ANIM_BTN_FOCUS_OUT,
                    ANIM_WII_BTN_FOCUS_OUT = ANIM_BTN_FOCUS_OUT,
                    ANIM_EMAIL_BTN_FOCUS_OUT,
                    ANIM_BTN_SELECT,
                    ANIM_WII_BTN_SELECT = ANIM_BTN_SELECT,
                    ANIM_EMAIL_BTN_SELECT,
                };

                void                    stt_normal();

                void                    stt_wait_decide_anm();

                void                    start_point_event(const char* paneName, controller::Interface* con);
                void                    start_left_event(const char* paneName);
                void                    start_trig_event(const char* paneName);

                int                     get_button_no(const char* paneName);

                void                    reset_gui();

                void                    set_textbox(const char* paneName, u32 msgId);

                u32                 mState;             // 0x64

                layout::Object*     mpLayout;           // 0x68
                AddressAddSelEvent* mpEvent;            // 0x6C
                gui::PaneManager*   mpGui;              // 0x70

                BOOL                mbHovered[BTN_MAX]; // 0x74

                static const char*  mscButtonName[BTN_MAX];

                friend class AddressAddSelEvent;
        };

        class AddressAddSelEvent : public ::gui::EventHandler {
            public:
                AddressAddSelEvent(AddressAddSel* instance) :
                ::gui::EventHandler(),
                mpInstance(instance) {}

                virtual void    onEvent(u32 compId, u32 event, void* data);

            private:
                AddressAddSel* mpInstance; // 0x0C
        };
    }
}

#endif // IPL_SCENE_ADDRESS_ADD_SELECT_H
