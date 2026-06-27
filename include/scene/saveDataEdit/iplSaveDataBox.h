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
            SavedataBox(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName);
            virtual ~SavedataBox();

            void calc();
            void draw();
            void update();

            void anmFadein();
            void anmFadeout();

            virtual void onEvent(u32 compId, u32 event, void* data) override;
            void clearEvent();

            WiiBannerFileInfo* getBanner() const { return pBannerFileInfo; }
            void setBannerFileInfo(WiiBannerFileInfo* info) { pBannerFileInfo = info; }

            const nw4r::math::VEC3& getTranslate() { return get_translate("N_Data_00"); }
            void setTranslate(const nw4r::math::VEC3& translate) { set_translate("N_Data_00", translate); }

            TextBalloon* getTextBalloon() { return pTextBalloon; }
            void setTextBalloon(TextBalloon* balloon) { pTextBalloon = balloon; }

            bool getTextBalloonInitialized() { return mTextBalloonInitialized; }
            void setTextBalloonInitialized(bool val) { mTextBalloonInitialized = val; }

            inline bool isIdle() { return mState == BOX_STATE_IDLE; }

        private:
            void on_fadein();
            void on_fadeout();

            enum State {
                BOX_STATE_IDLE = 0x0,     // 0x0
                BOX_STATE_FADEIN = 0x1,   // 0x1
                BOX_STATE_FADEOUT = 0x2,  // 0x2
            };

        public:
            nw4r::ut::Link mLink;  // 0x34
        private:
            State mState;                        // 0x3c
            WiiBannerFileInfo* pBannerFileInfo;  // 0x40
            TextBalloon* pTextBalloon;           // 0x44
            bool mTextBalloonInitialized;        // 0x48
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_SAVEDATA_BOX_H
