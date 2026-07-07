#ifndef IPL_SCENE_CHAN_APP_BASE_H
#define IPL_SCENE_CHAN_APP_BASE_H

#include "layout/iplGuiManager.h"

#include "scene/channelEdit/iplAnmController.h"

#include "scene/channelEdit/iplThumbnail.h"
#include "scene/textballoon/iplBalloon.h"

namespace ipl {
    namespace scene {
        class ChannelEdit;

        class ChanAppBase : public AnmController, private ::gui::EventHandler {
        public:
            ChanAppBase(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName);
            virtual ~ChanAppBase();

            void calc();
            void draw();
            void update();

            void anmFadein();
            void anmFadeout(bool isErr);

            void anmTextFadein(u32 msgId);
            void anmTextFadeout();

            void anmScrollL(bool playButtonAnm);
            void anmScrollR(bool playButtonAnm);

            void anmArwAppear(bool arwR, bool arwL);
            void anmArwDisappear(bool arwR, bool arwL);

            void anmChangeSDtoWii();
            void anmChangeWiitoSD();

            virtual void onEvent(u32 compId, u32 event, void* data) override;

            inline layout::Object* getLytObject() { return pLytObj; }
            inline bool isIdle() { return mState == CHANAPP_IDLE; }

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
                CHANAPP_IDLE = 0,          // 0x0
                CHANAPP_FADEIN1ST,         // 0x1
                CHANAPP_FADEIN2ND,         // 0x2
                CHANAPP_FADEOUT,           // 0x3
                CHANAPP_CHANGE_SD_TO_WII,  // 0x4
                CHANAPP_CHANGE_WII_TO_SD,  // 0x5

                CHANAPP_SCROLL_R = 8,  // 0x8
                CHANAPP_SCROLL_L,      // 0x9
                CHANAPP_TEXT_FADEIN,   // 0xa
                CHANAPP_TEXT_FADEOUT,  // 0xb
            };

            State mState;  // 0x34
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHAN_APP_BASE_H
