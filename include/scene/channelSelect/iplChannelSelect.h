#ifndef IPL_CAHNNEL_SELECT_H
#define IPL_CAHNNEL_SELECT_H

#include "scene/iplFaderSceneBase.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(ChannelSelect) {
            public:
                virtual ~ChannelSelect() {}

                static void setInitFlag(BOOL value) { msInitFlag = value; }
            
            private:
                static BOOL msInitFlag;
        };
    }
}

#endif // IPL_CAHNNEL_SELECT_H


