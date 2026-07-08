#ifndef IPL_SCENE_SAVEDATA_BOX_H
#define IPL_SCENE_SAVEDATA_BOX_H

#include "scene/channelEdit/iplAnmController.h"
#include "scene/saveDataEdit/iplWiiBannerFileInfo.h"

#include "scene/textballoon/iplBalloon.h"

#include <revolution/types.h>

namespace ipl {
    namespace scene {
        class SavedataBox : public AnmController, public ::gui::EventHandler {
        public:
            SavedataBox(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName);
            virtual ~SavedataBox();

            void calc();
            void draw();
            void update();

            void anmFadein();
            void anmFadeout();

            virtual void onEvent(u32 compId, u32 event, void* data) override;
            void clearEvent();

            WiiBannerFileInfo* getBanner() const { return mpBannerFileInfo; }
            void setBannerFileInfo(WiiBannerFileInfo* info) { mpBannerFileInfo = info; }

            const nw4r::math::VEC3& getTranslate() { return get_translate("N_Data_00"); }
            void setTranslate(const nw4r::math::VEC3& translate) { set_translate("N_Data_00", translate); }

            void terminateBalloon() {
                mpBalloon->terminate();
                mbInitBalloon = false;
            }

            TextBalloon* getTextBalloon() { return mpBalloon; }
            void setTextBalloon(TextBalloon* balloon) { mpBalloon = balloon; }

            bool hasBalloonInitialized() { return mbInitBalloon; }

            inline bool isIdle() { return mState == STATE_IDLE; }

        private:
            enum {
                ANIM_DATA_IN,
                ANIM_DATA_OUT,
                ANIM_DATA_FOCUS_IN,
                ANIM_DATA_FOCUS_OUT,
            };

            void on_fadein();
            void on_fadeout();

            enum {
                STATE_IDLE = 0,
                STATE_FADEIN,
                STATE_FADEOUT,
            };

        public:
            nw4r::ut::Link mLink;  // 0x34

        private:
            int mState;                           // 0x3C
            WiiBannerFileInfo* mpBannerFileInfo;  // 0x40
            TextBalloon* mpBalloon;               // 0x44
            bool mbInitBalloon;                   // 0x48
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_SAVEDATA_BOX_H
