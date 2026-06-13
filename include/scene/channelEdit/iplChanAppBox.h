#ifndef IPL_SCENE_CHAN_APP_BOX_H
#define IPL_SCENE_CHAN_APP_BOX_H

#include "scene/channelEdit/iplAnmController.h"

#include "scene/channelEdit/iplChannelEdit.h"
#include "scene/channelEdit/iplThumbnail.h"

namespace ipl {
    namespace scene {
        class ChanAppBox : public AnmController, public ::gui::EventHandler {
        public:
            ChannelEdit* get_channel_edit();

            Thumbnail* getThumbnail() const { return pThumbnail; }
            void setThumbnail(Thumbnail* newThumbnail) { pThumbnail = newThumbnail; }

            nw4r::ut::Link mLink;  // 0x34
        private:
            u8 unk_0x3c[4];         // 0x3c
            Thumbnail* pThumbnail;  // 0x40
            u8 unk_0x44[8];         // 0x44
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHAN_APP_BOX_H
