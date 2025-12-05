#ifndef IPL_SCENE_PARENTAL_DIALOG_H
#define IPL_SCENE_PARENTAL_DIALOG_H

#include "iplSceneUIHeader.h"

#include <revolution/sc.h>

namespace ipl {
    namespace scene {
        class ParentalDialogEvent;

        FADER_SCENE_CLASS(ParentalDialog) {
            public:
                typedef enum Result {
                    RESULT_NONE = 0,
                    RESULT_SUCCESS,
                    RESULT_OVER_ATTEMPTS,
                    RESULT_CANCELLED,
                } Result;

                ParentalDialog(EGG::Heap* heap, BOOL launchTitle);

                void            prepare();
                void            create();

                SceneCommand    calcFadein();

                SceneCommand    calcNormal();

                void            initCalcFadeout();
                SceneCommand    calcFadeout();

                void            calcCommonAfter();

                void            draw();

                Result          getResult() const   { return mResult; }

            private:
                enum {
                    STATE_NORMAL = 0,
                    STATE_WAIT_SEL_ANIM,
                    STATE_WAIT_INPUT,
                    STATE_WAIT_MSG,
                    STATE_DONE,
                    STATE_MAX,
                };

                enum {
                    BTN_CANCEL = 0,
                    BTN_DECIDE,
                    BTN_INPUT,
                    BTN_MAX,
                };

                enum {
                    ANIM_DIALOG_IN = 0,
                    ANIM_DIALOG_OUT,
                    ANIM_BTN_CANCEL_FOCUS_IN,
                    ANIM_BTN_CANCEL_FOCUS_OUT,
                    ANIM_BTN_CANCEL_SELECT,
                    ANIM_BTN_DECIDE_FOCUS_IN,
                    ANIM_BTN_DECIDE_FOCUS_OUT,
                    ANIM_BTN_DECIDE_SELECT,
                    ANIM_BTN_INPUT_FOCUS_IN,
                    ANIM_BTN_INPUT_FOCUS_OUT,
                    ANIM_BTN_INPUT_SELECT,
                    ANIM_CHANGE_INPUT_BUTTON,
                    ANIM_DECIDE_BUTTON_ENABLE,
                    ANIM_DECIDE_BUTTON_DISABLE,
                };

                void            stt_normal();
                void            stt_wait_sel_anm();
                void            stt_wait_input();
                void            stt_wait_msg();

                void            start_point_event(const char* paneName, controller::Interface* con);
                void            start_left_event(const char* paneName);
                void            start_trig_event(const char* paneName, int chan);

                int             get_button_no(const char* paneName) const;

                void            reset_gui();

                BOOL            check() const;

                void            set_textbox(const char* paneName, u32 msgId);

                u32                     mState;                             // 0x58

                layout::Object*         mpLayout;                           // 0x5C
                nand::LayoutFile*       mpLayoutFile;                       // 0x60
                ParentalDialogEvent*    mpEvent;                            // 0x64
                gui::PaneManager*       mpGui;                              // 0x68

                BOOL                    mbLaunchTitle;                      // 0x6C
                Result                  mResult;                            // 0x70

                BOOL                    mbHovered[BTN_MAX];                 // 0x74

                wchar_t                 mMyPin[SC_PARENTAL_PASSWORD_LENGTH+1];   // 0x80
                bool                    mbInputPin;                         // 0x8A
                int                     mAttempts;                          // 0x8C

                static const char*      mscButtonName[BTN_MAX];

                static const int        ATTEMPTS_MAX = 3;

                friend class ParentalDialogEvent;
        };

        class ParentalDialogEvent : public ::gui::EventHandler {
            public:
                ParentalDialogEvent(ParentalDialog* instance) :
                ::gui::EventHandler(),
                mpInstance(instance) {}

                virtual void    onEvent(u32 compId, u32 event, void* data);

            private:
                ParentalDialog* mpInstance; // 0x0C
        };
    }
}

#endif // IPL_SCENE_PARENTAL_DIALOG_H
