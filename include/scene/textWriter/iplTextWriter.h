#ifndef IPL_SCENE_TEXT_WRITER_H
#define IPL_SCENE_TEXT_WRITER_H

#include "iplSceneUIHeader.h"
#include "scene/button/iplButton.h"

#include "system/iplNigaoe.h"
#include "scene/textBalloon/iplBalloon.h"
#include "utility/iplScroller.h"

#include <revolution/nwc24.h>

#include "SoftKeyboard.h"

namespace ipl {
    namespace scene {
        class TextWriter;
        class InputFormObserver : public textinput::extend::memo::NigaoeEventObserver {
            public:
                InputFormObserver(TextWriter* instance) : mpInstance(instance) {}

                virtual bool    onNigaoeButton();

                virtual void    pointNigaoeButton();
                virtual void    leftNigaoeButton();
                virtual void    moveNigaoeButton();

            private:
                TextWriter* mpInstance; // 0x04
        };

        class Button;
        FADER_SCENE_CLASS(TextWriter), public ButtonEventHandlerBase {
            public:
                TextWriter(EGG::Heap* heap);
                ~TextWriter();

                enum {
                    SEND_ERR_NWC24 = -1,
                    SEND_ERR_SUCCESS,
                    SEND_ERR_RFL,
                };

                virtual BOOL                isResetAcceptable() const;

                virtual void                prepare();
                virtual void                create();
                virtual void                draw();
                virtual void                destroy();

                virtual void                initCalcNormal();
                virtual void                initCalcFadeout();

                virtual void                calcCommon();

                virtual SceneCommand        calcFadein();
                virtual SceneCommand        calcNormal();
                virtual SceneCommand        calcFadeout();

                virtual bool                onNigaoeButton();
                virtual void                setNigaoe(nigaoe::Object* nigaoe);

                virtual void                pointNigaoeButton();
                virtual void                leftNigaoeButton();
                virtual void                moveNigaoeButton();

                virtual void                onEventDerived(u32 compId, u32 event, const controller::Interface* con);

                virtual void                onSend();
                virtual void                openNWC24();
                virtual int                 sendMessageByNWC24(NWC24UserId userId, const wchar_t* wcString);
                virtual void                closeNWC24();

                virtual void                getMyUserID(NWC24UserId* myUserId);

                textinput::MemoManager*     getMemoManager();
                textinput::MemoInputForm*   getMemoInputForm();
                Button*                     getButton();

            private:
                enum {
                    STATE_NORMAL,
                    STATE_TO_SEL_FACE,
                    STATE_SEL_FACE,
                    STATE_DIALOG,
                    STATE_SEND,
                    STATE_SEND_ERR,
                    STATE_DONE,
                };

                static const int    WC_STRING_LENGTH = 0x400;

                int                 mState;             // 0x64
                InputFormObserver*  mpEventObserver;    // 0x68

                int                 mSelectedFaceId;    // 0x6C
                nigaoe::Object*     mpNigaoe;           // 0x70

                f32                 mToFace_Frame;      // 0x74
                f32                 mToFace_Dest;       // 0x78
                static const int    mToFace_Duration = 20;

                bool                mbClosing;          // 0x7C
                bool                unk_0x7D;

                wchar_t*            mWCString;          // 0x80

                u32                 mNwc24ErrCountdown; // 0x84

                u8                  unused_0x88[12];

                TextBalloon*        mpNigaoeBalloon;    // 0x94
                nand::LayoutFile*   mpBalloonFile;      // 0x98

                utility::BScroller* mpScroller;         // 0x9C
        };
    }
}

#endif // IPL_SCENE_TEXT_WRITER_H
