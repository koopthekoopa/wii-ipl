#ifndef IPL_SCENE_STATE_BASE_H
#define IPL_SCENE_STATE_BASE_H

#include "scene/channelEdit/iplAnmController.h"

#include "layout/GUIManager.h"

#include <revolution/types.h>

namespace ipl {
    namespace scene {
        class SavedataBase : public AnmController, public ::gui::EventHandler {
        public:
            SavedataBase(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName);

            virtual ~SavedataBase();

            virtual void onEvent(u32 compId, u32 event, void* data) override;

            void calc();
            void draw();
            void update();

            void anmFadein();
            void anmFadeout(bool isErr);

            void anmChangeWiitoSD();
            void anmChangeSDtoWii();

            void anmScrollR(bool playButtonAnm);
            void anmScrollL(bool playButtonAnm);

            void anmTextFadein(u32 msgId);
            void anmTextFadeout();

            void anmArwAppear(bool arwR, bool arwL);
            void anmArwDisappear(bool arwR, bool arwL);

            inline layout::Object* getLytObject() { return mpLayout; }
            inline bool isIdle() { return mState == STATE_IDLE; }

        private:
            enum {
                ANIM_SWITCH = 0,
                ANIM_DATA_IN,
                ANIM_DATA_OUT,
                ANIM_SELECT_IN,
                ANIM_SELECT_WII_IN,
                ANIM_SELECT_WII_OUT,
                ANIM_SELECT_WII_FLASH,
                ANIM_SELECT_SD_IN,
                ANIM_SELECT_SD_OUT,
                ANIM_SELECT_SD_FLASH,
                ANIM_ARROWS_MOVE_L,
                ANIM_ARROWS_MOVE_R,
                ANIM_ARROW_R_SELECT,
                ANIM_ARROW_L_SELECT,
                ANIM_ARROW_R_FOCUS_ON,
                ANIM_ARROW_L_FOCUS_ON,
                ANIM_ARROW_R_FOCUS_OFF,
                ANIM_ARROW_L_FOCUS_OFF,
                ANIM_ARROW_R_LOOP,
                ANIM_ARROW_R_END,
                ANIM_ARROW_L_END,
                ANIM_ARROW_R_LOST,
                ANIM_ARROW_L_LOST,
                ANIM_ERROR_TEXT_IN,
                ANIM_ERROR_TEXT_OUT,
            };

            void on_fadein1st();
            void on_fadein2nd();
            void on_fadeout();
            void on_change_sd_to_wii();
            void on_change_wii_to_sd();
            void on_scroll_r();
            void on_scroll_l();
            void on_text_fadein();
            void on_text_fadeout();

            enum {
                STATE_IDLE = 0,
                STATE_FADEIN1ST,
                STATE_FADEIN2ND,
                STATE_FADEOUT,
                STATE_CHANGE_SD_TO_WII,
                STATE_CHANGE_WII_TO_SD,
                STATE_6,
                STATE_7,
                STATE_SCROLL_R,
                STATE_SCROLL_L,
                STATE_TEXT_FADEIN,
                STATE_TEXT_FADEOUT,
            };

            int mState;
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_STATE_BASE_H
