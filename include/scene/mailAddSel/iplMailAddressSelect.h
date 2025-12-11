#ifndef IPL_SCENE_MAIL_SELECT_ADDRESS_H
#define IPL_SCENE_MAIL_SELECT_ADDRESS_H

#include "iplSceneUIHeader.h"
#include "scene/button/iplButton.h"

namespace ipl {
    namespace scene {
        class MailAddressEvent;

        FADER_SCENE_CLASS(MailAddressSelect), ButtonEventHandlerBase {
            public:
                MailAddressSelect(EGG::Heap* heap);
                ~MailAddressSelect();

                virtual void            prepare();
                virtual void            create();

                virtual void            calcCommon();
                virtual SceneCommand    calcFadein();

                virtual void            initCalcNormal();
                virtual SceneCommand    calcNormal();

                virtual void            initCalcFadeout();
                virtual SceneCommand    calcFadeout();

                virtual void            draw();
                virtual void            destroy();

                void                    finishMemo(bool closing);
                void                    finishLetter(bool closing);
                void                    finishAddress();

                virtual void            onEventDerived(u32 compId, u32 event, const controller::Interface* con);

            protected:
                void    start_point_event(const char* paneName, controller::Interface* con);
                void    start_left_event(const char* paneName);
                void    start_trig_event(const char* paneName);

                void    start_focusin_anm(int btnNo);
                void    start_focusout_anm(int btnNo);

                int     get_button_no(const char* paneName);

                void    set_textbox(const char* paneName, u32 msgId);
                void    set_err_msg(wchar_t* outErrMsg, u32 outErrMsgLen, u32 errMsgId, s32 nwc24Err);

                BOOL    check_network();
                bool    is_parental_restriction() const;

                void    reset_gui();

                enum {
                    ANIM_FADE_IN = 0,
                    ANIM_FADE_OUT,
                    ANIM_BTN_MAIL_FOCUS_IN,
                    ANIM_BTN_MAIL_FOCUS_OUT,
                    ANIM_BTN_MAIL_ZOOM_IN,
                    ANIM_BTN_MAIL_ZOOM_OUT,
                    ANIM_BTN_LETTER_FOCUS_IN,
                    ANIM_BTN_LETTER_FOCUS_OUT,
                    ANIM_BTN_LETTER_ZOOM_IN,
                    ANIM_BTN_LETTER_ZOOM_OUT,
                    ANIM_BTN_ADDRESS_FOCUS_IN,
                    ANIM_BTN_ADDRESS_FOCUS_OUT,
                    ANIM_BTN_ADDRESS_ZOOM_IN,
                    ANIM_BTN_ADDRESS_ZOOM_OUT,
                    ANIM_MAX,
                };

                enum {
                    STATE_NORMAL = 0,
                    STATE_DISABLE_SCENE,
                    STATE_CLOSING,
                    STATE_WAIT_FOR_ZOOM_OUT,
                    STATE_NO_NETWORK_DIALOG,
                    STATE_PARENTAL_DIALOG,
                    STATE_PARENTAL_CHECK,
                    STATE_DIALOG,
                    STATE_NO_WC24_DIALOG,
                    STATE_CHECK_NETWORK,
                    STATE_DONE,
                    STATE_MAX,
                };

                enum {
                    BTN_MAIL = 0,
                    BTN_LETTER,
                    BTN_ADDRESS,
                    BTN_MAX,
                };

                layout::Object*     mpLayout;           // 0x64
                nand::LayoutFile*   mpLayoutFile;       // 0x68
                MailAddressEvent*   mpEvent;            // 0x6C
                gui::PaneManager*   mpGui;              // 0x70

                BOOL                mbHovered[BTN_MAX]; // 0x74

                int                 mState;             // 0x80

                int                 mNwc24ErrCountdown; // 0x84

                bool                mbParentalBypass;   // 0x88

                static const char*  mscButtonName[BTN_MAX];

                friend class MailAddressEvent;
        };

        class MailAddressEvent : public ::gui::EventHandler {
            public:
                MailAddressEvent(MailAddressSelect* instance) :
                ::gui::EventHandler(),
                mpInstance(instance) {}

                virtual void    onEvent(u32 compId, u32 event, void* data);

            private:
                MailAddressSelect*  mpInstance; // 0x0C
        };
    }
}

#endif // IPL_SCENE_MAIL_SELECT_ADDRESS_H
