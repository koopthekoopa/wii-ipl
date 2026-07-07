#ifndef IPL_SCENE_CHAN_APP_BOX_H
#define IPL_SCENE_CHAN_APP_BOX_H

#include "scene/channelEdit/iplAnmController.h"

#include "scene/channelEdit/iplThumbnail.h"
#include "scene/textballoon/iplBalloon.h"

namespace ipl {
    namespace scene {
        class ChannelEdit;

        class ChanAppBox : public AnmController, public ::gui::EventHandler {
        public:
            ChanAppBox(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName);
            virtual ~ChanAppBox();

            void calc();
            void draw();
            void update();

            void anmFadein();
            void anmFadeout();

            virtual void onEvent(u32 compId, u32 event, void* data) override;
            void clearEvent();

            ChannelEdit* get_channel_edit();

            Thumbnail* getThumbnail() const { return pThumbnail; }
            void setThumbnail(Thumbnail* newThumbnail) { pThumbnail = newThumbnail; }

            const nw4r::math::VEC3& getTranslate() { return get_translate("N_All"); }
            void setTranslate(const nw4r::math::VEC3& translate) { set_translate("N_All", translate); }

            TextBalloon* getTextBalloon() { return pTextBalloon; }
            void setTextBalloon(TextBalloon* balloon) { pTextBalloon = balloon; }

            bool getTextBalloonInitialized() { return mTextBalloonInitialized; }
            void setTextBalloonInitialized(bool val) { mTextBalloonInitialized = val; }

            inline bool isIdle() { return mState == BOX_STATE_IDLE; }

            static char s_all_pane_name[6];

        private:
            void on_fadein();
            void on_fadeout();

            enum State {
                BOX_STATE_HIDDEN = 0,  // 0x0
                BOX_STATE_IDLE,        // 0x1
                BOX_STATE_FADEIN,      // 0x2
                BOX_STATE_FADEOUT,     // 0x3
            };

        public:
            nw4r::ut::Link mLink;  // 0x34
        private:
            State mState;                  // 0x3c
            Thumbnail* pThumbnail;         // 0x40
            TextBalloon* pTextBalloon;     // 0x44
            bool mTextBalloonInitialized;  // 0x48
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHAN_APP_BOX_H
