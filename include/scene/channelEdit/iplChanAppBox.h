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
            ChanAppBox(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName);
            virtual ~ChanAppBox();

            void calc();
            void draw();
            void update();

            void anmFadein();
            void anmFadeout();

            virtual void onEvent(u32 compId, u32 event, void* data) override;
            void clearEvent();

            ChannelEdit* get_channel_edit();

            Thumbnail* getThumbnail() const { return mpThumbnail; }
            void setThumbnail(Thumbnail* newThumbnail) { mpThumbnail = newThumbnail; }

            const nw4r::math::VEC3& getTranslate() { return get_translate("N_All"); }
            void setTranslate(const nw4r::math::VEC3& translate) { set_translate("N_All", translate); }

            void terminateBalloon() {
                mpBalloon->terminate();
                mbInitBalloon = false;
            }

            TextBalloon* getTextBalloon() { return mpBalloon; }
            void setTextBalloon(TextBalloon* balloon) { mpBalloon = balloon; }

            bool hasBalloonInitialized() { return mbInitBalloon; }

            inline bool isIdle() { return mState == STATE_IDLE; }

            static char s_all_pane_name[6];

        private:
            enum {
                ANIM_DATA_IN = 0,
                ANIM_DATA_OUT,
                ANIM_DATA_FOCUS_IN,
                ANIM_DATA_FOCUS_OUT,
            };

            void on_fadein();
            void on_fadeout();

            enum {
                STATE_HIDDEN = 0,
                STATE_IDLE,
                STATE_FADE_IN,
                STATE_FADE_OUT,
            };

        public:
            nw4r::ut::Link mLink;  // 0x34

        private:
            int mState;              // 0x3C
            Thumbnail* mpThumbnail;  // 0x40
            TextBalloon* mpBalloon;  // 0x44
            bool mbInitBalloon;      // 0x48

            friend class ChannelEdit;
            friend class Memory;
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHAN_APP_BOX_H
