#ifndef IPL_SCENE_SAVEDATA_BASE_H
#define IPL_SCENE_SAVEDATA_BASE_H

#include "scene/channelEdit/iplAnmController.h"

#include "layout/GUIManager.h"

#include <revolution/types.h>

namespace ipl {
    namespace scene {
        class SavedataBase : public AnmController, public ::gui::EventHandler {
        public:
            SavedataBase(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName);

            virtual ~SavedataBase();

            virtual void onEvent(u32 compId, u32 event, void* data) override;

            void calc();
            void draw();
            void update();

            void anmFadein();
            void anmFadeout(bool);

            void anmChangeWiitoSD();
            void anmChangeSDtoWii();

            void anmScrollR(bool playButtonAnm);
            void anmScrollL(bool playButtonAnm);

            void anmTextFadein(u32 msgId);
            void anmTextFadeout();

            void anmArwAppear(bool arwR, bool arwL);
            void anmArwDisappear(bool arwR, bool arwL);

            inline layout::Object* getLytObject() { return pLytObj; }
            inline bool isIdle() { return mState == SAVEDATA_IDLE; }

        private:
            void on_fadein1st();
            void on_fadein2nd();
            void on_fadeout();
            void on_change_sd_to_wii();
            void on_change_wii_to_sd();
            void on_scroll_r();
            void on_scroll_l();
            void on_text_fadein();
            void on_text_fadeout();

            enum State {
                SAVEDATA_IDLE = 0x0,              // 0x0
                SAVEDATA_FADEIN1ST = 0x1,         // 0x1
                SAVEDATA_FADEIN2ND = 0x2,         // 0x2
                SAVEDATA_FADEOUT = 0x3,           // 0x3
                SAVEDATA_CHANGE_SD_TO_WII = 0x4,  // 0x4
                SAVEDATA_CHANGE_WII_TO_SD = 0x5,  // 0x5
                SAVEDATA_SCROLL_R = 0x8,          // 0x8
                SAVEDATA_SCROLL_L = 0x9,          // 0x9
                SAVEDATA_TEXT_FADEIN = 0xa,       // 0xa
                SAVEDATA_TEXT_FADEOUT = 0xb,      // 0xb
            };

            State mState;
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_SAVEDATA_BASE_H
