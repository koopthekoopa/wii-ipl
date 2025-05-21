#ifndef IPL_SETTING_BUTTON_H
#define IPL_SETTING_BUTTON_H

#include "iplSceneUIHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_GUI_CLASS(SettingButton) {
            public:
                enum {
                    CANCEL = 0,
                    DECIDE,
                };

                enum {
                    CMD_NONE = 0,
                    CMD_SHOW_BTN,
                    CMD_HIDE_BTN,
                    CMD_SET_TEXT,
                };

                SettingButton(EGG::Heap* heap, int type);

                virtual void            prepare();
                virtual void            create();
                virtual void            draw();

                virtual SceneCommand    calcFadein();
                virtual SceneCommand    calcNormal();

                virtual void            calcCommonAfter();

                virtual void            onEvent(u32 compId, u32 event, void* data);
            
                bool                    update();

                void                    reserve(int command, u32 msgId);

                bool                    isPlaying() const;
                void                    setSoundType(int type)  { mSoundType = type; }

            private:
                void                    setText(u32 msgId);

                void                    showBtn();
                void                    hideBtn();

                void                    showWii();
                void                    hideWii();

                void                    start_point_event(const char* paneName, controller::Interface* controller);
                void                    start_left_event(const char* paneName);
                void                    start_trig_event(const char* paneName);

                typedef struct Unk {
                    int command;    // 0x00
                    u32 msgID;      // 0x04
                } Unk;

                Unk                 unk_0x64[64];

                int                 unk_0x264;
                int                 unk_0x268;
                int                 unk_0x26C;
                int                 unk_0x270;

                int                 mSettingType;   // 0x274

                layout::Object*     mpLayout;       // 0x278

                nand::LayoutFile*   mpLayoutFile;   // 0x27C
                gui::PaneManager*   mpGui;          // 0x280

                BOOL                mBtnHovered;    // 0x284

                int                 mSoundType;     // 0x288

                bool                mbShowBtn;      // 0x28C
                bool                mbFadedIn;      // 0x28D
                bool                mbTrigBtn;      // 0x28E
        };
    }
}

#endif // IPL_SETTING_BUTTON_H
