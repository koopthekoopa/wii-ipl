#ifndef IPL_SCENE_SETTING_SELECT_H
#define IPL_SCENE_SETTING_SELECT_H

#include "iplSceneUIHeader.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(SettingSelect), public ::gui::EventHandler {
            public:
                SettingSelect(EGG::Heap* heap, int arg);

                virtual void    prepare();
                virtual void    create();
                virtual void    draw();
                virtual void    calc();

                virtual void    onEvent(u32 compId, u32 event, void* data);

            private:
                enum {
                    // Base
                    ANIM_IN = 0,
                    ANIM_FOCUS_IN,
                    ANIM_FOCUS_OUT,
                    ANIM_FLASH,
                    ANIM_FLASH_2,
                    ANIM_OUT,
                    ANIM_BACK,

                    // Data Management button
                    ANIM_DATA_MANAGE_BASE = 0,
                    ANIM_DATA_MANAGE_IN = ANIM_DATA_MANAGE_BASE,
                    ANIM_DATA_MANAGE_FOCUS_IN,
                    ANIM_DATA_MANAGE_FOCUS_OUT,
                    ANIM_DATA_MANAGE_FLASH,
                    ANIM_DATA_MANAGE_FLASH_2,
                    ANIM_DATA_MANAGE_OUT,
                    ANIM_DATA_MANAGE_BACK,

                    // Wii Settings button
                    ANIM_SETTING_BASE,
                    ANIM_SETTING_IN = ANIM_SETTING_BASE,
                    ANIM_SETTING_FOCUS_IN,
                    ANIM_SETTING_FOCUS_OUT,
                    ANIM_SETTING_FLASH,
                    ANIM_SETTING_FLASH_2,
                    ANIM_SETTING_OUT,
                    ANIM_SETTING_BACK,

                    // Save data button
                    ANIM_SAVE_DATA_BASE,
                    ANIM_SAVE_DATA_IN = ANIM_SAVE_DATA_BASE,
                    ANIM_SAVE_DATA_FOCUS_IN,
                    ANIM_SAVE_DATA_FOCUS_OUT,
                    ANIM_SAVE_DATA_FLASH,
                    ANIM_SAVE_DATA_FLASH_2,
                    ANIM_SAVE_DATA_OUT,
                    ANIM_SAVE_DATA_BACK,

                    // Channels button
                    ANIM_CHANNEL_BASE,
                    ANIM_CHANNEL_IN = ANIM_CHANNEL_BASE,
                    ANIM_CHANNEL_FOCUS_IN,
                    ANIM_CHANNEL_FOCUS_OUT,
                    ANIM_CHANNEL_FLASH,
                    ANIM_CHANNEL_FLASH_2,
                    ANIM_CHANNEL_OUT,
                    ANIM_CHANNEL_BACK,

                    // Wii save data button
                    ANIM_WII_SAVE_DATA_BASE,
                    ANIM_WII_SAVE_DATA_IN = ANIM_WII_SAVE_DATA_BASE,
                    ANIM_WII_SAVE_DATA_FOCUS_IN,
                    ANIM_WII_SAVE_DATA_FOCUS_OUT,
                    ANIM_WII_SAVE_DATA_FLASH,
                    ANIM_WII_SAVE_DATA_FLASH_2,
                    ANIM_WII_SAVE_DATA_OUT,
                    ANIM_WII_SAVE_DATA_BACK,

                    // Gamecube save data button
                    ANIM_GC_SAVE_DATA_BASE,
                    ANIM_GC_SAVE_DATA_IN = ANIM_GC_SAVE_DATA_BASE,
                    ANIM_GC_SAVE_DATA_FOCUS_IN,
                    ANIM_GC_SAVE_DATA_FOCUS_OUT,
                    ANIM_GC_SAVE_DATA_FLASH,
                    ANIM_GC_SAVE_DATA_FLASH_2,
                    ANIM_GC_SAVE_DATA_OUT,
                    ANIM_GC_SAVE_DATA_BACK,

                    ANIM_MAX,
                };

                enum {
                    BTN_DATA_MANAGE = 0,
                    BTN_SETTING,
                    BTN_SAVEDATA,
                    BTN_CHANNEL,
                    BTN_WII_SAVE,
                    BTN_GC_SAVE,
                    BTN_MAX,
                };

                enum {
                    STATE_WAIT_BUTTON_FADE_IN = 0,
                    STATE_1ST_WAIT_FADE_IN,
                    STATE_1ST_NORMAL,
                    STATE_1ST_WAIT_FADE_OUT,
                    STATE_2ND_WAIT_FADE_IN,
                    STATE_2ND_NORMAL,
                    STATE_2ND_WAIT_FADE_OUT,
                    STATE_3RD_WAIT_FADE_IN,
                    STATE_3RD_NORMAL,
                    STATE_3RD_WAIT_FADE_OUT,
                    STATE_2ND_WAIT_BACK,
                    STATE_3RD_WAIT_BACK,
                    STATE_WAIT_BUTTON_DECIDE,
                    STATE_WAIT_BLACK_OUT,
                    STATE_WAIT_CHILD,
                    STATE_WAIT_CHILD_ANIM,
                    STATE_16,
                    STATE_DONE,
                };

                void    stt_wait_button_fadein();

                void    stt_1st_fadein();
                void    stt_1st_fadeout();
                void    stt_2nd_fadein();
                void    stt_2nd_fadeout();
                void    stt_3rd_fadein();
                void    stt_3rd_fadeout();

                void    stt_normal();

                void    stt_wait_2nd_back();
                void    stt_wait_3rd_back();

                void    stt_wait_button_decided();
                void    stt_wait_blackout();

                void    stt_wait_child();
                void    stt_wait_child_anm();

                void    reset_gui();

                void    set_text(const char* paneName, u32 msgId);

                void    start_point_event(const char* paneName, controller::Interface* con);
                void    start_left_event(const char* paneName);
                void    start_trig_event(const char* paneName);

                int     get_button_no(const char* paneName);

                BOOL    condition(int btnNo);

                void    start_focusin_anm(int btnNo, controller::Interface* con);
                void    start_focusout_anm(int btnNo);
                void    start_selected_anm(int btnNo);

                bool    is_stopped_all_anm() const;

                void    fn_81409864();

                void    fn_814098F4();
                void    fn_unk_inline();
                void    fn_81409988();
                void    fn_814099EC();

                int                 mState;             // 0x60
                int                 mPrevState;         // 0x64

                int                 mSettingArg;        // 0x68

                layout::Object*     mpLayout;           // 0x6C
                nand::LayoutFile*   mpLayoutFile;       // 0x70

                gui::PaneManager*   mpGui;              // 0x74

                BOOL                mbHovered[BTN_MAX]; // 0x78
                u32                 unk_0x90;
                u32                 unk_0x94;

                static const char*  mscButtonName[BTN_MAX];
        };
    }
}

#endif // IPL_SCENE_SETTING_SELECT_H
